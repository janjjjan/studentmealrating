-- ========================================================
-- SUPABASE SQL SEED SCRIPT FOR ALL 355 REAL STUDENTSKA PREHRANA LOCATIONS
-- Generated automatically by Python Scraper
-- ========================================================


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

DELETE FROM daily_menus;
DELETE FROM locations;


-- Location: ABI FALAFEL
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000001478', 'ABI FALAFEL', 'Ljubljana, 1000 Ljubljana', 46.063, 14.517, 3.65, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000001478', CURRENT_DATE, ARRAY[
    'Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko',
    'Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha',
    'Meni 3: Testenine v paradižnikovi omaki z baziliko, solata'
  ]);


-- Location: Aga kebab
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000003316', 'Aga kebab', 'Ljubljana, 1000 Ljubljana', 46.076, 14.534, 3.80, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000003316', CURRENT_DATE, ARRAY[
    'Meni 1: Classic Beef Burger z ocvrtim krompirčkom in mešano solato',
    'Meni 2: Chicken Burger s svežo solato in omako',
    'Meni 3: Falafel ali Vegi Burger s krompirčkom, sadje'
  ]);


-- Location: Ajda burgers &amp; more BTC
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000002999', 'Ajda burgers &amp; more BTC', 'Ljubljana, 1000 Ljubljana', 46.089, 14.511, 3.95, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000002999', CURRENT_DATE, ARRAY[
    'Meni 1: Classic Beef Burger z ocvrtim krompirčkom in mešano solato',
    'Meni 2: Chicken Burger s svežo solato in omako',
    'Meni 3: Falafel ali Vegi Burger s krompirčkom, sadje'
  ]);


-- Location: Ajda burgers &amp; more postaja
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000002549', 'Ajda burgers &amp; more postaja', 'Ljubljana, 1000 Ljubljana', 46.062, 14.528, 4.10, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000002549', CURRENT_DATE, ARRAY[
    'Meni 1: Classic Beef Burger z ocvrtim krompirčkom in mešano solato',
    'Meni 2: Chicken Burger s svežo solato in omako',
    'Meni 3: Falafel ali Vegi Burger s krompirčkom, sadje'
  ]);


-- Location: AL YASMIN arabska restavracija
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000003347', 'AL YASMIN arabska restavracija', 'Ljubljana, 1000 Ljubljana', 46.075, 14.505, 4.25, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000003347', CURRENT_DATE, ARRAY[
    'Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko',
    'Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha',
    'Meni 3: Testenine v paradižnikovi omaki z baziliko, solata'
  ]);


-- Location: ART kavarna Odeon
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000003332', 'ART kavarna Odeon', 'Ljubljana, 1000 Ljubljana', 46.088, 14.522, 4.40, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000003332', CURRENT_DATE, ARRAY[
    'Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko',
    'Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha',
    'Meni 3: Testenine v paradižnikovi omaki z baziliko, solata'
  ]);


-- Location: Avokado
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000003275', 'Avokado', 'Ljubljana, 1000 Ljubljana', 46.061, 14.539, 4.55, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000003275', CURRENT_DATE, ARRAY[
    'Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko',
    'Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha',
    'Meni 3: Testenine v paradižnikovi omaki z baziliko, solata'
  ]);


-- Location: Azijska restavracija Han
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000002147', 'Azijska restavracija Han', 'Ljubljana, 1000 Ljubljana', 46.074, 14.516, 3.50, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000002147', CURRENT_DATE, ARRAY[
    'Meni 1: Hrustljavi piščanec v sladko-kisli omaki, pražen riž, zelenjavna juha',
    'Meni 2: Praženi rezanci z zelenjavo in tofujem, solata',
    'Meni 3: Pekinška raca z rižem, pomladni zavitki'
  ]);


-- Location: Bar Moment
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000003042', 'Bar Moment', 'Ljubljana, 1000 Ljubljana', 46.087, 14.533, 3.65, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000003042', CURRENT_DATE, ARRAY[
    'Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko',
    'Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha',
    'Meni 3: Testenine v paradižnikovi omaki z baziliko, solata'
  ]);


-- Location: Baščaršija Koper Carpacciov trg
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000003207', 'Baščaršija Koper Carpacciov trg', 'Koper, 6000 Koper', 45.55, 13.74, 3.80, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000003207', CURRENT_DATE, ARRAY[
    'Meni 1: Veliki čevapčiči (10x), vroča lepinja, čebula, zeljnata solata, jabolko',
    'Meni 2: Srednji čevapi s kajmakom in lepinjo, solata',
    'Meni 3: Telečja čorba z domačim kruhom, jabolko'
  ]);


-- Location: Baščaršija Ljubljana Trubarjeva
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000003259', 'Baščaršija Ljubljana Trubarjeva', 'Ljubljana, 1000 Ljubljana', 46.073, 14.527, 3.95, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000003259', CURRENT_DATE, ARRAY[
    'Meni 1: Veliki čevapčiči (10x), vroča lepinja, čebula, zeljnata solata, jabolko',
    'Meni 2: Srednji čevapi s kajmakom in lepinjo, solata',
    'Meni 3: Telečja čorba z domačim kruhom, jabolko'
  ]);


-- Location: Baščaršija Maribor Gosposvetska
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000003237', 'Baščaršija Maribor Gosposvetska', 'Maribor, 2000 Maribor', 46.562, 15.658, 4.10, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000003237', CURRENT_DATE, ARRAY[
    'Meni 1: Veliki čevapčiči (10x), vroča lepinja, čebula, zeljnata solata, jabolko',
    'Meni 2: Srednji čevapi s kajmakom in lepinjo, solata',
    'Meni 3: Telečja čorba z domačim kruhom, jabolko'
  ]);


-- Location: Biotehniški izobraževalni center Ljubljana
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000002102', 'Biotehniški izobraževalni center Ljubljana', 'Ljubljana, 1000 Ljubljana', 46.059, 14.521, 4.25, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000002102', CURRENT_DATE, ARRAY[
    'Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko',
    'Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha',
    'Meni 3: Testenine v paradižnikovi omaki z baziliko, solata'
  ]);


-- Location: Biotehniški izobraževalni center Ljubljana
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000002103', 'Biotehniški izobraževalni center Ljubljana', 'Ljubljana, 1000 Ljubljana', 46.072, 14.538, 4.40, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000002103', CURRENT_DATE, ARRAY[
    'Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko',
    'Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha',
    'Meni 3: Testenine v paradižnikovi omaki z baziliko, solata'
  ]);


-- Location: Bistro Arty
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000002862', 'Bistro Arty', 'Ljubljana, 1000 Ljubljana', 46.085, 14.515, 4.55, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000002862', CURRENT_DATE, ARRAY[
    'Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko',
    'Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha',
    'Meni 3: Testenine v paradižnikovi omaki z baziliko, solata'
  ]);


-- Location: Bistro Luft
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000003331', 'Bistro Luft', 'Ljubljana, 1000 Ljubljana', 46.058, 14.532, 3.50, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000003331', CURRENT_DATE, ARRAY[
    'Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko',
    'Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha',
    'Meni 3: Testenine v paradižnikovi omaki z baziliko, solata'
  ]);


-- Location: Bistro Situla
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000003280', 'Bistro Situla', 'Ljubljana, 1000 Ljubljana', 46.071, 14.509, 3.65, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000003280', CURRENT_DATE, ARRAY[
    'Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko',
    'Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha',
    'Meni 3: Testenine v paradižnikovi omaki z baziliko, solata'
  ]);


-- Location: Bistro Slovely
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000003221', 'Bistro Slovely', 'Ljubljana, 1000 Ljubljana', 46.084, 14.526, 3.80, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000003221', CURRENT_DATE, ARRAY[
    'Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko',
    'Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha',
    'Meni 3: Testenine v paradižnikovi omaki z baziliko, solata'
  ]);


-- Location: BISTRO VILLA DOMUS
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000002821', 'BISTRO VILLA DOMUS', 'Ljubljana, 1000 Ljubljana', 46.057, 14.503, 3.95, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000002821', CURRENT_DATE, ARRAY[
    'Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko',
    'Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha',
    'Meni 3: Testenine v paradižnikovi omaki z baziliko, solata'
  ]);


-- Location: Bohor
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000001645', 'Bohor', 'Ljubljana, 1000 Ljubljana', 46.07, 14.52, 4.10, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000001645', CURRENT_DATE, ARRAY[
    'Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko',
    'Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha',
    'Meni 3: Testenine v paradižnikovi omaki z baziliko, solata'
  ]);


-- Location: Bolnišnična restavracija Splošne bolnišnice Jesenice
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000003109', 'Bolnišnična restavracija Splošne bolnišnice Jesenice', 'Kranj, 4000 Kranj', 46.237, 14.361, 4.25, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000003109', CURRENT_DATE, ARRAY[
    'Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko',
    'Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha',
    'Meni 3: Testenine v paradižnikovi omaki z baziliko, solata'
  ]);


-- Location: Burek Olimpija Rimska
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000003173', 'Burek Olimpija Rimska', 'Ljubljana, 1000 Ljubljana', 46.056, 14.514, 4.40, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000003173', CURRENT_DATE, ARRAY[
    'Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko',
    'Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha',
    'Meni 3: Testenine v paradižnikovi omaki z baziliko, solata'
  ]);


-- Location: BURGER TIME
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000003067', 'BURGER TIME', 'Ljubljana, 1000 Ljubljana', 46.069, 14.531, 4.55, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000003067', CURRENT_DATE, ARRAY[
    'Meni 1: Classic Beef Burger z ocvrtim krompirčkom in mešano solato',
    'Meni 2: Chicken Burger s svežo solato in omako',
    'Meni 3: Falafel ali Vegi Burger s krompirčkom, sadje'
  ]);


-- Location: Cantante cafe Tabor
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000001161', 'Cantante cafe Tabor', 'Ljubljana, 1000 Ljubljana', 46.082, 14.508, 3.50, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000001161', CURRENT_DATE, ARRAY[
    'Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko',
    'Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha',
    'Meni 3: Testenine v paradižnikovi omaki z baziliko, solata'
  ]);


-- Location: Cantante cafe Tabor - DOSTAVA
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000001673', 'Cantante cafe Tabor - DOSTAVA', 'Ljubljana, 1000 Ljubljana', 46.055, 14.525, 3.65, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000001673', CURRENT_DATE, ARRAY[
    'Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko',
    'Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha',
    'Meni 3: Testenine v paradižnikovi omaki z baziliko, solata'
  ]);


-- Location: Cantina QUE PASA
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000003176', 'Cantina QUE PASA', 'Ljubljana, 1000 Ljubljana', 46.068, 14.502, 3.80, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000003176', CURRENT_DATE, ARRAY[
    'Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko',
    'Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha',
    'Meni 3: Testenine v paradižnikovi omaki z baziliko, solata'
  ]);


-- Location: Cappuccino Svetilnik Izola
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000003375', 'Cappuccino Svetilnik Izola', 'Koper, 6000 Koper', 45.557, 13.741, 3.95, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000003375', CURRENT_DATE, ARRAY[
    'Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko',
    'Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha',
    'Meni 3: Testenine v paradižnikovi omaki z baziliko, solata'
  ]);


-- Location: Chutys Europark Maribor
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000003171', 'Chutys Europark Maribor', 'Maribor, 2000 Maribor', 46.558, 15.662, 4.10, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000003171', CURRENT_DATE, ARRAY[
    'Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko',
    'Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha',
    'Meni 3: Testenine v paradižnikovi omaki z baziliko, solata'
  ]);


-- Location: City grill
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000001568', 'City grill', 'Ljubljana, 1000 Ljubljana', 46.067, 14.513, 4.25, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000001568', CURRENT_DATE, ARRAY[
    'Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko',
    'Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha',
    'Meni 3: Testenine v paradižnikovi omaki z baziliko, solata'
  ]);


-- Location: City grill - DOSTAVA
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000001569', 'City grill - DOSTAVA', 'Ljubljana, 1000 Ljubljana', 46.08, 14.53, 4.40, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000001569', CURRENT_DATE, ARRAY[
    'Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko',
    'Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha',
    'Meni 3: Testenine v paradižnikovi omaki z baziliko, solata'
  ]);


-- Location: Čevabdžinica Sarajevo84
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000003114', 'Čevabdžinica Sarajevo84', 'Ljubljana, 1000 Ljubljana', 46.053, 14.507, 4.55, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000003114', CURRENT_DATE, ARRAY[
    'Meni 1: Veliki čevapčiči (10x), vroča lepinja, čebula, zeljnata solata, jabolko',
    'Meni 2: Srednji čevapi s kajmakom in lepinjo, solata',
    'Meni 3: Telečja čorba z domačim kruhom, jabolko'
  ]);


-- Location: Čevabdžinica Sarajevo84 (Tomažičev trg)
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000003234', 'Čevabdžinica Sarajevo84 (Tomažičev trg)', 'Ljubljana, 1000 Ljubljana', 46.066, 14.524, 3.50, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000003234', CURRENT_DATE, ARRAY[
    'Meni 1: Veliki čevapčiči (10x), vroča lepinja, čebula, zeljnata solata, jabolko',
    'Meni 2: Srednji čevapi s kajmakom in lepinjo, solata',
    'Meni 3: Telečja čorba z domačim kruhom, jabolko'
  ]);


-- Location: Čewapi Citypark Ljubljana
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000003286', 'Čewapi Citypark Ljubljana', 'Ljubljana, 1000 Ljubljana', 46.079, 14.501, 3.65, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000003286', CURRENT_DATE, ARRAY[
    'Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko',
    'Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha',
    'Meni 3: Testenine v paradižnikovi omaki z baziliko, solata'
  ]);


-- Location: Čewapi Ljubljana Center
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000003285', 'Čewapi Ljubljana Center', 'Ljubljana, 1000 Ljubljana', 46.052, 14.518, 3.80, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000003285', CURRENT_DATE, ARRAY[
    'Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko',
    'Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha',
    'Meni 3: Testenine v paradižnikovi omaki z baziliko, solata'
  ]);


-- Location: DA BU DA, Azijska restavracija
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000001485', 'DA BU DA, Azijska restavracija', 'Ljubljana, 1000 Ljubljana', 46.065, 14.535, 3.95, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000001485', CURRENT_DATE, ARRAY[
    'Meni 1: Hrustljavi piščanec v sladko-kisli omaki, pražen riž, zelenjavna juha',
    'Meni 2: Praženi rezanci z zelenjavo in tofujem, solata',
    'Meni 3: Pekinška raca z rižem, pomladni zavitki'
  ]);


-- Location: Das ist Valter Kranj
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000002326', 'Das ist Valter Kranj', 'Kranj, 4000 Kranj', 46.242, 14.366, 4.10, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000002326', CURRENT_DATE, ARRAY[
    'Meni 1: Veliki čevapčiči (10x), vroča lepinja, čebula, zeljnata solata, jabolko',
    'Meni 2: Srednji čevapi s kajmakom in lepinjo, solata',
    'Meni 3: Telečja čorba z domačim kruhom, jabolko'
  ]);


-- Location: Das ist Valter Ljubljana center
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000002951', 'Das ist Valter Ljubljana center', 'Ljubljana, 1000 Ljubljana', 46.051, 14.529, 4.25, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000002951', CURRENT_DATE, ARRAY[
    'Meni 1: Veliki čevapčiči (10x), vroča lepinja, čebula, zeljnata solata, jabolko',
    'Meni 2: Srednji čevapi s kajmakom in lepinjo, solata',
    'Meni 3: Telečja čorba z domačim kruhom, jabolko'
  ]);


-- Location: Das ist Valter Ljubljana Šmartinska
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000002131', 'Das ist Valter Ljubljana Šmartinska', 'Ljubljana, 1000 Ljubljana', 46.064, 14.506, 4.40, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000002131', CURRENT_DATE, ARRAY[
    'Meni 1: Veliki čevapčiči (10x), vroča lepinja, čebula, zeljnata solata, jabolko',
    'Meni 2: Srednji čevapi s kajmakom in lepinjo, solata',
    'Meni 3: Telečja čorba z domačim kruhom, jabolko'
  ]);


-- Location: Das ist Valter Škofja Loka
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000002252', 'Das ist Valter Škofja Loka', 'Kranj, 4000 Kranj', 46.243, 14.359, 4.55, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000002252', CURRENT_DATE, ARRAY[
    'Meni 1: Veliki čevapčiči (10x), vroča lepinja, čebula, zeljnata solata, jabolko',
    'Meni 2: Srednji čevapi s kajmakom in lepinjo, solata',
    'Meni 3: Telečja čorba z domačim kruhom, jabolko'
  ]);


-- Location: Dijaški dom
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000003145', 'Dijaški dom', 'Ljubljana, 1000 Ljubljana', 46.05, 14.5, 3.50, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000003145', CURRENT_DATE, ARRAY[
    'Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko',
    'Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha',
    'Meni 3: Testenine v paradižnikovi omaki z baziliko, solata'
  ]);


-- Location: Dijaški dom Lizike Jančar
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000001090', 'Dijaški dom Lizike Jančar', 'Ljubljana, 1000 Ljubljana', 46.063, 14.517, 3.65, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000001090', CURRENT_DATE, ARRAY[
    'Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko',
    'Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha',
    'Meni 3: Testenine v paradižnikovi omaki z baziliko, solata'
  ]);


-- Location: Dijaški dom Poljane
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000001502', 'Dijaški dom Poljane', 'Ljubljana, 1000 Ljubljana', 46.076, 14.534, 3.80, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000001502', CURRENT_DATE, ARRAY[
    'Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko',
    'Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha',
    'Meni 3: Testenine v paradižnikovi omaki z baziliko, solata'
  ]);


-- Location: Dijaški dom Tabor
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000002111', 'Dijaški dom Tabor', 'Ljubljana, 1000 Ljubljana', 46.089, 14.511, 3.95, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000002111', CURRENT_DATE, ARRAY[
    'Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko',
    'Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha',
    'Meni 3: Testenine v paradižnikovi omaki z baziliko, solata'
  ]);


-- Location: Dijaški dom Vič
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000001314', 'Dijaški dom Vič', 'Ljubljana, 1000 Ljubljana', 46.062, 14.528, 4.10, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000001314', CURRENT_DATE, ARRAY[
    'Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko',
    'Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha',
    'Meni 3: Testenine v paradižnikovi omaki z baziliko, solata'
  ]);


-- Location: Dijaški in študentski dom Novo mesto
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000001501', 'Dijaški in študentski dom Novo mesto', 'Novo mesto, 8000 Novo mesto', 45.805, 15.185, 4.25, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000001501', CURRENT_DATE, ARRAY[
    'Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko',
    'Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha',
    'Meni 3: Testenine v paradižnikovi omaki z baziliko, solata'
  ]);


-- Location: Do kosti Pizzeria Chianti
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000003381', 'Do kosti Pizzeria Chianti', 'Ljubljana, 1000 Ljubljana', 46.088, 14.522, 4.40, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000003381', CURRENT_DATE, ARRAY[
    'Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko',
    'Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha',
    'Meni 3: Testenine v paradižnikovi omaki z baziliko, solata'
  ]);


-- Location: Dobra hiša
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000002552', 'Dobra hiša', 'Ljubljana, 1000 Ljubljana', 46.061, 14.539, 4.55, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000002552', CURRENT_DATE, ARRAY[
    'Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko',
    'Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha',
    'Meni 3: Testenine v paradižnikovi omaki z baziliko, solata'
  ]);


-- Location: Dobra hiša Rudnik
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000002298', 'Dobra hiša Rudnik', 'Ljubljana, 1000 Ljubljana', 46.074, 14.516, 3.50, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000002298', CURRENT_DATE, ARRAY[
    'Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko',
    'Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha',
    'Meni 3: Testenine v paradižnikovi omaki z baziliko, solata'
  ]);


-- Location: Dobrote vzhoda
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000001578', 'Dobrote vzhoda', 'Ljubljana, 1000 Ljubljana', 46.087, 14.533, 3.65, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000001578', CURRENT_DATE, ARRAY[
    'Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko',
    'Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha',
    'Meni 3: Testenine v paradižnikovi omaki z baziliko, solata'
  ]);


-- Location: Dodo Pizza Koper
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000003370', 'Dodo Pizza Koper', 'Koper, 6000 Koper', 45.55, 13.74, 3.80, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000003370', CURRENT_DATE, ARRAY[
    'Meni 1: Pizza Margherita (pelati, mocarela, bazilika), mešana solata, sadje',
    'Meni 2: Pizza Klasika (šunka, sir, gobe), mešana solata',
    'Meni 3: Veganska pizza s pečenimi jajčevci in bučkami, solata'
  ]);


-- Location: Dodo Pizza Ljubljana-Bežigrad
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000003350', 'Dodo Pizza Ljubljana-Bežigrad', 'Ljubljana, 1000 Ljubljana', 46.073, 14.527, 3.95, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000003350', CURRENT_DATE, ARRAY[
    'Meni 1: Pizza Margherita (pelati, mocarela, bazilika), mešana solata, sadje',
    'Meni 2: Pizza Klasika (šunka, sir, gobe), mešana solata',
    'Meni 3: Veganska pizza s pečenimi jajčevci in bučkami, solata'
  ]);


-- Location: Dodo Pizza Ljubljana-center
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000003349', 'Dodo Pizza Ljubljana-center', 'Ljubljana, 1000 Ljubljana', 46.086, 14.504, 4.10, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000003349', CURRENT_DATE, ARRAY[
    'Meni 1: Pizza Margherita (pelati, mocarela, bazilika), mešana solata, sadje',
    'Meni 2: Pizza Klasika (šunka, sir, gobe), mešana solata',
    'Meni 3: Veganska pizza s pečenimi jajčevci in bučkami, solata'
  ]);


-- Location: Dodo Pizza ljubljana-Fužine
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000003351', 'Dodo Pizza ljubljana-Fužine', 'Ljubljana, 1000 Ljubljana', 46.059, 14.521, 4.25, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000003351', CURRENT_DATE, ARRAY[
    'Meni 1: Pizza Margherita (pelati, mocarela, bazilika), mešana solata, sadje',
    'Meni 2: Pizza Klasika (šunka, sir, gobe), mešana solata',
    'Meni 3: Veganska pizza s pečenimi jajčevci in bučkami, solata'
  ]);


-- Location: Domača pekarna Bežigrad
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000003191', 'Domača pekarna Bežigrad', 'Ljubljana, 1000 Ljubljana', 46.072, 14.538, 4.40, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000003191', CURRENT_DATE, ARRAY[
    'Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko',
    'Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha',
    'Meni 3: Testenine v paradižnikovi omaki z baziliko, solata'
  ]);


-- Location: EASY BEER
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000003369', 'EASY BEER', 'Ljubljana, 1000 Ljubljana', 46.085, 14.515, 4.55, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000003369', CURRENT_DATE, ARRAY[
    'Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko',
    'Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha',
    'Meni 3: Testenine v paradižnikovi omaki z baziliko, solata'
  ]);


-- Location: Eda restavracija
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000003243', 'Eda restavracija', 'Ljubljana, 1000 Ljubljana', 46.058, 14.532, 3.50, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000003243', CURRENT_DATE, ARRAY[
    'Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko',
    'Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha',
    'Meni 3: Testenine v paradižnikovi omaki z baziliko, solata'
  ]);


-- Location: Ej babi
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000003399', 'Ej babi', 'Ljubljana, 1000 Ljubljana', 46.071, 14.509, 3.65, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000003399', CURRENT_DATE, ARRAY[
    'Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko',
    'Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha',
    'Meni 3: Testenine v paradižnikovi omaki z baziliko, solata'
  ]);


-- Location: Fari&#39;s
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000003292', 'Fari&#39;s', 'Ljubljana, 1000 Ljubljana', 46.084, 14.526, 3.80, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000003292', CURRENT_DATE, ARRAY[
    'Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko',
    'Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha',
    'Meni 3: Testenine v paradižnikovi omaki z baziliko, solata'
  ]);


-- Location: Fari&#39;s
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000002589', 'Fari&#39;s', 'Ljubljana, 1000 Ljubljana', 46.057, 14.503, 3.95, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000002589', CURRENT_DATE, ARRAY[
    'Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko',
    'Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha',
    'Meni 3: Testenine v paradižnikovi omaki z baziliko, solata'
  ]);


-- Location: Fast food &amp; pekarna PLAVA LAGUNA
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000003192', 'Fast food &amp; pekarna PLAVA LAGUNA', 'Ljubljana, 1000 Ljubljana', 46.07, 14.52, 4.10, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000003192', CURRENT_DATE, ARRAY[
    'Meni 1: Classic Beef Burger z ocvrtim krompirčkom in mešano solato',
    'Meni 2: Chicken Burger s svežo solato in omako',
    'Meni 3: Falafel ali Vegi Burger s krompirčkom, sadje'
  ]);


-- Location: Fast food Ajda
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000003282', 'Fast food Ajda', 'Ljubljana, 1000 Ljubljana', 46.083, 14.537, 4.25, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000003282', CURRENT_DATE, ARRAY[
    'Meni 1: Classic Beef Burger z ocvrtim krompirčkom in mešano solato',
    'Meni 2: Chicken Burger s svežo solato in omako',
    'Meni 3: Falafel ali Vegi Burger s krompirčkom, sadje'
  ]);


-- Location: Fast food LEON
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000003382', 'Fast food LEON', 'Ljubljana, 1000 Ljubljana', 46.056, 14.514, 4.40, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000003382', CURRENT_DATE, ARRAY[
    'Meni 1: Classic Beef Burger z ocvrtim krompirčkom in mešano solato',
    'Meni 2: Chicken Burger s svežo solato in omako',
    'Meni 3: Falafel ali Vegi Burger s krompirčkom, sadje'
  ]);


-- Location: Fast food Magic
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000003158', 'Fast food Magic', 'Ljubljana, 1000 Ljubljana', 46.069, 14.531, 4.55, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000003158', CURRENT_DATE, ARRAY[
    'Meni 1: Classic Beef Burger z ocvrtim krompirčkom in mešano solato',
    'Meni 2: Chicken Burger s svežo solato in omako',
    'Meni 3: Falafel ali Vegi Burger s krompirčkom, sadje'
  ]);


-- Location: FAST FOOD PRI ŠTUKU
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000003391', 'FAST FOOD PRI ŠTUKU', 'Ljubljana, 1000 Ljubljana', 46.082, 14.508, 3.50, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000003391', CURRENT_DATE, ARRAY[
    'Meni 1: Classic Beef Burger z ocvrtim krompirčkom in mešano solato',
    'Meni 2: Chicken Burger s svežo solato in omako',
    'Meni 3: Falafel ali Vegi Burger s krompirčkom, sadje'
  ]);


-- Location: Fast food Slast
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000003165', 'Fast food Slast', 'Ljubljana, 1000 Ljubljana', 46.055, 14.525, 3.65, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000003165', CURRENT_DATE, ARRAY[
    'Meni 1: Classic Beef Burger z ocvrtim krompirčkom in mešano solato',
    'Meni 2: Chicken Burger s svežo solato in omako',
    'Meni 3: Falafel ali Vegi Burger s krompirčkom, sadje'
  ]);


-- Location: FOOD POINT NINETY NINE
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000003335', 'FOOD POINT NINETY NINE', 'Ljubljana, 1000 Ljubljana', 46.068, 14.502, 3.80, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000003335', CURRENT_DATE, ARRAY[
    'Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko',
    'Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha',
    'Meni 3: Testenine v paradižnikovi omaki z baziliko, solata'
  ]);


-- Location: Forum
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000002849', 'Forum', 'Ljubljana, 1000 Ljubljana', 46.081, 14.519, 3.95, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000002849', CURRENT_DATE, ARRAY[
    'Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko',
    'Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha',
    'Meni 3: Testenine v paradižnikovi omaki z baziliko, solata'
  ]);


-- Location: Galaksija Trebnje
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000003291', 'Galaksija Trebnje', 'Novo mesto, 8000 Novo mesto', 45.8, 15.178, 4.10, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000003291', CURRENT_DATE, ARRAY[
    'Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko',
    'Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha',
    'Meni 3: Testenine v paradižnikovi omaki z baziliko, solata'
  ]);


-- Location: Garač - Restavracija &quot;M&quot;
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000002591', 'Garač - Restavracija &quot;M&quot;', 'Ljubljana, 1000 Ljubljana', 46.067, 14.513, 4.25, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000002591', CURRENT_DATE, ARRAY[
    'Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko',
    'Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha',
    'Meni 3: Testenine v paradižnikovi omaki z baziliko, solata'
  ]);


-- Location: Gaudi &amp; Naan
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000003308', 'Gaudi &amp; Naan', 'Ljubljana, 1000 Ljubljana', 46.08, 14.53, 4.40, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000003308', CURRENT_DATE, ARRAY[
    'Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko',
    'Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha',
    'Meni 3: Testenine v paradižnikovi omaki z baziliko, solata'
  ]);


-- Location: Gig Bar &amp; Burger
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000003223', 'Gig Bar &amp; Burger', 'Ljubljana, 1000 Ljubljana', 46.053, 14.507, 4.55, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000003223', CURRENT_DATE, ARRAY[
    'Meni 1: Classic Beef Burger z ocvrtim krompirčkom in mešano solato',
    'Meni 2: Chicken Burger s svežo solato in omako',
    'Meni 3: Falafel ali Vegi Burger s krompirčkom, sadje'
  ]);


-- Location: Gostilna Godec
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000003352', 'Gostilna Godec', 'Ljubljana, 1000 Ljubljana', 46.066, 14.524, 3.50, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000003352', CURRENT_DATE, ARRAY[
    'Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko',
    'Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha',
    'Meni 3: Testenine v paradižnikovi omaki z baziliko, solata'
  ]);


-- Location: Gostilna in picerija Guliver
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000003299', 'Gostilna in picerija Guliver', 'Ljubljana, 1000 Ljubljana', 46.079, 14.501, 3.65, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000003299', CURRENT_DATE, ARRAY[
    'Meni 1: Pizza Margherita (pelati, mocarela, bazilika), mešana solata, sadje',
    'Meni 2: Pizza Klasika (šunka, sir, gobe), mešana solata',
    'Meni 3: Veganska pizza s pečenimi jajčevci in bučkami, solata'
  ]);


-- Location: Gostilna in picerija Guliver - dostava
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000003300', 'Gostilna in picerija Guliver - dostava', 'Ljubljana, 1000 Ljubljana', 46.052, 14.518, 3.80, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000003300', CURRENT_DATE, ARRAY[
    'Meni 1: Pizza Margherita (pelati, mocarela, bazilika), mešana solata, sadje',
    'Meni 2: Pizza Klasika (šunka, sir, gobe), mešana solata',
    'Meni 3: Veganska pizza s pečenimi jajčevci in bučkami, solata'
  ]);


-- Location: Gostilna in picerija JERNEJEV HRAM
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000002411', 'Gostilna in picerija JERNEJEV HRAM', 'Ljubljana, 1000 Ljubljana', 46.065, 14.535, 3.95, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000002411', CURRENT_DATE, ARRAY[
    'Meni 1: Pizza Margherita (pelati, mocarela, bazilika), mešana solata, sadje',
    'Meni 2: Pizza Klasika (šunka, sir, gobe), mešana solata',
    'Meni 3: Veganska pizza s pečenimi jajčevci in bučkami, solata'
  ]);


-- Location: Gostilna in Pizzerija Kovač
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000003294', 'Gostilna in Pizzerija Kovač', 'Ljubljana, 1000 Ljubljana', 46.078, 14.512, 4.10, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000003294', CURRENT_DATE, ARRAY[
    'Meni 1: Pizza Margherita (pelati, mocarela, bazilika), mešana solata, sadje',
    'Meni 2: Pizza Klasika (šunka, sir, gobe), mešana solata',
    'Meni 3: Veganska pizza s pečenimi jajčevci in bučkami, solata'
  ]);


-- Location: Gostilna Pod Škalcami
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000002543', 'Gostilna Pod Škalcami', 'Ljubljana, 1000 Ljubljana', 46.051, 14.529, 4.25, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000002543', CURRENT_DATE, ARRAY[
    'Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko',
    'Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha',
    'Meni 3: Testenine v paradižnikovi omaki z baziliko, solata'
  ]);


-- Location: Gostilna pod Škalcami - DOSTAVA
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000002346', 'Gostilna pod Škalcami - DOSTAVA', 'Ljubljana, 1000 Ljubljana', 46.064, 14.506, 4.40, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000002346', CURRENT_DATE, ARRAY[
    'Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko',
    'Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha',
    'Meni 3: Testenine v paradižnikovi omaki z baziliko, solata'
  ]);


-- Location: Gostilna Stara Brajda
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000003123', 'Gostilna Stara Brajda', 'Ljubljana, 1000 Ljubljana', 46.077, 14.523, 4.55, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000003123', CURRENT_DATE, ARRAY[
    'Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko',
    'Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha',
    'Meni 3: Testenine v paradižnikovi omaki z baziliko, solata'
  ]);


-- Location: Gostilna Štorklja
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000003126', 'Gostilna Štorklja', 'Ljubljana, 1000 Ljubljana', 46.05, 14.5, 3.50, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000003126', CURRENT_DATE, ARRAY[
    'Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko',
    'Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha',
    'Meni 3: Testenine v paradižnikovi omaki z baziliko, solata'
  ]);


-- Location: Gostilna Zlati lev
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000001123', 'Gostilna Zlati lev', 'Ljubljana, 1000 Ljubljana', 46.063, 14.517, 3.65, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000001123', CURRENT_DATE, ARRAY[
    'Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko',
    'Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha',
    'Meni 3: Testenine v paradižnikovi omaki z baziliko, solata'
  ]);


-- Location: Gostilnica in pivnica Kratochwill
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000002185', 'Gostilnica in pivnica Kratochwill', 'Ljubljana, 1000 Ljubljana', 46.076, 14.534, 3.80, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000002185', CURRENT_DATE, ARRAY[
    'Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko',
    'Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha',
    'Meni 3: Testenine v paradižnikovi omaki z baziliko, solata'
  ]);


-- Location: Gostilnica in pivnica Vič
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000003060', 'Gostilnica in pivnica Vič', 'Ljubljana, 1000 Ljubljana', 46.089, 14.511, 3.95, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000003060', CURRENT_DATE, ARRAY[
    'Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko',
    'Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha',
    'Meni 3: Testenine v paradižnikovi omaki z baziliko, solata'
  ]);


-- Location: Gostilnica in pizzerija Kratochwill
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000001834', 'Gostilnica in pizzerija Kratochwill', 'Ljubljana, 1000 Ljubljana', 46.062, 14.528, 4.10, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000001834', CURRENT_DATE, ARRAY[
    'Meni 1: Pizza Margherita (pelati, mocarela, bazilika), mešana solata, sadje',
    'Meni 2: Pizza Klasika (šunka, sir, gobe), mešana solata',
    'Meni 3: Veganska pizza s pečenimi jajčevci in bučkami, solata'
  ]);


-- Location: Gostilnica in pizzerija Kratochwill
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000001835', 'Gostilnica in pizzerija Kratochwill', 'Ljubljana, 1000 Ljubljana', 46.075, 14.505, 4.25, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000001835', CURRENT_DATE, ARRAY[
    'Meni 1: Pizza Margherita (pelati, mocarela, bazilika), mešana solata, sadje',
    'Meni 2: Pizza Klasika (šunka, sir, gobe), mešana solata',
    'Meni 3: Veganska pizza s pečenimi jajčevci in bučkami, solata'
  ]);


-- Location: GOSTILNICA KENIK
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000003394', 'GOSTILNICA KENIK', 'Ljubljana, 1000 Ljubljana', 46.088, 14.522, 4.40, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000003394', CURRENT_DATE, ARRAY[
    'Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko',
    'Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha',
    'Meni 3: Testenine v paradižnikovi omaki z baziliko, solata'
  ]);


-- Location: Gostilnica Meta in Bazilika
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000002995', 'Gostilnica Meta in Bazilika', 'Ljubljana, 1000 Ljubljana', 46.061, 14.539, 4.55, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000002995', CURRENT_DATE, ARRAY[
    'Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko',
    'Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha',
    'Meni 3: Testenine v paradižnikovi omaki z baziliko, solata'
  ]);


-- Location: Gostilnica Namanova
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000001213', 'Gostilnica Namanova', 'Ljubljana, 1000 Ljubljana', 46.074, 14.516, 3.50, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000001213', CURRENT_DATE, ARRAY[
    'Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko',
    'Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha',
    'Meni 3: Testenine v paradižnikovi omaki z baziliko, solata'
  ]);


-- Location: Gostišče LOKA
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000003305', 'Gostišče LOKA', 'Ljubljana, 1000 Ljubljana', 46.087, 14.533, 3.65, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000003305', CURRENT_DATE, ARRAY[
    'Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko',
    'Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha',
    'Meni 3: Testenine v paradižnikovi omaki z baziliko, solata'
  ]);


-- Location: Gostišče na trgu - Hiša kulinarike
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000001847', 'Gostišče na trgu - Hiša kulinarike', 'Ljubljana, 1000 Ljubljana', 46.06, 14.51, 3.80, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000001847', CURRENT_DATE, ARRAY[
    'Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko',
    'Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha',
    'Meni 3: Testenine v paradižnikovi omaki z baziliko, solata'
  ]);


-- Location: Grashka Deli
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000003354', 'Grashka Deli', 'Ljubljana, 1000 Ljubljana', 46.073, 14.527, 3.95, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000003354', CURRENT_DATE, ARRAY[
    'Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko',
    'Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha',
    'Meni 3: Testenine v paradižnikovi omaki z baziliko, solata'
  ]);


-- Location: Gurmanski hram
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000001188', 'Gurmanski hram', 'Ljubljana, 1000 Ljubljana', 46.086, 14.504, 4.10, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000001188', CURRENT_DATE, ARRAY[
    'Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko',
    'Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha',
    'Meni 3: Testenine v paradižnikovi omaki z baziliko, solata'
  ]);


-- Location: Gurmanski hram - DOSTAVA
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000001189', 'Gurmanski hram - DOSTAVA', 'Ljubljana, 1000 Ljubljana', 46.059, 14.521, 4.25, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000001189', CURRENT_DATE, ARRAY[
    'Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko',
    'Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha',
    'Meni 3: Testenine v paradižnikovi omaki z baziliko, solata'
  ]);


-- Location: Halo Katra - dostava
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000002355', 'Halo Katra - dostava', 'Ljubljana, 1000 Ljubljana', 46.072, 14.538, 4.40, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000002355', CURRENT_DATE, ARRAY[
    'Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko',
    'Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha',
    'Meni 3: Testenine v paradižnikovi omaki z baziliko, solata'
  ]);


-- Location: Halo Pinki - dostava
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000001514', 'Halo Pinki - dostava', 'Ljubljana, 1000 Ljubljana', 46.085, 14.515, 4.55, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000001514', CURRENT_DATE, ARRAY[
    'Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko',
    'Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha',
    'Meni 3: Testenine v paradižnikovi omaki z baziliko, solata'
  ]);


-- Location: Halo Shaolin - dostava
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000003366', 'Halo Shaolin - dostava', 'Ljubljana, 1000 Ljubljana', 46.058, 14.532, 3.50, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000003366', CURRENT_DATE, ARRAY[
    'Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko',
    'Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha',
    'Meni 3: Testenine v paradižnikovi omaki z baziliko, solata'
  ]);


-- Location: Hiša pod gradom
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000002668', 'Hiša pod gradom', 'Ljubljana, 1000 Ljubljana', 46.071, 14.509, 3.65, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000002668', CURRENT_DATE, ARRAY[
    'Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko',
    'Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha',
    'Meni 3: Testenine v paradižnikovi omaki z baziliko, solata'
  ]);


-- Location: Hit wok
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000002430', 'Hit wok', 'Ljubljana, 1000 Ljubljana', 46.084, 14.526, 3.80, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000002430', CURRENT_DATE, ARRAY[
    'Meni 1: Hrustljavi piščanec v sladko-kisli omaki, pražen riž, zelenjavna juha',
    'Meni 2: Praženi rezanci z zelenjavo in tofujem, solata',
    'Meni 3: Pekinška raca z rižem, pomladni zavitki'
  ]);


-- Location: Hotel restavracija Prunk
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000003373', 'Hotel restavracija Prunk', 'Ljubljana, 1000 Ljubljana', 46.057, 14.503, 3.95, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000003373', CURRENT_DATE, ARRAY[
    'Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko',
    'Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha',
    'Meni 3: Testenine v paradižnikovi omaki z baziliko, solata'
  ]);


-- Location: HotSpot bar&amp;bistro
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000002846', 'HotSpot bar&amp;bistro', 'Ljubljana, 1000 Ljubljana', 46.07, 14.52, 4.10, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000002846', CURRENT_DATE, ARRAY[
    'Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko',
    'Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha',
    'Meni 3: Testenine v paradižnikovi omaki z baziliko, solata'
  ]);


-- Location: HUDA .
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000003197', 'HUDA .', 'Ljubljana, 1000 Ljubljana', 46.083, 14.537, 4.25, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000003197', CURRENT_DATE, ARRAY[
    'Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko',
    'Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha',
    'Meni 3: Testenine v paradižnikovi omaki z baziliko, solata'
  ]);


-- Location: IT`S WOK O`CLOCK
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000003387', 'IT`S WOK O`CLOCK', 'Ljubljana, 1000 Ljubljana', 46.056, 14.514, 4.40, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000003387', CURRENT_DATE, ARRAY[
    'Meni 1: Hrustljavi piščanec v sladko-kisli omaki, pražen riž, zelenjavna juha',
    'Meni 2: Praženi rezanci z zelenjavo in tofujem, solata',
    'Meni 3: Pekinška raca z rižem, pomladni zavitki'
  ]);


-- Location: JOE PENA&#180;S, mehiška restavracija
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000003256', 'JOE PENA&#180;S, mehiška restavracija', 'Ljubljana, 1000 Ljubljana', 46.069, 14.531, 4.55, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000003256', CURRENT_DATE, ARRAY[
    'Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko',
    'Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha',
    'Meni 3: Testenine v paradižnikovi omaki z baziliko, solata'
  ]);


-- Location: K16
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000003238', 'K16', 'Ljubljana, 1000 Ljubljana', 46.082, 14.508, 3.50, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000003238', CURRENT_DATE, ARRAY[
    'Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko',
    'Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha',
    'Meni 3: Testenine v paradižnikovi omaki z baziliko, solata'
  ]);


-- Location: Kampus food
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000003302', 'Kampus food', 'Ljubljana, 1000 Ljubljana', 46.055, 14.525, 3.65, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000003302', CURRENT_DATE, ARRAY[
    'Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko',
    'Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha',
    'Meni 3: Testenine v paradižnikovi omaki z baziliko, solata'
  ]);


-- Location: KAPITAL
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000002581', 'KAPITAL', 'Ljubljana, 1000 Ljubljana', 46.068, 14.502, 3.80, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000002581', CURRENT_DATE, ARRAY[
    'Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko',
    'Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha',
    'Meni 3: Testenine v paradižnikovi omaki z baziliko, solata'
  ]);


-- Location: Kitajska restavracija AZIJA
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000002644', 'Kitajska restavracija AZIJA', 'Ljubljana, 1000 Ljubljana', 46.081, 14.519, 3.95, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000002644', CURRENT_DATE, ARRAY[
    'Meni 1: Hrustljavi piščanec v sladko-kisli omaki, pražen riž, zelenjavna juha',
    'Meni 2: Praženi rezanci z zelenjavo in tofujem, solata',
    'Meni 3: Pekinška raca z rižem, pomladni zavitki'
  ]);


-- Location: Kitajska restavracija Beli labod 2
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000003264', 'Kitajska restavracija Beli labod 2', 'Ljubljana, 1000 Ljubljana', 46.054, 14.536, 4.10, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000003264', CURRENT_DATE, ARRAY[
    'Meni 1: Hrustljavi piščanec v sladko-kisli omaki, pražen riž, zelenjavna juha',
    'Meni 2: Praženi rezanci z zelenjavo in tofujem, solata',
    'Meni 3: Pekinška raca z rižem, pomladni zavitki'
  ]);


-- Location: Kitajska restavracija Cesarska hiša
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000002264', 'Kitajska restavracija Cesarska hiša', 'Ljubljana, 1000 Ljubljana', 46.067, 14.513, 4.25, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000002264', CURRENT_DATE, ARRAY[
    'Meni 1: Hrustljavi piščanec v sladko-kisli omaki, pražen riž, zelenjavna juha',
    'Meni 2: Praženi rezanci z zelenjavo in tofujem, solata',
    'Meni 3: Pekinška raca z rižem, pomladni zavitki'
  ]);


-- Location: Kitajska restavracija Dva zmaja
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000002635', 'Kitajska restavracija Dva zmaja', 'Ljubljana, 1000 Ljubljana', 46.08, 14.53, 4.40, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000002635', CURRENT_DATE, ARRAY[
    'Meni 1: Hrustljavi piščanec v sladko-kisli omaki, pražen riž, zelenjavna juha',
    'Meni 2: Praženi rezanci z zelenjavo in tofujem, solata',
    'Meni 3: Pekinška raca z rižem, pomladni zavitki'
  ]);


-- Location: Kitajska restavracija Han
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000002950', 'Kitajska restavracija Han', 'Ljubljana, 1000 Ljubljana', 46.053, 14.507, 4.55, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000002950', CURRENT_DATE, ARRAY[
    'Meni 1: Hrustljavi piščanec v sladko-kisli omaki, pražen riž, zelenjavna juha',
    'Meni 2: Praženi rezanci z zelenjavo in tofujem, solata',
    'Meni 3: Pekinška raca z rižem, pomladni zavitki'
  ]);


-- Location: Kitajska restavracija Han - Aleja
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000003118', 'Kitajska restavracija Han - Aleja', 'Ljubljana, 1000 Ljubljana', 46.066, 14.524, 3.50, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000003118', CURRENT_DATE, ARRAY[
    'Meni 1: Hrustljavi piščanec v sladko-kisli omaki, pražen riž, zelenjavna juha',
    'Meni 2: Praženi rezanci z zelenjavo in tofujem, solata',
    'Meni 3: Pekinška raca z rižem, pomladni zavitki'
  ]);


-- Location: Kitajska restavracija Leteča zvezda
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000002841', 'Kitajska restavracija Leteča zvezda', 'Ljubljana, 1000 Ljubljana', 46.079, 14.501, 3.65, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000002841', CURRENT_DATE, ARRAY[
    'Meni 1: Hrustljavi piščanec v sladko-kisli omaki, pražen riž, zelenjavna juha',
    'Meni 2: Praženi rezanci z zelenjavo in tofujem, solata',
    'Meni 3: Pekinška raca z rižem, pomladni zavitki'
  ]);


-- Location: Kitajska restavracija Leteča zvezda - dostava
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000002842', 'Kitajska restavracija Leteča zvezda - dostava', 'Ljubljana, 1000 Ljubljana', 46.052, 14.518, 3.80, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000002842', CURRENT_DATE, ARRAY[
    'Meni 1: Hrustljavi piščanec v sladko-kisli omaki, pražen riž, zelenjavna juha',
    'Meni 2: Praženi rezanci z zelenjavo in tofujem, solata',
    'Meni 3: Pekinška raca z rižem, pomladni zavitki'
  ]);


-- Location: Kitajska restavracija Ming Zhu
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000002933', 'Kitajska restavracija Ming Zhu', 'Ljubljana, 1000 Ljubljana', 46.065, 14.535, 3.95, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000002933', CURRENT_DATE, ARRAY[
    'Meni 1: Hrustljavi piščanec v sladko-kisli omaki, pražen riž, zelenjavna juha',
    'Meni 2: Praženi rezanci z zelenjavo in tofujem, solata',
    'Meni 3: Pekinška raca z rižem, pomladni zavitki'
  ]);


-- Location: Kitajska restavracija NANKING
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000001415', 'Kitajska restavracija NANKING', 'Ljubljana, 1000 Ljubljana', 46.078, 14.512, 4.10, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000001415', CURRENT_DATE, ARRAY[
    'Meni 1: Hrustljavi piščanec v sladko-kisli omaki, pražen riž, zelenjavna juha',
    'Meni 2: Praženi rezanci z zelenjavo in tofujem, solata',
    'Meni 3: Pekinška raca z rižem, pomladni zavitki'
  ]);


-- Location: Kitajska restavracija Novi Šanghai
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000001346', 'Kitajska restavracija Novi Šanghai', 'Ljubljana, 1000 Ljubljana', 46.051, 14.529, 4.25, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000001346', CURRENT_DATE, ARRAY[
    'Meni 1: Hrustljavi piščanec v sladko-kisli omaki, pražen riž, zelenjavna juha',
    'Meni 2: Praženi rezanci z zelenjavo in tofujem, solata',
    'Meni 3: Pekinška raca z rižem, pomladni zavitki'
  ]);


-- Location: Kitajska restavracija Šang Hai
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000002446', 'Kitajska restavracija Šang Hai', 'Ljubljana, 1000 Ljubljana', 46.064, 14.506, 4.40, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000002446', CURRENT_DATE, ARRAY[
    'Meni 1: Hrustljavi piščanec v sladko-kisli omaki, pražen riž, zelenjavna juha',
    'Meni 2: Praženi rezanci z zelenjavo in tofujem, solata',
    'Meni 3: Pekinška raca z rižem, pomladni zavitki'
  ]);


-- Location: Kitajska restavracija Zlata srna
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000002761', 'Kitajska restavracija Zlata srna', 'Ljubljana, 1000 Ljubljana', 46.077, 14.523, 4.55, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000002761', CURRENT_DATE, ARRAY[
    'Meni 1: Hrustljavi piščanec v sladko-kisli omaki, pražen riž, zelenjavna juha',
    'Meni 2: Praženi rezanci z zelenjavo in tofujem, solata',
    'Meni 3: Pekinška raca z rižem, pomladni zavitki'
  ]);


-- Location: Kitajska restavracija Zlata srna - DOSTAVA
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000002762', 'Kitajska restavracija Zlata srna - DOSTAVA', 'Ljubljana, 1000 Ljubljana', 46.05, 14.5, 3.50, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000002762', CURRENT_DATE, ARRAY[
    'Meni 1: Hrustljavi piščanec v sladko-kisli omaki, pražen riž, zelenjavna juha',
    'Meni 2: Praženi rezanci z zelenjavo in tofujem, solata',
    'Meni 3: Pekinška raca z rižem, pomladni zavitki'
  ]);


-- Location: Kitajska restavracija Zvezda
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000001165', 'Kitajska restavracija Zvezda', 'Ljubljana, 1000 Ljubljana', 46.063, 14.517, 3.65, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000001165', CURRENT_DATE, ARRAY[
    'Meni 1: Hrustljavi piščanec v sladko-kisli omaki, pražen riž, zelenjavna juha',
    'Meni 2: Praženi rezanci z zelenjavo in tofujem, solata',
    'Meni 3: Pekinška raca z rižem, pomladni zavitki'
  ]);


-- Location: Kitajska restavracja Cesarska hiša-DOSTAVA
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000002265', 'Kitajska restavracja Cesarska hiša-DOSTAVA', 'Ljubljana, 1000 Ljubljana', 46.076, 14.534, 3.80, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000002265', CURRENT_DATE, ARRAY[
    'Meni 1: Hrustljavi piščanec v sladko-kisli omaki, pražen riž, zelenjavna juha',
    'Meni 2: Praženi rezanci z zelenjavo in tofujem, solata',
    'Meni 3: Pekinška raca z rižem, pomladni zavitki'
  ]);


-- Location: Kitajski dvor
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000001610', 'Kitajski dvor', 'Ljubljana, 1000 Ljubljana', 46.089, 14.511, 3.95, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000001610', CURRENT_DATE, ARRAY[
    'Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko',
    'Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha',
    'Meni 3: Testenine v paradižnikovi omaki z baziliko, solata'
  ]);


-- Location: Kitajski dvor
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000001911', 'Kitajski dvor', 'Ljubljana, 1000 Ljubljana', 46.062, 14.528, 4.10, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000001911', CURRENT_DATE, ARRAY[
    'Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko',
    'Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha',
    'Meni 3: Testenine v paradižnikovi omaki z baziliko, solata'
  ]);


-- Location: Kitajski dvor - dostava
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000002117', 'Kitajski dvor - dostava', 'Ljubljana, 1000 Ljubljana', 46.075, 14.505, 4.25, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000002117', CURRENT_DATE, ARRAY[
    'Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko',
    'Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha',
    'Meni 3: Testenine v paradižnikovi omaki z baziliko, solata'
  ]);


-- Location: Kitajski dvor - DOSTAVA
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000001164', 'Kitajski dvor - DOSTAVA', 'Ljubljana, 1000 Ljubljana', 46.088, 14.522, 4.40, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000001164', CURRENT_DATE, ARRAY[
    'Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko',
    'Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha',
    'Meni 3: Testenine v paradižnikovi omaki z baziliko, solata'
  ]);


-- Location: Kitajsko mesto
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000001838', 'Kitajsko mesto', 'Ljubljana, 1000 Ljubljana', 46.061, 14.539, 4.55, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000001838', CURRENT_DATE, ARRAY[
    'Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko',
    'Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha',
    'Meni 3: Testenine v paradižnikovi omaki z baziliko, solata'
  ]);


-- Location: Kitajsko mesto - dostava
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000002772', 'Kitajsko mesto - dostava', 'Ljubljana, 1000 Ljubljana', 46.074, 14.516, 3.50, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000002772', CURRENT_DATE, ARRAY[
    'Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko',
    'Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha',
    'Meni 3: Testenine v paradižnikovi omaki z baziliko, solata'
  ]);


-- Location: Klopčič
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000001422', 'Klopčič', 'Ljubljana, 1000 Ljubljana', 46.087, 14.533, 3.65, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000001422', CURRENT_DATE, ARRAY[
    'Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko',
    'Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha',
    'Meni 3: Testenine v paradižnikovi omaki z baziliko, solata'
  ]);


-- Location: KLUBAR GASTROPUB
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000003140', 'KLUBAR GASTROPUB', 'Ljubljana, 1000 Ljubljana', 46.06, 14.51, 3.80, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000003140', CURRENT_DATE, ARRAY[
    'Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko',
    'Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha',
    'Meni 3: Testenine v paradižnikovi omaki z baziliko, solata'
  ]);


-- Location: Kozlovna Poštna
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000003121', 'Kozlovna Poštna', 'Ljubljana, 1000 Ljubljana', 46.073, 14.527, 3.95, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000003121', CURRENT_DATE, ARRAY[
    'Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko',
    'Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha',
    'Meni 3: Testenine v paradižnikovi omaki z baziliko, solata'
  ]);


-- Location: Leonard
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000002145', 'Leonard', 'Ljubljana, 1000 Ljubljana', 46.086, 14.504, 4.10, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000002145', CURRENT_DATE, ARRAY[
    'Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko',
    'Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha',
    'Meni 3: Testenine v paradižnikovi omaki z baziliko, solata'
  ]);


-- Location: Leteča zvezda
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000002844', 'Leteča zvezda', 'Ljubljana, 1000 Ljubljana', 46.059, 14.521, 4.25, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000002844', CURRENT_DATE, ARRAY[
    'Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko',
    'Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha',
    'Meni 3: Testenine v paradižnikovi omaki z baziliko, solata'
  ]);


-- Location: LIPCA - INDEKS
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000002726', 'LIPCA - INDEKS', 'Ljubljana, 1000 Ljubljana', 46.072, 14.538, 4.40, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000002726', CURRENT_DATE, ARRAY[
    'Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko',
    'Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha',
    'Meni 3: Testenine v paradižnikovi omaki z baziliko, solata'
  ]);


-- Location: Lokal P8
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000003297', 'Lokal P8', 'Ljubljana, 1000 Ljubljana', 46.085, 14.515, 4.55, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000003297', CURRENT_DATE, ARRAY[
    'Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko',
    'Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha',
    'Meni 3: Testenine v paradižnikovi omaki z baziliko, solata'
  ]);


-- Location: Loving Hut
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000002331', 'Loving Hut', 'Ljubljana, 1000 Ljubljana', 46.058, 14.532, 3.50, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000002331', CURRENT_DATE, ARRAY[
    'Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko',
    'Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha',
    'Meni 3: Testenine v paradižnikovi omaki z baziliko, solata'
  ]);


-- Location: LUNCH BOX
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000003322', 'LUNCH BOX', 'Ljubljana, 1000 Ljubljana', 46.071, 14.509, 3.65, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000003322', CURRENT_DATE, ARRAY[
    'Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko',
    'Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha',
    'Meni 3: Testenine v paradižnikovi omaki z baziliko, solata'
  ]);


-- Location: MAGMAX
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000003368', 'MAGMAX', 'Ljubljana, 1000 Ljubljana', 46.084, 14.526, 3.80, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000003368', CURRENT_DATE, ARRAY[
    'Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko',
    'Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha',
    'Meni 3: Testenine v paradižnikovi omaki z baziliko, solata'
  ]);


-- Location: MANGO SNACKS
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000003327', 'MANGO SNACKS', 'Ljubljana, 1000 Ljubljana', 46.057, 14.503, 3.95, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000003327', CURRENT_DATE, ARRAY[
    'Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko',
    'Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha',
    'Meni 3: Testenine v paradižnikovi omaki z baziliko, solata'
  ]);


-- Location: MC PANDA
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000003205', 'MC PANDA', 'Ljubljana, 1000 Ljubljana', 46.07, 14.52, 4.10, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000003205', CURRENT_DATE, ARRAY[
    'Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko',
    'Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha',
    'Meni 3: Testenine v paradižnikovi omaki z baziliko, solata'
  ]);


-- Location: McDonald s restavracija - Murska Sobota
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000003122', 'McDonald s restavracija - Murska Sobota', 'Ljubljana, 1000 Ljubljana', 46.083, 14.537, 4.25, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000003122', CURRENT_DATE, ARRAY[
    'Meni 1: Big Mac + mali krompirček + mešana solata + sadje',
    'Meni 2: McChicken + mali krompirček + mešana solata',
    'Meni 3: McNuggets (6 kosov) + omaka + krompirček + solata'
  ]);


-- Location: McDonald&#180;s restavracija - Swaty
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000001182', 'McDonald&#180;s restavracija - Swaty', 'Ljubljana, 1000 Ljubljana', 46.056, 14.514, 4.40, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000001182', CURRENT_DATE, ARRAY[
    'Meni 1: Big Mac + mali krompirček + mešana solata + sadje',
    'Meni 2: McChicken + mali krompirček + mešana solata',
    'Meni 3: McNuggets (6 kosov) + omaka + krompirček + solata'
  ]);


-- Location: McDonald&#180;s restavracija Europark
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000001185', 'McDonald&#180;s restavracija Europark', 'Ljubljana, 1000 Ljubljana', 46.069, 14.531, 4.55, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000001185', CURRENT_DATE, ARRAY[
    'Meni 1: Big Mac + mali krompirček + mešana solata + sadje',
    'Meni 2: McChicken + mali krompirček + mešana solata',
    'Meni 3: McNuggets (6 kosov) + omaka + krompirček + solata'
  ]);


-- Location: McDonald&#180;s restavracija Ptujska
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000001184', 'McDonald&#180;s restavracija Ptujska', 'Ljubljana, 1000 Ljubljana', 46.082, 14.508, 3.50, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000001184', CURRENT_DATE, ARRAY[
    'Meni 1: Big Mac + mali krompirček + mešana solata + sadje',
    'Meni 2: McChicken + mali krompirček + mešana solata',
    'Meni 3: McNuggets (6 kosov) + omaka + krompirček + solata'
  ]);


-- Location: McDonald&#180;s restavracija Studenci
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000003270', 'McDonald&#180;s restavracija Studenci', 'Ljubljana, 1000 Ljubljana', 46.055, 14.525, 3.65, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000003270', CURRENT_DATE, ARRAY[
    'Meni 1: Big Mac + mali krompirček + mešana solata + sadje',
    'Meni 2: McChicken + mali krompirček + mešana solata',
    'Meni 3: McNuggets (6 kosov) + omaka + krompirček + solata'
  ]);


-- Location: McDonald&#180;s restavracija Velenje
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000001179', 'McDonald&#180;s restavracija Velenje', 'Ljubljana, 1000 Ljubljana', 46.068, 14.502, 3.80, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000001179', CURRENT_DATE, ARRAY[
    'Meni 1: Big Mac + mali krompirček + mešana solata + sadje',
    'Meni 2: McChicken + mali krompirček + mešana solata',
    'Meni 3: McNuggets (6 kosov) + omaka + krompirček + solata'
  ]);


-- Location: McDonald&#39;s Petrol Maribor
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000003326', 'McDonald&#39;s Petrol Maribor', 'Maribor, 2000 Maribor', 46.577, 15.643, 3.95, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000003326', CURRENT_DATE, ARRAY[
    'Meni 1: Big Mac + mali krompirček + mešana solata + sadje',
    'Meni 2: McChicken + mali krompirček + mešana solata',
    'Meni 3: McNuggets (6 kosov) + omaka + krompirček + solata'
  ]);


-- Location: McDonald&#39;s restavracij - Odiseja
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000001380', 'McDonald&#39;s restavracij - Odiseja', 'Ljubljana, 1000 Ljubljana', 46.054, 14.536, 4.10, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000001380', CURRENT_DATE, ARRAY[
    'Meni 1: Big Mac + mali krompirček + mešana solata + sadje',
    'Meni 2: McChicken + mali krompirček + mešana solata',
    'Meni 3: McNuggets (6 kosov) + omaka + krompirček + solata'
  ]);


-- Location: McDonald&#39;s restavracija - ALEJA
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000003107', 'McDonald&#39;s restavracija - ALEJA', 'Ljubljana, 1000 Ljubljana', 46.067, 14.513, 4.25, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000003107', CURRENT_DATE, ARRAY[
    'Meni 1: Big Mac + mali krompirček + mešana solata + sadje',
    'Meni 2: McChicken + mali krompirček + mešana solata',
    'Meni 3: McNuggets (6 kosov) + omaka + krompirček + solata'
  ]);


-- Location: McDonald&#39;s restavracija - Barje jug
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000003246', 'McDonald&#39;s restavracija - Barje jug', 'Ljubljana, 1000 Ljubljana', 46.08, 14.53, 4.40, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000003246', CURRENT_DATE, ARRAY[
    'Meni 1: Big Mac + mali krompirček + mešana solata + sadje',
    'Meni 2: McChicken + mali krompirček + mešana solata',
    'Meni 3: McNuggets (6 kosov) + omaka + krompirček + solata'
  ]);


-- Location: McDonald&#39;s restavracija - Barje sever
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000003247', 'McDonald&#39;s restavracija - Barje sever', 'Ljubljana, 1000 Ljubljana', 46.053, 14.507, 4.55, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000003247', CURRENT_DATE, ARRAY[
    'Meni 1: Big Mac + mali krompirček + mešana solata + sadje',
    'Meni 2: McChicken + mali krompirček + mešana solata',
    'Meni 3: McNuggets (6 kosov) + omaka + krompirček + solata'
  ]);


-- Location: McDonald&#39;s restavracija - Cankarjeva
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000003189', 'McDonald&#39;s restavracija - Cankarjeva', 'Ljubljana, 1000 Ljubljana', 46.066, 14.524, 3.50, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000003189', CURRENT_DATE, ARRAY[
    'Meni 1: Big Mac + mali krompirček + mešana solata + sadje',
    'Meni 2: McChicken + mali krompirček + mešana solata',
    'Meni 3: McNuggets (6 kosov) + omaka + krompirček + solata'
  ]);


-- Location: McDonald&#39;s restavracija - Celje Drive
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000002868', 'McDonald&#39;s restavracija - Celje Drive', 'Celje, 3000 Celje', 46.241, 15.269, 3.65, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000002868', CURRENT_DATE, ARRAY[
    'Meni 1: Big Mac + mali krompirček + mešana solata + sadje',
    'Meni 2: McChicken + mali krompirček + mešana solata',
    'Meni 3: McNuggets (6 kosov) + omaka + krompirček + solata'
  ]);


-- Location: McDonald&#39;s restavracija - Celovška
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000001341', 'McDonald&#39;s restavracija - Celovška', 'Ljubljana, 1000 Ljubljana', 46.052, 14.518, 3.80, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000001341', CURRENT_DATE, ARRAY[
    'Meni 1: Big Mac + mali krompirček + mešana solata + sadje',
    'Meni 2: McChicken + mali krompirček + mešana solata',
    'Meni 3: McNuggets (6 kosov) + omaka + krompirček + solata'
  ]);


-- Location: McDonald&#39;s restavracija - Center
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000001377', 'McDonald&#39;s restavracija - Center', 'Ljubljana, 1000 Ljubljana', 46.065, 14.535, 3.95, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000001377', CURRENT_DATE, ARRAY[
    'Meni 1: Big Mac + mali krompirček + mešana solata + sadje',
    'Meni 2: McChicken + mali krompirček + mešana solata',
    'Meni 3: McNuggets (6 kosov) + omaka + krompirček + solata'
  ]);


-- Location: McDonald&#39;s restavracija - Domžale
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000001342', 'McDonald&#39;s restavracija - Domžale', 'Ljubljana, 1000 Ljubljana', 46.078, 14.512, 4.10, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000001342', CURRENT_DATE, ARRAY[
    'Meni 1: Big Mac + mali krompirček + mešana solata + sadje',
    'Meni 2: McChicken + mali krompirček + mešana solata',
    'Meni 3: McNuggets (6 kosov) + omaka + krompirček + solata'
  ]);


-- Location: McDonald&#39;s restavracija - Kranj
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000002866', 'McDonald&#39;s restavracija - Kranj', 'Kranj, 4000 Kranj', 46.249, 14.357, 4.25, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000002866', CURRENT_DATE, ARRAY[
    'Meni 1: Big Mac + mali krompirček + mešana solata + sadje',
    'Meni 2: McChicken + mali krompirček + mešana solata',
    'Meni 3: McNuggets (6 kosov) + omaka + krompirček + solata'
  ]);


-- Location: McDonald&#39;s restavracija - Lesce
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000003279', 'McDonald&#39;s restavracija - Lesce', 'Ljubljana, 1000 Ljubljana', 46.064, 14.506, 4.40, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000003279', CURRENT_DATE, ARRAY[
    'Meni 1: Big Mac + mali krompirček + mešana solata + sadje',
    'Meni 2: McChicken + mali krompirček + mešana solata',
    'Meni 3: McNuggets (6 kosov) + omaka + krompirček + solata'
  ]);


-- Location: McDonald&#39;s restavracija - Novo mesto
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000001381', 'McDonald&#39;s restavracija - Novo mesto', 'Novo mesto, 8000 Novo mesto', 45.815, 15.179, 4.55, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000001381', CURRENT_DATE, ARRAY[
    'Meni 1: Big Mac + mali krompirček + mešana solata + sadje',
    'Meni 2: McChicken + mali krompirček + mešana solata',
    'Meni 3: McNuggets (6 kosov) + omaka + krompirček + solata'
  ]);


-- Location: McDonald&#39;s restavracija - Rudnik
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000001536', 'McDonald&#39;s restavracija - Rudnik', 'Ljubljana, 1000 Ljubljana', 46.05, 14.5, 3.50, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000001536', CURRENT_DATE, ARRAY[
    'Meni 1: Big Mac + mali krompirček + mešana solata + sadje',
    'Meni 2: McChicken + mali krompirček + mešana solata',
    'Meni 3: McNuggets (6 kosov) + omaka + krompirček + solata'
  ]);


-- Location: McDonald&#39;s restavracija - Supernova Rudnik
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000003188', 'McDonald&#39;s restavracija - Supernova Rudnik', 'Ljubljana, 1000 Ljubljana', 46.063, 14.517, 3.65, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000003188', CURRENT_DATE, ARRAY[
    'Meni 1: Big Mac + mali krompirček + mešana solata + sadje',
    'Meni 2: McChicken + mali krompirček + mešana solata',
    'Meni 3: McNuggets (6 kosov) + omaka + krompirček + solata'
  ]);


-- Location: McDonald&#39;s restavracija - Šmartinka Drive
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000003164', 'McDonald&#39;s restavracija - Šmartinka Drive', 'Ljubljana, 1000 Ljubljana', 46.076, 14.534, 3.80, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000003164', CURRENT_DATE, ARRAY[
    'Meni 1: Big Mac + mali krompirček + mešana solata + sadje',
    'Meni 2: McChicken + mali krompirček + mešana solata',
    'Meni 3: McNuggets (6 kosov) + omaka + krompirček + solata'
  ]);


-- Location: McDonald&#39;s restavracija - Žito
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000001378', 'McDonald&#39;s restavracija - Žito', 'Ljubljana, 1000 Ljubljana', 46.089, 14.511, 3.95, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000001378', CURRENT_DATE, ARRAY[
    'Meni 1: Big Mac + mali krompirček + mešana solata + sadje',
    'Meni 2: McChicken + mali krompirček + mešana solata',
    'Meni 3: McNuggets (6 kosov) + omaka + krompirček + solata'
  ]);


-- Location: McDonald&#39;s restavracija Koper
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000002253', 'McDonald&#39;s restavracija Koper', 'Koper, 6000 Koper', 45.544, 13.742, 4.10, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000002253', CURRENT_DATE, ARRAY[
    'Meni 1: Big Mac + mali krompirček + mešana solata + sadje',
    'Meni 2: McChicken + mali krompirček + mešana solata',
    'Meni 3: McNuggets (6 kosov) + omaka + krompirček + solata'
  ]);


-- Location: McDonald&#39;s restavracija Nova Gorica
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000002815', 'McDonald&#39;s restavracija Nova Gorica', 'Ljubljana, 1000 Ljubljana', 46.075, 14.505, 4.25, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000002815', CURRENT_DATE, ARRAY[
    'Meni 1: Big Mac + mali krompirček + mešana solata + sadje',
    'Meni 2: McChicken + mali krompirček + mešana solata',
    'Meni 3: McNuggets (6 kosov) + omaka + krompirček + solata'
  ]);


-- Location: McDonald&#39;s Supernova Koper
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000003330', 'McDonald&#39;s Supernova Koper', 'Koper, 6000 Koper', 45.546, 13.748, 4.40, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000003330', CURRENT_DATE, ARRAY[
    'Meni 1: Big Mac + mali krompirček + mešana solata + sadje',
    'Meni 2: McChicken + mali krompirček + mešana solata',
    'Meni 3: McNuggets (6 kosov) + omaka + krompirček + solata'
  ]);


-- Location: ME GUSTA
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000002648', 'ME GUSTA', 'Ljubljana, 1000 Ljubljana', 46.061, 14.539, 4.55, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000002648', CURRENT_DATE, ARRAY[
    'Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko',
    'Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha',
    'Meni 3: Testenine v paradižnikovi omaki z baziliko, solata'
  ]);


-- Location: Meating pub &amp; restavracija
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000003138', 'Meating pub &amp; restavracija', 'Ljubljana, 1000 Ljubljana', 46.074, 14.516, 3.50, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000003138', CURRENT_DATE, ARRAY[
    'Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko',
    'Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha',
    'Meni 3: Testenine v paradižnikovi omaki z baziliko, solata'
  ]);


-- Location: Mehiška restavracija Imperio mexicano
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000001407', 'Mehiška restavracija Imperio mexicano', 'Ljubljana, 1000 Ljubljana', 46.087, 14.533, 3.65, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000001407', CURRENT_DATE, ARRAY[
    'Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko',
    'Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha',
    'Meni 3: Testenine v paradižnikovi omaki z baziliko, solata'
  ]);


-- Location: Menza BF
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000002023', 'Menza BF', 'Ljubljana, 1000 Ljubljana', 46.06, 14.51, 3.80, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000002023', CURRENT_DATE, ARRAY[
    'Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko',
    'Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha',
    'Meni 3: Testenine v paradižnikovi omaki z baziliko, solata'
  ]);


-- Location: Menza FE
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000002521', 'Menza FE', 'Ljubljana, 1000 Ljubljana', 46.073, 14.527, 3.95, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000002521', CURRENT_DATE, ARRAY[
    'Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko',
    'Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha',
    'Meni 3: Testenine v paradižnikovi omaki z baziliko, solata'
  ]);


-- Location: MM PANDA
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000002360', 'MM PANDA', 'Ljubljana, 1000 Ljubljana', 46.086, 14.504, 4.10, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000002360', CURRENT_DATE, ARRAY[
    'Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko',
    'Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha',
    'Meni 3: Testenine v paradižnikovi omaki z baziliko, solata'
  ]);


-- Location: Moj cmok
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000003357', 'Moj cmok', 'Ljubljana, 1000 Ljubljana', 46.059, 14.521, 4.25, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000003357', CURRENT_DATE, ARRAY[
    'Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko',
    'Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha',
    'Meni 3: Testenine v paradižnikovi omaki z baziliko, solata'
  ]);


-- Location: Moji štruklji BTC
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000003362', 'Moji štruklji BTC', 'Ljubljana, 1000 Ljubljana', 46.072, 14.538, 4.40, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000003362', CURRENT_DATE, ARRAY[
    'Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko',
    'Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha',
    'Meni 3: Testenine v paradižnikovi omaki z baziliko, solata'
  ]);


-- Location: Namaste Grab &amp; Go
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000003290', 'Namaste Grab &amp; Go', 'Ljubljana, 1000 Ljubljana', 46.085, 14.515, 4.55, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000003290', CURRENT_DATE, ARRAY[
    'Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko',
    'Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha',
    'Meni 3: Testenine v paradižnikovi omaki z baziliko, solata'
  ]);


-- Location: Namaste Indian Express
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000002828', 'Namaste Indian Express', 'Ljubljana, 1000 Ljubljana', 46.058, 14.532, 3.50, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000002828', CURRENT_DATE, ARRAY[
    'Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko',
    'Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha',
    'Meni 3: Testenine v paradižnikovi omaki z baziliko, solata'
  ]);


-- Location: News Cafe
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000002249', 'News Cafe', 'Ljubljana, 1000 Ljubljana', 46.071, 14.509, 3.65, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000002249', CURRENT_DATE, ARRAY[
    'Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko',
    'Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha',
    'Meni 3: Testenine v paradižnikovi omaki z baziliko, solata'
  ]);


-- Location: Niam niam garden
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000003359', 'Niam niam garden', 'Ljubljana, 1000 Ljubljana', 46.084, 14.526, 3.80, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000003359', CURRENT_DATE, ARRAY[
    'Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko',
    'Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha',
    'Meni 3: Testenine v paradižnikovi omaki z baziliko, solata'
  ]);


-- Location: NJAMY - dostava
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000003167', 'NJAMY - dostava', 'Ljubljana, 1000 Ljubljana', 46.057, 14.503, 3.95, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000003167', CURRENT_DATE, ARRAY[
    'Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko',
    'Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha',
    'Meni 3: Testenine v paradižnikovi omaki z baziliko, solata'
  ]);


-- Location: Norma 23
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000003229', 'Norma 23', 'Ljubljana, 1000 Ljubljana', 46.07, 14.52, 4.10, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000003229', CURRENT_DATE, ARRAY[
    'Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko',
    'Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha',
    'Meni 3: Testenine v paradižnikovi omaki z baziliko, solata'
  ]);


-- Location: Okrepčevalnica - Diner kino gledališče Bežigrad
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000002732', 'Okrepčevalnica - Diner kino gledališče Bežigrad', 'Ljubljana, 1000 Ljubljana', 46.083, 14.537, 4.25, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000002732', CURRENT_DATE, ARRAY[
    'Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko',
    'Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha',
    'Meni 3: Testenine v paradižnikovi omaki z baziliko, solata'
  ]);


-- Location: Okrepčevalnica - pizzerija Maks
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000001683', 'Okrepčevalnica - pizzerija Maks', 'Ljubljana, 1000 Ljubljana', 46.056, 14.514, 4.40, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000001683', CURRENT_DATE, ARRAY[
    'Meni 1: Pizza Margherita (pelati, mocarela, bazilika), mešana solata, sadje',
    'Meni 2: Pizza Klasika (šunka, sir, gobe), mešana solata',
    'Meni 3: Veganska pizza s pečenimi jajčevci in bučkami, solata'
  ]);


-- Location: Okrepčevalnica &quot;Medicinska fakulteta&quot;
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000003397', 'Okrepčevalnica &quot;Medicinska fakulteta&quot;', 'Ljubljana, 1000 Ljubljana', 46.069, 14.531, 4.55, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000003397', CURRENT_DATE, ARRAY[
    'Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko',
    'Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha',
    'Meni 3: Testenine v paradižnikovi omaki z baziliko, solata'
  ]);


-- Location: Okrepčevalnica Ajda
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000002944', 'Okrepčevalnica Ajda', 'Ljubljana, 1000 Ljubljana', 46.082, 14.508, 3.50, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000002944', CURRENT_DATE, ARRAY[
    'Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko',
    'Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha',
    'Meni 3: Testenine v paradižnikovi omaki z baziliko, solata'
  ]);


-- Location: Okrepčevalnica FERI
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000002347', 'Okrepčevalnica FERI', 'Ljubljana, 1000 Ljubljana', 46.055, 14.525, 3.65, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000002347', CURRENT_DATE, ARRAY[
    'Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko',
    'Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha',
    'Meni 3: Testenine v paradižnikovi omaki z baziliko, solata'
  ]);


-- Location: Okrepčevalnica HAM-HAM
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000003342', 'Okrepčevalnica HAM-HAM', 'Ljubljana, 1000 Ljubljana', 46.068, 14.502, 3.80, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000003342', CURRENT_DATE, ARRAY[
    'Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko',
    'Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha',
    'Meni 3: Testenine v paradižnikovi omaki z baziliko, solata'
  ]);


-- Location: Okrepčevalnica IZUM
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000002652', 'Okrepčevalnica IZUM', 'Ljubljana, 1000 Ljubljana', 46.081, 14.519, 3.95, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000002652', CURRENT_DATE, ARRAY[
    'Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko',
    'Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha',
    'Meni 3: Testenine v paradižnikovi omaki z baziliko, solata'
  ]);


-- Location: Okrepčevalnica Marijanca
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000003200', 'Okrepčevalnica Marijanca', 'Ljubljana, 1000 Ljubljana', 46.054, 14.536, 4.10, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000003200', CURRENT_DATE, ARRAY[
    'Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko',
    'Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha',
    'Meni 3: Testenine v paradižnikovi omaki z baziliko, solata'
  ]);


-- Location: OKREPČEVALNICA PINELA
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000003333', 'OKREPČEVALNICA PINELA', 'Ljubljana, 1000 Ljubljana', 46.067, 14.513, 4.25, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000003333', CURRENT_DATE, ARRAY[
    'Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko',
    'Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha',
    'Meni 3: Testenine v paradižnikovi omaki z baziliko, solata'
  ]);


-- Location: Okrepčevalnica Rock Cafe
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000003372', 'Okrepčevalnica Rock Cafe', 'Ljubljana, 1000 Ljubljana', 46.08, 14.53, 4.40, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000003372', CURRENT_DATE, ARRAY[
    'Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko',
    'Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha',
    'Meni 3: Testenine v paradižnikovi omaki z baziliko, solata'
  ]);


-- Location: OLA ENKA
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000001817', 'OLA ENKA', 'Ljubljana, 1000 Ljubljana', 46.053, 14.507, 4.55, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000001817', CURRENT_DATE, ARRAY[
    'Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko',
    'Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha',
    'Meni 3: Testenine v paradižnikovi omaki z baziliko, solata'
  ]);


-- Location: O-LALA
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000003296', 'O-LALA', 'Ljubljana, 1000 Ljubljana', 46.066, 14.524, 3.50, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000003296', CURRENT_DATE, ARRAY[
    'Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko',
    'Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha',
    'Meni 3: Testenine v paradižnikovi omaki z baziliko, solata'
  ]);


-- Location: ON THAI Rudnik
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000003318', 'ON THAI Rudnik', 'Ljubljana, 1000 Ljubljana', 46.079, 14.501, 3.65, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000003318', CURRENT_DATE, ARRAY[
    'Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko',
    'Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha',
    'Meni 3: Testenine v paradižnikovi omaki z baziliko, solata'
  ]);


-- Location: ON THAI Šiška
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000003319', 'ON THAI Šiška', 'Ljubljana, 1000 Ljubljana', 46.052, 14.518, 3.80, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000003319', CURRENT_DATE, ARRAY[
    'Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko',
    'Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha',
    'Meni 3: Testenine v paradižnikovi omaki z baziliko, solata'
  ]);


-- Location: ORIENT EXPRESS, samopostrežna restavracija
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000003169', 'ORIENT EXPRESS, samopostrežna restavracija', 'Ljubljana, 1000 Ljubljana', 46.065, 14.535, 3.95, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000003169', CURRENT_DATE, ARRAY[
    'Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko',
    'Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha',
    'Meni 3: Testenine v paradižnikovi omaki z baziliko, solata'
  ]);


-- Location: Oštarija City center Celje
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000003035', 'Oštarija City center Celje', 'Celje, 3000 Celje', 46.242, 15.268, 4.10, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000003035', CURRENT_DATE, ARRAY[
    'Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko',
    'Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha',
    'Meni 3: Testenine v paradižnikovi omaki z baziliko, solata'
  ]);


-- Location: Oštarija Rudolfswerth
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000001471', 'Oštarija Rudolfswerth', 'Ljubljana, 1000 Ljubljana', 46.051, 14.529, 4.25, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000001471', CURRENT_DATE, ARRAY[
    'Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko',
    'Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha',
    'Meni 3: Testenine v paradižnikovi omaki z baziliko, solata'
  ]);


-- Location: P8 - dostava
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000003298', 'P8 - dostava', 'Ljubljana, 1000 Ljubljana', 46.064, 14.506, 4.40, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000003298', CURRENT_DATE, ARRAY[
    'Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko',
    'Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha',
    'Meni 3: Testenine v paradižnikovi omaki z baziliko, solata'
  ]);


-- Location: Palača SMELT
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000002753', 'Palača SMELT', 'Ljubljana, 1000 Ljubljana', 46.077, 14.523, 4.55, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000002753', CURRENT_DATE, ARRAY[
    'Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko',
    'Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha',
    'Meni 3: Testenine v paradižnikovi omaki z baziliko, solata'
  ]);


-- Location: Papagayo
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000002863', 'Papagayo', 'Ljubljana, 1000 Ljubljana', 46.05, 14.5, 3.50, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000002863', CURRENT_DATE, ARRAY[
    'Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko',
    'Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha',
    'Meni 3: Testenine v paradižnikovi omaki z baziliko, solata'
  ]);


-- Location: PE Dijaški dom Celje
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000002623', 'PE Dijaški dom Celje', 'Celje, 3000 Celje', 46.237, 15.273, 3.65, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000002623', CURRENT_DATE, ARRAY[
    'Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko',
    'Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha',
    'Meni 3: Testenine v paradižnikovi omaki z baziliko, solata'
  ]);


-- Location: Pe Hiša kruha junior
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000003392', 'Pe Hiša kruha junior', 'Ljubljana, 1000 Ljubljana', 46.076, 14.534, 3.80, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000003392', CURRENT_DATE, ARRAY[
    'Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko',
    'Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha',
    'Meni 3: Testenine v paradižnikovi omaki z baziliko, solata'
  ]);


-- Location: PE LUCKY STREET FOOD
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000003390', 'PE LUCKY STREET FOOD', 'Ljubljana, 1000 Ljubljana', 46.089, 14.511, 3.95, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000003390', CURRENT_DATE, ARRAY[
    'Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko',
    'Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha',
    'Meni 3: Testenine v paradižnikovi omaki z baziliko, solata'
  ]);


-- Location: PE Marjetica
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000001424', 'PE Marjetica', 'Ljubljana, 1000 Ljubljana', 46.062, 14.528, 4.10, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000001424', CURRENT_DATE, ARRAY[
    'Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko',
    'Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha',
    'Meni 3: Testenine v paradižnikovi omaki z baziliko, solata'
  ]);


-- Location: PE Melty
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000003346', 'PE Melty', 'Ljubljana, 1000 Ljubljana', 46.075, 14.505, 4.25, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000003346', CURRENT_DATE, ARRAY[
    'Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko',
    'Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha',
    'Meni 3: Testenine v paradižnikovi omaki z baziliko, solata'
  ]);


-- Location: Picerija Barjan
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000003353', 'Picerija Barjan', 'Ljubljana, 1000 Ljubljana', 46.088, 14.522, 4.40, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000003353', CURRENT_DATE, ARRAY[
    'Meni 1: Pizza Margherita (pelati, mocarela, bazilika), mešana solata, sadje',
    'Meni 2: Pizza Klasika (šunka, sir, gobe), mešana solata',
    'Meni 3: Veganska pizza s pečenimi jajčevci in bučkami, solata'
  ]);


-- Location: PICERIJA CITYBURGER
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000002243', 'PICERIJA CITYBURGER', 'Ljubljana, 1000 Ljubljana', 46.061, 14.539, 4.55, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000002243', CURRENT_DATE, ARRAY[
    'Meni 1: Pizza Margherita (pelati, mocarela, bazilika), mešana solata, sadje',
    'Meni 2: Pizza Klasika (šunka, sir, gobe), mešana solata',
    'Meni 3: Veganska pizza s pečenimi jajčevci in bučkami, solata'
  ]);


-- Location: Picerija ERA
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000002551', 'Picerija ERA', 'Ljubljana, 1000 Ljubljana', 46.074, 14.516, 3.50, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000002551', CURRENT_DATE, ARRAY[
    'Meni 1: Pizza Margherita (pelati, mocarela, bazilika), mešana solata, sadje',
    'Meni 2: Pizza Klasika (šunka, sir, gobe), mešana solata',
    'Meni 3: Veganska pizza s pečenimi jajčevci in bučkami, solata'
  ]);


-- Location: Picerija in pivnica KUFR
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000003142', 'Picerija in pivnica KUFR', 'Ljubljana, 1000 Ljubljana', 46.087, 14.533, 3.65, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000003142', CURRENT_DATE, ARRAY[
    'Meni 1: Pizza Margherita (pelati, mocarela, bazilika), mešana solata, sadje',
    'Meni 2: Pizza Klasika (šunka, sir, gobe), mešana solata',
    'Meni 3: Veganska pizza s pečenimi jajčevci in bučkami, solata'
  ]);


-- Location: Picerija Pavon
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000003281', 'Picerija Pavon', 'Ljubljana, 1000 Ljubljana', 46.06, 14.51, 3.80, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000003281', CURRENT_DATE, ARRAY[
    'Meni 1: Pizza Margherita (pelati, mocarela, bazilika), mešana solata, sadje',
    'Meni 2: Pizza Klasika (šunka, sir, gobe), mešana solata',
    'Meni 3: Veganska pizza s pečenimi jajčevci in bučkami, solata'
  ]);


-- Location: Picestavracija Boccaccio
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000001794', 'Picestavracija Boccaccio', 'Ljubljana, 1000 Ljubljana', 46.073, 14.527, 3.95, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000001794', CURRENT_DATE, ARRAY[
    'Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko',
    'Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha',
    'Meni 3: Testenine v paradižnikovi omaki z baziliko, solata'
  ]);


-- Location: Pisana skleda
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000003361', 'Pisana skleda', 'Ljubljana, 1000 Ljubljana', 46.086, 14.504, 4.10, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000003361', CURRENT_DATE, ARRAY[
    'Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko',
    'Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha',
    'Meni 3: Testenine v paradižnikovi omaki z baziliko, solata'
  ]);


-- Location: Pizza SALAMON - dostava
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000002595', 'Pizza SALAMON - dostava', 'Ljubljana, 1000 Ljubljana', 46.059, 14.521, 4.25, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000002595', CURRENT_DATE, ARRAY[
    'Meni 1: Pizza Margherita (pelati, mocarela, bazilika), mešana solata, sadje',
    'Meni 2: Pizza Klasika (šunka, sir, gobe), mešana solata',
    'Meni 3: Veganska pizza s pečenimi jajčevci in bučkami, solata'
  ]);


-- Location: Pizzeria Briksen
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000002308', 'Pizzeria Briksen', 'Ljubljana, 1000 Ljubljana', 46.072, 14.538, 4.40, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000002308', CURRENT_DATE, ARRAY[
    'Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko',
    'Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha',
    'Meni 3: Testenine v paradižnikovi omaki z baziliko, solata'
  ]);


-- Location: Pizzeria Favola
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000003295', 'Pizzeria Favola', 'Ljubljana, 1000 Ljubljana', 46.085, 14.515, 4.55, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000003295', CURRENT_DATE, ARRAY[
    'Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko',
    'Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha',
    'Meni 3: Testenine v paradižnikovi omaki z baziliko, solata'
  ]);


-- Location: Pizzeria FoculuS
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000001441', 'Pizzeria FoculuS', 'Ljubljana, 1000 Ljubljana', 46.058, 14.532, 3.50, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000001441', CURRENT_DATE, ARRAY[
    'Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko',
    'Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha',
    'Meni 3: Testenine v paradižnikovi omaki z baziliko, solata'
  ]);


-- Location: Pizzeria Fontana
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000002284', 'Pizzeria Fontana', 'Ljubljana, 1000 Ljubljana', 46.071, 14.509, 3.65, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000002284', CURRENT_DATE, ARRAY[
    'Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko',
    'Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha',
    'Meni 3: Testenine v paradižnikovi omaki z baziliko, solata'
  ]);


-- Location: Pizzeria Gusto
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000003388', 'Pizzeria Gusto', 'Ljubljana, 1000 Ljubljana', 46.084, 14.526, 3.80, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000003388', CURRENT_DATE, ARRAY[
    'Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko',
    'Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha',
    'Meni 3: Testenine v paradižnikovi omaki z baziliko, solata'
  ]);


-- Location: Pizzeria in oštarija Chianti
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000003174', 'Pizzeria in oštarija Chianti', 'Ljubljana, 1000 Ljubljana', 46.057, 14.503, 3.95, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000003174', CURRENT_DATE, ARRAY[
    'Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko',
    'Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha',
    'Meni 3: Testenine v paradižnikovi omaki z baziliko, solata'
  ]);


-- Location: Pizzeria in špageteria Al Capone
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000001103', 'Pizzeria in špageteria Al Capone', 'Ljubljana, 1000 Ljubljana', 46.07, 14.52, 4.10, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000001103', CURRENT_DATE, ARRAY[
    'Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko',
    'Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha',
    'Meni 3: Testenine v paradižnikovi omaki z baziliko, solata'
  ]);


-- Location: Pizzeria in špagetteria Cubus
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000001305', 'Pizzeria in špagetteria Cubus', 'Ljubljana, 1000 Ljubljana', 46.083, 14.537, 4.25, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000001305', CURRENT_DATE, ARRAY[
    'Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko',
    'Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha',
    'Meni 3: Testenine v paradižnikovi omaki z baziliko, solata'
  ]);


-- Location: Pizzeria Laterna
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000001423', 'Pizzeria Laterna', 'Ljubljana, 1000 Ljubljana', 46.056, 14.514, 4.40, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000001423', CURRENT_DATE, ARRAY[
    'Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko',
    'Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha',
    'Meni 3: Testenine v paradižnikovi omaki z baziliko, solata'
  ]);


-- Location: Pizzeria Oliva
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000003309', 'Pizzeria Oliva', 'Ljubljana, 1000 Ljubljana', 46.069, 14.531, 4.55, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000003309', CURRENT_DATE, ARRAY[
    'Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko',
    'Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha',
    'Meni 3: Testenine v paradižnikovi omaki z baziliko, solata'
  ]);


-- Location: Pizzeria Osmica
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000002165', 'Pizzeria Osmica', 'Ljubljana, 1000 Ljubljana', 46.082, 14.508, 3.50, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000002165', CURRENT_DATE, ARRAY[
    'Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko',
    'Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha',
    'Meni 3: Testenine v paradižnikovi omaki z baziliko, solata'
  ]);


-- Location: Pizzeria Parma
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000002375', 'Pizzeria Parma', 'Ljubljana, 1000 Ljubljana', 46.055, 14.525, 3.65, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000002375', CURRENT_DATE, ARRAY[
    'Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko',
    'Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha',
    'Meni 3: Testenine v paradižnikovi omaki z baziliko, solata'
  ]);


-- Location: Pizzeria Šestinka
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000001335', 'Pizzeria Šestinka', 'Ljubljana, 1000 Ljubljana', 46.068, 14.502, 3.80, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000001335', CURRENT_DATE, ARRAY[
    'Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko',
    'Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha',
    'Meni 3: Testenine v paradižnikovi omaki z baziliko, solata'
  ]);


-- Location: Pizzerija Atrij d.o.o.
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000001031', 'Pizzerija Atrij d.o.o.', 'Ljubljana, 1000 Ljubljana', 46.081, 14.519, 3.95, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000001031', CURRENT_DATE, ARRAY[
    'Meni 1: Pizza Margherita (pelati, mocarela, bazilika), mešana solata, sadje',
    'Meni 2: Pizza Klasika (šunka, sir, gobe), mešana solata',
    'Meni 3: Veganska pizza s pečenimi jajčevci in bučkami, solata'
  ]);


-- Location: Pizzerija Dimnik
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000001716', 'Pizzerija Dimnik', 'Ljubljana, 1000 Ljubljana', 46.054, 14.536, 4.10, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000001716', CURRENT_DATE, ARRAY[
    'Meni 1: Pizza Margherita (pelati, mocarela, bazilika), mešana solata, sadje',
    'Meni 2: Pizza Klasika (šunka, sir, gobe), mešana solata',
    'Meni 3: Veganska pizza s pečenimi jajčevci in bučkami, solata'
  ]);


-- Location: Pizzerija Dimnik - dostava
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000001717', 'Pizzerija Dimnik - dostava', 'Ljubljana, 1000 Ljubljana', 46.067, 14.513, 4.25, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000001717', CURRENT_DATE, ARRAY[
    'Meni 1: Pizza Margherita (pelati, mocarela, bazilika), mešana solata, sadje',
    'Meni 2: Pizza Klasika (šunka, sir, gobe), mešana solata',
    'Meni 3: Veganska pizza s pečenimi jajčevci in bučkami, solata'
  ]);


-- Location: Pizzerija in okrepčevalnica KONDOR
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000001413', 'Pizzerija in okrepčevalnica KONDOR', 'Ljubljana, 1000 Ljubljana', 46.08, 14.53, 4.40, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000001413', CURRENT_DATE, ARRAY[
    'Meni 1: Pizza Margherita (pelati, mocarela, bazilika), mešana solata, sadje',
    'Meni 2: Pizza Klasika (šunka, sir, gobe), mešana solata',
    'Meni 3: Veganska pizza s pečenimi jajčevci in bučkami, solata'
  ]);


-- Location: Pizzerija in špageterija Alcapone
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000003116', 'Pizzerija in špageterija Alcapone', 'Ljubljana, 1000 Ljubljana', 46.053, 14.507, 4.55, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000003116', CURRENT_DATE, ARRAY[
    'Meni 1: Pizza Margherita (pelati, mocarela, bazilika), mešana solata, sadje',
    'Meni 2: Pizza Klasika (šunka, sir, gobe), mešana solata',
    'Meni 3: Veganska pizza s pečenimi jajčevci in bučkami, solata'
  ]);


-- Location: Pizzerija Velun
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000001176', 'Pizzerija Velun', 'Ljubljana, 1000 Ljubljana', 46.066, 14.524, 3.50, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000001176', CURRENT_DATE, ARRAY[
    'Meni 1: Pizza Margherita (pelati, mocarela, bazilika), mešana solata, sadje',
    'Meni 2: Pizza Klasika (šunka, sir, gobe), mešana solata',
    'Meni 3: Veganska pizza s pečenimi jajčevci in bučkami, solata'
  ]);


-- Location: Prfect Meals - dostava
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000003360', 'Prfect Meals - dostava', 'Ljubljana, 1000 Ljubljana', 46.079, 14.501, 3.65, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000003360', CURRENT_DATE, ARRAY[
    'Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko',
    'Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha',
    'Meni 3: Testenine v paradižnikovi omaki z baziliko, solata'
  ]);


-- Location: Prometna šola Maribor
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000001265', 'Prometna šola Maribor', 'Maribor, 2000 Maribor', 46.574, 15.646, 3.80, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000001265', CURRENT_DATE, ARRAY[
    'Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko',
    'Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha',
    'Meni 3: Testenine v paradižnikovi omaki z baziliko, solata'
  ]);


-- Location: Pr&#39;picopeku
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000003364', 'Pr&#39;picopeku', 'Ljubljana, 1000 Ljubljana', 46.065, 14.535, 3.95, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000003364', CURRENT_DATE, ARRAY[
    'Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko',
    'Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha',
    'Meni 3: Testenine v paradižnikovi omaki z baziliko, solata'
  ]);


-- Location: Q TABOR
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000002651', 'Q TABOR', 'Ljubljana, 1000 Ljubljana', 46.078, 14.512, 4.10, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000002651', CURRENT_DATE, ARRAY[
    'Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko',
    'Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha',
    'Meni 3: Testenine v paradižnikovi omaki z baziliko, solata'
  ]);


-- Location: Restavracija &amp; pub GOLD PUB
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000003344', 'Restavracija &amp; pub GOLD PUB', 'Ljubljana, 1000 Ljubljana', 46.051, 14.529, 4.25, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000003344', CURRENT_DATE, ARRAY[
    'Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko',
    'Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha',
    'Meni 3: Testenine v paradižnikovi omaki z baziliko, solata'
  ]);


-- Location: Restavracija 123 DSU
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000002187', 'Restavracija 123 DSU', 'Ljubljana, 1000 Ljubljana', 46.064, 14.506, 4.40, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000002187', CURRENT_DATE, ARRAY[
    'Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko',
    'Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha',
    'Meni 3: Testenine v paradižnikovi omaki z baziliko, solata'
  ]);


-- Location: Restavracija 123 Mega center 2
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000002528', 'Restavracija 123 Mega center 2', 'Ljubljana, 1000 Ljubljana', 46.077, 14.523, 4.55, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000002528', CURRENT_DATE, ARRAY[
    'Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko',
    'Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha',
    'Meni 3: Testenine v paradižnikovi omaki z baziliko, solata'
  ]);


-- Location: Restavracija 123 Pristan Koper
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000003339', 'Restavracija 123 Pristan Koper', 'Koper, 6000 Koper', 45.54, 13.73, 3.50, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000003339', CURRENT_DATE, ARRAY[
    'Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko',
    'Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha',
    'Meni 3: Testenine v paradižnikovi omaki z baziliko, solata'
  ]);


-- Location: Restavracija Allegria
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000002164', 'Restavracija Allegria', 'Ljubljana, 1000 Ljubljana', 46.063, 14.517, 3.65, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000002164', CURRENT_DATE, ARRAY[
    'Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko',
    'Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha',
    'Meni 3: Testenine v paradižnikovi omaki z baziliko, solata'
  ]);


-- Location: Restavracija Ancora
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000002501', 'Restavracija Ancora', 'Ljubljana, 1000 Ljubljana', 46.076, 14.534, 3.80, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000002501', CURRENT_DATE, ARRAY[
    'Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko',
    'Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha',
    'Meni 3: Testenine v paradižnikovi omaki z baziliko, solata'
  ]);


-- Location: Restavracija Azija
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000002703', 'Restavracija Azija', 'Ljubljana, 1000 Ljubljana', 46.089, 14.511, 3.95, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000002703', CURRENT_DATE, ARRAY[
    'Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko',
    'Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha',
    'Meni 3: Testenine v paradižnikovi omaki z baziliko, solata'
  ]);


-- Location: Restavracija Brejk
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000002527', 'Restavracija Brejk', 'Ljubljana, 1000 Ljubljana', 46.062, 14.528, 4.10, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000002527', CURRENT_DATE, ARRAY[
    'Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko',
    'Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha',
    'Meni 3: Testenine v paradižnikovi omaki z baziliko, solata'
  ]);


-- Location: Restavracija Eat Smart 1
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000002234', 'Restavracija Eat Smart 1', 'Ljubljana, 1000 Ljubljana', 46.075, 14.505, 4.25, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000002234', CURRENT_DATE, ARRAY[
    'Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko',
    'Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha',
    'Meni 3: Testenine v paradižnikovi omaki z baziliko, solata'
  ]);


-- Location: Restavracija Eat Smart 2
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000003232', 'Restavracija Eat Smart 2', 'Ljubljana, 1000 Ljubljana', 46.088, 14.522, 4.40, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000003232', CURRENT_DATE, ARRAY[
    'Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko',
    'Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha',
    'Meni 3: Testenine v paradižnikovi omaki z baziliko, solata'
  ]);


-- Location: Restavracija Fany &amp; Mary
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000001827', 'Restavracija Fany &amp; Mary', 'Ljubljana, 1000 Ljubljana', 46.061, 14.539, 4.55, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000001827', CURRENT_DATE, ARRAY[
    'Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko',
    'Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha',
    'Meni 3: Testenine v paradižnikovi omaki z baziliko, solata'
  ]);


-- Location: Restavracija Fresco
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000002097', 'Restavracija Fresco', 'Ljubljana, 1000 Ljubljana', 46.074, 14.516, 3.50, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000002097', CURRENT_DATE, ARRAY[
    'Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko',
    'Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha',
    'Meni 3: Testenine v paradižnikovi omaki z baziliko, solata'
  ]);


-- Location: Restavracija FS, Fakulteta za strojništvo
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000003134', 'Restavracija FS, Fakulteta za strojništvo', 'Ljubljana, 1000 Ljubljana', 46.087, 14.533, 3.65, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000003134', CURRENT_DATE, ARRAY[
    'Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko',
    'Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha',
    'Meni 3: Testenine v paradižnikovi omaki z baziliko, solata'
  ]);


-- Location: Restavracija in maloprodaja Hermine Wech - Koroška perutnina
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000003036', 'Restavracija in maloprodaja Hermine Wech - Koroška perutnina', 'Ljubljana, 1000 Ljubljana', 46.06, 14.51, 3.80, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000003036', CURRENT_DATE, ARRAY[
    'Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko',
    'Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha',
    'Meni 3: Testenine v paradižnikovi omaki z baziliko, solata'
  ]);


-- Location: Restavracija in maloprodaja Hermine Wech - Koroška perutnina
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000003038', 'Restavracija in maloprodaja Hermine Wech - Koroška perutnina', 'Ljubljana, 1000 Ljubljana', 46.073, 14.527, 3.95, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000003038', CURRENT_DATE, ARRAY[
    'Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko',
    'Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha',
    'Meni 3: Testenine v paradižnikovi omaki z baziliko, solata'
  ]);


-- Location: Restavracija in pivnica Zvezda
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000002343', 'Restavracija in pivnica Zvezda', 'Ljubljana, 1000 Ljubljana', 46.086, 14.504, 4.10, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000002343', CURRENT_DATE, ARRAY[
    'Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko',
    'Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha',
    'Meni 3: Testenine v paradižnikovi omaki z baziliko, solata'
  ]);


-- Location: Restavracija in prenočišča ČARDA
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000003389', 'Restavracija in prenočišča ČARDA', 'Ljubljana, 1000 Ljubljana', 46.059, 14.521, 4.25, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000003389', CURRENT_DATE, ARRAY[
    'Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko',
    'Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha',
    'Meni 3: Testenine v paradižnikovi omaki z baziliko, solata'
  ]);


-- Location: Restavracija Interspar Celje
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000001195', 'Restavracija Interspar Celje', 'Celje, 3000 Celje', 46.248, 15.262, 4.40, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000001195', CURRENT_DATE, ARRAY[
    'Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko',
    'Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha',
    'Meni 3: Testenine v paradižnikovi omaki z baziliko, solata'
  ]);


-- Location: Restavracija Interspar Citypark
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000001369', 'Restavracija Interspar Citypark', 'Ljubljana, 1000 Ljubljana', 46.085, 14.515, 4.55, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000001369', CURRENT_DATE, ARRAY[
    'Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko',
    'Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha',
    'Meni 3: Testenine v paradižnikovi omaki z baziliko, solata'
  ]);


-- Location: Restavracija Interspar Koper
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000001023', 'Restavracija Interspar Koper', 'Koper, 6000 Koper', 45.556, 13.738, 3.50, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000001023', CURRENT_DATE, ARRAY[
    'Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko',
    'Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha',
    'Meni 3: Testenine v paradižnikovi omaki z baziliko, solata'
  ]);


-- Location: Restavracija Interspar Kranj
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000001198', 'Restavracija Interspar Kranj', 'Kranj, 4000 Kranj', 46.249, 14.357, 3.65, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000001198', CURRENT_DATE, ARRAY[
    'Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko',
    'Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha',
    'Meni 3: Testenine v paradižnikovi omaki z baziliko, solata'
  ]);


-- Location: Restavracija Interspar Maribor Europark
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000001194', 'Restavracija Interspar Maribor Europark', 'Maribor, 2000 Maribor', 46.568, 15.652, 3.80, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000001194', CURRENT_DATE, ARRAY[
    'Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko',
    'Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha',
    'Meni 3: Testenine v paradižnikovi omaki z baziliko, solata'
  ]);


-- Location: Restavracija Interspar Maribor2 Supernova Qlandia
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000001197', 'Restavracija Interspar Maribor2 Supernova Qlandia', 'Maribor, 2000 Maribor', 46.579, 15.641, 3.95, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000001197', CURRENT_DATE, ARRAY[
    'Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko',
    'Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha',
    'Meni 3: Testenine v paradižnikovi omaki z baziliko, solata'
  ]);


-- Location: Restavracija Interspar Nova Gorica
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000001025', 'Restavracija Interspar Nova Gorica', 'Ljubljana, 1000 Ljubljana', 46.07, 14.52, 4.10, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000001025', CURRENT_DATE, ARRAY[
    'Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko',
    'Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha',
    'Meni 3: Testenine v paradižnikovi omaki z baziliko, solata'
  ]);


-- Location: Restavracija Interspar Vič
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000001370', 'Restavracija Interspar Vič', 'Ljubljana, 1000 Ljubljana', 46.083, 14.537, 4.25, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000001370', CURRENT_DATE, ARRAY[
    'Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko',
    'Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha',
    'Meni 3: Testenine v paradižnikovi omaki z baziliko, solata'
  ]);


-- Location: Restavracija Kitajska palača
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000002040', 'Restavracija Kitajska palača', 'Ljubljana, 1000 Ljubljana', 46.056, 14.514, 4.40, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000002040', CURRENT_DATE, ARRAY[
    'Meni 1: Hrustljavi piščanec v sladko-kisli omaki, pražen riž, zelenjavna juha',
    'Meni 2: Praženi rezanci z zelenjavo in tofujem, solata',
    'Meni 3: Pekinška raca z rižem, pomladni zavitki'
  ]);


-- Location: Restavracija Kitajska palača - DOSTAVA
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000002775', 'Restavracija Kitajska palača - DOSTAVA', 'Ljubljana, 1000 Ljubljana', 46.069, 14.531, 4.55, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000002775', CURRENT_DATE, ARRAY[
    'Meni 1: Hrustljavi piščanec v sladko-kisli omaki, pražen riž, zelenjavna juha',
    'Meni 2: Praženi rezanci z zelenjavo in tofujem, solata',
    'Meni 3: Pekinška raca z rižem, pomladni zavitki'
  ]);


-- Location: Restavracija klub Cankarjevega doma
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000001768', 'Restavracija klub Cankarjevega doma', 'Ljubljana, 1000 Ljubljana', 46.082, 14.508, 3.50, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000001768', CURRENT_DATE, ARRAY[
    'Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko',
    'Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha',
    'Meni 3: Testenine v paradižnikovi omaki z baziliko, solata'
  ]);


-- Location: Restavracija Kolodvorska
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000001263', 'Restavracija Kolodvorska', 'Ljubljana, 1000 Ljubljana', 46.055, 14.525, 3.65, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000001263', CURRENT_DATE, ARRAY[
    'Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko',
    'Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha',
    'Meni 3: Testenine v paradižnikovi omaki z baziliko, solata'
  ]);


-- Location: Restavracija Kompliment
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000003096', 'Restavracija Kompliment', 'Ljubljana, 1000 Ljubljana', 46.068, 14.502, 3.80, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000003096', CURRENT_DATE, ARRAY[
    'Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko',
    'Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha',
    'Meni 3: Testenine v paradižnikovi omaki z baziliko, solata'
  ]);


-- Location: Restavracija Letališka
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000001713', 'Restavracija Letališka', 'Ljubljana, 1000 Ljubljana', 46.081, 14.519, 3.95, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000001713', CURRENT_DATE, ARRAY[
    'Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko',
    'Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha',
    'Meni 3: Testenine v paradižnikovi omaki z baziliko, solata'
  ]);


-- Location: Restavracija Mango
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000002085', 'Restavracija Mango', 'Ljubljana, 1000 Ljubljana', 46.054, 14.536, 4.10, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000002085', CURRENT_DATE, ARRAY[
    'Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko',
    'Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha',
    'Meni 3: Testenine v paradižnikovi omaki z baziliko, solata'
  ]);


-- Location: Restavracija McDonalds - Citycenter Celje
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000002649', 'Restavracija McDonalds - Citycenter Celje', 'Celje, 3000 Celje', 46.233, 15.277, 4.25, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000002649', CURRENT_DATE, ARRAY[
    'Meni 1: Big Mac + mali krompirček + mešana solata + sadje',
    'Meni 2: McChicken + mali krompirček + mešana solata',
    'Meni 3: McNuggets (6 kosov) + omaka + krompirček + solata'
  ]);


-- Location: Restavracija McDonalds - Ptuj
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000002759', 'Restavracija McDonalds - Ptuj', 'Ljubljana, 1000 Ljubljana', 46.08, 14.53, 4.40, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000002759', CURRENT_DATE, ARRAY[
    'Meni 1: Big Mac + mali krompirček + mešana solata + sadje',
    'Meni 2: McChicken + mali krompirček + mešana solata',
    'Meni 3: McNuggets (6 kosov) + omaka + krompirček + solata'
  ]);


-- Location: Restavracija Mensana
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000003144', 'Restavracija Mensana', 'Ljubljana, 1000 Ljubljana', 46.053, 14.507, 4.55, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000003144', CURRENT_DATE, ARRAY[
    'Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko',
    'Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha',
    'Meni 3: Testenine v paradižnikovi omaki z baziliko, solata'
  ]);


-- Location: Restavracija Menza IJS
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000003236', 'Restavracija Menza IJS', 'Ljubljana, 1000 Ljubljana', 46.066, 14.524, 3.50, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000003236', CURRENT_DATE, ARRAY[
    'Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko',
    'Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha',
    'Meni 3: Testenine v paradižnikovi omaki z baziliko, solata'
  ]);


-- Location: Restavracija Modri kvadrat
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000002721', 'Restavracija Modri kvadrat', 'Ljubljana, 1000 Ljubljana', 46.079, 14.501, 3.65, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000002721', CURRENT_DATE, ARRAY[
    'Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko',
    'Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha',
    'Meni 3: Testenine v paradižnikovi omaki z baziliko, solata'
  ]);


-- Location: Restavracija Mozart
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000001382', 'Restavracija Mozart', 'Ljubljana, 1000 Ljubljana', 46.052, 14.518, 3.80, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000001382', CURRENT_DATE, ARRAY[
    'Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko',
    'Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha',
    'Meni 3: Testenine v paradižnikovi omaki z baziliko, solata'
  ]);


-- Location: Restavracija Mozart P.E. Ekonomska fakulteta
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000003172', 'Restavracija Mozart P.E. Ekonomska fakulteta', 'Ljubljana, 1000 Ljubljana', 46.065, 14.535, 3.95, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000003172', CURRENT_DATE, ARRAY[
    'Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko',
    'Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha',
    'Meni 3: Testenine v paradižnikovi omaki z baziliko, solata'
  ]);


-- Location: Restavracija Mr.Falafel
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000003049', 'Restavracija Mr.Falafel', 'Ljubljana, 1000 Ljubljana', 46.078, 14.512, 4.10, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000003049', CURRENT_DATE, ARRAY[
    'Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko',
    'Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha',
    'Meni 3: Testenine v paradižnikovi omaki z baziliko, solata'
  ]);


-- Location: Restavracija OAZA Pef
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000003179', 'Restavracija OAZA Pef', 'Ljubljana, 1000 Ljubljana', 46.051, 14.529, 4.25, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000003179', CURRENT_DATE, ARRAY[
    'Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko',
    'Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha',
    'Meni 3: Testenine v paradižnikovi omaki z baziliko, solata'
  ]);


-- Location: Restavracija Pergola
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000003241', 'Restavracija Pergola', 'Ljubljana, 1000 Ljubljana', 46.064, 14.506, 4.40, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000003241', CURRENT_DATE, ARRAY[
    'Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko',
    'Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha',
    'Meni 3: Testenine v paradižnikovi omaki z baziliko, solata'
  ]);


-- Location: Restavracija PF, Pravna fakulteta
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000003240', 'Restavracija PF, Pravna fakulteta', 'Ljubljana, 1000 Ljubljana', 46.077, 14.523, 4.55, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000003240', CURRENT_DATE, ARRAY[
    'Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko',
    'Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha',
    'Meni 3: Testenine v paradižnikovi omaki z baziliko, solata'
  ]);


-- Location: Restavracija Piano
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000003396', 'Restavracija Piano', 'Ljubljana, 1000 Ljubljana', 46.05, 14.5, 3.50, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000003396', CURRENT_DATE, ARRAY[
    'Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko',
    'Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha',
    'Meni 3: Testenine v paradižnikovi omaki z baziliko, solata'
  ]);


-- Location: Restavracija pizza Bella Napoli
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000003376', 'Restavracija pizza Bella Napoli', 'Ljubljana, 1000 Ljubljana', 46.063, 14.517, 3.65, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000003376', CURRENT_DATE, ARRAY[
    'Meni 1: Pizza Margherita (pelati, mocarela, bazilika), mešana solata, sadje',
    'Meni 2: Pizza Klasika (šunka, sir, gobe), mešana solata',
    'Meni 3: Veganska pizza s pečenimi jajčevci in bučkami, solata'
  ]);


-- Location: Restavracija Plečnikov hram
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000001360', 'Restavracija Plečnikov hram', 'Ljubljana, 1000 Ljubljana', 46.076, 14.534, 3.80, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000001360', CURRENT_DATE, ARRAY[
    'Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko',
    'Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha',
    'Meni 3: Testenine v paradižnikovi omaki z baziliko, solata'
  ]);


-- Location: Restavracija Prestige catering, GZS
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000002180', 'Restavracija Prestige catering, GZS', 'Ljubljana, 1000 Ljubljana', 46.089, 14.511, 3.95, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000002180', CURRENT_DATE, ARRAY[
    'Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko',
    'Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha',
    'Meni 3: Testenine v paradižnikovi omaki z baziliko, solata'
  ]);


-- Location: Restavracija Rdeče jabolko
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000001321', 'Restavracija Rdeče jabolko', 'Ljubljana, 1000 Ljubljana', 46.062, 14.528, 4.10, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000001321', CURRENT_DATE, ARRAY[
    'Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko',
    'Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha',
    'Meni 3: Testenine v paradižnikovi omaki z baziliko, solata'
  ]);


-- Location: Restavracija sarajevskih jedi Valter Jesenice
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000002884', 'Restavracija sarajevskih jedi Valter Jesenice', 'Kranj, 4000 Kranj', 46.245, 14.365, 4.25, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000002884', CURRENT_DATE, ARRAY[
    'Meni 1: Veliki čevapčiči (10x), vroča lepinja, čebula, zeljnata solata, jabolko',
    'Meni 2: Srednji čevapi s kajmakom in lepinjo, solata',
    'Meni 3: Telečja čorba z domačim kruhom, jabolko'
  ]);


-- Location: Restavracija Splošne bolnišnice Novo mesto
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000001298', 'Restavracija Splošne bolnišnice Novo mesto', 'Novo mesto, 8000 Novo mesto', 45.81, 15.176, 4.40, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000001298', CURRENT_DATE, ARRAY[
    'Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko',
    'Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha',
    'Meni 3: Testenine v paradižnikovi omaki z baziliko, solata'
  ]);


-- Location: Restavracija Vrtnica
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000003156', 'Restavracija Vrtnica', 'Ljubljana, 1000 Ljubljana', 46.061, 14.539, 4.55, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000003156', CURRENT_DATE, ARRAY[
    'Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko',
    'Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha',
    'Meni 3: Testenine v paradižnikovi omaki z baziliko, solata'
  ]);


-- Location: Restavracija Zadružnik Kozje
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000003324', 'Restavracija Zadružnik Kozje', 'Ljubljana, 1000 Ljubljana', 46.074, 14.516, 3.50, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000003324', CURRENT_DATE, ARRAY[
    'Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko',
    'Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha',
    'Meni 3: Testenine v paradižnikovi omaki z baziliko, solata'
  ]);


-- Location: Restavracija Zadružnik Šmarje
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000003323', 'Restavracija Zadružnik Šmarje', 'Ljubljana, 1000 Ljubljana', 46.087, 14.533, 3.65, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000003323', CURRENT_DATE, ARRAY[
    'Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko',
    'Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha',
    'Meni 3: Testenine v paradižnikovi omaki z baziliko, solata'
  ]);


-- Location: Restavracija Zeleni Park
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000003336', 'Restavracija Zeleni Park', 'Ljubljana, 1000 Ljubljana', 46.06, 14.51, 3.80, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000003336', CURRENT_DATE, ARRAY[
    'Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko',
    'Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha',
    'Meni 3: Testenine v paradižnikovi omaki z baziliko, solata'
  ]);


-- Location: Restavracija Zlata sreča
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000002698', 'Restavracija Zlata sreča', 'Ljubljana, 1000 Ljubljana', 46.073, 14.527, 3.95, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000002698', CURRENT_DATE, ARRAY[
    'Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko',
    'Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha',
    'Meni 3: Testenine v paradižnikovi omaki z baziliko, solata'
  ]);


-- Location: Rex
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000003289', 'Rex', 'Ljubljana, 1000 Ljubljana', 46.086, 14.504, 4.10, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000003289', CURRENT_DATE, ARRAY[
    'Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko',
    'Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha',
    'Meni 3: Testenine v paradižnikovi omaki z baziliko, solata'
  ]);


-- Location: RIKŠA CURRY&amp;WOK
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000003220', 'RIKŠA CURRY&amp;WOK', 'Ljubljana, 1000 Ljubljana', 46.059, 14.521, 4.25, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000003220', CURRENT_DATE, ARRAY[
    'Meni 1: Hrustljavi piščanec v sladko-kisli omaki, pražen riž, zelenjavna juha',
    'Meni 2: Praženi rezanci z zelenjavo in tofujem, solata',
    'Meni 3: Pekinška raca z rižem, pomladni zavitki'
  ]);


-- Location: Roza slon
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000002739', 'Roza slon', 'Ljubljana, 1000 Ljubljana', 46.072, 14.538, 4.40, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000002739', CURRENT_DATE, ARRAY[
    'Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko',
    'Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha',
    'Meni 3: Testenine v paradižnikovi omaki z baziliko, solata'
  ]);


-- Location: Roza slon Bežigrad
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000002859', 'Roza slon Bežigrad', 'Ljubljana, 1000 Ljubljana', 46.085, 14.515, 4.55, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000002859', CURRENT_DATE, ARRAY[
    'Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko',
    'Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha',
    'Meni 3: Testenine v paradižnikovi omaki z baziliko, solata'
  ]);


-- Location: Roza slon BTC
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000003225', 'Roza slon BTC', 'Ljubljana, 1000 Ljubljana', 46.058, 14.532, 3.50, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000003225', CURRENT_DATE, ARRAY[
    'Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko',
    'Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha',
    'Meni 3: Testenine v paradižnikovi omaki z baziliko, solata'
  ]);


-- Location: Roza slon Vič
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000003224', 'Roza slon Vič', 'Ljubljana, 1000 Ljubljana', 46.071, 14.509, 3.65, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000003224', CURRENT_DATE, ARRAY[
    'Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko',
    'Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha',
    'Meni 3: Testenine v paradižnikovi omaki z baziliko, solata'
  ]);


-- Location: Ruby food
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000003072', 'Ruby food', 'Ljubljana, 1000 Ljubljana', 46.084, 14.526, 3.80, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000003072', CURRENT_DATE, ARRAY[
    'Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko',
    'Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha',
    'Meni 3: Testenine v paradižnikovi omaki z baziliko, solata'
  ]);


-- Location: Samopostrežna restavracija Stolpič
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000002781', 'Samopostrežna restavracija Stolpič', 'Ljubljana, 1000 Ljubljana', 46.057, 14.503, 3.95, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000002781', CURRENT_DATE, ARRAY[
    'Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko',
    'Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha',
    'Meni 3: Testenine v paradižnikovi omaki z baziliko, solata'
  ]);


-- Location: SB Nova Gorica
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000003340', 'SB Nova Gorica', 'Ljubljana, 1000 Ljubljana', 46.07, 14.52, 4.10, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000003340', CURRENT_DATE, ARRAY[
    'Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko',
    'Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha',
    'Meni 3: Testenine v paradižnikovi omaki z baziliko, solata'
  ]);


-- Location: Shaolin
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000003365', 'Shaolin', 'Ljubljana, 1000 Ljubljana', 46.083, 14.537, 4.25, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000003365', CURRENT_DATE, ARRAY[
    'Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko',
    'Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha',
    'Meni 3: Testenine v paradižnikovi omaki z baziliko, solata'
  ]);


-- Location: Skriti kot - mestna gostilna
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000001367', 'Skriti kot - mestna gostilna', 'Ljubljana, 1000 Ljubljana', 46.056, 14.514, 4.40, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000001367', CURRENT_DATE, ARRAY[
    'Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko',
    'Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha',
    'Meni 3: Testenine v paradižnikovi omaki z baziliko, solata'
  ]);


-- Location: Splošna bolnišnica Brežice
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000003069', 'Splošna bolnišnica Brežice', 'Ljubljana, 1000 Ljubljana', 46.069, 14.531, 4.55, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000003069', CURRENT_DATE, ARRAY[
    'Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko',
    'Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha',
    'Meni 3: Testenine v paradižnikovi omaki z baziliko, solata'
  ]);


-- Location: Splošna bolnišnica Izola
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000002641', 'Splošna bolnišnica Izola', 'Koper, 6000 Koper', 45.544, 13.742, 3.50, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000002641', CURRENT_DATE, ARRAY[
    'Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko',
    'Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha',
    'Meni 3: Testenine v paradižnikovi omaki z baziliko, solata'
  ]);


-- Location: Srednja šola Izola - Scuola media Isola
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000002263', 'Srednja šola Izola - Scuola media Isola', 'Koper, 6000 Koper', 45.555, 13.735, 3.65, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000002263', CURRENT_DATE, ARRAY[
    'Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko',
    'Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha',
    'Meni 3: Testenine v paradižnikovi omaki z baziliko, solata'
  ]);


-- Location: Stari Grill
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000002569', 'Stari Grill', 'Ljubljana, 1000 Ljubljana', 46.068, 14.502, 3.80, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000002569', CURRENT_DATE, ARRAY[
    'Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko',
    'Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha',
    'Meni 3: Testenine v paradižnikovi omaki z baziliko, solata'
  ]);


-- Location: Subway - Bavarc
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000003265', 'Subway - Bavarc', 'Ljubljana, 1000 Ljubljana', 46.081, 14.519, 3.95, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000003265', CURRENT_DATE, ARRAY[
    'Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko',
    'Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha',
    'Meni 3: Testenine v paradižnikovi omaki z baziliko, solata'
  ]);


-- Location: Subway - Center
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000002714', 'Subway - Center', 'Ljubljana, 1000 Ljubljana', 46.054, 14.536, 4.10, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000002714', CURRENT_DATE, ARRAY[
    'Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko',
    'Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha',
    'Meni 3: Testenine v paradižnikovi omaki z baziliko, solata'
  ]);


-- Location: Subway Bežigrad
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000002389', 'Subway Bežigrad', 'Ljubljana, 1000 Ljubljana', 46.067, 14.513, 4.25, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000002389', CURRENT_DATE, ARRAY[
    'Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko',
    'Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha',
    'Meni 3: Testenine v paradižnikovi omaki z baziliko, solata'
  ]);


-- Location: Subway BTC
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000002988', 'Subway BTC', 'Ljubljana, 1000 Ljubljana', 46.08, 14.53, 4.40, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000002988', CURRENT_DATE, ARRAY[
    'Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko',
    'Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha',
    'Meni 3: Testenine v paradižnikovi omaki z baziliko, solata'
  ]);


-- Location: SUBWAY KOPER
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000003374', 'SUBWAY KOPER', 'Koper, 6000 Koper', 45.541, 13.733, 4.55, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000003374', CURRENT_DATE, ARRAY[
    'Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko',
    'Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha',
    'Meni 3: Testenine v paradižnikovi omaki z baziliko, solata'
  ]);


-- Location: Šavirma
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000003363', 'Šavirma', 'Ljubljana, 1000 Ljubljana', 46.066, 14.524, 3.50, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000003363', CURRENT_DATE, ARRAY[
    'Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko',
    'Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha',
    'Meni 3: Testenine v paradižnikovi omaki z baziliko, solata'
  ]);


-- Location: Šeherezada
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000002092', 'Šeherezada', 'Ljubljana, 1000 Ljubljana', 46.079, 14.501, 3.65, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000002092', CURRENT_DATE, ARRAY[
    'Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko',
    'Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha',
    'Meni 3: Testenine v paradižnikovi omaki z baziliko, solata'
  ]);


-- Location: Šeherezada 2
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000003159', 'Šeherezada 2', 'Ljubljana, 1000 Ljubljana', 46.052, 14.518, 3.80, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000003159', CURRENT_DATE, ARRAY[
    'Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko',
    'Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha',
    'Meni 3: Testenine v paradižnikovi omaki z baziliko, solata'
  ]);


-- Location: ŠENDTVIČ
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000001841', 'ŠENDTVIČ', 'Ljubljana, 1000 Ljubljana', 46.065, 14.535, 3.95, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000001841', CURRENT_DATE, ARRAY[
    'Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko',
    'Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha',
    'Meni 3: Testenine v paradižnikovi omaki z baziliko, solata'
  ]);


-- Location: Šiš okrepčevalnica
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000003329', 'Šiš okrepčevalnica', 'Ljubljana, 1000 Ljubljana', 46.078, 14.512, 4.10, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000003329', CURRENT_DATE, ARRAY[
    'Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko',
    'Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha',
    'Meni 3: Testenine v paradižnikovi omaki z baziliko, solata'
  ]);


-- Location: Športni bar SLOVAN
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000002523', 'Športni bar SLOVAN', 'Ljubljana, 1000 Ljubljana', 46.051, 14.529, 4.25, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000002523', CURRENT_DATE, ARRAY[
    'Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko',
    'Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha',
    'Meni 3: Testenine v paradižnikovi omaki z baziliko, solata'
  ]);


-- Location: Študentski dom Ljubljana - Restavracija
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000002213', 'Študentski dom Ljubljana - Restavracija', 'Ljubljana, 1000 Ljubljana', 46.064, 14.506, 4.40, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000002213', CURRENT_DATE, ARRAY[
    'Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko',
    'Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha',
    'Meni 3: Testenine v paradižnikovi omaki z baziliko, solata'
  ]);


-- Location: Taverna Palermo
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000003202', 'Taverna Palermo', 'Ljubljana, 1000 Ljubljana', 46.077, 14.523, 4.55, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000003202', CURRENT_DATE, ARRAY[
    'Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko',
    'Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha',
    'Meni 3: Testenine v paradižnikovi omaki z baziliko, solata'
  ]);


-- Location: Taverna Palermo - DOSTAVA
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000003203', 'Taverna Palermo - DOSTAVA', 'Ljubljana, 1000 Ljubljana', 46.05, 14.5, 3.50, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000003203', CURRENT_DATE, ARRAY[
    'Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko',
    'Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha',
    'Meni 3: Testenine v paradižnikovi omaki z baziliko, solata'
  ]);


-- Location: The Place
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000003288', 'The Place', 'Ljubljana, 1000 Ljubljana', 46.063, 14.517, 3.65, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000003288', CURRENT_DATE, ARRAY[
    'Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko',
    'Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha',
    'Meni 3: Testenine v paradižnikovi omaki z baziliko, solata'
  ]);


-- Location: Top Pizza
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000003380', 'Top Pizza', 'Ljubljana, 1000 Ljubljana', 46.076, 14.534, 3.80, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000003380', CURRENT_DATE, ARRAY[
    'Meni 1: Pizza Margherita (pelati, mocarela, bazilika), mešana solata, sadje',
    'Meni 2: Pizza Klasika (šunka, sir, gobe), mešana solata',
    'Meni 3: Veganska pizza s pečenimi jajčevci in bučkami, solata'
  ]);


-- Location: Tvoj Chef Restavracija
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000003253', 'Tvoj Chef Restavracija', 'Ljubljana, 1000 Ljubljana', 46.089, 14.511, 3.95, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000003253', CURRENT_DATE, ARRAY[
    'Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko',
    'Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha',
    'Meni 3: Testenine v paradižnikovi omaki z baziliko, solata'
  ]);


-- Location: U Sushi
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000003398', 'U Sushi', 'Ljubljana, 1000 Ljubljana', 46.062, 14.528, 4.10, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000003398', CURRENT_DATE, ARRAY[
    'Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko',
    'Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha',
    'Meni 3: Testenine v paradižnikovi omaki z baziliko, solata'
  ]);


-- Location: UFO
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000001262', 'UFO', 'Ljubljana, 1000 Ljubljana', 46.075, 14.505, 4.25, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000001262', CURRENT_DATE, ARRAY[
    'Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko',
    'Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha',
    'Meni 3: Testenine v paradižnikovi omaki z baziliko, solata'
  ]);


-- Location: URNEBES URBAN GRILL
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000003328', 'URNEBES URBAN GRILL', 'Ljubljana, 1000 Ljubljana', 46.088, 14.522, 4.40, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000003328', CURRENT_DATE, ARRAY[
    'Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko',
    'Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha',
    'Meni 3: Testenine v paradižnikovi omaki z baziliko, solata'
  ]);


-- Location: Uršin bistro
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000003226', 'Uršin bistro', 'Ljubljana, 1000 Ljubljana', 46.061, 14.539, 4.55, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000003226', CURRENT_DATE, ARRAY[
    'Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko',
    'Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha',
    'Meni 3: Testenine v paradižnikovi omaki z baziliko, solata'
  ]);


-- Location: Vegetarijanska in veganska restavracija Jamuna
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000003356', 'Vegetarijanska in veganska restavracija Jamuna', 'Ljubljana, 1000 Ljubljana', 46.074, 14.516, 3.50, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000003356', CURRENT_DATE, ARRAY[
    'Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko',
    'Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha',
    'Meni 3: Testenine v paradižnikovi omaki z baziliko, solata'
  ]);


-- Location: Vegetarijanska restavracija Radha Govinda
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000001339', 'Vegetarijanska restavracija Radha Govinda', 'Ljubljana, 1000 Ljubljana', 46.087, 14.533, 3.65, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000001339', CURRENT_DATE, ARRAY[
    'Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko',
    'Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha',
    'Meni 3: Testenine v paradižnikovi omaki z baziliko, solata'
  ]);


-- Location: Vila de Casa Cafe
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000003348', 'Vila de Casa Cafe', 'Ljubljana, 1000 Ljubljana', 46.06, 14.51, 3.80, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000003348', CURRENT_DATE, ARRAY[
    'Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko',
    'Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha',
    'Meni 3: Testenine v paradižnikovi omaki z baziliko, solata'
  ]);


-- Location: Vino &amp; ribe Aleja
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000003117', 'Vino &amp; ribe Aleja', 'Ljubljana, 1000 Ljubljana', 46.073, 14.527, 3.95, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000003117', CURRENT_DATE, ARRAY[
    'Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko',
    'Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha',
    'Meni 3: Testenine v paradižnikovi omaki z baziliko, solata'
  ]);


-- Location: Vino &amp; ribe Rudnik
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000003201', 'Vino &amp; ribe Rudnik', 'Ljubljana, 1000 Ljubljana', 46.086, 14.504, 4.10, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000003201', CURRENT_DATE, ARRAY[
    'Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko',
    'Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha',
    'Meni 3: Testenine v paradižnikovi omaki z baziliko, solata'
  ]);


-- Location: VIVO D125
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000002742', 'VIVO D125', 'Ljubljana, 1000 Ljubljana', 46.059, 14.521, 4.25, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000002742', CURRENT_DATE, ARRAY[
    'Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko',
    'Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha',
    'Meni 3: Testenine v paradižnikovi omaki z baziliko, solata'
  ]);


-- Location: Vrt bambus
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000003304', 'Vrt bambus', 'Maribor, 2000 Maribor', 46.564, 15.656, 4.40, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000003304', CURRENT_DATE, ARRAY[
    'Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko',
    'Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha',
    'Meni 3: Testenine v paradižnikovi omaki z baziliko, solata'
  ]);


-- Location: WHITE SWAN dumpling
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000003386', 'WHITE SWAN dumpling', 'Ljubljana, 1000 Ljubljana', 46.085, 14.515, 4.55, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000003386', CURRENT_DATE, ARRAY[
    'Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko',
    'Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha',
    'Meni 3: Testenine v paradižnikovi omaki z baziliko, solata'
  ]);


-- Location: WHITE SWAN fast food
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000003384', 'WHITE SWAN fast food', 'Ljubljana, 1000 Ljubljana', 46.058, 14.532, 3.50, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000003384', CURRENT_DATE, ARRAY[
    'Meni 1: Classic Beef Burger z ocvrtim krompirčkom in mešano solato',
    'Meni 2: Chicken Burger s svežo solato in omako',
    'Meni 3: Falafel ali Vegi Burger s krompirčkom, sadje'
  ]);


-- Location: WHITE SWAN fast food
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000003383', 'WHITE SWAN fast food', 'Ljubljana, 1000 Ljubljana', 46.071, 14.509, 3.65, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000003383', CURRENT_DATE, ARRAY[
    'Meni 1: Classic Beef Burger z ocvrtim krompirčkom in mešano solato',
    'Meni 2: Chicken Burger s svežo solato in omako',
    'Meni 3: Falafel ali Vegi Burger s krompirčkom, sadje'
  ]);


-- Location: WHITE SWAN poke bowl
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000003385', 'WHITE SWAN poke bowl', 'Ljubljana, 1000 Ljubljana', 46.084, 14.526, 3.80, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000003385', CURRENT_DATE, ARRAY[
    'Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko',
    'Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha',
    'Meni 3: Testenine v paradižnikovi omaki z baziliko, solata'
  ]);


-- Location: WOK MIX center
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000003078', 'WOK MIX center', 'Ljubljana, 1000 Ljubljana', 46.057, 14.503, 3.95, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000003078', CURRENT_DATE, ARRAY[
    'Meni 1: Hrustljavi piščanec v sladko-kisli omaki, pražen riž, zelenjavna juha',
    'Meni 2: Praženi rezanci z zelenjavo in tofujem, solata',
    'Meni 3: Pekinška raca z rižem, pomladni zavitki'
  ]);


-- Location: Wok&amp;Roll
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000003273', 'Wok&amp;Roll', 'Ljubljana, 1000 Ljubljana', 46.07, 14.52, 4.10, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000003273', CURRENT_DATE, ARRAY[
    'Meni 1: Hrustljavi piščanec v sladko-kisli omaki, pražen riž, zelenjavna juha',
    'Meni 2: Praženi rezanci z zelenjavo in tofujem, solata',
    'Meni 3: Pekinška raca z rižem, pomladni zavitki'
  ]);


-- Location: WOOP! arena
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000003345', 'WOOP! arena', 'Ljubljana, 1000 Ljubljana', 46.083, 14.537, 4.25, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000003345', CURRENT_DATE, ARRAY[
    'Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko',
    'Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha',
    'Meni 3: Testenine v paradižnikovi omaki z baziliko, solata'
  ]);


-- Location: Yimi azijska restavracija
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000003355', 'Yimi azijska restavracija', 'Ljubljana, 1000 Ljubljana', 46.056, 14.514, 4.40, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000003355', CURRENT_DATE, ARRAY[
    'Meni 1: Hrustljavi piščanec v sladko-kisli omaki, pražen riž, zelenjavna juha',
    'Meni 2: Praženi rezanci z zelenjavo in tofujem, solata',
    'Meni 3: Pekinška raca z rižem, pomladni zavitki'
  ]);


-- Location: Zamaro
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000003254', 'Zamaro', 'Ljubljana, 1000 Ljubljana', 46.069, 14.531, 4.55, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000003254', CURRENT_DATE, ARRAY[
    'Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko',
    'Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha',
    'Meni 3: Testenine v paradižnikovi omaki z baziliko, solata'
  ]);


-- Location: Zbornica bar in žar
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000002952', 'Zbornica bar in žar', 'Ljubljana, 1000 Ljubljana', 46.082, 14.508, 3.50, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000002952', CURRENT_DATE, ARRAY[
    'Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko',
    'Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha',
    'Meni 3: Testenine v paradižnikovi omaki z baziliko, solata'
  ]);


-- Location: Zmajevo mesto
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000003303', 'Zmajevo mesto', 'Ljubljana, 1000 Ljubljana', 46.055, 14.525, 3.65, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000003303', CURRENT_DATE, ARRAY[
    'Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko',
    'Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha',
    'Meni 3: Testenine v paradižnikovi omaki z baziliko, solata'
  ]);


-- Location: Znanstvena kavarna Mafija
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000002993', 'Znanstvena kavarna Mafija', 'Ljubljana, 1000 Ljubljana', 46.068, 14.502, 3.80, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000002993', CURRENT_DATE, ARRAY[
    'Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko',
    'Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha',
    'Meni 3: Testenine v paradižnikovi omaki z baziliko, solata'
  ]);


-- Location: Žito Celje Prešernova
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000003325', 'Žito Celje Prešernova', 'Celje, 3000 Celje', 46.239, 15.271, 3.95, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000003325', CURRENT_DATE, ARRAY[
    'Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko',
    'Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha',
    'Meni 3: Testenine v paradižnikovi omaki z baziliko, solata'
  ]);


-- Location: Žito Koper
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000002009', 'Žito Koper', 'Koper, 6000 Koper', 45.548, 13.734, 4.10, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000002009', CURRENT_DATE, ARRAY[
    'Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko',
    'Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha',
    'Meni 3: Testenine v paradižnikovi omaki z baziliko, solata'
  ]);


-- Location: Žito Leon Štukelj Maribor
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000002956', 'Žito Leon Štukelj Maribor', 'Maribor, 2000 Maribor', 46.579, 15.641, 4.25, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000002956', CURRENT_DATE, ARRAY[
    'Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko',
    'Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha',
    'Meni 3: Testenine v paradižnikovi omaki z baziliko, solata'
  ]);


-- Location: ŽITO Ljubljana Bavarski dvor
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000002771', 'ŽITO Ljubljana Bavarski dvor', 'Ljubljana, 1000 Ljubljana', 46.08, 14.53, 4.40, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000002771', CURRENT_DATE, ARRAY[
    'Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko',
    'Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha',
    'Meni 3: Testenine v paradižnikovi omaki z baziliko, solata'
  ]);


-- Location: ŽITO Ljubljana Kolodvorska
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000003320', 'ŽITO Ljubljana Kolodvorska', 'Ljubljana, 1000 Ljubljana', 46.053, 14.507, 4.55, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000003320', CURRENT_DATE, ARRAY[
    'Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko',
    'Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha',
    'Meni 3: Testenine v paradižnikovi omaki z baziliko, solata'
  ]);


-- Location: ŽITO Ljubljana Vodnik
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000001791', 'ŽITO Ljubljana Vodnik', 'Ljubljana, 1000 Ljubljana', 46.066, 14.524, 3.50, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000001791', CURRENT_DATE, ARRAY[
    'Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko',
    'Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha',
    'Meni 3: Testenine v paradižnikovi omaki z baziliko, solata'
  ]);


-- Location: ŽITO Ljubljana železniška (kolodvor)
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000002535', 'ŽITO Ljubljana železniška (kolodvor)', 'Ljubljana, 1000 Ljubljana', 46.079, 14.501, 3.65, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000002535', CURRENT_DATE, ARRAY[
    'Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko',
    'Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha',
    'Meni 3: Testenine v paradižnikovi omaki z baziliko, solata'
  ]);


-- Location: Žito Maribor Trg revolucije
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000002322', 'Žito Maribor Trg revolucije', 'Maribor, 2000 Maribor', 46.574, 15.646, 3.80, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000002322', CURRENT_DATE, ARRAY[
    'Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko',
    'Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha',
    'Meni 3: Testenine v paradižnikovi omaki z baziliko, solata'
  ]);


-- Location: ŽITO Postojna
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000003343', 'ŽITO Postojna', 'Ljubljana, 1000 Ljubljana', 46.065, 14.535, 3.95, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000003343', CURRENT_DATE, ARRAY[
    'Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko',
    'Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha',
    'Meni 3: Testenine v paradižnikovi omaki z baziliko, solata'
  ]);
