Tole je največji vibecode ever....

# Študentska prehrana – zemljevid, meniji in ocene

Next.js aplikacija z vsemi lokali s [studentska-prehrana.si](https://www.studentska-prehrana.si/sl/restaurant):
doplačila, polne cene, delovni čas, oznake (brezmesno, dostava …), zemljevid (OpenStreetMap),
današnji meniji in ocene študentov brez prijave (samo vzdevek).

## Kaj je od kod

| Podatek | Vir |
| --- | --- |
| Lokali, naslovi, GPS, cene, delovni čas, oznake | `src/data/locations.json` – ustvari `scrape_and_generate_sql.py` |
| Današnji meni | živo: `/api/menu/[id]` (bere stran lokala, predpomnjeno 30 min); z bazo tudi dnevno v tabeli `daily_menus` |
| Ocene uporabnikov | Supabase tabela `reviews`; brez baze samo v brskalniku (localStorage) |
| »★ X na SP« | ocena lokala na studentska-prehrana.si |

Barva pina na zemljevidu: povprečje ocen uporabnikov, kjer jih še ni, ocena s studentska-prehrana.si;
siv pin = brez ocene.

## Lokalni zagon

```bash
npm install
npm run dev     # http://localhost:3000
```

Aplikacija deluje tudi brez Supabase (ocene se takrat shranijo samo v brskalniku).

## Povezava s Supabase (da so ocene vidne vsem)

1. V Supabase → **SQL Editor** zaženi `supabase/schema.sql` (ustvari tabele in pravila RLS;
   izbriše stare tabele iz prejšnje verzije).
2. Nato zaženi `seed_supabase.sql` (vstavi 355 lokalov).
3. V `.env.local` (in na Vercelu → Settings → Environment Variables) nastavi:
   - `NEXT_PUBLIC_SUPABASE_URL` in `NEXT_PUBLIC_SUPABASE_ANON_KEY` (Project Settings → API → *anon public*)
   - za dnevne menije še `SUPABASE_SERVICE_ROLE_KEY` (*service_role*, samo strežnik!) in `CRON_SECRET`
     (poljuben dolg naključen niz).

## Dnevni meniji (Vercel Cron)

`vercel.json` vsak dan ob 8.30 UTC (10.30 poleti / 9.30 pozimi) pokliče `/api/cron/refresh-menus`,
ki prebere menije vseh lokalov in jih shrani v `daily_menus`. Takrat iskanje po jedeh (npr. »falafel«)
deluje za vse lokale. Brez tega se meni naloži, ko odpreš lokal.

## Osvežitev seznama lokalov

```bash
python scrape_and_generate_sql.py            # ≈ 2–4 min, z delovnim časom
python scrape_and_generate_sql.py --no-details
```

Posodobi `src/data/locations.json` in `seed_supabase.sql`. Novi `seed_supabase.sql` po želji ponovno
zaženi v Supabase (obstoječe vrstice posodobi).
