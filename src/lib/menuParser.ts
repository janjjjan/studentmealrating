/**
 * Razčlenjevanje strani https://www.studentska-prehrana.si/sl/restaurant/Details/{id}.
 * Brez DOM knjižnic, da deluje v Vercel funkcijah.
 */

export const SP_BASE = 'https://www.studentska-prehrana.si';

export const SP_HEADERS = {
  'User-Agent':
    'Mozilla/5.0 (compatible; StudentMealRating/1.0; +https://github.com/janjjjan/studentmealrating)',
  'Accept-Language': 'sl,en;q=0.8',
};

const ENTITIES: Record<string, string> = {
  nbsp: ' ',
  amp: '&',
  quot: '"',
  apos: "'",
  lt: '<',
  gt: '>',
  scaron: 'š',
  Scaron: 'Š',
  ccaron: 'č',
  Ccaron: 'Č',
  zcaron: 'ž',
  Zcaron: 'Ž',
};

export function decodeHtml(s: string): string {
  return s
    .replace(/&#x([0-9a-f]+);/gi, (_, h) => String.fromCodePoint(parseInt(h, 16)))
    .replace(/&#(\d+);/g, (_, d) => String.fromCodePoint(parseInt(d, 10)))
    .replace(/&([a-z]+);/gi, (m, n) => ENTITIES[n] ?? m);
}

function clean(s: string): string {
  return decodeHtml(s.replace(/<[^>]*>/g, ' ')).replace(/\s+/g, ' ').trim();
}

/** "ŠPAGETI BOLONEZ" -> "Špageti bolonez" */
function sentenceCase(s: string): string {
  const lower = s.toLocaleLowerCase('sl');
  return lower.charAt(0).toLocaleUpperCase('sl') + lower.slice(1);
}

/** Vrne seznam današnjih menijev, npr. "Špageti bolonez — sestavljena solata, dnevno sadje". */
export function parseMenu(html: string): string[] {
  const start = html.indexOf('id="menu-list"');
  if (start === -1) return [];
  let section = html.slice(start);
  const end = section.indexOf('id="information"');
  if (end !== -1) section = section.slice(0, end);

  const dishes: string[] = [];
  for (const card of section.split('class="shadow-wrapper"').slice(1)) {
    const strong = card.match(/<h5>\s*<strong[^>]*>([\s\S]*?)<\/strong>/i);
    if (!strong) continue;
    const title = clean(strong[1]).replace(/^\d+\s+/, '');
    if (!title) continue;
    const extras = [...card.matchAll(/<i class="text-bold color-dark[^"]*">([\s\S]*?)<\/i>/gi)]
      .map((m) => clean(m[1]))
      .filter(Boolean)
      .map((e) => e.toLocaleLowerCase('sl'));
    dishes.push(sentenceCase(title) + (extras.length ? ` — ${extras.join(', ')}` : ''));
  }
  return dishes;
}

/** Današnji datum v Sloveniji (YYYY-MM-DD). */
export function todayInSlovenia(): string {
  return new Intl.DateTimeFormat('sv-SE', { timeZone: 'Europe/Ljubljana' }).format(new Date());
}

export async function fetchMenu(id: string, revalidateSeconds = 1800): Promise<string[]> {
  const res = await fetch(`${SP_BASE}/sl/restaurant/Details/${encodeURIComponent(id)}`, {
    headers: SP_HEADERS,
    next: { revalidate: revalidateSeconds },
  });
  if (!res.ok) throw new Error(`studentska-prehrana.si je vrnila ${res.status}`);
  return parseMenu(await res.text());
}
