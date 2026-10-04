"""
Prenese imenik lokalov s https://www.studentska-prehrana.si/sl/restaurant in ustvari:
  - src/data/locations.json  (podatki, ki jih uporablja aplikacija)
  - seed_supabase.sql        (vstavljanje lokalov v Supabase; najprej zaženi supabase/schema.sql)

Vsi podatki so pravi: ime, naslov, GPS koordinate, cena obroka, doplačilo, oznake
(brezmesno, dostava ...), ocena na strani in delovni čas. Meniji se NE shranjujejo
sem, ker se menjajo vsak dan – aplikacija jih bere živo (/api/menu/[id]) oziroma
jih dnevno shrani /api/cron/refresh-menus.

Uporaba:
  python scrape_and_generate_sql.py              # celoten zajem (≈ 2–4 min)
  python scrape_and_generate_sql.py --no-details # brez delovnega časa (hitro)
"""

import html
import json
import re
import sys
import time
import urllib.request
from concurrent.futures import ThreadPoolExecutor

if hasattr(sys.stdout, "reconfigure"):
    sys.stdout.reconfigure(encoding="utf-8")

BASE = "https://www.studentska-prehrana.si"
LIST_URL = f"{BASE}/sl/restaurant"
HEADERS = {
    "User-Agent": "Mozilla/5.0 (compatible; StudentMealRating/1.0; +https://github.com/janjjjan/studentmealrating)",
    "Accept-Language": "sl,en;q=0.8",
}
DAY_WORDS = r"(Ponedeljek|Torek|Sreda|Četrtek|Petek|Sobota|Nedelja|Med tednom)"


def get(url: str) -> str:
    req = urllib.request.Request(url, headers=HEADERS)
    with urllib.request.urlopen(req, timeout=30) as resp:
        return resp.read().decode("utf-8", errors="ignore")


def text(s: str) -> str:
    return re.sub(r"\s+", " ", html.unescape(re.sub(r"<[^>]+>", " ", s))).strip()


def num(s: str):
    try:
        return float(s.replace(",", "."))
    except (ValueError, AttributeError):
        return None


def city_from_address(address: str, fallback: str) -> str:
    m = re.search(r"\b\d{4}\s+(.+)$", address)
    city = (m.group(1) if m else fallback.title()).split("/")[0].strip()
    if city.startswith("Ljubljana"):
        city = "Ljubljana"
    return city


def parse_list(page: str) -> list[dict]:
    rows = []
    # vsak lokal je <div class="row restaurant-row ..." data-lat=... data-posid=...> ... do naslednjega
    parts = re.split(r'(?=<div class="row restaurant-row)', page)[1:]
    for part in parts:
        head = part[: part.find(">") + 1]
        attrs = {k: html.unescape(v) for k, v in re.findall(r'data-([a-z-]+)="([^"]*)"', head)}
        if "posid" not in attrs:
            continue
        rid = attrs["posid"]
        name_m = re.search(r'href="/sl/restaurant/Details/%s"[^>]*>([\s\S]*?)</a>' % rid, part)
        addr_m = re.search(r"<small>\s*<i>([\s\S]*?)</i>", part)
        star_m = re.search(r'<input checked="checked" type="radio" name="group-%s"[^>]*value="(\d)"' % rid, part)
        features = [html.unescape(t) for t in re.findall(r'<img[^>]+title="([^"]+)"', part)]
        address = text(addr_m.group(1)) if addr_m else attrs.get("naslov", "")
        rows.append({
            "id": rid,
            "name": text(name_m.group(1)) if name_m else attrs.get("lokal", ""),
            "address": address,
            "city": city_from_address(address, attrs.get("city", "")),
            "latitude": round(num(attrs.get("lat")) or 0, 6) or None,
            "longitude": round(num(attrs.get("lon")) or 0, 6) or None,
            "meal_price": num(attrs.get("cena")),
            "subsidy_price": num(attrs.get("doplacilo")),
            "opening_hours": None,
            "notice": None,
            "features": [f for f in dict.fromkeys(features) if f != "Kosilo"],
            "site_rating": int(star_m.group(1)) if star_m else None,
        })
    return rows


def parse_hours(page: str):
    m = re.search(r"<h4>Delovni čas</h4>([\s\S]*?)</div>\s*</div>\s*</div>", page)
    if not m:
        return None, None
    block = text(m.group(1))
    notice = None
    if "Opomba" in block:
        block, notice = block.split("Opomba", 1)
        notice = notice.strip() or None
    hours = re.sub(r"\s+(?=%s\b)" % DAY_WORDS, "\n", block.strip()).replace(" : ", ": ")
    return hours or None, notice


def add_details(rows: list[dict]) -> None:
    def work(row):
        for attempt in range(3):
            try:
                row["opening_hours"], row["notice"] = parse_hours(get(f"{BASE}/sl/restaurant/Details/{row['id']}"))
                return
            except Exception:
                time.sleep(1 + attempt)

    with ThreadPoolExecutor(max_workers=4) as pool:
        for i, _ in enumerate(pool.map(work, rows), 1):
            if i % 50 == 0:
                print(f"  … {i}/{len(rows)}")


def sql_str(v) -> str:
    if v is None:
        return "null"
    if isinstance(v, (int, float)):
        return repr(v)
    if isinstance(v, list):
        return "array[" + ",".join(sql_str(x) for x in v) + "]::text[]" if v else "'{}'::text[]"
    return "'" + str(v).replace("'", "''") + "'"


def write_outputs(rows: list[dict]) -> None:
    with open("src/data/locations.json", "w", encoding="utf-8") as f:
        json.dump(rows, f, ensure_ascii=False, indent=1)

    cols = ["id", "name", "address", "city", "latitude", "longitude", "meal_price",
            "subsidy_price", "opening_hours", "notice", "features", "site_rating"]
    lines = [
        "-- Lokali s studentska-prehrana.si (ustvaril scrape_and_generate_sql.py).",
        "-- Najprej enkrat zaženi supabase/schema.sql, nato to datoteko (lahko večkrat).",
        f"insert into public.locations ({', '.join(cols)}) values",
    ]
    values = ["  (" + ", ".join(sql_str(r[c]) for c in cols) + ")" for r in rows]
    lines.append(",\n".join(values))
    lines.append("on conflict (id) do update set " + ", ".join(f"{c} = excluded.{c}" for c in cols[1:])
                 + ", updated_at = now();")
    with open("seed_supabase.sql", "w", encoding="utf-8") as f:
        f.write("\n".join(lines) + "\n")


def main():
    print(f"[1/3] Prenašam imenik {LIST_URL} …")
    rows = parse_list(get(LIST_URL))
    if not rows:
        sys.exit("Ni najdenih lokalov – stran je morda spremenila strukturo.")
    print(f"      najdenih {len(rows)} lokalov")

    if "--no-details" not in sys.argv:
        print("[2/3] Prenašam delovni čas posameznih lokalov …")
        add_details(rows)
    else:
        print("[2/3] Preskočeno (--no-details)")

    write_outputs(rows)
    print(f"[3/3] Zapisano: src/data/locations.json in seed_supabase.sql ({len(rows)} lokalov)")


if __name__ == "__main__":
    main()
