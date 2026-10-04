'use client';

import { useState, useEffect } from 'react';
import { Search, Filter, Map, LayoutGrid } from 'lucide-react';
import dynamic from 'next/dynamic';
import { User } from '@supabase/supabase-js';
import { createClient } from '@/lib/supabase/client';
import { LocationWithDetails, Review } from '@/lib/supabase/types';
import { INITIAL_LOCATIONS } from '@/lib/mockData';

import { Header } from '@/components/Header';
import { LocationCard } from '@/components/LocationCard';
import { AuthModal } from '@/components/AuthModal';
import { ReviewModal } from '@/components/ReviewModal';
import { DailyMenuModal } from '@/components/DailyMenuModal';
import { SqlSeedBanner } from '@/components/SqlSeedBanner';

// Dynamic import for Leaflet map component (CSR only)
const MapView = dynamic(() => import('@/components/MapView'), {
  ssr: false,
  loading: () => (
    <div style={{ height: '480px', display: 'flex', alignItems: 'center', justifyContent: 'center', background: 'rgba(19, 25, 39, 0.75)', borderRadius: '16px', color: '#10b981' }}>
      Nalaganje zemljevida lokalov...
    </div>
  ),
});

export default function Home() {
  const [user, setUser] = useState<User | null>(null);
  const [locations, setLocations] = useState<LocationWithDetails[]>(INITIAL_LOCATIONS);
  const [searchQuery, setSearchQuery] = useState('');
  const [selectedCity, setSelectedCity] = useState('Vsi');
  const [sortBy, setSortBy] = useState<'rating' | 'price'>('rating');
  const [viewMode, setViewMode] = useState<'grid' | 'map'>('grid');

  // Modal states
  const [isAuthModalOpen, setIsAuthModalOpen] = useState(false);
  const [activeMenuLocation, setActiveMenuLocation] = useState<LocationWithDetails | null>(null);
  const [activeReviewLocation, setActiveReviewLocation] = useState<LocationWithDetails | null>(null);

  // Initial fetch from Supabase if connected
  useEffect(() => {
    const supabase = createClient();

    supabase.auth.getUser().then(({ data }) => {
      if (data?.user) {
        setUser(data.user);
      }
    });

    const loadSupabaseData = async () => {
      try {
        const { data: locsData, error: locsError } = await supabase
          .from('locations')
          .select(`
            *,
            daily_menus (*),
            reviews (*)
          `);

        if (locsError || !locsData || locsData.length === 0) {
          console.log('Supabase check: Using scraped dataset.');
          return;
        }

        const mappedLocations: LocationWithDetails[] = locsData.map((loc: any) => {
          const reviews = loc.reviews || [];
          const totalRating = reviews.reduce((sum: number, r: any) => sum + (r.rating || 0), 0);
          const avgRating = reviews.length > 0 ? totalRating / reviews.length : undefined;

          const todayStr = new Date().toISOString().split('T')[0];
          const todayMenu = loc.daily_menus?.find((m: any) => m.menu_date === todayStr) || loc.daily_menus?.[0];

          return {
            id: loc.id,
            name: loc.name,
            address: loc.address,
            latitude: loc.latitude,
            longitude: loc.longitude,
            subsidy_price: loc.subsidy_price,
            opening_hours: loc.opening_hours,
            city: loc.address?.includes('Ljubljana') ? 'Ljubljana' :
                  loc.address?.includes('Maribor') ? 'Maribor' :
                  loc.address?.includes('Koper') ? 'Koper' :
                  loc.address?.includes('Celje') ? 'Celje' :
                  loc.address?.includes('Kranj') ? 'Kranj' :
                  loc.address?.includes('Novo mesto') ? 'Novo mesto' : 'Ostalo',
            avg_rating: avgRating,
            review_count: reviews.length,
            daily_menu: todayMenu,
            reviews: reviews,
          };
        });

        setLocations(mappedLocations);
      } catch (err) {
        console.log('Using initial client dataset fallback:', err);
      }
    };

    loadSupabaseData();
  }, []);

  const handleLogout = async () => {
    const supabase = createClient();
    await supabase.auth.signOut();
    setUser(null);
  };

  const handleAddReview = (locationId: string, newReview: Review) => {
    setLocations((prevLocs) =>
      prevLocs.map((loc) => {
        if (loc.id !== locationId) return loc;

        const updatedReviews = [newReview, ...(loc.reviews || [])];
        const sum = updatedReviews.reduce((acc, r) => acc + r.rating, 0);
        const avg = sum / updatedReviews.length;

        return {
          ...loc,
          reviews: updatedReviews,
          avg_rating: avg,
          review_count: updatedReviews.length,
        };
      })
    );
  };

  // Filter & Sort Logic
  const filteredLocations = locations
    .filter((loc) => {
      const matchCity = selectedCity === 'Vsi' || (loc.address && loc.address.toLowerCase().includes(selectedCity.toLowerCase())) || (loc.city && loc.city.toLowerCase() === selectedCity.toLowerCase());
      const query = searchQuery.toLowerCase();
      const matchQuery =
        loc.name.toLowerCase().includes(query) ||
        (loc.address && loc.address.toLowerCase().includes(query)) ||
        loc.daily_menu?.dishes.some((d) => d.toLowerCase().includes(query));

      return matchCity && matchQuery;
    })
    .sort((a, b) => {
      if (sortBy === 'rating') {
        return (b.avg_rating || 0) - (a.avg_rating || 0);
      } else {
        return (a.subsidy_price || 0) - (b.subsidy_price || 0);
      }
    });

  const cities = ['Vsi', 'Ljubljana', 'Maribor', 'Koper', 'Celje', 'Kranj', 'Novo mesto'];

  return (
    <main style={{ minHeight: '100vh', display: 'flex', flexDirection: 'column' }}>
      {/* Header */}
      <Header
        user={user}
        onOpenAuthModal={() => setIsAuthModalOpen(true)}
        onLogout={handleLogout}
      />

      {/* Hero Header */}
      <section className="hero-section">
        <h1 className="hero-title">
          Zemljevid in ocene <span style={{ color: '#10b981' }}>študentskih bonov</span>
        </h1>
        <p className="hero-subtitle">
          Podatki pridobljeni neposredno iz studentska-prehrana.si. Najdite lokal na zemljevidu in preverite današnji meni!
        </p>

        {/* Search Input */}
        <div className="search-bar-wrapper">
          <Search className="search-icon" size={20} />
          <input
            type="text"
            className="search-input"
            placeholder="Išči po restavracijah, jedeh (npr. falafel, čevapi, pizza, burger)..."
            value={searchQuery}
            onChange={(e) => setSearchQuery(e.target.value)}
          />
        </div>

        {/* City Filter Pills, View Mode & Sort options */}
        <div className="filter-tabs">
          {cities.map((city) => (
            <button
              key={city}
              className={`filter-tab ${selectedCity === city ? 'active' : ''}`}
              onClick={() => setSelectedCity(city)}
            >
              {city}
            </button>
          ))}

          {/* View Toggle (Grid vs Map) */}
          <div style={{ marginLeft: '16px', display: 'flex', background: 'rgba(255,255,255,0.06)', borderRadius: '9999px', padding: '3px' }}>
            <button
              onClick={() => setViewMode('grid')}
              style={{
                display: 'flex',
                alignItems: 'center',
                gap: '6px',
                padding: '6px 14px',
                borderRadius: '9999px',
                background: viewMode === 'grid' ? '#10b981' : 'transparent',
                color: viewMode === 'grid' ? 'white' : '#9ca3af',
                fontSize: '0.85rem',
                fontWeight: 600,
                transition: 'all 0.2s ease'
              }}
            >
              <LayoutGrid size={15} />
              <span>Seznam</span>
            </button>
            <button
              onClick={() => setViewMode('map')}
              style={{
                display: 'flex',
                alignItems: 'center',
                gap: '6px',
                padding: '6px 14px',
                borderRadius: '9999px',
                background: viewMode === 'map' ? '#10b981' : 'transparent',
                color: viewMode === 'map' ? 'white' : '#9ca3af',
                fontSize: '0.85rem',
                fontWeight: 600,
                transition: 'all 0.2s ease'
              }}
            >
              <Map size={15} />
              <span>Zemljevid</span>
            </button>
          </div>

          <div style={{ marginLeft: '12px', display: 'flex', alignItems: 'center', gap: '8px' }}>
            <span style={{ fontSize: '0.82rem', color: '#9ca3af' }}>Sortiraj:</span>
            <select
              value={sortBy}
              onChange={(e) => setSortBy(e.target.value as any)}
              style={{
                background: 'rgba(255,255,255,0.06)',
                border: '1px solid rgba(255,255,255,0.1)',
                color: 'white',
                padding: '6px 12px',
                borderRadius: '9999px',
                fontSize: '0.85rem',
                outline: 'none',
                cursor: 'pointer'
              }}
            >
              <option value="rating" style={{ background: '#111726' }}>Najvišja ocena</option>
              <option value="price" style={{ background: '#111726' }}>Najnižje doplačilo</option>
            </select>
          </div>
        </div>
      </section>

      {/* Supabase SQL Helper Banner */}
      <SqlSeedBanner />

      {/* Map View or Grid View */}
      <section style={{ maxWidth: '1280px', width: '100%', margin: '0 auto', padding: '0 24px 60px 24px' }}>
        {viewMode === 'map' ? (
          <MapView
            locations={filteredLocations}
            selectedCity={selectedCity}
            onSelectLocation={(loc) => setActiveMenuLocation(loc)}
          />
        ) : (
          <div className="location-grid" style={{ padding: 0 }}>
            {filteredLocations.map((location) => (
              <LocationCard
                key={location.id}
                location={location}
                onOpenMenuModal={(loc) => setActiveMenuLocation(loc)}
                onOpenReviewModal={(loc) => setActiveReviewLocation(loc)}
              />
            ))}
          </div>
        )}

        {filteredLocations.length === 0 && (
          <div
            style={{
              textAlign: 'center',
              padding: '60px 20px',
              background: 'rgba(255, 255, 255, 0.02)',
              borderRadius: '16px',
              border: '1px dashed rgba(255, 255, 255, 0.08)'
            }}
          >
            <Filter size={36} color="#6b7280" style={{ margin: '0 auto 12px auto' }} />
            <h3 style={{ fontSize: '1.2rem', color: 'white', marginBottom: '6px' }}>Ni najdenih lokalov za vaše iskanje</h3>
            <p style={{ color: '#9ca3af', fontSize: '0.9rem' }}>
              Poskusite spremeniti iskalni niz ali izbrati drug kraj.
            </p>
          </div>
        )}
      </section>

      {/* Modals */}
      <AuthModal
        isOpen={isAuthModalOpen}
        onClose={() => setIsAuthModalOpen(false)}
      />

      <DailyMenuModal
        location={activeMenuLocation}
        onClose={() => setActiveMenuLocation(null)}
        onOpenReviewModal={(loc) => setActiveReviewLocation(loc)}
      />

      <ReviewModal
        location={activeReviewLocation}
        user={user}
        onClose={() => setActiveReviewLocation(null)}
        onAddReview={handleAddReview}
      />
    </main>
  );
}
