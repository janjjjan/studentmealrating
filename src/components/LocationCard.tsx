'use client';

import { MapPin, Star, Clock, Utensils, MessageSquare, Leaf, Truck, Accessibility, Salad } from 'lucide-react';
import { LocationWithDetails } from '@/lib/supabase/types';
import { formatEur } from '@/lib/data';

interface LocationCardProps {
  location: LocationWithDetails;
  onOpenMenuModal: (loc: LocationWithDetails) => void;
  onOpenReviewModal: (loc: LocationWithDetails) => void;
}

const FEATURE_ICONS: Record<string, React.ReactNode> = {
  Brezmesno: <Leaf size={12} />,
  Dostava: <Truck size={12} />,
  'Dostop za invalide': <Accessibility size={12} />,
  'Solatni bar': <Salad size={12} />,
};

export function LocationCard({ location, onOpenMenuModal, onOpenReviewModal }: LocationCardProps) {
  const dishes = location.daily_menu?.dishes || [];
  const firstHoursLine = location.opening_hours?.split('\n')[0];

  return (
    <div className="glass-panel card">
      <div>
        <div className="card-top">
          <div style={{ minWidth: 0 }}>
            <h3 className="location-title">{location.name}</h3>
            <div className="location-address">
              <MapPin size={14} color="#10b981" style={{ flexShrink: 0 }} />
              <span>{location.address || 'Neznan naslov'}</span>
            </div>
          </div>
          <span className="badge-subsidy" title={`Polna cena obroka: ${formatEur(location.meal_price)}`}>
            {location.subsidy_price === 0 ? 'Brez doplačila' : formatEur(location.subsidy_price)}
          </span>
        </div>

        <div style={{ display: 'flex', alignItems: 'center', gap: '10px', flexWrap: 'wrap', marginBottom: 14 }}>
          {location.review_count > 0 ? (
            <div className="rating-badge" style={{ margin: 0 }} title="Povprečje ocen uporabnikov">
              <Star size={15} fill="#f59e0b" />
              <span>
                {location.avg_rating!.toFixed(1)}{' '}
                <span style={{ fontWeight: 400, color: '#9ca3af', fontSize: '0.8rem' }}>
                  ({location.review_count} {location.review_count === 1 ? 'ocena' : 'ocen'})
                </span>
              </span>
            </div>
          ) : (
            <div className="rating-badge rating-badge--empty" style={{ margin: 0 }}>
              <Star size={15} />
              <span>Še brez ocen</span>
            </div>
          )}
        </div>

        {firstHoursLine && (
          <div className="hours-text">
            <Clock size={13} color="#9ca3af" />
            <span>{firstHoursLine}</span>
          </div>
        )}

        {location.features.length > 0 && (
          <div className="feature-chips">
            {location.features.map((f) => (
              <span key={f} className="feature-chip">
                {FEATURE_ICONS[f]}
                {f}
              </span>
            ))}
          </div>
        )}

        <div className="dishes-preview">
          <div className="dishes-preview-title">
            <Utensils size={14} />
            <span>Današnji meni</span>
          </div>
          {dishes.length > 0 ? (
            <>
              {dishes.slice(0, 2).map((dish, idx) => (
                <div key={idx} className="dish-item">
                  • {dish}
                </div>
              ))}
              {dishes.length > 2 && (
                <div style={{ fontSize: '0.78rem', color: '#10b981', marginTop: '6px', fontWeight: 600 }}>
                  + še {dishes.length - 2} {dishes.length - 2 === 1 ? 'meni' : 'menijev'}
                </div>
              )}
            </>
          ) : (
            <div className="dish-item" style={{ color: '#9ca3af' }}>
              Klikni »Meni &amp; mnenja« za današnjo ponudbo.
            </div>
          )}
        </div>
      </div>

      <div className="card-actions">
        <button onClick={() => onOpenMenuModal(location)} className="btn-secondary">
          <Utensils size={15} />
          <span>Meni &amp; mnenja</span>
        </button>
        <button onClick={() => onOpenReviewModal(location)} className="btn-primary">
          <MessageSquare size={15} />
          <span>Oceni</span>
        </button>
      </div>
    </div>
  );
}
