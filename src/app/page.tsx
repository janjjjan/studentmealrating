'use client';

import { useState, useEffect } from 'react';
import { Search, Sparkles, Filter, ShieldCheck, PlusCircle } from 'lucide-react';
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

export default function Home() {
  const [user, setUser] = useState<User | null>(null);
  const [locations, setLocations] = useState<LocationWithDetails[]>(INITIAL_LOCATIONS);
  const [searchQuery, setSearchQuery] = useState('');
  const [selectedCity, setSelectedCity] = useState('Vsi');
  const [sortBy, setSortBy] = useState<'rating' | 'price'>('rating');

  // Modal states
  const [isAuthModalOpen, setIsAuthModalOpen] = useState(false);
  const [activeMenuLocation, setActiveMenuLocation] = useState<LocationWithDetails | null>(null);
  const [activeReviewLocation, setActiveReviewLocation] = useState<LocationWithDetails | null>(null);

  // Supabase Auth listener & initial fetch
  useEffect(() => {
    const supabase = createClient();

    // Get current user
    supabase.auth.getUser().then(({ data }) => {
      if (data?.user) {
        setUser(data.user);
      }
    });

    // Listen for auth state changes (e.g. login via Google redirect)
    const { data: authListener } = supabase.auth.onAuthStateChange(
      (_event, session) => {
        setUser(session?.user ?? null);
      }
    );

    // Fetch locations & daily menus from Supabase
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
          console.log('Supabase check: No remote rows found or DB setup pending. Using demo dataset.');
          return;
        }

        // Map Supabase rows to our interface
        const mappedLocations: LocationWithDetails[] = locsData.map((loc: any) => {
          const reviews = loc.reviews || [];
          const totalRating = reviews.reduce((sum: number, r: any) => sum + (r.rating || 0), 0);
          const avgRating = reviews.length > 0 ? totalRating / reviews.length : undefined;

          // Find today's daily menu
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
                  loc.address?.includes('Koper') ? 'Koper' : 'Ostalo',
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

    return () => {
      authListener.subscription.unsubscribe();
    };
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
      const matchCity = selectedCity === 'Vsi' || (loc.address && loc.address.toLowerCase().includes(selectedCity.toLowerCase()));
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

  const cities = ['Vsi', 'Ljubljana', 'Maribor', 'Koper'];

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
          Najboljše ocene <span style={{ color: '#10b981' }}>študentskih bonov</span> v Sloveniji
        </h1>
        <p className="hero-subtitle">
          Pregledujte dneve menije, primerjajte doplačila in preberite pristna mnenja študentov.
        </p>

        {/* Search Input */}
        <div className="search-bar-wrapper">
          <Search className="search-icon" size={20} />
          <input
            type="text"
            className="search-input"
            placeholder="Išči po restavracijah, jedeh (npr. dunajski, burrito, pizza)..."
            value={searchQuery}
            onChange={(e) => setSearchQuery(e.target.value)}
          />
        </div>

        {/* City Filter Pills & Sort options */}
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

          <div style={{ marginLeft: '12px', display: 'flex', alignItems: 'center', gap: '8px' }}>
            <span style={{ fontSize: '0.82rem', color: '#9ca3af' }}>Sortiraj po:</span>
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

      {/* Main Location Grid */}
      <section className="location-grid">
        {filteredLocations.map((location) => (
          <LocationCard
            key={location.id}
            location={location}
            onOpenMenuModal={(loc) => setActiveMenuLocation(loc)}
            onOpenReviewModal={(loc) => setActiveReviewLocation(loc)}
          />
        ))}

        {filteredLocations.length === 0 && (
          <div
            style={{
              gridColumn: '1 / -1',
              textAlign: 'center',
              padding: '60px 20px',
              background: 'rgba(255, 255, 255, 0.02)',
              borderRadius: '16px',
              border: '1px dashed rgba(255, 255, 255, 0.08)'
            }}
          >
            <Filter size={36} color="#6b7280" style={{ margin: '0 auto 12px auto' }} />
            <h3 style={{ fontSize: '1.2rem', color: 'white', marginBottom: '6px' }}>Ni najdenih lokacij za vaše iskanje</h3>
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
        onOpenAuthModal={() => {
          setActiveReviewLocation(null);
          setIsAuthModalOpen(true);
        }}
      />
    </main>
  );
}
