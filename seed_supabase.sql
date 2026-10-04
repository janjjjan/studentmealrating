-- ========================================================
-- SUPABASE SQL SEED SCRIPT FOR STUDENTSKA PREHRANA
-- Generated automatically by Python Scraper Script
-- ========================================================

-- 1. Create Tables Schema (if not created yet)

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


-- 2. Clear previous seed test rows (Optional)
DELETE FROM daily_menus;
DELETE FROM locations;

-- 3. Insert Scraped Locations & Daily Menus

-- Location: Lokal #1478
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000001478', 'Lokal #1478', 'Trubarjeva cesta 40, 1000 Ljubljana', 46.067, 14.513, 3.80, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000001478', CURRENT_DATE, ARRAY[
    '1 &nbsp; FALAFEL SENDVIČ &nbsp;&nbsp; mešana &nbsp;&nbsp; jabolko',
    '2 &nbsp; SIROVI ZAVITKI, PRILOGA &nbsp;&nbsp; mešana &nbsp;&nbsp; jabolko',
    '3 &nbsp; ŠPINAČNI ZAVITKI, PRILOGA &nbsp;&nbsp; mešana &nbsp;&nbsp; jabolko',
    '4 &nbsp; PARIKA ZAVITKI, PRILOGA &nbsp;&nbsp; mešana &nbsp;&nbsp; jabolko',
    '5 &nbsp; MEŠANI ZAVITKI, PRILOGA &nbsp;&nbsp; mešana &nbsp;&nbsp; jabolko',
    '6 &nbsp; JAJČEVCI S SLADKIM KROMPIRJEM, PRILOGA &nbsp;&nbsp; mešana &nbsp;&nbsp; jabolko',
    '7 &nbsp; FATAYER Z ZELIŠČI, PRILOGA &nbsp;&nbsp; mešana &nbsp;&nbsp; jabolko',
    '8 &nbsp; FATAYER S ŠPINAČO, PRILOGA &nbsp;&nbsp; mešana &nbsp;&nbsp; jabolko',
    '9 &nbsp; FATAYER S PAPRIKO, PRILOGA &nbsp;&nbsp; mešana &nbsp;&nbsp; jabolko',
    '10 &nbsp; FATAYER S SIROM, PRILOGA &nbsp;&nbsp; mešana &nbsp;&nbsp; jabolko',
    '11 &nbsp; MEŠANI FATAYERJI, PRILOGA &nbsp;&nbsp; mešana &nbsp;&nbsp; jabolko',
    '12 &nbsp; FALAFEL, ARABSKI ZAVITEK, FATAYER, PRILOGA &nbsp;&nbsp; mešana &nbsp;&nbsp; jabolko',
    '13 &nbsp; SOLATA Z BOBOM &nbsp;&nbsp; mešana &nbsp;&nbsp; jabolko',
    '14 &nbsp; ČIČERIKINA ENOLONČNICA &nbsp;&nbsp; mešana &nbsp;&nbsp; jabolko',
    '15 &nbsp; LEČINA ENOLONČNICA &nbsp;&nbsp; mešana &nbsp;&nbsp; jabolko',
    '16 &nbsp; SKALOP SENDVIČ &nbsp;&nbsp; mešana &nbsp;&nbsp; jabolko',
    '17 &nbsp; GOVEJI IN JAGNJEČJI ŠIŠKEBAB, PRILOGA &nbsp;&nbsp; mešana &nbsp;&nbsp; jabolko',
    '18 &nbsp; PIŠČANČJI ŠIŠKEBAB, PRILOGA &nbsp;&nbsp; mešana &nbsp;&nbsp; jabolko',
    '19 &nbsp; SOLATA S PIŠČANCEM &nbsp;&nbsp; mešana &nbsp;&nbsp; jabolko',
    '20 &nbsp; KUBBE, PRILOGA &nbsp;&nbsp; mešana &nbsp;&nbsp; jabolko',
    '21 &nbsp; MESNI ZAVITKI, PRILOGA &nbsp;&nbsp; mešana &nbsp;&nbsp; jabolko',
    '22 &nbsp; MEŠANO MESO, PRILOGA &nbsp;&nbsp; mešana &nbsp;&nbsp; jabolko',
    '23 &nbsp; PIŠČANČJI TAJIN, PRILOGA &nbsp;&nbsp; mešana &nbsp;&nbsp; jabolko',
    '24 &nbsp; PIŠČANČJA BEDRA, PRILOGA &nbsp;&nbsp; mešana &nbsp;&nbsp; jabolko',
    '25 &nbsp; SKALOP PIŠČANČJI PANIRANI ZREZKI, PRILOGA &nbsp;&nbsp; mešana &nbsp;&nbsp; jabolko',
    '26 &nbsp; RIBA V TAHINI, PRILOGA &nbsp;&nbsp; mešana &nbsp;&nbsp; jabolko',
    '27 &nbsp; RIBJI TAJIN, PRILOGA &nbsp;&nbsp; mešana &nbsp;&nbsp; jabolko',
    '28 &nbsp; RIBJI FILE S BABAGHANOUGHEM, PRILOGA &nbsp;&nbsp; mešana &nbsp;&nbsp; jabolko',
    '29 &nbsp; RIBJI FILE NA ŽARU, PRILOGA &nbsp;&nbsp; mešana &nbsp;&nbsp; jabolko'
  ]);


-- Location: Lokal #3316
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000003316', 'Lokal #3316', 'Litijska cesta 140, 1000 Ljubljana', 46.084, 14.526, 3.80, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000003316', CURRENT_DATE, ARRAY[
    '1 &nbsp; ŠPAGETI BOLONEZ &nbsp;&nbsp; Sestavljena solata &nbsp;&nbsp; Dnevno sadje',
    '2 &nbsp; NJOKI V SMETANOVI OMAKI &nbsp;&nbsp; Sestavljena solata &nbsp;&nbsp; Dnevno sadje',
    '3 &nbsp; PURAN NA ŽARU, KROMPIR &nbsp;&nbsp; Sestavljena solata &nbsp;&nbsp; Dnevno sadje',
    '4 &nbsp; PIŠČANEC NA ŽARU Z DUŠENO ZELENJAVO &nbsp;&nbsp; Sestavljena solata &nbsp;&nbsp; Dnevno sadje',
    '5 &nbsp; SARDELE Z BLITVO IN KROMPIRJEM &nbsp;&nbsp; Sestavljena solata &nbsp;&nbsp; Dnevno sadje',
    '6 &nbsp; PEČEN OSLIČ, ZELENJAVA &nbsp;&nbsp; Sestavljena solata &nbsp;&nbsp; Dnevno sadje',
    '7 &nbsp; SOLATA AGA S PIŠČANCEM Z ŽARA &nbsp;&nbsp; Sestavljena solata &nbsp;&nbsp; Dnevno sadje',
    '8 &nbsp; SOLATA TUNA S TUNO IN SIROM &nbsp;&nbsp; Sestavljena solata &nbsp;&nbsp; Dnevno sadje',
    '9 &nbsp; OCVRTI SIR S PEČENIM KROMPIRJEM IN BUČKAMI &nbsp;&nbsp; Sestavljena solata &nbsp;&nbsp; Dnevno sadje',
    '10 &nbsp; SOJIN ZREZEK NA ŽARU V LEPINJI Z ZELENJAVO &nbsp;&nbsp; Sestavljena solata &nbsp;&nbsp; Dnevno sadje',
    '11 &nbsp; PIŠČANČJI KEBAB S KISLO REPO &nbsp;&nbsp; Sestavljena solata &nbsp;&nbsp; Dnevno sadje',
    '12 &nbsp; GOVEJI JUFKA Z ZELJEM &nbsp;&nbsp; Sestavljena solata &nbsp;&nbsp; Dnevno sadje',
    '13 &nbsp; SIROV BURGER &nbsp;&nbsp; Sestavljena solata &nbsp;&nbsp; Dnevno sadje',
    '14 &nbsp; HAMBURGER &nbsp;&nbsp; Sestavljena solata &nbsp;&nbsp; Dnevno sadje',
    '15 &nbsp; HOT DOG &nbsp;&nbsp; Sestavljena solata &nbsp;&nbsp; Dnevno sadje'
  ]);


-- Location: Lokal #2999
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000002999', 'Lokal #2999', 'Šmartinska cesta 152, 1000 Ljubljana', 46.051, 14.539, 3.80, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000002999', CURRENT_DATE, ARRAY[
    '1 &nbsp; CLASIC BURGER &nbsp;&nbsp; SOLATA &nbsp;&nbsp; SADJE',
    '2 &nbsp; KING CHEESE BURGER &nbsp;&nbsp; SOLATA &nbsp;&nbsp; SADJE',
    '3 &nbsp; PLESKAVICA V LEPINJI &nbsp;&nbsp; SOLATA &nbsp;&nbsp; SADJE',
    '4 &nbsp; ČEVAPČIČI V LEPINJI &nbsp;&nbsp; SOLATA &nbsp;&nbsp; SADJE',
    '5 &nbsp; AJDA BURGER S PRILOGO &nbsp;&nbsp; SOLATA &nbsp;&nbsp; SADJE',
    '6 &nbsp; AJDA POHANČEK &nbsp;&nbsp; SOALTA &nbsp;&nbsp; SADJE',
    '7 &nbsp; AJDA VEGI &nbsp;&nbsp; SOLATA &nbsp;&nbsp; SADJE',
    '8 &nbsp; AJDA FIT S SKUTO &nbsp;&nbsp; SOLATA &nbsp;&nbsp; SADJE',
    '9 &nbsp; AJDA FIT Z MOZZARELO &nbsp;&nbsp; SOLATA &nbsp;&nbsp; SADJE',
    '10 &nbsp; ITALJANSKA SOLATA JUHA &nbsp;&nbsp; SOLATA &nbsp;&nbsp; SADJE',
    '11 &nbsp; PIŠČANČJA SOLATA JUHA &nbsp;&nbsp; SOLATA &nbsp;&nbsp; SADJE',
    '12 &nbsp; PREMIUM SOLATA JUHA &nbsp;&nbsp; SOLATA &nbsp;&nbsp; SADJE',
    '13 &nbsp; GOVEJI GOLAŽ &nbsp;&nbsp; SOLATA &nbsp;&nbsp; SADJE',
    '14 &nbsp; OBARA &nbsp;&nbsp; SOLATA &nbsp;&nbsp; SADJE',
    '15 &nbsp; POSTRV FILE NA ŽARU S PRILOGO &nbsp;&nbsp; SOLATA &nbsp;&nbsp; SADJE',
    '16 &nbsp; OSLIČEV FILE S PRILOGO &nbsp;&nbsp; SOLATA &nbsp;&nbsp; SADJE',
    '17 &nbsp; PEČEN SIR Z ZELENJAVO &nbsp;&nbsp; SOLATA &nbsp;&nbsp; SADJE',
    '18 &nbsp; ZELENJAVNI ZREZEK NA ŽARU &nbsp;&nbsp; SOLTA &nbsp;&nbsp; SADJE'
  ]);


-- Location: Lokal #2549
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000002549', 'Lokal #2549', 'Trg OF 13, 1000 Ljubljana', 46.068, 14.502, 3.80, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000002549', CURRENT_DATE, ARRAY[
    '1 &nbsp; HAMBURGER &nbsp;&nbsp; SOALTA &nbsp;&nbsp; SADJE',
    '2 &nbsp; CHEESBURGER &nbsp;&nbsp; SOLATA &nbsp;&nbsp; SADJE',
    '3 &nbsp; PLESKAVICA V LEPINJI &nbsp;&nbsp; SOLATA &nbsp;&nbsp; SADJE',
    '4 &nbsp; PLESKAVICA V LEPINJI S KAJMAKOM &nbsp;&nbsp; SOLATA &nbsp;&nbsp; SADJE',
    '5 &nbsp; OCVRTI SIR S PRILOGO &nbsp;&nbsp; SOLATA &nbsp;&nbsp; SADJE',
    '6 &nbsp; AJDA BURGER &nbsp;&nbsp; SOLATA &nbsp;&nbsp; SADJE',
    '7 &nbsp; PIŠČANČJI ZREZEK NAVADNI &nbsp;&nbsp; SOLATA &nbsp;&nbsp; SADJE',
    '8 &nbsp; PIŠČANČJI ZREZEK S SIROM &nbsp;&nbsp; SOLATA &nbsp;&nbsp; SADJE',
    '9 &nbsp; PIŠČANČJI ZREZEK Z JAJCEM &nbsp;&nbsp; SOLATA &nbsp;&nbsp; SADJE',
    '10 &nbsp; PIČANČJI ZREZEK Z PEČENO ZELENJAVO &nbsp;&nbsp; SOLATA &nbsp;&nbsp; SADJE',
    '11 &nbsp; PIŠČANČJI ZREZEK Z MOZZARELO &nbsp;&nbsp; SOLATA &nbsp;&nbsp; SADJE',
    '12 &nbsp; AJDA POHANČEK S PRILOGO &nbsp;&nbsp; SOLATA &nbsp;&nbsp; SADJE',
    '13 &nbsp; ČEVAPČIČI V LEPINJI (5 KOM) &nbsp;&nbsp; SOLATA &nbsp;&nbsp; SADJE',
    '14 &nbsp; ITALJANSKA SOLATA DNEVNA JUHA &nbsp;&nbsp; SOLATA &nbsp;&nbsp; SADJE',
    '15 &nbsp; PIŠČANČJA SOLATA DNEVNA JUHA &nbsp;&nbsp; SOLATA &nbsp;&nbsp; SADJE',
    '16 &nbsp; PEČEN SIR Z ZELENJAVO &nbsp;&nbsp; SOLATA &nbsp;&nbsp; SADJE',
    '17 &nbsp; ZELENJAVNI Z ZREZEK NA ŽARU &nbsp;&nbsp; SOLATA &nbsp;&nbsp; SADJE',
    '18 &nbsp; POSTRV NA ŽARU &nbsp;&nbsp; SOLATA &nbsp;&nbsp; SADJE',
    '19 &nbsp; OSLIČ NA ŽARU &nbsp;&nbsp; SOLATA &nbsp;&nbsp; SADJE',
    '20 &nbsp; PIŠČANČJI MEDALJONI S PRILOGO &nbsp;&nbsp; SOLATA &nbsp;&nbsp; SADJE',
    '21 &nbsp; GOLAŽ &nbsp;&nbsp; SOLATA &nbsp;&nbsp; SADJE',
    '22 &nbsp; OBARA &nbsp;&nbsp; SOLATA &nbsp;&nbsp; SADJE'
  ]);


-- Location: Lokal #3347
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000003347', 'Lokal #3347', 'Slovenska cesta 56, 1000 Ljubljana', 46.085, 14.515, 3.80, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000003347', CURRENT_DATE, ARRAY[
    '1 &nbsp; SHAWRMA SOLATA LEČNI JUHA &nbsp;&nbsp; MEŠANA SOLATA &nbsp;&nbsp;',
    '2 &nbsp; ORIENT SOLATA S SHAWRMA LEČNI JUHA &nbsp;&nbsp; MEŠANA SOLATA &nbsp;&nbsp;',
    '3 &nbsp; SHAWRMA S PRILOGA &nbsp;&nbsp; MEŠANA SOLATA &nbsp;&nbsp;',
    '4 &nbsp; FALAFEL S PRILOGA &nbsp;&nbsp; MEŠANA SOLATA &nbsp;&nbsp;',
    '5 &nbsp; SHAWROMA KROŽNIK &nbsp;&nbsp; MEŠANA SOLATA &nbsp;&nbsp;',
    '6 &nbsp; KOFTA KROŽNIK &nbsp;&nbsp; MEŠANA SOLATA &nbsp;&nbsp;',
    '7 &nbsp; DOLMA KROŽNIK &nbsp;&nbsp; MEŠANA SOLATA &nbsp;&nbsp;',
    '8 &nbsp; FALAFEL KROŽNIK &nbsp;&nbsp; MEŠANA SOLATA &nbsp;&nbsp;',
    '9 &nbsp; KABSA KROŽNIK &nbsp;&nbsp; MEŠANA SOLATA &nbsp;&nbsp;',
    '10 &nbsp; BULGUR KROŽNIK &nbsp;&nbsp; MEŠANA SOLATA &nbsp;&nbsp;',
    '11 &nbsp; VEGE KROŽNIK &nbsp;&nbsp; MEŠANA SOLATA &nbsp;&nbsp;'
  ]);


-- Location: Lokal #3332
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000003332', 'Lokal #3332', 'Ulica Prekomorskih brigad 4, 6310 Izola', 46.052, 14.528, 3.80, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000003332', CURRENT_DATE, ARRAY[
    'Lokal nima vpisanih menijev.'
  ]);


-- Location: Lokal #3275
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000003275', 'Lokal #3275', 'Gortanov trg 4, 6000 Koper', 45.5621, 13.7301, 3.80, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000003275', CURRENT_DATE, ARRAY[
    'Lokal nima vpisanih menijev.'
  ]);


-- Location: Lokal #2147
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000002147', 'Lokal #2147', 'Kongresni trg 3, 1000 Ljubljana', 46.086, 14.504, 3.80, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000002147', CURRENT_DATE, ARRAY[
    'Meni 1: Dnevno študentsko kosilo s solato in sadjem'
  ]);


-- Location: Lokal #3042
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000003042', 'Lokal #3042', 'Litostrojska cesta 44E, 1000 Ljubljana', 46.053, 14.517, 3.80, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000003042', CURRENT_DATE, ARRAY[
    'Lokal nima vpisanih menijev.'
  ]);


-- Location: Lokal #3207
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000003207', 'Lokal #3207', 'Carpacciov trg 6, 6000 Koper', 45.5481, 13.7361, 3.80, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000003207', CURRENT_DATE, ARRAY[
    '1 &nbsp; 10X ČEVAPI (220G), 1 LEPINJA, ČEBULA VELIKI ČEVAPI &nbsp;&nbsp; zeljnata solata &nbsp;&nbsp; jabolko',
    '2 &nbsp; 7X ČEVAPI (150G), 1/2 LEPINJE, KAJMAK, ČEBULA SREDNJI ČEVAPI S KAJMAKOM &nbsp;&nbsp; zeljnata solata &nbsp;&nbsp; jabolko',
    '3 &nbsp; 5X ČEVAPI (110G), 1/2 LEPINJE, ŠOPSKA SOLATA ČEBULA MALI ČEVAPI S ŠOPSKO SOLATO &nbsp;&nbsp; zeljnata solata &nbsp;&nbsp; jabolko',
    '4 &nbsp; 1X PLESKAVICA (220G), 1 LEPINJA, ČEBULA PLESKAVICA &nbsp;&nbsp; zeljnata solata &nbsp;&nbsp; jabolko',
    '5 &nbsp; 3X PREKAJENA GOVEJA KLOBASA, 1 LEPINJA, ČEBULA SUDŽUKICE &nbsp;&nbsp; zeljnata solata &nbsp;&nbsp; jabolko',
    '6 &nbsp; 220G PIŠČANČJE BEDRO BREZ KOSTI, PEČEN KROMPIR, 1/2 LEPINJE, ČEBULA PIŠČANČJA BEDRA S KROMPIRJEM &nbsp;&nbsp; zeljnata solata &nbsp;&nbsp; jabolko',
    '7 &nbsp; 220G PURANJI ZREZEK, PEČEN KROMPIR, ČEBULA PURANJI ZREZEK S KROMPIRJEM &nbsp;&nbsp; zeljnata solata &nbsp;&nbsp; jabolko',
    '8 &nbsp; PIŠČANČJI FILE, DŽUVEČ, 1/2 LEPINJE PIŠČANČJI FILE Z DŽUVEČEM &nbsp;&nbsp; zeljnata solata &nbsp;&nbsp; jabolko',
    '9 &nbsp; 220G OCVRTEGA PURANJEGA ZREZKA, OCVRT KROMPIRČEK, 1/2 LEPINJE DUNAJSKI PURANJI ZREZEK &nbsp;&nbsp; zeljnata solata &nbsp;&nbsp; jabolko',
    '10 &nbsp; 5X MESNIH KROGLIC, PIRE KROMPIR, PARADIŽNIKOVA OMAKA, 1/2 LEPINJE ČUFTICE S PIREJEM &nbsp;&nbsp; zeljnata solata &nbsp;&nbsp; jabolko',
    '11 &nbsp; PIŠČANČJA KREM JUHA, 1/2 LEPINJE BEGOVA ČORBA &nbsp;&nbsp; zeljnata solata &nbsp;&nbsp; jabolko',
    '12 &nbsp; TELEČJA OBARA, 1/2 LEPINJE TELEČJA ČORBA &nbsp;&nbsp; zeljnata solata &nbsp;&nbsp; jabolko',
    '13 &nbsp; MAKEDONSKI FIŽOL, PREKAJENA GOVEJA KLOBASA, 1/2 LEPINJE PREBRANEC S SUDŽUKICO &nbsp;&nbsp; zeljnata solata &nbsp;&nbsp; jabolko',
    '14 &nbsp; JAJČEVEC, BUČKE, PAPRIKA, ČEBULA, PARADIŽNIK, POLENTA Z ROŽMARINOM, OLIVNO OLJE, SMETANOVA OMAKA, 1/2 LEPINJE ZELENJAVNI KROŽNIK (V) &nbsp;&nbsp; zeljnata solata &nbsp;&nbsp; jabolko',
    '15 &nbsp; POLENTA, SMETANOVA OMAKA, SLANI BELI SIR TRAVNIČKA PURA &nbsp;&nbsp; zeljnata solata &nbsp;&nbsp; jabolko',
    '16 &nbsp; ZELENA SOLATA, PARADIŽNIK, KUMARICE, KOŠČKI TUNE, BALZAMIČNI KIS, 1/2 LEPINJA MEDITERANSKA SOLATA &nbsp;&nbsp; zeljnata solata &nbsp;&nbsp; jabolko',
    '17 &nbsp; ZELENA SOLATA, KOSI PURANJEGA ZREZKA (150G), PARADIŽNIK, KUMARE, ZELENA PAPRIKA, 1/2 LEPINJA ORIENTALSKA SOLATA &nbsp;&nbsp; zeljnata solata &nbsp;&nbsp; jabolko'
  ]);


-- Location: Lokal #3259
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000003259', 'Lokal #3259', 'Trubarjeva cesta 52, 1000 Ljubljana', 46.087, 14.543, 3.80, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000003259', CURRENT_DATE, ARRAY[
    '1 &nbsp; 10X ČEVAPI (220G), 1 LEPINJA, ČEBULA VELIKI ČEVAPI &nbsp;&nbsp; zeljnata solata &nbsp;&nbsp; jabolko',
    '2 &nbsp; 7X ČEVAPI (150G), 1/2 LEPINJE, KAJMAK, ČEBULA SREDNJI ČEVAPI S KAJMAKOM &nbsp;&nbsp; zeljnata solata &nbsp;&nbsp; jabolko',
    '3 &nbsp; 5X ČEVAPI (110G), 1/2 LEPINJE, ŠOPSKA SOLATA ČEBULA MALI ČEVAPI S ŠOPSKO SOLATO &nbsp;&nbsp; zeljnata solata &nbsp;&nbsp; jabolko',
    '4 &nbsp; 1X PLESKAVICA (220G), 1 LEPINJA, ČEBULA PLESKAVICA &nbsp;&nbsp; zeljnata solata &nbsp;&nbsp; jabolko',
    '5 &nbsp; 3X PREKAJENA GOVEJA KLOBASA, 1 LEPINJA, ČEBULA SUDŽUKICE &nbsp;&nbsp; zeljnata solata &nbsp;&nbsp; jabolko',
    '6 &nbsp; 220G PIŠČANČJE BEDRO BREZ KOSTI, PEČEN KROMPIR, 1/2 LEPINJE, ČEBULA PIŠČANČJA BEDRA S KROMPIRJEM &nbsp;&nbsp; zeljnata solata &nbsp;&nbsp; jabolko',
    '7 &nbsp; 220G PURANJI ZREZEK, PEČEN KROMPIR, ČEBULA PURANJI ZREZEK S KROMPIRJEM &nbsp;&nbsp; zeljnata solata &nbsp;&nbsp; jabolko',
    '8 &nbsp; PIŠČANČJI FILE, DŽUVEČ, 1/2 LEPINJE PIŠČANČJI FILE Z DŽUVEČEM &nbsp;&nbsp; zeljnata solata &nbsp;&nbsp; jabolko',
    '9 &nbsp; 220G OCVRTEGA PURANJEGA ZREZKA, OCVRT KROMPIRČEK, 1/2 LEPINJE DUNAJSKI PURANJI ZREZEK &nbsp;&nbsp; zeljnata solata &nbsp;&nbsp; jabolko',
    '10 &nbsp; 5X MESNIH KROGLIC, PIRE KROMPIR, PARADIŽNIKOVA OMAKA, 1/2 LEPINJE ČUFTICE S PIREJEM &nbsp;&nbsp; zeljnata solata &nbsp;&nbsp; jabolko',
    '11 &nbsp; PIŠČANČJA KREM JUHA, 1/2 LEPINJE BEGOVA ČORBA &nbsp;&nbsp; zeljnata solata &nbsp;&nbsp; jabolko',
    '12 &nbsp; TELEČJA OBARA, 1/2 LEPINJE TELEČJA ČORBA &nbsp;&nbsp; zeljnata solata &nbsp;&nbsp; jabolko',
    '13 &nbsp; MAKEDONSKI FIŽOL, 1/2 LEPINJE PREBRANEC &nbsp;&nbsp; zeljnata solata &nbsp;&nbsp; jabolko',
    '14 &nbsp; JAJČEVEC, BUČKE, PAPRIKA, ČEBULA, PARADIŽNIK, POLENTA Z ROŽMARINOM, OLIVNO OLJE, SMETANOVA OMAKA, 1/2 LEPINJE ZELENJAVNI KROŽNIK (V) &nbsp;&nbsp; zeljnata solata &nbsp;&nbsp; jabolko',
    '15 &nbsp; POLENTA, SMETANOVA OMAKA, SLANI BELI SIR TRAVNIČKA PURA &nbsp;&nbsp; zeljnata solata &nbsp;&nbsp; jabolko',
    '16 &nbsp; ZELENA SOLATA, PARADIŽNIK, KUMARICE, KOŠČKI TUNE, BALZAMIČNI KIS, 1/2 LEPINJA MEDITERANSKA SOLATA &nbsp;&nbsp; zeljnata solata &nbsp;&nbsp; jabolko',
    '17 &nbsp; ZELENA SOLATA, KOSI PURANJEGA ZREZKA (150G), PARADIŽNIK, KUMARE, ZELENA PAPRIKA, 1/2 LEPINJA ORIENTALSKA SOLATA &nbsp;&nbsp; zeljnata solata &nbsp;&nbsp; jabolko'
  ]);


-- Location: Lokal #3237
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000003237', 'Lokal #3237', 'Gosposvetska cesta 43c, 2000 Maribor', 46.5607, 15.6609, 3.80, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000003237', CURRENT_DATE, ARRAY[
    '1 &nbsp; 10X ČEVAPI (220G), 1 LEPINJA, ČEBULA VELIKI ČEVAPI &nbsp;&nbsp; zeljnata solata &nbsp;&nbsp; jabolko',
    '2 &nbsp; 7X ČEVAPI (150G), 1/2 LEPINJE, KAJMAK, ČEBULA SREDNJI ČEVAPI S KAJMAKOM &nbsp;&nbsp; zeljnata solata &nbsp;&nbsp; jabolko',
    '3 &nbsp; 5X ČEVAPI (110G), 1/2 LEPINJE, ŠOPSKA SOLATA ČEBULA MALI ČEVAPI S ŠOPSKO SOLATO &nbsp;&nbsp; zeljnata solata &nbsp;&nbsp; jabolko',
    '4 &nbsp; 1X PLESKAVICA (220G), 1 LEPINJA, ČEBULA PLESKAVICA &nbsp;&nbsp; zeljnata solata &nbsp;&nbsp; jabolko',
    '5 &nbsp; 3X PREKAJENA GOVEJA KLOBASA, 1 LEPINJA, ČEBULA SUDŽUKICE &nbsp;&nbsp; zeljnata solata &nbsp;&nbsp; jabolko',
    '6 &nbsp; 220G PIŠČANČJE BEDRO BREZ KOSTI, PEČEN KROMPIR, 1/2 LEPINJE, ČEBULA PIŠČANČJA BEDRA S KROMPIRJEM &nbsp;&nbsp; zeljnata solata &nbsp;&nbsp; jabolko',
    '7 &nbsp; 220G PURANJI ZREZEK, PEČEN KROMPIR, ČEBULA PURANJI ZREZEK S KROMPIRJEM &nbsp;&nbsp; zeljnata solata &nbsp;&nbsp; jabolko',
    '8 &nbsp; PIŠČANČJI FILE, DŽUVEČ, 1/2 LEPINJE PIŠČANČJI FILE Z DŽUVEČEM &nbsp;&nbsp; zeljnata solata &nbsp;&nbsp; jabolko',
    '9 &nbsp; 220G OCVRTEGA PURANJEGA ZREZKA, OCVRT KROMPIRČEK, 1/2 LEPINJE DUNAJSKI PURANJI ZREZEK &nbsp;&nbsp; zeljnata solata &nbsp;&nbsp; jabolko',
    '10 &nbsp; 5X MESNIH KROGLIC, PIRE KROMPIR, PARADIŽNIKOVA OMAKA, 1/2 LEPINJE ČUFTICE S PIREJEM &nbsp;&nbsp; zeljnata solata &nbsp;&nbsp; jabolko',
    '11 &nbsp; PIŠČANČJA KREM JUHA, 1/2 LEPINJE BEGOVA ČORBA &nbsp;&nbsp; zeljnata solata &nbsp;&nbsp; jabolko',
    '12 &nbsp; TELEČJA OBARA, 1/2 LEPINJE TELEČJA ČORBA &nbsp;&nbsp; zeljnata solata &nbsp;&nbsp; jabolko',
    '13 &nbsp; MAKEDONSKI FIŽOL, PREKAJENA GOVEJA KLOBASA, 1/2 LEPINJE PREBRANEC S SUDŽUKICO &nbsp;&nbsp; zeljnata solata &nbsp;&nbsp; jabolko',
    '14 &nbsp; JAJČEVEC, BUČKE, PAPRIKA, ČEBULA, PARADIŽNIK, POLENTA Z ROŽMARINOM, OLIVNO OLJE, SMETANOVA OMAKA, 1/2 LEPINJE ZELENJAVNI KROŽNIK (V) &nbsp;&nbsp; zeljnata solata &nbsp;&nbsp; jabolko',
    '15 &nbsp; POLENTA, SMETANOVA OMAKA, SLANI BELI SIR TRAVNIČKA PURA &nbsp;&nbsp; zeljnata solata &nbsp;&nbsp; jabolko',
    '16 &nbsp; ZELENA SOLATA, PARADIŽNIK, KUMARICE, KOŠČKI TUNE, BALZAMIČNI KIS, 1/2 LEPINJA MEDITERANSKA SOLATA &nbsp;&nbsp; zeljnata solata &nbsp;&nbsp; jabolko',
    '17 &nbsp; ZELENA SOLATA, KOSI PURANJEGA ZREZKA (150G), PARADIŽNIK, KUMARE, ZELENA PAPRIKA, 1/2 LEPINJA ORIENTALSKA SOLATA &nbsp;&nbsp; zeljnata solata &nbsp;&nbsp; jabolko'
  ]);


-- Location: Lokal #2102
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000002102', 'Lokal #2102', 'Ižanska cesta 10, 1000 Ljubljana', 46.071, 14.519, 3.80, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000002102', CURRENT_DATE, ARRAY[
    'Lokal nima vpisanih menijev.'
  ]);


-- Location: Lokal #2103
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000002103', 'Lokal #2103', 'Cesta v Mestni log 47, 1000 Ljubljana', 46.088, 14.532, 3.80, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000002103', CURRENT_DATE, ARRAY[
    'Lokal nima vpisanih menijev.'
  ]);


-- Location: Lokal #2862
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000002862', 'Lokal #2862', 'Slovenska ulica 20, 2000 Maribor', 46.5697, 15.6489, 3.80, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000002862', CURRENT_DATE, ARRAY[
    'Meni 1: Dnevno študentsko kosilo s solato in sadjem'
  ]);


-- Location: Lokal #3331
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000003331', 'Lokal #3331', 'Mirce 20, 5270 Ajdovščina', 46.072, 14.508, 3.80, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000003331', CURRENT_DATE, ARRAY[
    'Lokal nima vpisanih menijev.'
  ]);


-- Location: Lokal #3280
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000003280', 'Lokal #3280', 'Dilančeva ulica 1, 8000 Novo mesto', 45.8051, 15.175, 3.80, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000003280', CURRENT_DATE, ARRAY[
    'Lokal nima vpisanih menijev.'
  ]);


-- Location: Lokal #3221
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000003221', 'Lokal #3221', 'Kardeljeva ploščad 5, 1000 Ljubljana', 46.056, 14.534, 3.80, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000003221', CURRENT_DATE, ARRAY[
    'Meni 1: Dnevno študentsko kosilo s solato in sadjem'
  ]);


-- Location: Lokal #2821
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000002821', 'Lokal #2821', 'Vojkovo nabrežje 12, 6000 Koper', 45.5661, 13.7401, 3.80, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000002821', CURRENT_DATE, ARRAY[
    'Meni 1: Dnevno študentsko kosilo s solato in sadjem'
  ]);


-- Location: Lokal #1645
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000001645', 'Lokal #1645', 'Kidričeva ulica 23, 3250 Rogaška Slatina', 46.09, 14.51, 3.80, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000001645', CURRENT_DATE, ARRAY[
    '1 &nbsp; ŠPAGETI BOLONEZ Dnevna juha &nbsp;&nbsp; mešana solata &nbsp;&nbsp; sadje',
    '2 &nbsp; ŠPAGETI S TUNINO OMAKO Dnevna juha &nbsp;&nbsp; mešana solata &nbsp;&nbsp; sadje',
    '3 &nbsp; ŠPAGETI Z GORGONZOLO Dnevna juha &nbsp;&nbsp; mešana solata &nbsp;&nbsp; sadje',
    '4 &nbsp; ŠPAGETI CARBONARA Dnevna juha &nbsp;&nbsp; mešana solata &nbsp;&nbsp; sadje',
    '5 &nbsp; ŠPAGETI S ŠAMPINJONI Dnevna juha &nbsp;&nbsp; mešana solata &nbsp;&nbsp; sadje',
    '6 &nbsp; LAZANJA Z MLETIM MESOM Dnevna juha &nbsp;&nbsp; mešana solata &nbsp;&nbsp; sadje',
    '7 &nbsp; PURANOV ZREZEK Z ŽARA, POMFRIT Dnevna juha &nbsp;&nbsp; mešana solata &nbsp;&nbsp; sadje',
    '8 &nbsp; PIŠČANČJI ZREZEK V SMETANOVI OMAKI, RIŽ Dnevna juha &nbsp;&nbsp; mešana solata &nbsp;&nbsp; sadje',
    '9 &nbsp; SVINSKI DUNAJSKI ZREZEK, RIŽ Dnevna juha &nbsp;&nbsp; mešana solata &nbsp;&nbsp; sadje',
    '10 &nbsp; FILE OSLIČA Z ŽARA, KUHAN KROMPIR Dnevna juha &nbsp;&nbsp; mešana solata &nbsp;&nbsp; sadje',
    '11 &nbsp; LIGNJI Z ŽARA, POMFRIT Dnevna juha &nbsp;&nbsp; mešana solata &nbsp;&nbsp; sadje',
    '12 &nbsp; OCVRTI LIGNJI, RIŽ Dnevna juha &nbsp;&nbsp; mešana solata &nbsp;&nbsp; sadje',
    '13 &nbsp; SIROVI ŠTRUKLJI Dnevna juha &nbsp;&nbsp; mešana solata &nbsp;&nbsp; sadje',
    '14 &nbsp; ZELENJAVNI KROŽNIK Dnevna juha &nbsp;&nbsp; mešana solata &nbsp;&nbsp; sadje',
    '15 &nbsp; OCVRTI ŠAMPINJONI, RIŽ Dnevna juha &nbsp;&nbsp; mešana solata &nbsp;&nbsp; sadje',
    '16 &nbsp; ŠAMPINJONI Z ŽARA, POMFRIT Dnevna juha &nbsp;&nbsp; mešana solata &nbsp;&nbsp; sadje',
    '17 &nbsp; OCVRTI SIR, RIŽ Dnevna juha &nbsp;&nbsp; mešana solata &nbsp;&nbsp; sadje',
    '18 &nbsp; SOLATNI KROŽNIK S PIŠČANČJIM MESOM Dnevna juha &nbsp;&nbsp; mešana solata &nbsp;&nbsp; sadje',
    '19 &nbsp; SOLATNI KROŽNIK Z LIGNJI Dnevna juha &nbsp;&nbsp; mešana solata &nbsp;&nbsp; sadje',
    '20 &nbsp; TELEČJA OBARA Dnevna juha &nbsp;&nbsp; mešana solata &nbsp;&nbsp; sadje',
    '21 &nbsp; GOVEJI GOLAŽ, TESTENINE Dnevna juha &nbsp;&nbsp; mešana solata &nbsp;&nbsp; sadje',
    '22 &nbsp; ČEVAPČIČI, POMFRIT Dnevna juha &nbsp;&nbsp; mešana solata &nbsp;&nbsp; sadje',
    '23 &nbsp; HAMBURGER Dnevna juha &nbsp;&nbsp; mešana solata &nbsp;&nbsp; sadje',
    '24 &nbsp; HAMBURGER S SIROM Dnevna juha &nbsp;&nbsp; mešana solata &nbsp;&nbsp; sadje',
    '25 &nbsp; HAMBURGER Z OCVRTIM SIROM Dnevna juha &nbsp;&nbsp; mešana solata &nbsp;&nbsp; sadje',
    '26 &nbsp; CHICKENBURGER Dnevna juha &nbsp;&nbsp; mešana solata &nbsp;&nbsp; sadje',
    '27 &nbsp; PIZZA MARGARITA Dnevna juha &nbsp;&nbsp; mešana solata &nbsp;&nbsp; sadje',
    '28 &nbsp; PIZZA BOHOR Dnevna juha &nbsp;&nbsp; mešana solata &nbsp;&nbsp; sadje',
    '29 &nbsp; PIZZA ROGAŠKA Dnevna juha &nbsp;&nbsp; mešana solata &nbsp;&nbsp; sadje',
    '30 &nbsp; PIZZA VRAŽJA Dnevna juha &nbsp;&nbsp; mešana solata &nbsp;&nbsp; sadje',
    '31 &nbsp; PIZZA TIROLSKA Dnevna juha &nbsp;&nbsp; mešana solata &nbsp;&nbsp; sadje',
    '32 &nbsp; SIROVA PIZZA Dnevna juha &nbsp;&nbsp; mešana solata &nbsp;&nbsp; sadje',
    '33 &nbsp; PIZZA BOLOGNESE Dnevna juha &nbsp;&nbsp; mešana solata &nbsp;&nbsp; sadje',
    '34 &nbsp; PIZZA DOMAČA Dnevna juha &nbsp;&nbsp; mešana solata &nbsp;&nbsp; sadje',
    '35 &nbsp; PIZZA HAWAII Dnevna juha &nbsp;&nbsp; mešana solata &nbsp;&nbsp; sadje',
    '36 &nbsp; PIZZA CALZONE Dnevna juha &nbsp;&nbsp; mešana solata &nbsp;&nbsp; sadje',
    '37 &nbsp; PIZZA PIONIR Dnevna juha &nbsp;&nbsp; mešana solata &nbsp;&nbsp; sadje',
    '38 &nbsp; PIZZA KMEČKA Dnevna juha &nbsp;&nbsp; mešana solata &nbsp;&nbsp; sadje',
    '39 &nbsp; PIZZA VEGETARIJANSKA Dnevna juha &nbsp;&nbsp; mešana solata &nbsp;&nbsp; sadje'
  ]);


-- Location: Lokal #3109
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000003109', 'Lokal #3109', 'Cesta maršala Tita 112, 4270 Jesenice', 46.057, 14.523, 3.80, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000003109', CURRENT_DATE, ARRAY[
    'Lokal nima vpisanih menijev.'
  ]);


-- Location: Lokal #3173
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000003173', 'Lokal #3173', 'Rimska cesta 13, 1000 Ljubljana', 46.074, 14.536, 3.80, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000003173', CURRENT_DATE, ARRAY[
    'Lokal nima vpisanih menijev.'
  ]);


-- Location: Lokal #3067
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000003067', 'Lokal #3067', 'Trubarjeva 47, 1000 Ljubljana', 46.091, 14.549, 3.80, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000003067', CURRENT_DATE, ARRAY[
    '1 &nbsp; PIŠČANČJI ZREZEK NA ŽARU,POMMES FRITES &nbsp;&nbsp; Sezonska solata &nbsp;&nbsp; Jabolko',
    '2 &nbsp; GOVEJA PLESKAVICA, POMMES FRITES &nbsp;&nbsp; Sezonska solata &nbsp;&nbsp; Jabolko',
    '3 &nbsp; PURANJI TRAKCI,POMMES FRITES &nbsp;&nbsp; Sezonska solata &nbsp;&nbsp; Jabolko',
    '4 &nbsp; ZELENJAVA NA ŽARU,POMMES FRITES &nbsp;&nbsp; Sezonska solata &nbsp;&nbsp; Jabolko',
    '5 &nbsp; ZELENJAVNA POLPETA,POMMES FRITES &nbsp;&nbsp; Sezonska solata &nbsp;&nbsp; Jabolko',
    '6 &nbsp; GOVEJI GOLAŽ &nbsp;&nbsp; Sezonska solata &nbsp;&nbsp; Jabolko',
    '7 &nbsp; JOTA &nbsp;&nbsp; Sezonska solata &nbsp;&nbsp; Jabolko',
    '8 &nbsp; FRESHY SOLATA Dnevna juha &nbsp;&nbsp; &nbsp;&nbsp; Jabolko',
    '9 &nbsp; TUNA SOLATA Dnevna juha &nbsp;&nbsp; &nbsp;&nbsp; Jabolko',
    '10 &nbsp; SOLATA S PIŠČANCEM Dnevna juha &nbsp;&nbsp; &nbsp;&nbsp; Jabolko',
    '11 &nbsp; SOLATA Z GOVEDINO Dnevna juha &nbsp;&nbsp; &nbsp;&nbsp; Jabolko',
    '12 &nbsp; MEŠANA SEZONSKA SOLATA Dnevna juha &nbsp;&nbsp; &nbsp;&nbsp; Jabolko',
    '13 &nbsp; BURGER TIME PALLET &nbsp;&nbsp; Sezonska solata &nbsp;&nbsp; Jabolko',
    '14 &nbsp; BURGER MOMENT PALLET &nbsp;&nbsp; Sezonska solata &nbsp;&nbsp; Jabolko',
    '15 &nbsp; BURGER INFINITY PALLET &nbsp;&nbsp; Sezonska solata &nbsp;&nbsp; Jabolko',
    '16 &nbsp; BURGER CASUALLY PALLET &nbsp;&nbsp; Sezonska solata &nbsp;&nbsp; Jabolko',
    '17 &nbsp; BURGER SPEEDY PALLET &nbsp;&nbsp; Sezonska solata &nbsp;&nbsp; Jabolko',
    '18 &nbsp; BURGER SLOWLY PALLET &nbsp;&nbsp; Sezonska solata &nbsp;&nbsp; Jabolko',
    '19 &nbsp; PULLED BEEF PALLET &nbsp;&nbsp; Sezonska solata &nbsp;&nbsp; Jabolko',
    '20 &nbsp; PULLED PORK PALLET &nbsp;&nbsp; Sezonska solata &nbsp;&nbsp; Jabolko'
  ]);


-- Location: Lokal #1161
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000001161', 'Lokal #1161', 'Ulica Pariške komune 37, 2000 Maribor', 46.5667, 15.6549, 3.80, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000001161', CURRENT_DATE, ARRAY[
    '1 &nbsp; RIŽOTA Z GOVEDINO &nbsp;&nbsp; MEŠANA &nbsp;&nbsp; JABOLKO',
    '2 &nbsp; RIŽOTA S PIŠČANCEM &nbsp;&nbsp; MEŠANA &nbsp;&nbsp; JABOLKO',
    '3 &nbsp; PIŠČANČJI TRAKCI S SMETANOVO OMAKO IN RIŽEM &nbsp;&nbsp; MEŠANA &nbsp;&nbsp; JABOLKO',
    '4 &nbsp; PIŠČANČJI TRAKCI S BBQ OMAKO IN RIŽEM &nbsp;&nbsp; MEŠANA &nbsp;&nbsp; JABOLKO',
    '5 &nbsp; PERUTNIČKE 350G S PRILOGO (KROMPIR ALI RIŽ) &nbsp;&nbsp; MEŠANA &nbsp;&nbsp; JABOLKO',
    '6 &nbsp; REBRCE S PRILOGO (KROMPIR ALI RIŽ) &nbsp;&nbsp; MEŠANA &nbsp;&nbsp; JABOLKO',
    '7 &nbsp; PIŠČANČJI FINGRSI S PRILOGO (KROMPIR ALI RIŽ) &nbsp;&nbsp; MEŠANA &nbsp;&nbsp; JABOLKO',
    '8 &nbsp; MEHIŠKA LAZANJA &nbsp;&nbsp; MEŠANA &nbsp;&nbsp; JABOLKO',
    '9 &nbsp; RIBA NA ŽARU S PRILOGO (KROMPIR ALI RIŽ) &nbsp;&nbsp; MEŠANA &nbsp;&nbsp; JABOLKO',
    '10 &nbsp; MORSKI SADEŽI V PARADIŽNIKOVI OMAKI S PRILOGO (KROMPIR ALI RIŽ) &nbsp;&nbsp; MEŠANA &nbsp;&nbsp; JABOLKO',
    '11 &nbsp; POLNJENI ŽEPKI S PRILOGO (KROMPIR ALI RIŽ) &nbsp;&nbsp; MEŠANA &nbsp;&nbsp; JABOLKO',
    '12 &nbsp; SIR NA ŽARU PRILOGO (KROMPIR ALI RIŽ) &nbsp;&nbsp; MEŠANA &nbsp;&nbsp; JABOLKO',
    '13 &nbsp; OCVRT SIR S PRILOGO (KROMPIR ALI RIŽ) &nbsp;&nbsp; MEŠANA &nbsp;&nbsp; JABOLKO',
    '14 &nbsp; SOLATA S PIŠČANCEM NA ŽARU &nbsp;&nbsp; MEŠANA &nbsp;&nbsp; JABOLKO',
    '15 &nbsp; SOLATA Z OCVRTIM SIROM &nbsp;&nbsp; MEŠANA &nbsp;&nbsp; JABOLKO',
    '16 &nbsp; SOLATA S SIROM NA ŽARU &nbsp;&nbsp; MEŠANA &nbsp;&nbsp; JABOLKO',
    '17 &nbsp; SOLATA Z OCVRTIMI PIŠČANČJIMI FINGERSI &nbsp;&nbsp; MEŠANA &nbsp;&nbsp; JABOLKO',
    '18 &nbsp; SOLATA Z ARIČOKAMI ZAVITIMI V TORTILJO &nbsp;&nbsp; MEŠANA &nbsp;&nbsp; JABOLKO',
    '19 &nbsp; MEHIŠKA ENOLONČNICA / CHILLI CON CARNE &nbsp;&nbsp; MEŠANA &nbsp;&nbsp; JABOLKO',
    '20 &nbsp; PIŠČANČJA OBARA &nbsp;&nbsp; MEŠANA &nbsp;&nbsp; JABOLKO',
    '21 &nbsp; PIZZA PO LASTNI IZBIRI IZ CENIKA &nbsp;&nbsp; MEŠANA &nbsp;&nbsp; JABOLKO',
    '22 &nbsp; PIEDINA PO IZBIRI IZ CENIKA &nbsp;&nbsp; MEŠANA &nbsp;&nbsp; JABOLKO',
    '23 &nbsp; CHALLETA PO IZBIRI IZ CENIKA &nbsp;&nbsp; MEŠANA &nbsp;&nbsp; JABOLKO',
    '24 &nbsp; QUESADILLA PO IZBIRI IZ CENIKA &nbsp;&nbsp; MEŠANA &nbsp;&nbsp; JABOLKO',
    '25 &nbsp; KORUZNA TORTILJA Z NADEVI IN PRILOGO &nbsp;&nbsp; MEŠANA &nbsp;&nbsp; JABOLKO'
  ]);


-- Location: Lokal #1673
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000001673', 'Lokal #1673', 'Ulica Pariške komune 37, 2000 Maribor', 46.5697, 15.6579, 3.80, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000001673', CURRENT_DATE, ARRAY[
    '1 &nbsp; RIŽOTA Z GOVEDINO &nbsp;&nbsp; MEŠANA &nbsp;&nbsp; JABOLKO',
    '2 &nbsp; RIŽOTA S PIŠČANCEM &nbsp;&nbsp; MEŠANA &nbsp;&nbsp; JABOLKO',
    '3 &nbsp; PIŠČANČJI TRAKCI S SMETANOVO OMAKO IN RIŽEM &nbsp;&nbsp; MEŠANA &nbsp;&nbsp; JABOLKO',
    '4 &nbsp; PIŠČANČJI TRAKCI S BBQ OMAKO IN RIŽEM &nbsp;&nbsp; MEŠANA &nbsp;&nbsp; JABOLKO',
    '5 &nbsp; PERUTNIČKE 350G S PRILOGO (KROMPIR ALI RIŽ) &nbsp;&nbsp; MEŠANA &nbsp;&nbsp; JABOLKO',
    '6 &nbsp; REBRCE S PRILOGO (KROMPIR ALI RIŽ) &nbsp;&nbsp; MEŠANA &nbsp;&nbsp; JABOLKO',
    '7 &nbsp; PIŠČANČJI FINGERSI S PRILOGO (KROMPIR ALI RIŽ) &nbsp;&nbsp; MEŠANA &nbsp;&nbsp; JABOLKO',
    '8 &nbsp; RIBA NA ŽARU S PRILOGO (KROMPIR ALI RIŽ) &nbsp;&nbsp; MEŠANA &nbsp;&nbsp; JABOLKO',
    '9 &nbsp; MORSKI SADEŽI V PARADIŽNIKOVI OMAKI S PRILOGO (KROMPIR ALI RIŽ) &nbsp;&nbsp; MEŠANA &nbsp;&nbsp; JABOLKO',
    '10 &nbsp; POLNJENI ŽEPKI VEGE S PRILOGO (KROMPIR ALI RIŽ) &nbsp;&nbsp; MEŠANA &nbsp;&nbsp; JABOLKO',
    '11 &nbsp; SIR NA ŽARU PRILOGO (KROMPIR ALI RIŽ) &nbsp;&nbsp; MEŠANA &nbsp;&nbsp; JABOLKO',
    '12 &nbsp; OCVRT SIR S PRILOGO (KROMPIR ALI RIŽ) &nbsp;&nbsp; MEŠANA &nbsp;&nbsp; JABOLKO',
    '13 &nbsp; SOLATA S PIŠČANCEM NA ŽARU &nbsp;&nbsp; MEŠANA &nbsp;&nbsp; JABOLKO',
    '14 &nbsp; SOLATA Z OCVRTIM SIROM &nbsp;&nbsp; MEŠANA &nbsp;&nbsp; JABOLKO',
    '15 &nbsp; SOLATA S SIROM NA ŽARU &nbsp;&nbsp; MEŠANA &nbsp;&nbsp; JABOLKO',
    '16 &nbsp; SOLATA Z OCVRTIMI PIŠČANČJIMI FINGERSI &nbsp;&nbsp; MEŠANA &nbsp;&nbsp; JABOLKO',
    '17 &nbsp; SOLATA Z ARIČOKAMI ZAVITIMI V TORTILJO &nbsp;&nbsp; MEŠANA &nbsp;&nbsp; JABOLKO',
    '18 &nbsp; MEHIŠKA ENOLONČNICA / CHILLI CON CARNE &nbsp;&nbsp; MEŠANA &nbsp;&nbsp; JABOLKO',
    '19 &nbsp; PIŠČANČJA OBARA &nbsp;&nbsp; MEŠANA &nbsp;&nbsp; JABOLKO',
    '20 &nbsp; PIZZA PO LASTNI IZBIRI IZ CENIKA &nbsp;&nbsp; MEŠANA &nbsp;&nbsp; JABOLKO',
    '21 &nbsp; PIEDINA PO IZBIRI IZ CENIKA &nbsp;&nbsp; MEŠANA &nbsp;&nbsp; JABOLKO',
    '22 &nbsp; CHALLETA PO IZBIRI IZ CENIKA &nbsp;&nbsp; MEŠANA &nbsp;&nbsp; JABOLKO',
    '23 &nbsp; QUESADILLA PO IZBIRI IZ CENIKA &nbsp;&nbsp; MEŠANA &nbsp;&nbsp; JABOLKO',
    '24 &nbsp; KORUZNA TORTILJA Z NADEVI IN PRILOGO &nbsp;&nbsp; MEŠANA &nbsp;&nbsp; JABOLKO'
  ]);


-- Location: Lokal #3176
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000003176', 'Lokal #3176', 'Trg osvobodilne fronte 13, 1000 Ljubljana', 46.092, 14.538, 3.80, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000003176', CURRENT_DATE, ARRAY[
    'Lokal nima vpisanih menijev.'
  ]);


-- Location: Lokal #3375
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000003375', 'Lokal #3375', 'Kopališka cesta 14, 6310 Izola', 46.059, 14.501, 3.80, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000003375', CURRENT_DATE, ARRAY[
    '1 &nbsp; DUNAJSKI ZREZEK dnevna &nbsp;&nbsp; &nbsp;&nbsp; pomaranča',
    '2 &nbsp; TESTENINE BOLOGNESE dnevna &nbsp;&nbsp; &nbsp;&nbsp; jabolko',
    '3 &nbsp; BURGER SVETILNIK, POMFRI dnevna &nbsp;&nbsp; &nbsp;&nbsp; banana',
    '4 &nbsp; PANIRANI OSLIČ dnevna &nbsp;&nbsp; &nbsp;&nbsp; pomaranča',
    '5 &nbsp; VEGE BURGER, POMFRI dnevna &nbsp;&nbsp; &nbsp;&nbsp; jabolko',
    '6 &nbsp; MARGARITA dnevna &nbsp;&nbsp; &nbsp;&nbsp; jabolko',
    '7 &nbsp; KUHAN PRŠUT dnevna &nbsp;&nbsp; &nbsp;&nbsp; banana'
  ]);


-- Location: Lokal #3171
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000003171', 'Lokal #3171', 'Pobreška cesta 18, 2000 Maribor', 46.5787, 15.6459, 3.80, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000003171', CURRENT_DATE, ARRAY[
    'Lokal nima vpisanih menijev.'
  ]);


-- Location: Lokal #1568
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000001568', 'Lokal #1568', 'Slovenska 18, 2000 Maribor', 46.5817, 15.6489, 3.80, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000001568', CURRENT_DATE, ARRAY[
    'Lokal nima vpisanih menijev.'
  ]);


-- Location: Lokal #1569
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES ('a0000000-0000-0000-0000-000000001569', 'Lokal #1569', 'Slovenska 18, 2000 Maribor', 46.5547, 15.6519, 3.80, 'Pon - Pet: 10:00 - 20:00')
ON CONFLICT (id) DO UPDATE SET
  name = EXCLUDED.name,
  address = EXCLUDED.address,
  subsidy_price = EXCLUDED.subsidy_price;


INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES ('a0000000-0000-0000-0000-000000001569', CURRENT_DATE, ARRAY[
    'Lokal nima vpisanih menijev.'
  ]);
