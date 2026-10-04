import { createBrowserClient } from '@supabase/ssr';
import type { SupabaseClient } from '@supabase/supabase-js';

const url = process.env.NEXT_PUBLIC_SUPABASE_URL || '';
const anonKey = process.env.NEXT_PUBLIC_SUPABASE_ANON_KEY || '';

/** True, ko sta URL in anon ključ nastavljena (in nista primer iz .env.example). */
export const isSupabaseConfigured =
  url.startsWith('https://') && !url.includes('your-') && anonKey.length > 40 && !anonKey.includes('your-');

let client: SupabaseClient | null = null;

/** Vrne Supabase odjemalca ali null, če baza ni nastavljena (aplikacija takrat deluje brez nje). */
export function createClient(): SupabaseClient | null {
  if (!isSupabaseConfigured) return null;
  if (!client) client = createBrowserClient(url, anonKey);
  return client;
}
