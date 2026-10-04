import { createAdminClient } from '@/lib/supabase/admin';
import { fetchMenu, todayInSlovenia } from '@/lib/menuParser';
import locations from '@/data/locations.json';

export const maxDuration = 300;

/**
 * Dnevno osveževanje menijev vseh lokalov v tabelo `daily_menus`.
 * Vercel Cron ga kliče po urniku iz vercel.json in pošlje glavo
 * `Authorization: Bearer <CRON_SECRET>`.
 */
export async function GET(request: Request) {
  const secret = process.env.CRON_SECRET;
  if (!secret || request.headers.get('authorization') !== `Bearer ${secret}`) {
    return Response.json({ error: 'Unauthorized' }, { status: 401 });
  }

  const supabase = createAdminClient();
  if (!supabase) {
    return Response.json({ error: 'SUPABASE_SERVICE_ROLE_KEY ni nastavljen.' }, { status: 500 });
  }

  const menuDate = todayInSlovenia();
  const ids = (locations as { id: string }[]).map((l) => l.id);
  const rows: { location_id: string; menu_date: string; dishes: string[] }[] = [];
  const failed: string[] = [];

  // 6 hkratnih zahtev, da ne obremenjujemo strani
  let next = 0;
  async function worker() {
    while (next < ids.length) {
      const id = ids[next++];
      try {
        const dishes = await fetchMenu(id, 0);
        if (dishes.length) rows.push({ location_id: id, menu_date: menuDate, dishes });
      } catch {
        failed.push(id);
      }
    }
  }
  await Promise.all(Array.from({ length: 6 }, worker));

  for (let i = 0; i < rows.length; i += 100) {
    const { error } = await supabase
      .from('daily_menus')
      .upsert(rows.slice(i, i + 100), { onConflict: 'location_id,menu_date' });
    if (error) return Response.json({ error: error.message, saved: i }, { status: 500 });
  }

  // starejše menije (> 7 dni) pobrišemo
  const weekAgo = new Date(Date.now() - 7 * 864e5).toISOString().slice(0, 10);
  await supabase.from('daily_menus').delete().lt('menu_date', weekAgo);

  return Response.json({ menu_date: menuDate, saved: rows.length, failed: failed.length });
}
