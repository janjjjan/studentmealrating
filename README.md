Tole je največji vibecode ever....


# 🍽️ Študentska prehrana – zemljevid, meniji in ocene

Spletna aplikacija za iskanje in ocenjevanje lokalov s subvencionirano prehrano v Sloveniji.
Podatki so pridobljeni s [studentska-prehrana.si](https://www.studentska-prehrana.si/sl/restaurant).

---

## ✨ Funkcionalnosti

- 🗺️ **Interaktivni zemljevid** (OpenStreetMap + Leaflet) z vsemi lokali
- 🎨 **Barvni pini** – zeleni (dobre ocene) → rumeni → rdeči (slabe ocene), sivi (brez ocene)
- 📋 **Kartica lokala** – doplačilo, polna cena, delovni čas, oznake (brezmesno, dostava …), ocena s SP
- 🍜 **Dnevni meni** – živo pridobljen s spletne strani lokala, predpomnjeno 30 min
- ⭐ **Ocene brez prijave** – pustite oceno in vzdevek; ocene vidne vsem (z bazo) ali samo lokalno (brez baze)
- 🔍 **Iskanje** po imenu lokala ali jedi (iskanje po jedeh deluje za vse lokale, ko je aktiven cron)

---

## 🏗️ Arhitektura

```
src/
├── app/
│   ├── api/
│   │   ├── menu/[id]/          # GET – živi meni lokala (scrape + 30 min cache)
│   │   └── cron/refresh-menus/ # POST – Vercel Cron, dnevno osveži vse menije
│   ├── auth/                   # Supabase auth callback
│   ├── page.tsx                # Glavna stran (seznam + zemljevid)
│   └── globals.css
├── components/
│   ├── MapView.tsx             # Leaflet zemljevid s clustering
│   ├── LocationCard.tsx        # Kartica lokala
│   ├── DailyMenuModal.tsx      # Modal z dnevnim menijem
│   ├── ReviewModal.tsx         # Modal za oddajo / ogled ocen
│   ├── AuthModal.tsx           # Modal za prijavo
│   └── Header.tsx
├── data/
│   └── locations.json          # Generiran s scrape_and_generate_sql.py
└── lib/
    └── supabase/               # Supabase klient (browser + server)
```

---

## ⚙️ Podatkovni viri

| Podatek | Vir |
|---|---|
| Lokali, naslovi, GPS, cene, delovni čas, oznake | `src/data/locations.json` – generira `scrape_and_generate_sql.py` |
| Dnevni meni | `/api/menu/[id]` (scrape, predpomnjeno 30 min) ali tabela `daily_menus` |
| Ocene | Supabase tabela `reviews`; brez baze v `localStorage` |
| Ocena na SP | Pridobljena med scrapanjem, shranjena v `locations.json` |

---

## 🚀 Lokalni zagon

### 1. Namestitev

```bash
git clone https://github.com/<tvoj-username>/studentmealrating.git
cd studentmealrating
npm install
```

### 2. Okolje (env)

```bash
cp .env.example .env.local
# Uredi .env.local – vsaj NEXT_PUBLIC_SUPABASE_URL in NEXT_PUBLIC_SUPABASE_ANON_KEY
```

> Aplikacija deluje **tudi brez Supabase** – ocene se takrat shranijo samo lokalno v brskalniku.

### 3. Zagon

```bash
npm run dev   # http://localhost:3000
```

---

## 🗄️ Supabase (opcijsko)

Da so ocene vidne vsem uporabnikom:

1. V [Supabase](https://supabase.com) ustvari nov projekt.
2. V **SQL Editor** zaženi `supabase/schema.sql` (ustvari tabele in RLS pravila).
3. Zaženi `seed_supabase.sql` (vstavi ~355 lokalov).
4. V `.env.local` nastavi spremenljivke:

```env
NEXT_PUBLIC_SUPABASE_URL=https://xxxx.supabase.co
NEXT_PUBLIC_SUPABASE_ANON_KEY=your-anon-key

# Samo strežniške (brez NEXT_PUBLIC_!):
SUPABASE_SERVICE_ROLE_KEY=your-service-role-key
CRON_SECRET=your-random-secret-string
```

---

## ⏰ Dnevni meniji (Vercel Cron)

`vercel.json` nastavi cron, ki vsak dan ob **8:30 UTC** (10:30 poleti / 9:30 pozimi) pokliče
`/api/cron/refresh-menus`. Ta route prebere menije vseh lokalov in jih shrani v tabelo `daily_menus`.

- ✅ S cronom: iskanje po jedeh (npr. »falafel«) deluje za **vse lokale** hkrati
- ⚠️ Brez crona: meni se naloži šele, ko odpreš posamezni lokal

Na Vercelu dodaj env spremenljivki `SUPABASE_SERVICE_ROLE_KEY` in `CRON_SECRET`.

---

## 🔄 Osvežitev seznama lokalov

```bash
# Polni scrape z delovnim časom (~2–4 min):
python scrape_and_generate_sql.py

# Hitri scrape brez delovnega časa:
python scrape_and_generate_sql.py --no-details
```

Skripta posodobi `src/data/locations.json` in `seed_supabase.sql`.
Novi `seed_supabase.sql` po želji ponovno zaženi v Supabase, da se vrstice posodobijo.

---

## 🛠️ Tehnologije

| | |
|---|---|
| **Framework** | [Next.js 16](https://nextjs.org/) + React 19 |
| **Jezik** | TypeScript |
| **Baza** | [Supabase](https://supabase.com) (PostgreSQL + RLS) |
| **Zemljevid** | [Leaflet](https://leafletjs.com/) + [OpenStreetMap](https://www.openstreetmap.org/) |
| **Clustering** | leaflet.markercluster |
| **Ikone** | [Lucide React](https://lucide.dev/) |
| **Deploy** | [Vercel](https://vercel.com/) |
| **Scraper** | Python (requests + BeautifulSoup) |

---

## 📄 Licenca

MIT
