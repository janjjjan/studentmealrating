'use client';

import { useState, useEffect, useMemo, useCallback } from 'react';
import { Search, Filter, Map, LayoutGrid } from 'lucide-react';
import dynamic from 'next/dynamic';
import { DailyMenu, LocationWithDetails, Review } from '@/lib/supabase/types';
import { initialLocations, loadDetails, withStats, type DataSource } from '@/lib/data';

import { Header } from '@/components/Header';
import { LocationCard } from '@/components/LocationCard';
import { ReviewModal } from '@/components/ReviewModal';
import { DailyMenuModal } from '@/components/DailyMenuModal';

const MapView = dynamic(() => import('@/components/MapView'), {
  ssr: false,
  loading: () => <div className="map-container map-loading">Nalagam zemljevid …</div>,
});

const MAIN_CITIES = ['Ljubljana', 'Maribor', 'Koper', 'Celje', 'Kranj', 'Novo mesto'];
const CITY_TABS = ['Vsi', ...MAIN_CITIES, 'Ostalo'];
const PAGE_SIZE = 60;

function normalize(s: string): string {
  return s.toLocaleLowerCase('sl').normalize('NFD').replace(/[̀-ͯ]/g, '');
}

export default function Home() {
  const [locations, setLocations] = useState<LocationWithDetails[]>(initialLocations);
  const [dataSource, setDataSource] = useState<DataSource | null>(null);
  const [searchQuery, setSearchQuery] = useState('');
  const [selectedCity, setSelectedCity] = useState('Vsi');
  const [sortBy, setSortBy] = useState<'rating' | 'price' | 'name'>('rating');
  const [viewMode, setViewMode] = useState<'grid' | 'map'>('grid');
  const [visibleCount, setVisibleCount] = useState(PAGE_SIZE);

  const [activeMenuId, setActiveMenuId] = useState<string | null>(null);
  const [activeReviewId, setActiveReviewId] = useState<string | null>(null);

  useEffect(() => {
    loadDetails()
      .then(({ locations, source }) => {
        setLocations(locations);
        setDataSource(source);
      })
      .catch((err) => setDataSource({ kind: 'error', message: err instanceof Error ? err.message : String(err) }));
  }, []);

  useEffect(() => setVisibleCount(PAGE_SIZE), [searchQuery, selectedCity, sortBy]);

  const handleAddReview = useCallback((locationId: string, review: Review) => {
    setLocations((prev) =>
      prev.map((loc) => (loc.id === locationId ? withStats(loc, [review, ...loc.reviews], loc.daily_menu) : loc))
    );
  }, []);

  const handleMenuLoaded = useCallback((locationId: string, menu: DailyMenu) => {
    setLocations((prev) => prev.map((loc) => (loc.id === locationId ? { ...loc, daily_menu: menu } : loc)));
  }, []);

  const filteredLocations = useMemo(() => {
    const q = normalize(searchQuery.trim());
    return locations
      .filter((loc) => {
        const matchCity =
          selectedCity === 'Vsi' ||
          (selectedCity === 'Ostalo' ? !MAIN_CITIES.includes(loc.city) : loc.city === selectedCity);
        if (!matchCity) return false;
        if (!q) return true;
        return (
          normalize(loc.name).includes(q) ||
          normalize(loc.address || '').includes(q) ||
          normalize(loc.city).includes(q) ||
          loc.features.some((f) => normalize(f).includes(q)) ||
          !!loc.daily_menu?.dishes.some((d) => normalize(d).includes(q))
        );
      })
      .sort((a, b) => {
        if (sortBy === 'price') return (a.subsidy_price ?? 99) - (b.subsidy_price ?? 99) || a.name.localeCompare(b.name, 'sl');
        if (sortBy === 'name') return a.name.localeCompare(b.name, 'sl');
        const ra = a.avg_rating ?? a.site_rating ?? 0;
        const rb = b.avg_rating ?? b.site_rating ?? 0;
        return rb - ra || b.review_count - a.review_count || a.name.localeCompare(b.name, 'sl');
      });
  }, [locations, searchQuery, selectedCity, sortBy]);

  const activeMenuLocation = locations.find((l) => l.id === activeMenuId) || null;
  const activeReviewLocation = locations.find((l) => l.id === activeReviewId) || null;
  const openMenu = useCallback((loc: LocationWithDetails) => setActiveMenuId(loc.id), []);
  const openReview = useCallback((loc: LocationWithDetails) => setActiveReviewId(loc.id), []);
  const closeMenu = useCallback(() => setActiveMenuId(null), []);
  const closeReview = useCallback(() => setActiveReviewId(null), []);

  const menusLoaded = locations.filter((l) => l.daily_menu).length;

  return (
    <main style={{ minHeight: '100vh', display: 'flex', flexDirection: 'column' }}>
      <Header />

      <section className="hero-section">
        <h1 className="hero-title">
          Zemljevid in ocene <span style={{ color: '#10b981' }}>študentskih bonov</span>
        </h1>
        <p className="hero-subtitle">
          {locations.length} lokalov s{' '}
          <a href="https://www.studentska-prehrana.si/sl/restaurant" target="_blank" rel="noopener noreferrer">
            studentska-prehrana.si
          </a>
          . Poišči lokal, preveri današnji meni in oceni hrano – brez prijave.
        </p>

        <div className="search-bar-wrapper">
          <Search className="search-icon" size={20} />
          <input
            type="search"
            className="search-input"
            placeholder="Išči po imenu, naslovu ali jedi (npr. falafel, pizza, brezmesno) …"
            value={searchQuery}
            onChange={(e) => setSearchQuery(e.target.value)}
          />
        </div>
        {searchQuery && menusLoaded === 0 && (
          <p className="search-hint">Iskanje po jedeh deluje za lokale, katerih današnji meni je že naložen.</p>
        )}

        <div className="filter-tabs">
          {CITY_TABS.map((city) => (
            <button
              key={city}
              className={`filter-tab ${selectedCity === city ? 'active' : ''}`}
              onClick={() => setSelectedCity(city)}
            >
              {city}
            </button>
          ))}
        </div>

        <div className="toolbar">
          <span className="result-count">
            {filteredLocations.length} {filteredLocations.length === 1 ? 'lokal' : 'lokalov'}
          </span>

          <div className="view-toggle">
            <button className={viewMode === 'grid' ? 'active' : ''} onClick={() => setViewMode('grid')}>
              <LayoutGrid size={15} />
              <span>Seznam</span>
            </button>
            <button className={viewMode === 'map' ? 'active' : ''} onClick={() => setViewMode('map')}>
              <Map size={15} />
              <span>Zemljevid</span>
            </button>
          </div>

          <label className="sort-select">
            <span>Razvrsti:</span>
            <select value={sortBy} onChange={(e) => setSortBy(e.target.value as typeof sortBy)}>
              <option value="rating">Najvišja ocena</option>
              <option value="price">Najnižje doplačilo</option>
              <option value="name">Po abecedi</option>
            </select>
          </label>
        </div>
      </section>

      <section className="results-section">
        {viewMode === 'map' ? (
          <MapView locations={filteredLocations} selectedCity={selectedCity} onSelectLocation={openMenu} />
        ) : (
          <>
            <div className="location-grid" style={{ padding: 0 }}>
              {filteredLocations.slice(0, visibleCount).map((location) => (
                <LocationCard
                  key={location.id}
                  location={location}
                  onOpenMenuModal={openMenu}
                  onOpenReviewModal={openReview}
                />
              ))}
            </div>
            {visibleCount < filteredLocations.length && (
              <div style={{ textAlign: 'center', marginTop: 28 }}>
                <button className="btn-secondary load-more" onClick={() => setVisibleCount((c) => c + PAGE_SIZE)}>
                  Prikaži več ({filteredLocations.length - visibleCount})
                </button>
              </div>
            )}
          </>
        )}

        {filteredLocations.length === 0 && (
          <div className="empty-state">
            <Filter size={36} color="#6b7280" style={{ margin: '0 auto 12px auto' }} />
            <h3>Ni najdenih lokalov</h3>
            <p>Poskusite spremeniti iskalni niz ali izbrati drug kraj.</p>
          </div>
        )}

        {dataSource?.kind === 'local' && (
          <p className="footer-note">
            Baza Supabase ni nastavljena – ocene se shranjujejo samo v tem brskalniku. Navodila so v README.md.
          </p>
        )}
        {dataSource?.kind === 'error' && (
          <p className="footer-note footer-note--error">
            Napaka baze Supabase: {dataSource.message}. V Supabase SQL Editorju zaženi supabase/schema.sql in
            seed_supabase.sql (glej README.md).
          </p>
        )}
        {dataSource?.kind === 'supabase' && !dataSource.locationsFromDb && (
          <p className="footer-note">
            Tabela »locations« v Supabase je prazna – lokali so prikazani iz datoteke. Zaženi seed_supabase.sql.
          </p>
        )}
      </section>

      <DailyMenuModal
        location={activeMenuLocation}
        onClose={closeMenu}
        onOpenReviewModal={openReview}
        onMenuLoaded={handleMenuLoaded}
      />

      <ReviewModal location={activeReviewLocation} onClose={closeReview} onAddReview={handleAddReview} />
    </main>
  );
}
