'use client';

import { MapPin, Star, Clock, Utensils, MessageSquare } from 'lucide-react';
import { LocationWithDetails } from '@/lib/supabase/types';

interface LocationCardProps {
  location: LocationWithDetails;
  onOpenMenuModal: (loc: LocationWithDetails) => void;
  onOpenReviewModal: (loc: LocationWithDetails) => void;
}

export function LocationCard({
  location,
  onOpenMenuModal,
  onOpenReviewModal,
}: LocationCardProps) {
  const dishes = location.daily_menu?.dishes || [];
  const previewDishes = dishes.slice(0, 2);

  return (
    <div className="glass-panel card">
      <div>
        {/* Card Header: Title & Subsidy Price */}
        <div className="card-top">
          <div>
            <h3 className="location-title">{location.name}</h3>
            <div className="location-address">
              <MapPin size={14} color="#10b981" />
              <span>{location.address || 'Neznan naslov'}</span>
            </div>
          </div>
          <span className="badge-subsidy">
            €{location.subsidy_price?.toFixed(2) || '0.00'}
          </span>
        </div>

        {/* Rating & Opening Hours */}
        <div style={{ display: 'flex', alignItems: 'center', gap: '12px', flexWrap: 'wrap' }}>
          <div className="rating-badge">
            <Star size={15} fill="#f59e0b" />
            <span>
              {location.avg_rating ? location.avg_rating.toFixed(1) : 'N/A'}{' '}
              <span style={{ fontWeight: 400, color: '#9ca3af', fontSize: '0.8rem' }}>
                ({location.review_count || 0})
              </span>
            </span>
          </div>

          {location.opening_hours && (
            <div className="hours-text">
              <Clock size={13} color="#9ca3af" />
              <span>{location.opening_hours}</span>
            </div>
          )}
        </div>

        {/* Daily Menu Preview */}
        <div className="dishes-preview">
          <div className="dishes-preview-title">
            <Utensils size={14} />
            <span>Današnji meni ({dishes.length} možnosti)</span>
          </div>
          {previewDishes.length > 0 ? (
            previewDishes.map((dish, idx) => (
              <div key={idx} className="dish-item">
                • {dish}
              </div>
            ))
          ) : (
            <div className="dish-item" style={{ color: '#9ca3af' }}>
              Ni vnesenega menija za danes.
            </div>
          )}
          {dishes.length > 2 && (
            <div style={{ fontSize: '0.78rem', color: '#10b981', marginTop: '6px', fontWeight: 600 }}>
              + še {dishes.length - 2} dodatni meniji...
            </div>
          )}
        </div>
      </div>

      {/* Action Buttons */}
      <div className="card-actions">
        <button
          onClick={() => onOpenMenuModal(location)}
          className="btn-secondary"
        >
          <Utensils size={15} />
          <span>Meni & Mnenja</span>
        </button>

        <button
          onClick={() => onOpenReviewModal(location)}
          className="btn-primary"
        >
          <MessageSquare size={15} />
          <span>Oceni</span>
        </button>
      </div>
    </div>
  );
}
