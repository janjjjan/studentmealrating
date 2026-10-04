'use client';

import rawLocations from '@/data/locations.json';
import { createClient } from '@/lib/supabase/client';
import type { DailyMenu, Location, LocationWithDetails, Review } from '@/lib/supabase/types';

export const BASE_LOCATIONS = rawLocations as Location[];

const LOCAL_REVIEWS_KEY = 'local_reviews_v1';

export function todayInSlovenia(): string {
  return new Intl.DateTimeFormat('sv-SE', { timeZone: 'Europe/Ljubljana' }).format(new Date());
}

function readLocalReviews(): Review[] {
  try {
    return JSON.parse(localStorage.getItem(LOCAL_REVIEWS_KEY) || '[]');
  } catch {
    return [];
  }
}

export function withStats(loc: Location, reviews: Review[], menu?: DailyMenu | null): LocationWithDetails {
  const sorted = [...reviews].sort((a, b) => b.created_at.localeCompare(a.created_at));
  const avg = sorted.length ? sorted.reduce((s, r) => s + r.rating, 0) / sorted.length : undefined;
  return { ...loc, reviews: sorted, review_count: sorted.length, avg_rating: avg, daily_menu: menu ?? null };
}

/** Začetno stanje: lokali brez ocen in menijev (izriše se takoj, tudi brez baze). */
export function initialLocations(): LocationWithDetails[] {
  return BASE_LOCATIONS.map((l) => withStats(l, []));
}

/**
 * Naloži ocene in današnje menije. Če Supabase ni nastavljen, uporabi ocene,
 * shranjene v tem brskalniku. Seznam lokalov je vedno iz src/data/locations.json
 * (osveži ga scraper), zato baza ne potrebuje tabele lokalov za prikaz.
 */
export async function loadDetails(): Promise<{ locations: LocationWithDetails[]; source: 'supabase' | 'local' }> {
  const supabase = createClient();
  let reviews: Review[] = [];
  let menus: DailyMenu[] = [];
  let source: 'supabase' | 'local' = 'local';

  if (supabase) {
    const [rev, men] = await Promise.all([
      supabase.from('reviews').select('id, location_id, author_name, rating, comment, created_at').limit(5000),
      supabase.from('daily_menus').select('location_id, menu_date, dishes').eq('menu_date', todayInSlovenia()),
    ]);
    if (!rev.error) {
      reviews = (rev.data || []) as Review[];
      source = 'supabase';
    } else {
      console.warn('Supabase reviews:', rev.error.message);
    }
    if (!men.error) menus = (men.data || []) as DailyMenu[];
  }

  if (source === 'local') reviews = readLocalReviews();

  const byLoc = new Map<string, Review[]>();
  for (const r of reviews) byLoc.set(r.location_id, [...(byLoc.get(r.location_id) || []), r]);
  const menuByLoc = new Map(menus.map((m) => [m.location_id, m]));

  return {
    source,
    locations: BASE_LOCATIONS.map((l) => withStats(l, byLoc.get(l.id) || [], menuByLoc.get(l.id))),
  };
}

export async function submitReview(input: {
  location_id: string;
  author_name: string;
  rating: number;
  comment: string;
}): Promise<Review> {
  const supabase = createClient();
  if (supabase) {
    const { data, error } = await supabase
      .from('reviews')
      .insert(input)
      .select('id, location_id, author_name, rating, comment, created_at')
      .single();
    if (error) throw new Error(error.message);
    return data as Review;
  }

  const review: Review = {
    ...input,
    id: `local-${Date.now()}`,
    created_at: new Date().toISOString(),
    local_only: true,
  };
  try {
    localStorage.setItem(LOCAL_REVIEWS_KEY, JSON.stringify([review, ...readLocalReviews()]));
  } catch {
    /* ignore */
  }
  return review;
}

export async function fetchLiveMenu(id: string): Promise<DailyMenu> {
  const res = await fetch(`/api/menu/${id}`);
  const json = await res.json();
  if (!res.ok) throw new Error(json.error || 'Napaka pri nalaganju menija');
  return json as DailyMenu;
}

/** Barva po oceni (pravila iz specifikacije). */
export function ratingTier(rating?: number | null): 'top' | 'good' | 'avg' | 'none' {
  if (rating == null) return 'none';
  if (rating >= 4.7) return 'top';
  if (rating >= 4.3) return 'good';
  return 'avg';
}

export const TIER_COLORS = {
  top: '#10b981',
  good: '#f59e0b',
  avg: '#3b82f6',
  none: '#6b7280',
} as const;

export function formatEur(n?: number | null): string {
  return n == null ? '–' : `${n.toFixed(2).replace('.', ',')} €`;
}
