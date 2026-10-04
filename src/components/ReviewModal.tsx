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

export function ReviewModal({ location, onClose, onAddReview }: ReviewModalProps) {
  const [nickname, setNickname] = useNickname();
  const [rating, setRating] = useState(5);
  const [hoverRating, setHoverRating] = useState(0);
  const [comment, setComment] = useState('');
  const [authorName, setAuthorName] = useState('');
  const [submitting, setSubmitting] = useState(false);
  const [error, setError] = useState<string | null>(null);

  // ob odprtju obrazca: predizpolni vzdevek, počisti prejšnje stanje
  useEffect(() => {
    if (location) {
      setAuthorName(nickname);
      setRating(5);
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
        rating,
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

  const shown = hoverRating || rating;

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
            <div className="star-rating-input" onMouseLeave={() => setHoverRating(0)}>
              {[1, 2, 3, 4, 5].map((star) => (
                <button
                  key={star}
                  type="button"
                  aria-label={`${star} od 5`}
                  className={`star-btn ${shown >= star ? 'selected' : ''}`}
                  onClick={() => setRating(star)}
                  onMouseEnter={() => setHoverRating(star)}
                >
                  <Star size={32} fill={shown >= star ? '#f59e0b' : 'none'} />
                </button>
              ))}
              <span style={{ marginLeft: '12px', fontWeight: 700, fontSize: '1rem', color: '#f59e0b' }}>
                {shown}/5 · {LABELS[shown]}
              </span>
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
