'use client';

import { X, Utensils, Star, Clock, MapPin, Euro, MessageSquare } from 'lucide-react';
import { LocationWithDetails } from '@/lib/supabase/types';

interface DailyMenuModalProps {
  location: LocationWithDetails | null;
  onClose: () => void;
  onOpenReviewModal: (loc: LocationWithDetails) => void;
}

export function DailyMenuModal({
  location,
  onClose,
  onOpenReviewModal,
}: DailyMenuModalProps) {
  if (!location) return null;

  return (
    <div className="modal-overlay" onClick={onClose}>
      <div className="modal-content" style={{ maxWidth: '640px' }} onClick={(e) => e.stopPropagation()}>
        <button className="modal-close" onClick={onClose}>
          <X size={20} />
        </button>

        <div style={{ marginBottom: '20px' }}>
          <div style={{ display: 'flex', alignItems: 'center', gap: '10px', marginBottom: '6px' }}>
            <span className="badge-subsidy">
              <Euro size={14} style={{ display: 'inline', marginRight: '2px' }} />
              Doplačilo: €{location.subsidy_price?.toFixed(2) || '0.00'}
            </span>
            <div className="rating-badge" style={{ margin: 0 }}>
              <Star size={14} fill="#f59e0b" />
              <span>{location.avg_rating?.toFixed(1) || 'N/A'} ({location.review_count || 0} ocen)</span>
            </div>
          </div>

          <h2 style={{ fontSize: '1.6rem', fontWeight: 800, color: 'white', marginBottom: '8px' }}>
            {location.name}
          </h2>

          <div style={{ color: '#9ca3af', fontSize: '0.88rem', display: 'flex', flexDirection: 'column', gap: '4px' }}>
            <div style={{ display: 'flex', alignItems: 'center', gap: '6px' }}>
              <MapPin size={15} color="#10b981" />
              <span>{location.address || 'Neznan naslov'}</span>
            </div>
            {location.opening_hours && (
              <div style={{ display: 'flex', alignItems: 'center', gap: '6px' }}>
                <Clock size={15} color="#3b82f6" />
                <span>{location.opening_hours}</span>
              </div>
            )}
          </div>
        </div>

        {/* Daily Dishes Section */}
        <div style={{ marginBottom: '28px' }}>
          <h3 style={{ fontSize: '1.05rem', fontWeight: 700, color: '#10b981', marginBottom: '12px', display: 'flex', alignItems: 'center', gap: '8px' }}>
            <Utensils size={18} /> Današnja ponudba študentskih bonov
          </h3>

          {location.daily_menu && location.daily_menu.dishes.length > 0 ? (
            <div style={{ display: 'flex', flexDirection: 'column', gap: '10px' }}>
              {location.daily_menu.dishes.map((dish, idx) => (
                <div
                  key={idx}
                  style={{
                    padding: '12px 16px',
                    background: 'rgba(255, 255, 255, 0.04)',
                    border: '1px solid rgba(255, 255, 255, 0.08)',
                    borderRadius: '10px',
                    fontSize: '0.92rem',
                    color: '#f3f4f6',
                    lineHeight: '1.5'
                  }}
                >
                  {dish}
                </div>
              ))}
            </div>
          ) : (
            <div style={{ padding: '16px', background: 'rgba(255,255,255,0.02)', borderRadius: '10px', color: '#9ca3af', fontSize: '0.9rem' }}>
              Za danes še ni vnesenega podrobnega menija za to lokacijo.
            </div>
          )}
        </div>

        {/* Reviews Section */}
        <div>
          <div style={{ display: 'flex', alignItems: 'center', justifyContent: 'space-between', marginBottom: '12px' }}>
            <h3 style={{ fontSize: '1.05rem', fontWeight: 700, color: 'white', display: 'flex', alignItems: 'center', gap: '8px' }}>
              <MessageSquare size={18} color="#f59e0b" /> Mnenja študentov ({location.reviews?.length || 0})
            </h3>
            <button
              onClick={() => {
                onClose();
                onOpenReviewModal(location);
              }}
              className="btn-primary"
              style={{ padding: '6px 14px', fontSize: '0.82rem' }}
            >
              Napiši oceno
            </button>
          </div>

          {location.reviews && location.reviews.length > 0 ? (
            <div style={{ display: 'flex', flexDirection: 'column', gap: '12px', maxHeight: '240px', overflowY: 'auto' }}>
              {location.reviews.map((rev) => (
                <div
                  key={rev.id}
                  style={{
                    padding: '12px 14px',
                    background: 'rgba(0, 0, 0, 0.25)',
                    border: '1px solid rgba(255, 255, 255, 0.05)',
                    borderRadius: '10px'
                  }}
                >
                  <div style={{ display: 'flex', alignItems: 'center', justifyContent: 'space-between', marginBottom: '6px' }}>
                    <span style={{ fontSize: '0.85rem', fontWeight: 600, color: '#e5e7eb' }}>
                      {rev.user_email || 'Študent'}
                    </span>
                    <div style={{ display: 'flex', alignItems: 'center', gap: '4px', color: '#f59e0b', fontSize: '0.85rem', fontWeight: 700 }}>
                      <Star size={14} fill="#f59e0b" />
                      <span>{rev.rating}/5</span>
                    </div>
                  </div>
                  <p style={{ fontSize: '0.88rem', color: '#9ca3af', lineHeight: '1.4' }}>
                    &ldquo;{rev.comment}&rdquo;
                  </p>
                </div>
              ))}
            </div>
          ) : (
            <div style={{ padding: '16px', background: 'rgba(255,255,255,0.02)', borderRadius: '10px', color: '#9ca3af', fontSize: '0.9rem', textAlign: 'center' }}>
              Bodi prvi študent, ki bo napisal oceno za to lokacijo!
            </div>
          )}
        </div>
      </div>
    </div>
  );
}
