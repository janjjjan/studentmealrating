'use client';

import { useState, useEffect, useMemo, useCallback } from 'react';
import { Search, Filter, SlidersHorizontal, Map as MapIcon, LayoutGrid } from 'lucide-react';
import dynamic from 'next/dynamic';
import { DailyMenu, LocationWithDetails, Review } from '@/lib/supabase/types';
import { DAYS, initialLocations, isOpenAt, loadDetails, nowInSlovenia, withStats, type DataSource } from '@/lib/data';

import { Header } from '@/components/Header';
import { LocationCard } from '@/components/LocationCard';
import { ReviewModal } from '@/components/ReviewModal';
import { DailyMenuModal } from '@/components/DailyMenuModal';

const MapView = dynamic(() => import('@/components/MapView'), {
  ssr: false,
  loading: () => <div className="map-container map-loading">Nalagam zemljevid …</div>,
});

const MAX_SUBSIDY = 4; // zgornji konec drsnika = brez omejitve
const PAGE_SIZE = 60;
const TAG_ORDER = ['Brezmesno', 'Odprt ob vikendih', 'Solatni bar', 'Dostava', 'Dostop za invalide', 'Pizza'];

function normalize(s: string): string {
  return s.toLocaleLowerCase('sl').normalize('NFD').replace(/[̀-ͯ]/g, '');
}

export default function Home() {
  const [locations, setLocations] = useState<LocationWithDetails[]>(initialLocations);
  const [dataSource, setDataSource] = useState<DataSource | null>(null);
  const [searchQuery, setSearchQuery] = useState('');
  const [maxSubsidy, setMaxSubsidy] = useState(MAX_SUBSIDY);
  const [openAt, setOpenAt] = useState<{ day: number; time: string } | null>(null);
  const [filtersOpen, setFiltersOpen] = useState(false);
  const [selectedTags, setSelectedTags] = useState<string[]>([]);
  const [sortBy, setSortBy] = useState<'rating' | 'price' | 'name'>('rating');
  const [viewMode, setViewMode] = useState<'grid' | 'map'>('map');
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

  useEffect(() => setVisibleCount(PAGE_SIZE), [searchQuery, maxSubsidy, selectedTags, openAt, sortBy]);

  const activeFilters = selectedTags.length + (maxSubsidy < MAX_SUBSIDY ? 1 : 0) + (openAt ? 1 : 0);

  const toggleTag = (tag: string) =>
    setSelectedTags((prev) => (prev.includes(tag) ? prev.filter((t) => t !== tag) : [...prev, tag]));

  const allTags = useMemo(() => {
    const counts = new Map<string, number>();
    for (const l of locations) for (const f of l.features) counts.set(f, (counts.get(f) || 0) + 1);
    const rank = (t: string) => (TAG_ORDER.includes(t) ? TAG_ORDER.indexOf(t) : TAG_ORDER.length);
    return [...counts.entries()].sort((a, b) => rank(a[0]) - rank(b[0]) || b[1] - a[1]);
  }, [locations]);

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
        if (maxSubsidy < MAX_SUBSIDY && (loc.subsidy_price ?? 0) > maxSubsidy) return false;
        if (openAt && !isOpenAt(loc.opening_hours, openAt.day, openAt.time)) return false;
        if (selectedTags.some((t) => !loc.features.includes(t))) return false;
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
        const ra = a.avg_rating ?? 0;
        const rb = b.avg_rating ?? 0;
        return rb - ra || b.review_count - a.review_count || a.name.localeCompare(b.name, 'sl');
      });
  }, [locations, searchQuery, maxSubsidy, selectedTags, openAt, sortBy]);

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

      <section className={`hero-section ${viewMode === 'map' ? 'hero-section--map' : ''}`}>
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

        <div className="toolbar">
          <span className="result-count">
            {filteredLocations.length} {filteredLocations.length === 1 ? 'lokal' : 'lokalov'}
          </span>

          <div className="filter-menu">
            <button
              className={`btn-secondary filter-menu-btn ${activeFilters ? 'has-filters' : ''}`}
              onClick={() => setFiltersOpen((o) => !o)}
              aria-expanded={filtersOpen}
            >
              <SlidersHorizontal size={15} />
              <span>Filtri{activeFilters ? ` (${activeFilters})` : ''}</span>
            </button>
            {filtersOpen && <div className="filter-backdrop" onClick={() => setFiltersOpen(false)} />}
            {filtersOpen && (
              <div className="filter-panel">
                <div className="filter-price">
                  <div className="filter-price-label">
                    <span>Največje doplačilo</span>
                    <b>{maxSubsidy < MAX_SUBSIDY ? `do ${maxSubsidy.toFixed(1).replace('.', ',')} €` : 'ni omejitve'}</b>
                  </div>
                  <input
                    type="range"
                    min={0}
                    max={MAX_SUBSIDY}
                    step={0.1}
                    value={maxSubsidy}
                    onChange={(e) => setMaxSubsidy(Number(e.target.value))}
                  />
                </div>
                <div className="filter-open">
                  <label className="filter-option" style={{ padding: '4px 0' }}>
                    <input
                      type="checkbox"
                      checked={!!openAt}
                      onChange={(e) => setOpenAt(e.target.checked ? nowInSlovenia() : null)}
                    />
                    <span>Odprto ob</span>
                  </label>
                  {openAt && (
                    <div className="filter-open-row">
                      <select value={openAt.day} onChange={(e) => setOpenAt({ ...openAt, day: Number(e.target.value) })}>
                        {DAYS.map((d, i) => (
                          <option key={d} value={i}>{d}</option>
                        ))}
                      </select>
                      <input
                        type="time"
                        value={openAt.time}
                        onChange={(e) => e.target.value && setOpenAt({ ...openAt, time: e.target.value })}
                      />
                      <button type="button" onClick={() => setOpenAt(nowInSlovenia())}>Zdaj</button>
                    </div>
                  )}
                </div>
                {allTags.map(([tag, n]) => (
                  <label key={tag} className="filter-option">
                    <input type="checkbox" checked={selectedTags.includes(tag)} onChange={() => toggleTag(tag)} />
                    <span>{tag}</span>
                    <span className="filter-count">{n}</span>
                  </label>
                ))}
                {activeFilters > 0 && (
                  <button
                    className="filter-clear"
                    onClick={() => {
                      setSelectedTags([]);
                      setMaxSubsidy(MAX_SUBSIDY);
                      setOpenAt(null);
                    }}
                  >
                    Počisti filtre
                  </button>
                )}
              </div>
            )}
          </div>

          <div className="view-toggle">
            <button className={viewMode === 'map' ? 'active' : ''} onClick={() => setViewMode('map')}>
              <MapIcon size={15} />
              <span>Zemljevid</span>
            </button>
            <button className={viewMode === 'grid' ? 'active' : ''} onClick={() => setViewMode('grid')}>
              <LayoutGrid size={15} />
              <span>Seznam</span>
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
          <MapView locations={filteredLocations} onSelectLocation={openMenu} />
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
