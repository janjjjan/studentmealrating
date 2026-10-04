import urllib.request
import re
import json
import time
import ssl
import sys
import io

# Set UTF-8 encoding for standard output on Windows
if hasattr(sys.stdout, 'reconfigure'):
    sys.stdout.reconfigure(encoding='utf-8')

# Create unverified SSL context to prevent SSL cert issues on Windows
ssl_context = ssl._create_unverified_context()

BASE_URL = "https://www.studentska-prehrana.si/sl/restaurant"
HEADERS = {
    "User-Agent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36",
    "Accept-Language": "sl,en-US;q=0.9,en;q=0.8"
}

def escape_sql(text):
    if not text:
        return ""
    return text.replace("'", "''").strip()

def scrape_restaurants():
    print("[1/2] Zajemam seznam lokacij iz https://www.studentska-prehrana.si/sl/restaurant...")
    req = urllib.request.Request(BASE_URL, headers=HEADERS)
    
    try:
        with urllib.request.urlopen(req, context=ssl_context) as resp:
            html = resp.read().decode('utf-8', errors='ignore')
    except Exception as e:
        print(f"Napaka pri dostopu do glavne strani: {e}")
        return []

    # Extract restaurant detail links
    detail_ids = list(dict.fromkeys(re.findall(r'/sl/restaurant/Details/(\d+)', html)))
    print(f"Najdenih lokalov skupaj: {len(detail_ids)}")

    # We process top 30 locations for fast generation
    sample_limit = min(30, len(detail_ids))
    selected_ids = detail_ids[:sample_limit]

    locations_data = []

    print(f"[2/2] Zajemanje podrobnosti in menijev za {len(selected_ids)} lokalov...")

    for idx, rid in enumerate(selected_ids, 1):
        detail_url = f"https://www.studentska-prehrana.si/sl/restaurant/Details/{rid}"
        try:
            req_d = urllib.request.Request(detail_url, headers=HEADERS)
            with urllib.request.urlopen(req_d, context=ssl_context) as resp_d:
                d_html = resp_d.read().decode('utf-8', errors='ignore')
            
            # Extract Name
            name_m = (
                re.search(r'<h1[^>]*>(.*?)</h1>', d_html, re.DOTALL) or
                re.search(r'<h2[^>]*class="[^"]*color-blue[^"]*"[^>]*>\s*<a[^>]*>(.*?)</a>', d_html, re.DOTALL)
            )
            name = name_m.group(1).strip() if name_m else f"Lokal #{rid}"
            name = re.sub(r'<[^>]+>', '', name).strip()
            if not name or name.startswith("Lokacija"):
                title_search = re.search(r'/sl/restaurant/Details/' + rid + r'[^>]*>\s*([^<]+)\s*</a>', html)
                if title_search:
                    name = title_search.group(1).strip()

            # Extract Address
            addr_m = re.search(r'([A-Za-zČŠŽčšž0-9\s.,-]+,\s*\d{4}\s+[A-Za-zČŠŽčšž0-9\s]+)', d_html)
            address = addr_m.group(1).strip() if addr_m else "Slovenija"

            # Extract Subsidy Price
            price_m = re.search(r'Doplačilo:\s*([0-9.,]+)\s*€', d_html, re.IGNORECASE) or re.search(r'(\d+[,.]\d{2})\s*€', d_html)
            price = float(price_m.group(1).replace(',', '.')) if price_m else 3.80

            # Extract Daily Dishes
            dishes_raw = re.findall(r'<div[^>]*class="[^"]*shadow-wrapper[^"]*"[^>]*>(.*?)</div>', d_html, re.DOTALL)
            dishes = []
            for dr in dishes_raw:
                clean = re.sub(r'<[^>]+>', ' ', dr)
                clean = ' '.join(clean.split())
                if len(clean) > 8:
                    dishes.append(clean)

            if not dishes:
                menus_raw = re.findall(r'<h5[^>]*>(.*?)</h5>', d_html, re.DOTALL)
                dishes = [re.sub(r'<[^>]+>', '', m).strip() for m in menus_raw if len(m.strip()) > 5]

            if not dishes:
                dishes = ["Meni 1: Dnevno študentsko kosilo s solato in sadjem"]

            # Coordinates estimation based on city / postal code
            city = "Ljubljana"
            lat, lon = 46.0569, 14.5058
            if "Maribor" in address or "2000" in address:
                city = "Maribor"
                lat, lon = 46.5547 + (idx % 10)*0.003, 15.6459 + (idx % 7)*0.003
            elif "Koper" in address or "6000" in address:
                city = "Koper"
                lat, lon = 45.5481 + (idx % 10)*0.002, 13.7301 + (idx % 7)*0.002
            elif "Celje" in address or "3000" in address:
                city = "Celje"
                lat, lon = 46.2360 + (idx % 5)*0.002, 15.2677 + (idx % 5)*0.002
            elif "Kranj" in address or "4000" in address:
                city = "Kranj"
                lat, lon = 46.2389 + (idx % 5)*0.002, 14.3556 + (idx % 5)*0.002
            elif "Novo mesto" in address or "8000" in address:
                city = "Novo mesto"
                lat, lon = 45.8011 + (idx % 5)*0.002, 15.1710 + (idx % 5)*0.002
            else:
                lat = 46.0500 + ((idx * 17) % 50)*0.001
                lon = 14.5000 + ((idx * 13) % 50)*0.001

            locations_data.append({
                "id": rid,
                "name": name,
                "address": address,
                "subsidy_price": price,
                "latitude": round(lat, 5),
                "longitude": round(lon, 5),
                "dishes": dishes,
                "opening_hours": "Pon - Pet: 10:00 - 20:00"
            })

            print(f"  [{idx}/{len(selected_ids)}] Zajeto: {name} ({address}) - €{price:.2f}")
            time.sleep(0.05)

        except Exception as err:
            print(f"  [{idx}/{len(selected_ids)}] Napaka pri #{rid}: {err}")

    return locations_data

def generate_sql_file(locations):
    sql_filename = "seed_supabase.sql"
    
    sql_lines = []
    sql_lines.append("-- ========================================================")
    sql_lines.append("-- SUPABASE SQL SEED SCRIPT FOR STUDENTSKA PREHRANA")
    sql_lines.append("-- Generated automatically by Python Scraper Script")
    sql_lines.append("-- ========================================================\n")
    
    sql_lines.append("-- 1. Create Tables Schema (if not created yet)")
    sql_lines.append("""
CREATE TABLE IF NOT EXISTS locations (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  name TEXT NOT NULL,
  address TEXT,
  latitude DOUBLE PRECISION,
  longitude DOUBLE PRECISION,
  subsidy_price NUMERIC(4,2),
  opening_hours TEXT
);

CREATE TABLE IF NOT EXISTS daily_menus (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  location_id UUID REFERENCES locations(id) ON DELETE CASCADE,
  menu_date DATE NOT NULL DEFAULT CURRENT_DATE,
  dishes TEXT[] NOT NULL
);

CREATE TABLE IF NOT EXISTS reviews (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  location_id UUID REFERENCES locations(id) ON DELETE CASCADE,
  user_id UUID REFERENCES auth.users(id) ON DELETE CASCADE,
  rating INTEGER CHECK (rating BETWEEN 1 AND 5),
  comment TEXT,
  created_at TIMESTAMP WITH TIME ZONE DEFAULT NOW()
);
""")

    sql_lines.append("\n-- 2. Clear previous seed test rows (Optional)")
    sql_lines.append("DELETE FROM daily_menus;")
    sql_lines.append("DELETE FROM locations;\n")

    sql_lines.append("-- 3. Insert Scraped Locations & Daily Menus")
    
    for loc in locations:
        loc_uuid = f"a0000000-0000-0000-0000-{int(loc['id']):012d}"
        name_esc = escape_sql(loc['name'])
        addr_esc = escape_sql(loc['address'])
        hours_esc = escape_sql(loc['opening_hours'])
        price = loc['subsidy_price']
        lat = loc['latitude']
        lon = loc['longitude']

        sql_lines.append(f"""
-- Location: {name_esc}
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('{loc_uuid}', '{name_esc}', '{addr_esc}', {lat}, {lon}, {price:.2f}, '{hours_esc}')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;
""")

        # Dishes array for SQL
        dishes_sql_items = [f"'{escape_sql(d)}'" for d in loc['dishes']]
        dishes_array_str = "ARRAY[\n    " + ",\n    ".join(dishes_sql_items) + "\n  ]"

        sql_lines.append(f"""
INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('{loc_uuid}', CURRENT_DATE, {dishes_array_str});
""")

    with open(sql_filename, "w", encoding="utf-8") as f:
        f.write("\n".join(sql_lines))

    print(f"\n[USPEH] Ustvarjena SQL datoteka: {sql_filename}")
    print(f"-> Odprite datoteko {sql_filename} in jo zaženite v Supabase SQL Editorju!")

if __name__ == "__main__":
    data = scrape_restaurants()
    if data:
        generate_sql_file(data)
