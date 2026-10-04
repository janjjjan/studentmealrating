'use client';

import { useState } from 'react';
import { X, Star, Send, ShieldAlert } from 'lucide-react';
import { User } from '@supabase/supabase-js';
import { LocationWithDetails, Review } from '@/lib/supabase/types';
import { createClient } from '@/lib/supabase/client';

interface ReviewModalProps {
  location: LocationWithDetails | null;
  user: User | null;
  onClose: () => void;
  onAddReview: (locationId: string, newReview: Review) => void;
  onOpenAuthModal: () => void;
}

export function ReviewModal({
  location,
  user,
  onClose,
  onAddReview,
  onOpenAuthModal,
}: ReviewModalProps) {
  const [rating, setRating] = useState(5);
  const [hoverRating, setHoverRating] = useState(0);
  const [comment, setComment] = useState('');
  const [submitting, setSubmitting] = useState(false);

  if (!location) return null;

  const handleSubmit = async (e: React.FormEvent) => {
    e.preventDefault();
    if (!user) {
      onOpenAuthModal();
      return;
    }

    setSubmitting(true);

    try {
      const supabase = createClient();
      
      // Try posting to Supabase `reviews` table
      const { data, error } = await supabase
        .from('reviews')
        .insert({
          location_id: location.id,
          user_id: user.id,
          rating: rating,
          comment: comment.trim(),
        })
        .select()
        .single();

      const newReview: Review = {
        id: data?.id || `rev-${Date.now()}`,
        location_id: location.id,
        user_id: user.id,
        rating: rating,
        comment: comment.trim(),
        created_at: new Date().toISOString(),
        user_email: user.email || 'Anonimni študent',
      };

      if (error) {
        console.warn('Supabase insert notice (using state fallback if DB table not yet set up):', error.message);
      }

      onAddReview(location.id, newReview);
      onClose();
      setComment('');
    } catch (err) {
      console.error('Submit review error:', err);
    } finally {
      setSubmitting(false);
    }
  };

  return (
    <div className="modal-overlay" onClick={onClose}>
      <div className="modal-content" onClick={(e) => e.stopPropagation()}>
        <button className="modal-close" onClick={onClose}>
          <X size={20} />
        </button>

        <h2 style={{ fontSize: '1.4rem', fontWeight: 800, color: 'white', marginBottom: '4px' }}>
          Dodaj oceno za bon
        </h2>
        <p style={{ color: '#10b981', fontWeight: 600, fontSize: '0.95rem', marginBottom: '20px' }}>
          {location.name}
        </p>

        {!user ? (
          <div
            style={{
              padding: '20px',
              background: 'rgba(239, 68, 68, 0.1)',
              border: '1px solid rgba(239, 68, 68, 0.2)',
              borderRadius: '12px',
              textAlign: 'center',
              marginBottom: '20px'
            }}
          >
            <ShieldAlert size={28} color="#ef4444" style={{ margin: '0 auto 8px auto' }} />
            <p style={{ color: '#f3f4f6', fontSize: '0.9rem', marginBottom: '12px' }}>
              Za ocenjevanje študentskih bonov se morate najprej prijaviti z Google računom.
            </p>
            <button
              onClick={onOpenAuthModal}
              className="btn-primary"
              style={{ margin: '0 auto', flex: 'none' }}
            >
              Prijava z Google
            </button>
          </div>
        ) : (
          <form onSubmit={handleSubmit}>
            {/* User identification */}
            <div style={{ fontSize: '0.85rem', color: '#9ca3af', marginBottom: '16px' }}>
              Prijavljeni kot: <b style={{ color: 'white' }}>{user.email}</b>
            </div>

            {/* Star Rating selector */}
            <div className="form-group">
              <label className="form-label">Vaša ocena (1 do 5 zvezdic):</label>
              <div className="star-rating-input">
                {[1, 2, 3, 4, 5].map((star) => (
                  <button
                    key={star}
                    type="button"
                    className={`star-btn ${(hoverRating || rating) >= star ? 'selected' : ''}`}
                    onClick={() => setRating(star)}
                    onMouseEnter={() => setHoverRating(star)}
                    onMouseLeave={() => setHoverRating(0)}
                  >
                    <Star
                      size={32}
                      fill={(hoverRating || rating) >= star ? '#f59e0b' : 'none'}
                    />
                  </button>
                ))}
                <span style={{ marginLeft: '12px', fontWeight: 700, fontSize: '1.1rem', color: '#f59e0b' }}>
                  {hoverRating || rating} / 5
                </span>
              </div>
            </div>

            {/* Comment field */}
            <div className="form-group">
              <label className="form-label">Komentar / Mnenje o hrani in ponudbi:</label>
              <textarea
                className="form-textarea"
                placeholder="Napišite vaše izkušnje (velikost porcije, kakovost hrane, prijaznost osebja, čakalna doba...)"
                value={comment}
                onChange={(e) => setComment(e.target.value)}
                required
              />
            </div>

            {/* Submit button */}
            <button
              type="submit"
              disabled={submitting}
              className="btn-primary"
              style={{ width: '100%', padding: '12px' }}
            >
              <Send size={18} />
              <span>{submitting ? 'Pošiljanje ocene...' : 'Oddaj oceno'}</span>
            </button>
          </form>
        )}
      </div>
    </div>
  );
}
