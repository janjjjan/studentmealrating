'use client';

import rawLocations from '@/data/locations.json';
import { createClient } from '@/lib/supabase/client';
import type { DailyMenu, Location, LocationWithDetails, Review } from '@/lib/supabase/types';

export const BASE_LOCATIONS = rawLocations as Location[];

const LOCAL_REVIEWS_KEY = 'local_reviews_v1';

export function todayInSlovenia(): string {
  return new Intl.DateTimeFormat('sv-SE', { timeZone: 'Europe/Ljubljana' }).format(new Date());
}

export const DAYS = ['Ponedeljek', 'Torek', 'Sreda', 'Četrtek', 'Petek', 'Sobota', 'Nedelja'] as const;

/** Trenutni dan (0 = ponedeljek) in čas (HH:MM) v Sloveniji. */
export function nowInSlovenia(): { day: number; time: string } {
  const parts = new Intl.DateTimeFormat('en-GB', {
    timeZone: 'Europe/Ljubljana', weekday: 'long', hour: '2-digit', minute: '2-digit', hour12: false,
  }).formatToParts(new Date());
  const get = (t: string) => parts.find((p) => p.type === t)?.value ?? '';
  const names = ['Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday', 'Sunday'];
  return { day: Math.max(0, names.indexOf(get('weekday'))), time: `${get('hour').replace('24', '00')}:${get('minute')}` };
}

const toMin = (hhmm: string) => {
  const [h, m] = hhmm.split(':').map(Number);
  return h * 60 + m;
};

/** Ali je lokal odprt v dan `day` (0 = ponedeljek) ob času `time` (HH:MM)? Zna tudi čez polnoč. */
export function isOpenAt(openingHours: string | null, day: number, time: string): boolean {
  if (!openingHours) return false;
  const t = toMin(time);
  const lineFor = (d: number) => {
    const name = DAYS[d];
    const lines = openingHours.split(String.fromCharCode(10));
    return (
      lines.find((l) => l.startsWith(`${name}:`)) ??
      (d <= 4 ? lines.find((l) => l.startsWith('Med tednom:')) : undefined)
    );
  };
  const range = (line?: string) => {
    const m = line?.match(/(\d{1,2}:\d{2})\s*-\s*(\d{1,2}:\d{2})/);
    return m ? ([toMin(m[1]), toMin(m[2])] as const) : null;
  };
  const today = range(lineFor(day));
  if (today) {
    const [s, e] = today;
    if (e > s ? t >= s && t < e : t >= s) return true; // zaključi po polnoči → odprto do konca dneva
  }
  const prev = range(lineFor((day + 6) % 7)); // včerajšnji termin, ki se konča po polnoči
  return !!prev && prev[1] < prev[0] && t < prev[1];
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

export type DataSource =
  | { kind: 'supabase'; locationsFromDb: boolean }
  | { kind: 'local' }
  | { kind: 'error'; message: string };

const REVIEW_COLUMNS =
  'id, location_id, author_name, rating_quantity, rating_price, rating_quality, rating, comment, created_at';

const LOCATION_COLUMNS =
  'id, name, address, city, latitude, longitude, meal_price, subsidy_price, opening_hours, notice, features, site_rating';

/**
 * Naloži lokale, ocene in današnje menije iz Supabase.
 * - Lokali: iz tabele `locations`; če je prazna, iz src/data/locations.json.
 * - Če Supabase ni nastavljen: ocene iz tega brskalnika.
 * - Če baza vrne napako (npr. ni zagnan supabase/schema.sql): napako pokažemo, NE preklopimo tiho.
 */
export async function loadDetails(): Promise<{ locations: LocationWithDetails[]; source: DataSource }> {
  const supabase = createClient();

  if (!supabase) {
    return { source: { kind: 'local' }, locations: combine(BASE_LOCATIONS, readLocalReviews(), []) };
  }

  const [loc, rev, men] = await Promise.all([
    supabase.from('locations').select(LOCATION_COLUMNS).order('name').limit(2000),
    supabase.from('reviews').select(REVIEW_COLUMNS).limit(10000),
    supabase.from('daily_menus').select('location_id, menu_date, dishes').eq('menu_date', todayInSlovenia()),
  ]);

  const firstError = loc.error || rev.error || men.error;
  if (firstError) {
    console.error('Supabase:', firstError);
    return {
      source: { kind: 'error', message: firstError.message },
      locations: combine(BASE_LOCATIONS, [], []),
    };
  }

  const dbLocations = ((loc.data || []) as Location[]).map((l) => ({
    ...l,
    latitude: l.latitude == null ? null : Number(l.latitude),
    longitude: l.longitude == null ? null : Number(l.longitude),
    meal_price: l.meal_price == null ? null : Number(l.meal_price),
    subsidy_price: l.subsidy_price == null ? null : Number(l.subsidy_price),
    features: l.features || [],
  }));
  const locationsFromDb = dbLocations.length > 0;

  return {
    source: { kind: 'supabase', locationsFromDb },
    locations: combine(
      locationsFromDb ? dbLocations : BASE_LOCATIONS,
      ((rev.data || []) as Review[]).map(normalizeReview),
      (men.data || []) as DailyMenu[]
    ),
  };
}

function combine(locs: Location[], reviews: Review[], menus: DailyMenu[]): LocationWithDetails[] {
  const byLoc = new Map<string, Review[]>();
  for (const r of reviews) byLoc.set(r.location_id, [...(byLoc.get(r.location_id) || []), r]);
  const menuByLoc = new Map(menus.map((m) => [m.location_id, m]));
  return locs.map((l) => withStats(l, byLoc.get(l.id) || [], menuByLoc.get(l.id)));
}

function normalizeReview(r: Review): Review {
  return { ...r, rating: Number(r.rating) };
}

export function averageOf(q: number, p: number, k: number): number {
  return Math.round(((q + p + k) / 3) * 100) / 100;
}

export async function submitReview(input: {
  location_id: string;
  author_name: string;
  rating_quantity: number;
  rating_price: number;
  rating_quality: number;
  comment: string;
}): Promise<Review> {
  const supabase = createClient();
  if (supabase) {
    const { data, error } = await supabase
      .from('reviews')
      .insert(input)
      .select(REVIEW_COLUMNS)
      .single();
    if (error) throw new Error(error.message);
    return normalizeReview(data as Review);
  }

  const review: Review = {
    ...input,
    rating: averageOf(input.rating_quantity, input.rating_price, input.rating_quality),
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
