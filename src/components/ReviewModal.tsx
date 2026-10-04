'use client';

import { useState, useEffect } from 'react';
import { X, Star, Send, UserCheck } from 'lucide-react';
import { User } from '@supabase/supabase-js';
import { LocationWithDetails, Review } from '@/lib/supabase/types';
import { createClient } from '@/lib/supabase/client';

interface ReviewModalProps {
  location: LocationWithDetails | null;
  user: User | null;
  onClose: () => void;
  onAddReview: (locationId: string, newReview: Review) => void;
}

export function ReviewModal({
  location,
  user,
  onClose,
  onAddReview,
}: ReviewModalProps) {
  const [rating, setRating] = useState(5);
  const [hoverRating, setHoverRating] = useState(0);
  const [comment, setComment] = useState('');
  const [authorName, setAuthorName] = useState('');
  const [submitting, setSubmitting] = useState(false);

  // Auto-fill stored name or user email on load
  useEffect(() => {
    if (user?.email) {
      setAuthorName(user.user_metadata?.full_name || user.email.split('@')[0]);
    } else {
      const stored = localStorage.getItem('student_reviewer_name');
      if (stored) {
        setAuthorName(stored);
      }
    }
  }, [user]);

  if (!location) return null;

  const handleSubmit = async (e: React.FormEvent) => {
    e.preventDefault();

    const nameToUse = authorName.trim() || 'Anonimni Študent';
    localStorage.setItem('student_reviewer_name', nameToUse);

    setSubmitting(true);

    try {
      const supabase = createClient();
      
      // Try posting to Supabase `reviews` table if available
      const { data, error } = await supabase
        .from('reviews')
        .insert({
          location_id: location.id,
          rating: rating,
          comment: `${nameToUse}: ${comment.trim()}`,
        })
        .select()
        .single();

      const newReview: Review = {
        id: data?.id || `rev-${Date.now()}`,
        location_id: location.id,
        rating: rating,
        comment: comment.trim(),
        created_at: new Date().toISOString(),
        author_name: nameToUse,
        user_email: nameToUse,
      };

      if (error) {
        console.warn('Supabase review insert notice (using local state update):', error.message);
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

        <form onSubmit={handleSubmit}>
          {/* Name / Nickname field */}
          <div className="form-group">
            <label className="form-label" style={{ display: 'flex', alignItems: 'center', gap: '6px' }}>
              <UserCheck size={16} color="#10b981" /> Vaše ime ali vzdevek:
            </label>
            <input
              type="text"
              placeholder="Npr. Jan K., Maja ali Študent UL"
              value={authorName}
              onChange={(e) => setAuthorName(e.target.value)}
              required
              style={{
                width: '100%',
                padding: '12px',
                background: 'rgba(0, 0, 0, 0.3)',
                border: '1px solid rgba(255, 255, 255, 0.1)',
                borderRadius: '8px',
                color: 'white',
                fontSize: '0.95rem',
                outline: 'none'
              }}
            />
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
            <span>{submitting ? 'Pošiljanje ocene...' : 'Objavi oceno'}</span>
          </button>
        </form>
      </div>
    </div>
  );
}
