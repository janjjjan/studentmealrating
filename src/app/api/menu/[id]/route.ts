import { fetchMenu, todayInSlovenia } from '@/lib/menuParser';

/** GET /api/menu/1478 -> { location_id, menu_date, dishes } (živo s studentska-prehrana.si, predpomnjeno 30 min) */
export async function GET(_req: Request, { params }: { params: Promise<{ id: string }> }) {
  const { id } = await params;
  if (!/^\d{1,6}$/.test(id)) {
    return Response.json({ error: 'Neveljaven ID lokala.' }, { status: 400 });
  }

  try {
    const dishes = await fetchMenu(id);
    return Response.json(
      { location_id: id, menu_date: todayInSlovenia(), dishes },
      { headers: { 'Cache-Control': 'public, s-maxage=1800, stale-while-revalidate=3600' } }
    );
  } catch (err) {
    const message = err instanceof Error ? err.message : 'Neznana napaka';
    return Response.json({ error: `Menija ni bilo mogoče naložiti: ${message}` }, { status: 502 });
  }
}
