'use client';

import { useEffect, useState } from 'react';
import { X, Utensils, Star, Clock, MapPin, Euro, MessageSquare, ExternalLink, Info, Loader2 } from 'lucide-react';
import { DailyMenu, LocationWithDetails } from '@/lib/supabase/types';
import { fetchLiveMenu, formatEur } from '@/lib/data';
import { SP_BASE } from '@/lib/menuParser';

interface DailyMenuModalProps {
  location: LocationWithDetails | null;
  onClose: () => void;
  onOpenReviewModal: (loc: LocationWithDetails) => void;
  onMenuLoaded: (locationId: string, menu: DailyMenu) => void;
}

export function DailyMenuModal({ location, onClose, onOpenReviewModal, onMenuLoaded }: DailyMenuModalProps) {
  const [loading, setLoading] = useState(false);
  const [error, setError] = useState<string | null>(null);

  const locationId = location?.id;
  const hasMenu = !!location?.daily_menu;

  useEffect(() => {
    if (!locationId || hasMenu) return;
    let cancelled = false;
    setLoading(true);
    setError(null);
    fetchLiveMenu(locationId)
      .then((menu) => !cancelled && onMenuLoaded(locationId, menu))
      .catch((e) => !cancelled && setError(e.message))
      .finally(() => !cancelled && setLoading(false));
    return () => {
      cancelled = true;
    };
  }, [locationId, hasMenu, onMenuLoaded]);

  useEffect(() => {
    if (!location) return;
    const onKey = (e: KeyboardEvent) => e.key === 'Escape' && onClose();
    window.addEventListener('keydown', onKey);
    return () => window.removeEventListener('keydown', onKey);
  }, [location, onClose]);

  if (!location) return null;
  const dishes = location.daily_menu?.dishes || [];
  const detailsUrl = `${SP_BASE}/sl/restaurant/Details/${location.id}`;

  return (
    <div className="modal-overlay" onClick={onClose}>
      <div className="modal-content" style={{ maxWidth: '660px' }} onClick={(e) => e.stopPropagation()} role="dialog" aria-modal="true" aria-label={location.name}>
        <button className="modal-close" onClick={onClose} aria-label="Zapri">
          <X size={20} />
        </button>

        <div style={{ marginBottom: '20px' }}>
          <div style={{ display: 'flex', alignItems: 'center', gap: '10px', marginBottom: '8px', flexWrap: 'wrap' }}>
            <span className="badge-subsidy">
              <Euro size={14} style={{ display: 'inline', marginRight: '2px', verticalAlign: '-2px' }} />
              Doplačilo: {formatEur(location.subsidy_price)}
            </span>
            <span style={{ fontSize: '0.8rem', color: '#9ca3af' }}>Polna cena: {formatEur(location.meal_price)}</span>
            <div className="rating-badge" style={{ margin: 0 }}>
              <Star size={14} fill="#f59e0b" />
              <span>
                {location.review_count > 0
                  ? `${location.avg_rating!.toFixed(1)} (${location.review_count} ${location.review_count === 1 ? 'ocena' : 'ocen'})`
                  : 'Še brez ocen'}
              </span>
            </div>
          </div>

          <h2 style={{ fontSize: '1.6rem', fontWeight: 800, color: 'white', marginBottom: '8px', paddingRight: 32 }}>
            {location.name}
          </h2>

          <div style={{ color: '#9ca3af', fontSize: '0.88rem', display: 'flex', flexDirection: 'column', gap: '6px' }}>
            <div style={{ display: 'flex', alignItems: 'center', gap: '6px' }}>
              <MapPin size={15} color="#10b981" />
              <span>{location.address || 'Neznan naslov'}</span>
            </div>
            {location.opening_hours && (
              <div style={{ display: 'flex', alignItems: 'flex-start', gap: '6px' }}>
                <Clock size={15} color="#3b82f6" style={{ marginTop: 2 }} />
                <span style={{ whiteSpace: 'pre-line' }}>{location.opening_hours}</span>
              </div>
            )}
            {location.notice && (
              <div style={{ display: 'flex', alignItems: 'flex-start', gap: '6px', color: '#fbbf24' }}>
                <Info size={15} style={{ marginTop: 2, flexShrink: 0 }} />
                <span>{location.notice}</span>
              </div>
            )}
            <a href={detailsUrl} target="_blank" rel="noopener noreferrer" className="external-link">
              <ExternalLink size={14} /> Odpri na studentska-prehrana.si
            </a>
          </div>
        </div>

        <div style={{ marginBottom: '28px' }}>
          <h3 className="modal-section-title" style={{ color: '#10b981' }}>
            <Utensils size={18} /> Današnja ponudba
          </h3>

          {loading ? (
            <div className="empty-box" style={{ display: 'flex', alignItems: 'center', gap: 8 }}>
              <Loader2 size={16} className="spin" /> Nalagam današnji meni …
            </div>
          ) : error ? (
            <div className="empty-box">
              {error}{' '}
              <a href={detailsUrl} target="_blank" rel="noopener noreferrer" style={{ color: '#10b981' }}>
                Poglej meni na uradni strani.
              </a>
            </div>
          ) : dishes.length > 0 ? (
            <div style={{ display: 'flex', flexDirection: 'column', gap: '8px', maxHeight: 280, overflowY: 'auto' }}>
              {dishes.map((dish, idx) => (
                <div key={idx} className="dish-row">
                  <span className="dish-num">{idx + 1}</span>
                  {dish}
                </div>
              ))}
            </div>
          ) : (
            <div className="empty-box">Za danes lokal nima objavljenega menija (morda je zaprt).</div>
          )}
        </div>

        <div>
          <div style={{ display: 'flex', alignItems: 'center', justifyContent: 'space-between', marginBottom: '12px', gap: 12 }}>
            <h3 className="modal-section-title" style={{ margin: 0 }}>
              <MessageSquare size={18} color="#f59e0b" /> Mnenja študentov ({location.review_count})
            </h3>
            <button
              onClick={() => {
                onClose();
                onOpenReviewModal(location);
              }}
              className="btn-primary"
              style={{ padding: '6px 14px', fontSize: '0.82rem', flex: 'none' }}
            >
              Napiši oceno
            </button>
          </div>

          {location.reviews.length > 0 ? (
            <div style={{ display: 'flex', flexDirection: 'column', gap: '12px', maxHeight: '260px', overflowY: 'auto' }}>
              {location.reviews.map((rev) => (
                <div key={rev.id} className="review-item">
                  <div style={{ display: 'flex', alignItems: 'center', justifyContent: 'space-between', marginBottom: '6px', gap: 8 }}>
                    <span style={{ fontSize: '0.85rem', fontWeight: 600, color: '#e5e7eb' }}>
                      {rev.author_name || 'Študent'}
                      <span style={{ fontWeight: 400, color: '#6b7280', marginLeft: 8, fontSize: '0.78rem' }}>
                        {new Date(rev.created_at).toLocaleDateString('sl-SI')}
                        {rev.local_only && ' · samo na tej napravi'}
                      </span>
                    </span>
                    <div style={{ display: 'flex', alignItems: 'center', gap: '4px', color: '#f59e0b', fontSize: '0.85rem', fontWeight: 700 }}>
                      <Star size={14} fill="#f59e0b" />
                      <span>{rev.rating}/5</span>
                    </div>
                  </div>
                  {rev.comment && <p style={{ fontSize: '0.88rem', color: '#9ca3af', lineHeight: '1.45' }}>{rev.comment}</p>}
                </div>
              ))}
            </div>
          ) : (
            <div className="empty-box" style={{ textAlign: 'center' }}>
              Bodi prvi, ki oceni ta lokal!
            </div>
          )}
        </div>
      </div>
    </div>
  );
}
