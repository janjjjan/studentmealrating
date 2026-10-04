'use client';

import { useEffect, useState } from 'react';
import { X, Star, Send, UserCheck, AlertTriangle } from 'lucide-react';
import { LocationWithDetails, Review } from '@/lib/supabase/types';
import { submitReview } from '@/lib/data';
import { isSupabaseConfigured } from '@/lib/supabase/client';
import { useNickname } from '@/lib/nickname';

interface ReviewModalProps {
  location: LocationWithDetails | null;
  onClose: () => void;
  onAddReview: (locationId: string, newReview: Review) => void;
}

const LABELS = ['', 'Slabo', 'Povprečno', 'Dobro', 'Zelo dobro', 'Odlično'];
const CATEGORIES = [
  { key: 'rating_quantity', label: 'Količina', hint: 'velikost porcije' },
  { key: 'rating_price', label: 'Cena', hint: 'vrednost za denar' },
  { key: 'rating_quality', label: 'Kvaliteta', hint: 'okus in svežina' },
] as const;
type CategoryKey = (typeof CATEGORIES)[number]['key'];

export function ReviewModal({ location, onClose, onAddReview }: ReviewModalProps) {
  const [nickname, setNickname] = useNickname();
  const [ratings, setRatings] = useState<Record<CategoryKey, number>>({ rating_quantity: 5, rating_price: 5, rating_quality: 5 });
  const [hover, setHover] = useState<{ key: CategoryKey; value: number } | null>(null);
  const [comment, setComment] = useState('');
  const [authorName, setAuthorName] = useState('');
  const [submitting, setSubmitting] = useState(false);
  const [error, setError] = useState<string | null>(null);

  // ob odprtju obrazca: predizpolni vzdevek, počisti prejšnje stanje
  useEffect(() => {
    if (location) {
      setAuthorName(nickname);
      setRatings({ rating_quantity: 5, rating_price: 5, rating_quality: 5 });
      setComment('');
      setError(null);
    }
    // eslint-disable-next-line react-hooks/exhaustive-deps
  }, [location?.id]);

  useEffect(() => {
    if (!location) return;
    const onKey = (e: KeyboardEvent) => e.key === 'Escape' && onClose();
    window.addEventListener('keydown', onKey);
    return () => window.removeEventListener('keydown', onKey);
  }, [location, onClose]);

  if (!location) return null;

  const handleSubmit = async (e: React.FormEvent) => {
    e.preventDefault();
    if (submitting) return;
    const name = authorName.trim() || 'Anonimni študent';
    setNickname(name);
    setSubmitting(true);
    setError(null);
    try {
      const review = await submitReview({
        location_id: location.id,
        author_name: name,
        ...ratings,
        comment: comment.trim(),
      });
      onAddReview(location.id, review);
      onClose();
    } catch (err) {
      setError(
        `Ocene ni bilo mogoče shraniti (${err instanceof Error ? err.message : 'neznana napaka'}). Ste v Supabase zagnali supabase/schema.sql?`
      );
    } finally {
      setSubmitting(false);
    }
  };

  const average = (ratings.rating_quantity + ratings.rating_price + ratings.rating_quality) / 3;

  return (
    <div className="modal-overlay" onClick={onClose}>
      <div className="modal-content" onClick={(e) => e.stopPropagation()} role="dialog" aria-modal="true" aria-label="Dodaj oceno">
        <button className="modal-close" onClick={onClose} aria-label="Zapri">
          <X size={20} />
        </button>

        <h2 style={{ fontSize: '1.4rem', fontWeight: 800, color: 'white', marginBottom: '4px' }}>Oceni lokal</h2>
        <p style={{ color: '#10b981', fontWeight: 600, fontSize: '0.95rem', marginBottom: '20px' }}>{location.name}</p>

        {!isSupabaseConfigured && (
          <div className="notice-box">
            <AlertTriangle size={16} style={{ flexShrink: 0 }} />
            <span>Baza še ni povezana – ocena bo shranjena samo v tem brskalniku.</span>
          </div>
        )}

        <form onSubmit={handleSubmit}>
          <div className="form-group">
            <label className="form-label" htmlFor="author" style={{ display: 'flex', alignItems: 'center', gap: '6px' }}>
              <UserCheck size={16} color="#10b981" /> Vzdevek
            </label>
            <input
              id="author"
              type="text"
              className="form-input"
              placeholder="Npr. Jan K. ali Študent FRI"
              value={authorName}
              maxLength={40}
              onChange={(e) => setAuthorName(e.target.value)}
              required
            />
          </div>

          <div className="form-group">
            <label className="form-label">Ocena</label>
            {CATEGORIES.map(({ key, label, hint }) => {
              const shown = hover?.key === key ? hover.value : ratings[key];
              return (
                <div key={key} style={{ display: 'flex', alignItems: 'center', justifyContent: 'space-between', gap: 8, marginBottom: 6 }}>
                  <div style={{ minWidth: 92 }}>
                    <div style={{ fontWeight: 600, color: '#e5e7eb', fontSize: '0.92rem' }}>{label}</div>
                    <div style={{ fontSize: '0.72rem', color: '#6b7280' }}>{hint}</div>
                  </div>
                  <div className="star-rating-input" onMouseLeave={() => setHover(null)}>
                    {[1, 2, 3, 4, 5].map((star) => (
                      <button
                        key={star}
                        type="button"
                        aria-label={`${label}: ${star} od 5`}
                        className={`star-btn ${shown >= star ? 'selected' : ''}`}
                        onClick={() => setRatings((r) => ({ ...r, [key]: star }))}
                        onMouseEnter={() => setHover({ key, value: star })}
                      >
                        <Star size={26} fill={shown >= star ? '#f59e0b' : 'none'} />
                      </button>
                    ))}
                  </div>
                </div>
              );
            })}
            <div style={{ marginTop: 8, fontWeight: 700, color: '#f59e0b' }}>
              Skupaj: {average.toFixed(1).replace('.', ',')}/5 · {LABELS[Math.round(average)]}
            </div>
          </div>

          <div className="form-group">
            <label className="form-label" htmlFor="comment">
              Komentar <span style={{ color: '#6b7280', fontWeight: 400 }}>(neobvezno)</span>
            </label>
            <textarea
              id="comment"
              className="form-textarea"
              placeholder="Velikost porcije, okus, prijaznost osebja, čakanje …"
              value={comment}
              maxLength={1000}
              onChange={(e) => setComment(e.target.value)}
            />
            <div style={{ textAlign: 'right', fontSize: '0.75rem', color: '#6b7280', marginTop: 4 }}>{comment.length}/1000</div>
          </div>

          {error && <div className="error-box">{error}</div>}

          <button type="submit" disabled={submitting} className="btn-primary" style={{ width: '100%', padding: '12px' }}>
            <Send size={18} />
            <span>{submitting ? 'Pošiljam …' : 'Objavi oceno'}</span>
          </button>
        </form>
      </div>
    </div>
  );
}
