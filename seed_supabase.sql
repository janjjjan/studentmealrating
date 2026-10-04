-- Lokali s studentska-prehrana.si (ustvaril scrape_and_generate_sql.py).
-- Samostojna skripta: najprej ustvari tabele (supabase/schema.sql), nato vstavi vse lokale.
-- POZOR: izbriše in ponovno ustvari tabele locations, daily_menus in reviews.
-- Zaženi v Supabase → SQL Editor → New query → Run.

-- =====================================================================
-- Študentska prehrana – shema baze za Supabase
-- Zaženi celotno datoteko enkrat v Supabase → SQL Editor → New query → Run.
--
-- POZOR: prvi blok izbriše stare tabele iz prejšnje verzije (seed_supabase.sql
-- z izmišljenimi podatki in UUID ključi). Če imaš v stari tabeli `reviews`
-- prave ocene, jih pred tem izvozi.
-- =====================================================================

drop table if exists public.reviews cascade;
drop table if exists public.daily_menus cascade;
drop table if exists public.locations cascade;

-- Lokali (ID = ID lokala na studentska-prehrana.si). Polni jo seed_supabase.sql.
create table public.locations (
  id            text primary key,
  name          text not null,
  address       text,
  city          text,
  latitude      double precision,
  longitude     double precision,
  meal_price    numeric(5,2),
  subsidy_price numeric(5,2),
  opening_hours text,
  notice        text,
  features      text[] not null default '{}',
  site_rating   smallint,
  updated_at    timestamptz not null default now()
);

-- Dnevni meniji (polni jih /api/cron/refresh-menus vsak dan).
create table public.daily_menus (
  location_id text not null references public.locations(id) on delete cascade,
  menu_date   date not null,
  dishes      text[] not null,
  primary key (location_id, menu_date)
);

-- Ocene uporabnikov (brez prijave, samo vzdevek).
create table public.reviews (
  id          uuid primary key default gen_random_uuid(),
  location_id text not null references public.locations(id) on delete cascade,
  author_name text not null check (char_length(btrim(author_name)) between 1 and 40),
  rating_quantity smallint not null check (rating_quantity between 1 and 5), -- količina
  rating_price    smallint not null check (rating_price between 1 and 5),    -- cena
  rating_quality  smallint not null check (rating_quality between 1 and 5),  -- kvaliteta
  -- skupna ocena = povprečje treh kategorij (računa baza sama)
  rating      numeric(3,2) generated always as ((rating_quantity + rating_price + rating_quality) / 3.0) stored,
  comment     text check (comment is null or char_length(comment) <= 1000),
  created_at  timestamptz not null default now()
);
create index reviews_location_idx on public.reviews (location_id);

-- ---------------------------------------------------------------------
-- Row Level Security: vsi lahko berejo; anonimni uporabniki lahko samo
-- DODAJO oceno (ne morejo je urejati ali brisati). Menije in lokale piše
-- samo strežnik s service-role ključem (ta RLS obide).
-- ---------------------------------------------------------------------
alter table public.locations   enable row level security;
alter table public.daily_menus enable row level security;
alter table public.reviews     enable row level security;

create policy "locations berejo vsi"   on public.locations   for select using (true);
create policy "meniji berejo vsi"      on public.daily_menus for select using (true);
create policy "ocene berejo vsi"       on public.reviews     for select using (true);
create policy "ocene lahko doda vsak"  on public.reviews     for insert to anon, authenticated
  with check (rating_quantity between 1 and 5 and rating_price between 1 and 5 and rating_quality between 1 and 5);

-- Preprosta zaščita pred spamom: največ 5 ocen istega vzdevka za isti lokal na dan.
create or replace function public.limit_review_spam() returns trigger
language plpgsql security definer set search_path = public as $$
begin
  if (select count(*) from public.reviews
        where location_id = new.location_id
          and lower(author_name) = lower(new.author_name)
          and created_at > now() - interval '1 day') >= 5 then
    raise exception 'Preveč ocen v kratkem času. Poskusi jutri.';
  end if;
  new.created_at := now();
  return new;
end $$;

create trigger reviews_limit_spam before insert on public.reviews
  for each row execute function public.limit_review_spam();

-- Po tem zaženi še seed_supabase.sql (lokali).

-- ---------------------------------------------------------------------
-- Lokali
-- ---------------------------------------------------------------------
insert into public.locations (id, name, address, city, latitude, longitude, meal_price, subsidy_price, opening_hours, notice, features, site_rating) values
  ('1478', 'ABI FALAFEL', 'Trubarjeva cesta 40, 1000 Ljubljana', 'Ljubljana', 46.052447, 14.510969, 9.0, 3.81, 'Ponedeljek: 11:00 - 21:00
Torek: 11:00 - 21:00
Sreda: 11:00 - 22:00
Četrtek: 11:00 - 21:00
Petek: 11:00 - 22:00
Sobota: 11:00 - 22:00
Nedelja: 11:00 - 22:00', null, array['Brezmesno','Odprt ob vikendih']::text[], 4),
  ('3316', 'Aga kebab', 'Litijska cesta 140, 1000 Ljubljana', 'Ljubljana', 46.080483, 14.496259, 6.02, 0.83, 'Med tednom: 09:00 - 21:00
Sobota: 09:00 - 21:00
Nedelja: 09:00 - 21:00', null, array['Odprt ob vikendih']::text[], 5),
  ('2999', 'Ajda burgers & more BTC', 'Šmartinska cesta 152, 1000 Ljubljana', 'Ljubljana', 46.068108, 14.542046, 8.89, 3.7, 'Med tednom: 09:00 - 22:00
Sobota: 11:00 - 22:00
Nedelja: 11:00 - 22:00', null, array['Brezmesno','Odprt ob vikendih']::text[], 4),
  ('2549', 'Ajda burgers & more postaja', 'Trg OF 13, 1000 Ljubljana', 'Ljubljana', 46.057423, 14.509497, 7.59, 2.4, 'Med tednom: 08:00 - 22:00
Sobota: 08:00 - 22:00
Nedelja: 08:00 - 22:00', null, array['Brezmesno','Odprt ob vikendih']::text[], 5),
  ('3347', 'AL YASMIN arabska restavracija', 'Slovenska cesta 56, 1000 Ljubljana', 'Ljubljana', 46.056163, 14.506251, 9.0, 3.81, 'Ponedeljek: 11:00 - 22:00
Torek: 10:00 - 22:00
Sreda: 10:00 - 22:00
Četrtek: 10:00 - 22:00
Petek: 10:00 - 22:00
Sobota: 10:00 - 22:00
Nedelja: 10:00 - 22:00', null, array['Brezmesno','Odprt ob vikendih']::text[], 5),
  ('3332', 'ART kavarna Odeon', 'Ulica Prekomorskih brigad 4, 6310 Izola/Isola', 'Izola', 45.535471, 13.65936, 9.0, 3.81, 'Med tednom: 11:00 - 15:00
Sobota: Zaprto
Nedelja: Zaprto', null, array['Brezmesno','Prava izbira']::text[], null),
  ('3275', 'Avokado', 'Gortanov trg 4, 6000 Koper/Capodistria', 'Koper', 45.54622, 13.728149, 9.0, 3.81, 'Ponedeljek: 10:30 - 17:00
Torek: 10:30 - 17:00
Sreda: 10:30 - 17:00
Četrtek: 10:30 - 17:00
Petek: 10:30 - 14:30
Sobota: Zaprto
Nedelja: Zaprto', null, array['Brezmesno','Celiakiji prijazni obroki']::text[], 4),
  ('2147', 'Azijska restavracija Han', 'Kongresni trg 3, 1000 Ljubljana', 'Ljubljana', 46.050605, 14.504546, 9.0, 3.81, 'Med tednom: 11:00 - 21:00
Sobota: 11:00 - 21:00
Nedelja: Zaprto', null, array['Brezmesno','Odprt ob vikendih']::text[], 4),
  ('3042', 'Bar Moment', 'Litostrojska cesta 44E, 1000 Ljubljana', 'Ljubljana', 46.078743, 14.495953, 8.0, 2.81, 'Med tednom: 10:00 - 16:30
Sobota: Zaprto
Nedelja: Zaprto', null, array['Brezmesno']::text[], 5),
  ('3207', 'Baščaršija Koper Carpacciov trg', 'Carpacciov trg 6, 6000 Koper/Capodistria', 'Koper', 45.547816, 13.725958, 9.0, 3.81, 'Med tednom: 11:00 - 22:00
Sobota: 11:00 - 22:00
Nedelja: 11:00 - 22:00', null, array['Brezmesno','Odprt ob vikendih']::text[], 4),
  ('3259', 'Baščaršija Ljubljana Trubarjeva', 'Trubarjeva cesta 52, 1000 Ljubljana', 'Ljubljana', 46.05226, 14.512463, 9.0, 3.81, 'Med tednom: 10:00 - 22:00
Sobota: 10:00 - 22:00
Nedelja: 10:00 - 22:00', null, array['Brezmesno','Odprt ob vikendih']::text[], 5),
  ('3237', 'Baščaršija Maribor Gosposvetska', 'Gosposvetska cesta 43c, 2000 Maribor', 'Maribor', 46.562084, 15.632309, 8.6, 3.41, 'Med tednom: 11:00 - 22:00
Sobota: 11:00 - 22:00
Nedelja: 11:00 - 22:00', null, array['Brezmesno','Celiakiji prijazni obroki','Odprt ob vikendih']::text[], 4),
  ('2102', 'Biotehniški izobraževalni center Ljubljana', 'Ižanska cesta 10, 1000 Ljubljana', 'Ljubljana', 46.0397, 14.513031, 7.5, 2.31, 'Med tednom: 10:30 - 14:30
Sobota: Zaprto
Nedelja: Zaprto', null, array['Brezmesno','Javni zavod']::text[], 4),
  ('2103', 'Biotehniški izobraževalni center Ljubljana', 'Cesta v Mestni log 47, 1000 Ljubljana', 'Ljubljana', 46.036926, 14.49287, 7.5, 2.31, 'Med tednom: 10:30 - 14:30
Sobota: Zaprto
Nedelja: Zaprto', null, array['Brezmesno','Javni zavod']::text[], 3),
  ('2862', 'Bistro Arty', 'Slovenska ulica 20, 2000 Maribor', 'Maribor', 46.560381, 15.64577, 9.0, 3.81, 'Ponedeljek: 10:30 - 14:30
Torek: 10:30 - 14:30
Sreda: 10:30 - 14:30
Četrtek: 10:30 - 14:30
Petek: 10:30 - 14:30
Sobota: Zaprto
Nedelja: Zaprto', null, array['Brezmesno']::text[], 4),
  ('3331', 'Bistro Luft', 'Mirce 20, 5270 Ajdovščina', 'Ajdovščina', 45.883391, 13.892009, 9.0, 3.81, 'Med tednom: 10:00 - 14:00
Sobota: Zaprto
Nedelja: Zaprto', null, array['Brezmesno','Dostop za invalide']::text[], 5),
  ('3280', 'Bistro Situla', 'Dilančeva ulica 1, 8000 Novo mesto', 'Novo mesto', 45.804333, 15.170062, 9.0, 3.81, 'Med tednom: 10:00 - 14:00
Sobota: Zaprto
Nedelja: Zaprto', null, array['Brezmesno','Dostop za invalide']::text[], 4),
  ('3221', 'Bistro Slovely', 'Kardeljeva ploščad 5, 1000 Ljubljana', 'Ljubljana', 46.075583, 14.513194, 8.74, 3.55, 'Med tednom: 10:00 - 16:00
Sobota: Zaprto
Nedelja: Zaprto', null, array['Brezmesno','Solatni bar']::text[], 5),
  ('2821', 'BISTRO VILLA DOMUS', 'Vojkovo nabrežje 12, 6000 Koper/Capodistria', 'Koper', 45.545517, 13.733073, 8.19, 3.0, 'Ponedeljek: 11:00 - 17:00
Torek: 11:00 - 17:00
Sreda: 11:00 - 17:00
Četrtek: 11:00 - 17:00
Petek: 11:00 - 17:00
Sobota: Zaprto
Nedelja: Zaprto', null, array['Brezmesno','Dostop za invalide']::text[], 5),
  ('1645', 'Bohor', 'Kidričeva ulica 23, 3250 Rogaška Slatina', 'Rogaška Slatina', 46.233861, 15.637723, 9.0, 3.81, 'Med tednom: 10:00 - 22:00
Sobota: 10:00 - 22:00
Nedelja: 10:00 - 22:00', null, array['Brezmesno','Dostop za invalide','Odprt ob vikendih']::text[], 4),
  ('3109', 'Bolnišnična restavracija Splošne bolnišnice Jesenice', 'Cesta maršala Tita 112, 4270 Jesenice', 'Jesenice', 46.442878, 14.036959, 7.0, 1.81, 'Med tednom: 09:30 - 14:00
Sobota: Zaprto
Nedelja: Zaprto', null, array['Brezmesno','Javni zavod']::text[], 5),
  ('3173', 'Burek Olimpija Rimska', 'Rimska cesta 13, 1000 Ljubljana', 'Ljubljana', 46.047428, 14.499858, 5.19, 0.0, 'Med tednom: 09:00 - 21:00
Sobota: 09:00 - 13:00
Nedelja: Zaprto', null, array['Odprt ob vikendih']::text[], 4),
  ('3067', 'BURGER TIME', 'Trubarjeva 47, 1000 Ljubljana', 'Ljubljana', 46.052523, 14.511786, 9.0, 3.81, 'Med tednom: 11:00 - 22:00
Sobota: 12:00 - 22:00
Nedelja: 12:00 - 22:00', null, array['Brezmesno','Odprt ob vikendih']::text[], 4),
  ('1161', 'Cantante cafe Tabor', 'Ulica Pariške komune 37, 2000 Maribor', 'Maribor', 46.548452, 15.643061, 8.64, 3.45, 'Med tednom: 10:00 - 20:00
Sobota: 12:00 - 20:00
Nedelja: 12:00 - 20:00', null, array['Brezmesno','Odprt ob vikendih']::text[], 4),
  ('1673', 'Cantante cafe Tabor - DOSTAVA', 'Ulica Pariške komune 37, 2000 Maribor', 'Maribor', 46.548452, 15.643061, 9.0, 3.81, 'Med tednom: 10:00 - 20:00
Sobota: 12:00 - 20:00
Nedelja: 12:00 - 20:00', null, array['Brezmesno','Dostava','Odprt ob vikendih']::text[], 4),
  ('3176', 'Cantina QUE PASA', 'Trg osvobodilne fronte 13, 1000 Ljubljana', 'Ljubljana', 46.057423, 14.509497, 8.69, 3.5, 'Med tednom: 08:00 - 21:00
Sobota: 08:00 - 21:00
Nedelja: Zaprto', null, array['Brezmesno','Odprt ob vikendih']::text[], 5),
  ('3375', 'Cappuccino Svetilnik Izola', 'Kopališka cesta 14, 6310 Izola/Isola', 'Izola', 45.541064, 13.656568, 9.0, 3.81, 'Med tednom: 12:00 - 17:00
Sobota: 12:00 - 17:00
Nedelja: 12:00 - 17:00', null, array['Brezmesno','Dostop za invalide','Odprt ob vikendih']::text[], 5),
  ('3171', 'Chutys Europark Maribor', 'Pobreška cesta 18, 2000 Maribor', 'Maribor', 46.553781, 15.653292, 9.0, 3.81, 'Med tednom: 11:00 - 22:00
Sobota: 12:00 - 22:00
Nedelja: Zaprto', null, array['Brezmesno','Dostop za invalide','Odprt ob vikendih']::text[], 4),
  ('1568', 'City grill', 'Slovenska 18, 2000 Maribor', 'Maribor', 46.560345, 15.645892, 8.14, 2.95, 'Ponedeljek: 09:00 - 19:30
Torek: 09:00 - 19:30
Sreda: 09:00 - 19:30
Četrtek: 09:00 - 19:30
Petek: 09:00 - 19:00
Sobota: Zaprto
Nedelja: Zaprto', null, array['Brezmesno','Dostop za invalide']::text[], 4),
  ('1569', 'City grill - DOSTAVA', 'Slovenska 18, 2000 Maribor', 'Maribor', 46.560345, 15.645892, 8.34, 3.15, 'Ponedeljek: 09:00 - 19:00
Torek: 09:00 - 19:00
Sreda: 09:00 - 19:00
Četrtek: 09:00 - 19:00
Petek: 09:00 - 19:00
Sobota: Zaprto
Nedelja: Zaprto', null, array['Brezmesno','Dostava']::text[], 4),
  ('3114', 'Čevabdžinica Sarajevo84', 'Gramšijev trg 8, 6000 Koper/Capodistria', 'Koper', 45.547224, 13.735446, 8.6, 3.41, 'Med tednom: 10:00 - 22:00
Sobota: 12:00 - 22:00
Nedelja: 12:00 - 22:00', null, array['Brezmesno','Odprt ob vikendih']::text[], 5),
  ('3234', 'Čevabdžinica Sarajevo84 (Tomažičev trg)', 'Tomažičev trg 1, 6000 Koper/Capodistria', 'Koper', 45.546866, 13.726637, 8.6, 3.41, 'Med tednom: 10:00 - 22:00
Sobota: 12:00 - 22:00
Nedelja: 12:00 - 22:00', null, array['Brezmesno','Odprt ob vikendih']::text[], 4),
  ('3286', 'Čewapi Citypark Ljubljana', 'Moskovskova ulica 4, 1000 Ljubljana', 'Ljubljana', 46.056947, 14.505752, 9.0, 3.81, 'Med tednom: 09:00 - 21:00
Sobota: 09:00 - 21:00
Nedelja: Zaprto', null, array['Brezmesno','Dostop za invalide','Odprt ob vikendih']::text[], 4),
  ('3285', 'Čewapi Ljubljana Center', 'Cankarjeva 6, 1000 Ljubljana', 'Ljubljana', 46.052794, 14.502546, 9.0, 3.81, 'Med tednom: 10:00 - 22:00
Sobota: 10:00 - 22:00
Nedelja: 12:00 - 22:00', null, array['Brezmesno','Dostop za invalide','Odprt ob vikendih']::text[], 4),
  ('1485', 'DA BU DA, Azijska restavracija', 'Šubičeva 1a, 1000 Ljubljana', 'Ljubljana', 46.051439, 14.50005, 9.0, 3.81, 'Med tednom: 11:00 - 21:00
Sobota: 12:00 - 21:00
Nedelja: 12:00 - 17:00', null, array['Brezmesno','Solatni bar','Odprt ob vikendih']::text[], 4),
  ('2326', 'Das ist Valter Kranj', 'Cesta 1.maja 1a, 4000 Kranj', 'Kranj', 46.233399, 14.362068, 9.0, 3.81, 'Med tednom: 10:00 - 22:00
Sobota: 12:00 - 22:00
Nedelja: 12:00 - 22:00', null, array['Brezmesno','Odprt ob vikendih']::text[], 5),
  ('2951', 'Das ist Valter Ljubljana center', 'Borštnikov trg 3, 1000 Ljubljana', 'Ljubljana', 46.047864, 14.499144, 9.0, 3.81, 'Med tednom: 10:00 - 22:00
Sobota: 12:00 - 22:00
Nedelja: 12:00 - 21:00', null, array['Brezmesno','Odprt ob vikendih']::text[], 4),
  ('2131', 'Das ist Valter Ljubljana Šmartinska', 'Šmartinska cesta 3, 1000 Ljubljana', 'Ljubljana', 46.056282, 14.519282, 9.0, 3.81, 'Med tednom: 10:00 - 22:00
Sobota: 12:00 - 22:00
Nedelja: 12:00 - 22:00', null, array['Brezmesno','Odprt ob vikendih']::text[], 5),
  ('2252', 'Das ist Valter Škofja Loka', 'Kidričeva cesta 8c, 4220 Škofja Loka', 'Škofja Loka', 46.167436, 14.310582, 9.0, 3.81, 'Med tednom: 10:00 - 22:00
Sobota: 12:00 - 22:00
Nedelja: 12:00 - 22:00', null, array['Brezmesno','Odprt ob vikendih']::text[], 4),
  ('3145', 'Dijaški dom', 'Sončna pot 20, 6320 Portorož/Portorose', 'Portorož', 45.516957, 13.583556, 8.02, 2.83, 'Ponedeljek: 11:00 - 15:00
Torek: 11:00 - 15:00
Sreda: 11:00 - 15:00
Četrtek: 11:00 - 15:00
Petek: 10:00 - 14:00
Sobota: Zaprto
Nedelja: Zaprto', null, array['Brezmesno','Solatni bar','Dostop za invalide']::text[], 4),
  ('1090', 'Dijaški dom Lizike Jančar', 'Titova cesta 24a, 2000 Maribor', 'Maribor', 46.548709, 15.648838, 7.0, 1.81, 'Med tednom: 12:00 - 17:00
Sobota: Zaprto
Nedelja: Zaprto', null, array['Brezmesno','Javni zavod']::text[], 4),
  ('1502', 'Dijaški dom Poljane', 'Potočnikova ulica 3, 1000 Ljubljana', 'Ljubljana', 46.049237, 14.523332, 6.66, 1.47, 'Ponedeljek: 11:00 - 15:00
Torek: 11:00 - 15:00
Sreda: 11:00 - 15:00
Četrtek: 11:00 - 15:00
Petek: 11:00 - 15:00
Sobota: Zaprto
Nedelja: Zaprto', null, array['Brezmesno','Javni zavod']::text[], 4),
  ('2111', 'Dijaški dom Tabor', 'Kotnikova 4, 1000 Ljubljana', 'Ljubljana', 46.053416, 14.513773, 7.1, 1.91, 'Med tednom: 12:00 - 16:00
Sobota: Zaprto
Nedelja: Zaprto', null, array['Brezmesno','Javni zavod']::text[], 5),
  ('1314', 'Dijaški dom Vič', 'Gerbičeva 53, 1000 Ljubljana', 'Ljubljana', 46.039397, 14.488368, 7.0, 1.81, 'Ponedeljek: 11:30 - 16:30
Torek: 11:30 - 16:30
Sreda: 11:30 - 16:30
Četrtek: 11:30 - 16:30
Petek: 11:30 - 16:30
Sobota: Zaprto
Nedelja: Zaprto', null, array['Brezmesno','Javni zavod']::text[], 5),
  ('1501', 'Dijaški in študentski dom Novo mesto', 'Šegova ulica 115, 8000 Novo mesto', 'Novo mesto', 45.793596, 15.160149, 6.5, 1.31, 'Ponedeljek: 09:30 - 15:00
Torek: 09:30 - 15:00
Sreda: 09:30 - 15:00
Četrtek: 09:30 - 15:00
Petek: 09:30 - 14:00
Sobota: Zaprto
Nedelja: Zaprto', null, array['Brezmesno','Javni zavod']::text[], 2),
  ('3381', 'Do kosti Pizzeria Chianti', 'Rozmanova ulica 25, 8000 Novo mesto', 'Novo mesto', 45.805404, 15.165251, 9.0, 3.81, 'Med tednom: 09:30 - 19:00
Sobota: 12:00 - 19:00
Nedelja: Zaprto', null, array['Dostop za invalide','Odprt ob vikendih']::text[], 5),
  ('2552', 'Dobra hiša', 'Stegne 11a, 1000 Ljubljana', 'Ljubljana', 46.08289, 14.487942, 9.0, 3.81, 'Med tednom: 09:30 - 15:00
Sobota: Zaprto
Nedelja: Zaprto', null, array['Solatni bar','Dostop za invalide']::text[], 5),
  ('2298', 'Dobra hiša Rudnik', 'Jurčkova cesta 223, 1000 Ljubljana', 'Ljubljana', 46.021839, 14.535914, 9.0, 3.81, 'Med tednom: 10:00 - 20:00
Sobota: 10:00 - 20:00
Nedelja: Zaprto', null, array['Brezmesno','Odprt ob vikendih']::text[], 4),
  ('1578', 'Dobrote vzhoda', 'Celovška cesta 69 a, 1000 Ljubljana', 'Ljubljana', 46.063533, 14.494655, 9.0, 3.81, 'Ponedeljek: 11:00 - 19:00
Torek: Zaprto
Sreda: 11:00 - 19:00
Četrtek: 11:00 - 19:00
Petek: 11:00 - 19:00
Sobota: 12:00 - 20:00
Nedelja: Zaprto', null, array['Brezmesno','Odprt ob vikendih']::text[], 5),
  ('3370', 'Dodo Pizza Koper', 'Ljubljanska cesta 2a, 6000 Koper/Capodistria', 'Koper', 45.544249, 13.730856, 8.14, 2.95, 'Ponedeljek: 11:00 - 23:00
Torek: 11:00 - 23:00
Sreda: 11:00 - 23:00
Četrtek: 11:00 - 23:00
Petek: 11:00 - 00:00
Sobota: 11:00 - 00:00
Nedelja: 11:00 - 00:00', null, array['Brezmesno','Odprt ob vikendih']::text[], 5),
  ('3350', 'Dodo Pizza Ljubljana-Bežigrad', 'Dunajska cesta 105, 1000 Ljubljana', 'Ljubljana', 46.073975, 14.510798, 8.14, 2.95, 'Med tednom: 09:00 - 22:00
Sobota: 09:00 - 22:00
Nedelja: 09:00 - 22:00', null, array['Brezmesno','Odprt ob vikendih']::text[], 4),
  ('3349', 'Dodo Pizza Ljubljana-center', 'Ilirska ulica 4, 1000 Ljubljana', 'Ljubljana', 46.052871, 14.514374, 8.14, 2.95, 'Med tednom: 09:00 - 22:00
Sobota: 09:00 - 22:00
Nedelja: 09:00 - 22:00', null, array['Brezmesno','Odprt ob vikendih']::text[], 4),
  ('3351', 'Dodo Pizza ljubljana-Fužine', 'Nove Fužine 45, 1000 Ljubljana', 'Ljubljana', 46.054872, 14.564704, 8.14, 2.95, 'Med tednom: 09:00 - 23:00
Sobota: 09:00 - 23:00
Nedelja: 09:00 - 23:00', null, array['Brezmesno','Odprt ob vikendih']::text[], 5),
  ('3191', 'Domača pekarna Bežigrad', 'Dunajska cesta 113, 1000 Ljubljana', 'Ljubljana', 46.074803, 14.510908, 6.12, 0.93, 'Med tednom: 07:00 - 19:00
Sobota: Zaprto
Nedelja: 07:00 - 17:00', null, array['Brezmesno','Odprt ob vikendih']::text[], 5),
  ('3369', 'EASY BEER', 'Ferrarska ulica 30, 6000 Koper/Capodistria', 'Koper', 45.547239, 13.738292, 9.0, 3.81, 'Med tednom: 10:00 - 21:00
Sobota: 12:00 - 21:00
Nedelja: 12:00 - 21:00', null, array['Brezmesno','Odprt ob vikendih']::text[], 5),
  ('3243', 'Eda restavracija', 'Delpinova ulica 18b, 5000 Nova Gorica', 'Nova Gorica', 45.95533, 13.646006, 8.0, 2.81, 'Med tednom: 10:00 - 14:00
Sobota: Zaprto
Nedelja: Zaprto', null, array['Solatni bar','Dostop za invalide','Prava izbira']::text[], 4),
  ('3399', 'Ej babi', 'Slovenska ulica 9, 2000 Maribor', 'Maribor', 46.560268, 15.646895, 9.0, 3.81, 'Ponedeljek: 10:00 - 18:00
Torek: 10:00 - 18:00
Sreda: 10:00 - 18:00
Četrtek: 10:00 - 18:00
Petek: 10:00 - 18:00
Sobota: Zaprto
Nedelja: Zaprto', null, array['Brezmesno']::text[], 4),
  ('3292', 'Fari''s', 'Adamič Lundrovo nabrežje 3, 1000 Ljubljana', 'Ljubljana', 46.051382, 14.508239, 9.0, 3.81, 'Med tednom: 10:00 - 00:00
Sobota: 10:00 - 00:00
Nedelja: 10:00 - 00:00', null, array['Brezmesno','Odprt ob vikendih']::text[], 4),
  ('2589', 'Fari''s', 'Miklošičeva 34, 1000 Ljubljana', 'Ljubljana', 46.056776, 14.508371, 9.0, 3.81, 'Med tednom: 10:00 - 00:00
Sobota: 10:00 - 00:00
Nedelja: 10:00 - 00:00', null, array['Brezmesno','Odprt ob vikendih']::text[], 4),
  ('3192', 'Fast food & pekarna PLAVA LAGUNA', 'Linhartova cesta 11, 1000 Ljubljana', 'Ljubljana', 46.064646, 14.510322, 6.12, 0.93, 'Med tednom: 07:00 - 19:00
Sobota: Zaprto
Nedelja: 07:00 - 17:00', null, array['Brezmesno','Odprt ob vikendih']::text[], 4),
  ('3282', 'Fast food Ajda', 'Ajdovščina 2, 1000 Ljubljana', 'Ljubljana', 46.053568, 14.504556, 6.04, 0.85, 'Med tednom: 10:00 - 22:00
Sobota: 10:00 - 22:00
Nedelja: Zaprto', null, array['Brezmesno','Odprt ob vikendih']::text[], 4),
  ('3382', 'Fast food LEON', 'Glinškova ploščad 2, 1000 Ljubljana', 'Ljubljana', 46.090176, 14.508991, 6.4, 1.21, 'Med tednom: 09:00 - 22:00
Sobota: 09:00 - 22:00
Nedelja: 09:00 - 22:00', null, array['Odprt ob vikendih']::text[], 5),
  ('3158', 'Fast food Magic', 'Pristaniška ulica 2, 6000 Koper/Capodistria', 'Koper', 45.546133, 13.726002, 6.52, 1.33, 'Ponedeljek: 08:00 - 22:00
Torek: 08:00 - 22:00
Sreda: 08:00 - 22:00
Četrtek: 08:00 - 22:00
Petek: 08:00 - 22:00
Sobota: 08:00 - 22:00
Nedelja: 08:00 - 22:00', null, array['Brezmesno','Odprt ob vikendih']::text[], 4),
  ('3391', 'FAST FOOD PRI ŠTUKU', 'Gosposvetska cesta 84, 2000 Maribor', 'Maribor', 46.563473, 15.627847, 7.64, 2.45, 'Ponedeljek: 09:00 - 23:59
Torek: 09:00 - 23:59
Sreda: 09:00 - 23:59
Četrtek: 09:00 - 23:59
Petek: 09:00 - 23:59
Sobota: 09:00 - 23:59
Nedelja: 11:00 - 23:59', null, array['Brezmesno','Odprt ob vikendih']::text[], 5),
  ('3165', 'Fast food Slast', 'Slovenska cesta 51, 1000 Ljubljana', 'Ljubljana', 46.055613, 14.504863, 6.54, 1.35, 'Med tednom: 08:00 - 22:00
Sobota: 08:00 - 22:00
Nedelja: 08:00 - 22:00', null, array['Brezmesno','Odprt ob vikendih']::text[], 5),
  ('3335', 'FOOD POINT NINETY NINE', 'Ferrarska ulica 5b, 6000 Koper/Capodistria', 'Koper', 45.544737, 13.733706, 6.64, 1.45, 'Med tednom: 10:00 - 22:00
Sobota: 12:00 - 22:00
Nedelja: 12:00 - 22:00', null, array['Brezmesno','Odprt ob vikendih']::text[], 5),
  ('2849', 'Forum', 'Petkovškovo nabrežje 25, 1000 Ljubljana', 'Ljubljana', 46.052123, 14.509031, 9.0, 3.81, 'Med tednom: 11:00 - 21:00
Sobota: 11:00 - 21:00
Nedelja: 11:00 - 21:00', null, array['Brezmesno','Solatni bar','Odprt ob vikendih']::text[], 4),
  ('3291', 'Galaksija Trebnje', 'Podjetniška ulica 13, 8210 Trebnje', 'Trebnje', 45.913802, 15.027029, 8.8, 3.61, 'Med tednom: 09:30 - 13:00
Sobota: Zaprto
Nedelja: Zaprto', null, array['Dostop za invalide']::text[], null),
  ('2591', 'Garač - Restavracija "M"', 'Šolska cesta 2, 4220 Škofja Loka', 'Škofja Loka', 46.167946, 14.306667, 8.2, 3.01, 'Med tednom: 07:00 - 22:00
Sobota: 08:00 - 22:00
Nedelja: 10:00 - 22:00', null, array['Brezmesno','Odprt ob vikendih']::text[], 5),
  ('3308', 'Gaudi & Naan', 'Trubarjeva 7, 1000 Ljubljana', 'Ljubljana', 46.052013, 14.507223, 9.0, 3.81, 'Med tednom: 11:00 - 20:00
Sobota: Zaprto
Nedelja: Zaprto', null, '{}'::text[], 5),
  ('3223', 'Gig Bar & Burger', 'Jurčkova cesta 223, 1000 Ljubljana', 'Ljubljana', 46.021839, 14.535914, 9.0, 3.81, 'Med tednom: 11:00 - 22:00
Sobota: 11:00 - 22:00
Nedelja: 14:00 - 22:00', null, array['Brezmesno','Dostop za invalide','Odprt ob vikendih']::text[], 4),
  ('3352', 'Gostilna Godec', 'Paplerjeva ulica 12, 1353 Borovnica', 'Borovnica', 45.916368, 14.365227, 9.0, 3.81, 'Med tednom: 12:00 - 18:00
Sobota: 12:00 - 18:00
Nedelja: 12:00 - 18:00', null, array['Brezmesno','Odprt ob vikendih']::text[], 5),
  ('3299', 'Gostilna in picerija Guliver', 'Vilharjeva 43, 1000 Ljubljana', 'Ljubljana', 46.060051, 14.519408, 9.0, 3.81, 'Med tednom: 09:00 - 21:00
Sobota: 10:00 - 21:00
Nedelja: 10:00 - 21:00', null, array['Brezmesno','Odprt ob vikendih']::text[], 5),
  ('3300', 'Gostilna in picerija Guliver - dostava', 'Vilharjeva 43, 1000 Ljubljana', 'Ljubljana', 46.060051, 14.519408, 9.0, 3.81, 'Med tednom: 09:00 - 21:00
Sobota: 10:00 - 21:00
Nedelja: 10:00 - 21:00', null, array['Brezmesno','Dostava','Odprt ob vikendih']::text[], 4),
  ('2411', 'Gostilna in picerija JERNEJEV HRAM', 'Ljubljanska cesta 22, 8000 Novo mesto', 'Novo mesto', 45.814286, 15.153627, 9.0, 3.81, 'Ponedeljek: Zaprto
Torek: 10:30 - 18:00
Sreda: 10:30 - 18:00
Četrtek: 10:30 - 18:00
Petek: 10:30 - 18:00
Sobota: 11:00 - 16:00
Nedelja: Zaprto', null, array['Brezmesno','Solatni bar','Dostop za invalide','Odprt ob vikendih']::text[], null),
  ('3294', 'Gostilna in Pizzerija Kovač', 'Graška cesta 64, 1270 Litija', 'Litija', 46.065053, 14.817289, 9.0, 3.81, 'Ponedeljek: 09:30 - 14:00
Torek: 09:30 - 14:00
Sreda: 09:30 - 14:00
Četrtek: 09:30 - 21:00
Petek: 09:30 - 21:00
Sobota: Zaprto
Nedelja: 12:00 - 20:00', null, array['Solatni bar','Dostop za invalide','Odprt ob vikendih']::text[], null),
  ('2543', 'Gostilna Pod Škalcami', 'Oplotniška cesta 5, 3210 Slovenske Konjice', 'Slovenske Konjice', 46.342454, 15.430227, 6.02, 0.83, 'Med tednom: 08:00 - 12:00
Sobota: Zaprto
Nedelja: Zaprto', null, array['Brezmesno']::text[], 4),
  ('2346', 'Gostilna pod Škalcami - DOSTAVA', 'Oplotniška cesta 5, 3210 Slovenske Konjice', 'Slovenske Konjice', 46.342454, 15.430227, 6.02, 0.83, 'Med tednom: 08:00 - 12:00
Sobota: Zaprto
Nedelja: Zaprto', null, array['Brezmesno','Dostava']::text[], 5),
  ('3123', 'Gostilna Stara Brajda', 'Travniška ulica 4, 3000 Celje', 'Celje', 46.245784, 15.267238, 8.54, 3.35, 'Med tednom: 10:00 - 16:00
Sobota: Zaprto
Nedelja: Zaprto', null, array['Brezmesno']::text[], 5),
  ('3126', 'Gostilna Štorklja', 'Šlajmerjeva 1a, 1000 Ljubljana', 'Ljubljana', 46.054102, 14.523948, 9.0, 3.81, 'Med tednom: 11:00 - 19:00
Sobota: 12:00 - 17:00
Nedelja: Zaprto', null, array['Brezmesno','Odprt ob vikendih']::text[], 4),
  ('1123', 'Gostilna Zlati lev', 'Vodnikov trg 4, 2000 Maribor', 'Maribor', 46.557963, 15.640978, 8.14, 2.95, 'Med tednom: 09:00 - 21:00
Sobota: 10:00 - 21:00
Nedelja: 10:00 - 21:00', null, array['Brezmesno','Solatni bar','Odprt ob vikendih']::text[], 4),
  ('2185', 'Gostilnica in pivnica Kratochwill', 'Kolodvorska ulica 14, 1000 Ljubljana', 'Ljubljana', 46.05648, 14.509971, 9.0, 3.81, 'Med tednom: 10:00 - 22:00
Sobota: 11:00 - 22:00
Nedelja: 11:00 - 22:00', null, array['Brezmesno','Odprt ob vikendih']::text[], 4),
  ('3060', 'Gostilnica in pivnica Vič', 'Trg mladinskih delovnih brigad 8, 1000 Ljubljana', 'Ljubljana', 46.04716, 14.495591, 8.02, 2.83, 'Med tednom: 10:00 - 14:30
Sobota: Zaprto
Nedelja: Zaprto', null, array['Brezmesno']::text[], 4),
  ('1834', 'Gostilnica in pizzerija Kratochwill', 'Jurčkova 225, 1000 Ljubljana', 'Ljubljana', 46.020267, 14.536676, 9.0, 3.81, 'Med tednom: 10:00 - 22:00
Sobota: 10:00 - 22:00
Nedelja: Zaprto', null, array['Brezmesno','Dostop za invalide','Odprt ob vikendih']::text[], 4),
  ('1835', 'Gostilnica in pizzerija Kratochwill', 'Šmartinska 152, 1000 Ljubljana', 'Ljubljana', 46.069308, 14.548477, 9.0, 3.81, 'Med tednom: 13:00 - 20:00
Sobota: 13:00 - 20:00
Nedelja: Zaprto', null, array['Dostop za invalide','Odprt ob vikendih']::text[], 4),
  ('3394', 'GOSTILNICA KENIK', 'Strossmayerjeva ulica 11, 2000 Maribor', 'Maribor', 46.559385, 15.64162, 8.4, 3.21, 'Ponedeljek: 09:00 - 21:00
Torek: 09:00 - 21:00
Sreda: 09:00 - 21:00
Četrtek: 09:00 - 21:00
Petek: 09:00 - 21:00
Sobota: 09:00 - 16:00
Nedelja: 09:00 - 20:00', null, array['Brezmesno','Solatni bar','Odprt ob vikendih']::text[], 5),
  ('2995', 'Gostilnica Meta in Bazilika', 'Snežniška ulica 1, 1000 Ljubljana', 'Ljubljana', 46.047549, 14.499545, 9.0, 3.81, 'Ponedeljek: 10:00 - 17:00
Torek: 10:00 - 17:00
Sreda: 10:00 - 17:00
Četrtek: 10:00 - 17:00
Petek: 10:00 - 17:00
Sobota: Zaprto
Nedelja: Zaprto', null, array['Brezmesno','Solatni bar']::text[], 4),
  ('1213', 'Gostilnica Namanova', 'Podgorska cesta 2, 2380 Slovenj Gradec', 'Slovenj Gradec', 46.507254, 15.076403, 7.5, 2.31, 'Med tednom: 10:00 - 14:00
Sobota: Zaprto
Nedelja: Zaprto', null, array['Brezmesno','Solatni bar','Dostop za invalide']::text[], 5),
  ('3305', 'Gostišče LOKA', 'Župančičevo sprehajališče 2, 8000 Novo mesto', 'Novo mesto', 45.804674, 15.161668, 9.0, 3.81, 'Med tednom: 11:00 - 16:00
Sobota: 12:00 - 16:00
Nedelja: 12:00 - 16:00', null, array['Solatni bar','Dostop za invalide','Odprt ob vikendih']::text[], 4),
  ('1847', 'Gostišče na trgu - Hiša kulinarike', 'Glavni trg 30, 8000 Novo mesto', 'Novo mesto', 45.803961, 15.169423, 9.0, 3.81, 'Med tednom: 09:00 - 15:00
Sobota: Zaprto
Nedelja: Zaprto', null, array['Brezmesno','Javni zavod']::text[], 5),
  ('3354', 'Grashka Deli', 'Trubarjeva cesta 72, 1000 Ljubljana', 'Ljubljana', 46.052106, 14.5072, 9.0, 3.81, 'Ponedeljek: 11:00 - 16:00
Torek: 11:00 - 16:00
Sreda: 11:00 - 16:00
Četrtek: 11:00 - 16:00
Petek: 11:00 - 16:00
Sobota: 11:00 - 15:00
Nedelja: Zaprto', null, array['Brezmesno','Dostop za invalide','Odprt ob vikendih']::text[], 5),
  ('1188', 'Gurmanski hram', 'Zagrebška cesta 92, 2000 Maribor', 'Maribor', 46.526547, 15.669288, 8.59, 3.4, 'Med tednom: 10:00 - 15:00
Sobota: Zaprto
Nedelja: Zaprto', null, array['Brezmesno','Solatni bar','Dostop za invalide']::text[], 4),
  ('1189', 'Gurmanski hram - DOSTAVA', 'Zagrebška cesta 92, 2000 Maribor', 'Maribor', 46.526547, 15.669288, 8.79, 3.6, 'Med tednom: 10:00 - 15:00
Sobota: Zaprto
Nedelja: Zaprto', null, array['Brezmesno','Dostava']::text[], 3),
  ('2355', 'Halo Katra - dostava', 'Središka ulica 4, 1000 Ljubljana', 'Ljubljana', 46.061348, 14.527299, 9.0, 3.81, 'Med tednom: 10:00 - 21:00
Sobota: 11:00 - 21:00
Nedelja: 11:00 - 21:00', null, array['Brezmesno','Dostava','Študentske ugodnosti','Odprt ob vikendih']::text[], 4),
  ('1514', 'Halo Pinki - dostava', 'Pod ježami 14, 1000 Ljubljana', 'Ljubljana', 46.057944, 14.528464, 9.0, 3.81, 'Ponedeljek: 10:00 - 20:00
Torek: 10:00 - 20:00
Sreda: 09:00 - 21:00
Četrtek: 09:00 - 21:00
Petek: 09:00 - 21:00
Sobota: 11:00 - 21:00
Nedelja: 11:00 - 21:00', null, array['Brezmesno','Dostava','Odprt ob vikendih']::text[], 4),
  ('3366', 'Halo Shaolin - dostava', 'Hacquetova ulica 5, 1000 Ljubljana', 'Ljubljana', 46.060631, 14.514628, 9.0, 3.81, 'Med tednom: 10:00 - 21:30
Sobota: 10:00 - 21:30
Nedelja: 10:00 - 21:30', null, array['Brezmesno','Dostava','Odprt ob vikendih']::text[], 3),
  ('2668', 'Hiša pod gradom', 'Streliška ulica 10, 1000 Ljubljana', 'Ljubljana', 46.049396, 14.511223, 9.0, 3.81, 'Med tednom: 11:00 - 16:00
Sobota: Zaprto
Nedelja: Zaprto', null, array['Brezmesno']::text[], 4),
  ('2430', 'Hit wok', 'Čopova 4, 1000 Ljubljana', 'Ljubljana', 46.051847, 14.505287, 9.0, 3.81, 'Med tednom: 10:00 - 22:00
Sobota: 10:00 - 22:00
Nedelja: 10:00 - 22:00', null, array['Brezmesno','Odprt ob vikendih']::text[], 4),
  ('3373', 'Hotel restavracija Prunk', 'Partizanska cesta 117, 6210 Sežana', 'Sežana', 45.702021, 13.846827, 8.0, 2.81, 'Med tednom: 09:30 - 15:00
Sobota: 12:00 - 22:00
Nedelja: 12:00 - 22:00', null, array['Brezmesno','Solatni bar','Dostop za invalide','Odprt ob vikendih']::text[], 5),
  ('2846', 'HotSpot bar&bistro', 'Kardeljeva ploščad 17, 1000 Ljubljana', 'Ljubljana', 46.074054, 14.516428, 9.0, 3.81, 'Med tednom: 10:00 - 15:00
Sobota: Zaprto
Nedelja: Zaprto', null, array['Brezmesno','Solatni bar']::text[], 4),
  ('3197', 'HUDA .', 'Cesta prvih borcev 7, 8250 Brežice', 'Brežice', 45.903039, 15.59233, 9.0, 3.81, 'Med tednom: 11:00 - 19:00
Sobota: 11:00 - 19:00
Nedelja: 11:00 - 19:00', null, array['Brezmesno','Odprt ob vikendih']::text[], 5),
  ('3387', 'IT`S WOK O`CLOCK', 'Kotnikova ulica 5, 1000 Ljubljana', 'Ljubljana', 46.054288, 14.51254, 9.0, 3.81, 'Med tednom: 10:00 - 21:00
Sobota: 11:00 - 21:00
Nedelja: 11:00 - 21:00', null, array['Brezmesno','Odprt ob vikendih']::text[], 4),
  ('3256', 'JOE PENA´S, mehiška restavracija', 'Cankarjeva cesta 6, 1000 Ljubljana', 'Ljubljana', 46.052794, 14.502546, 9.0, 3.81, 'Med tednom: 11:00 - 21:00
Sobota: 11:00 - 21:00
Nedelja: 12:00 - 21:00', null, array['Brezmesno','Solatni bar','Odprt ob vikendih']::text[], 4),
  ('3238', 'K16', 'Aškerčeva cesta 2, 1000 Ljubljana', 'Ljubljana', 46.04672, 14.500197, 7.8, 2.61, 'Med tednom: 08:00 - 17:00
Sobota: Zaprto
Nedelja: Zaprto', null, array['Dostop za invalide']::text[], 5),
  ('3302', 'Kampus food', 'Pivovarniška ulica 6, 1000 Ljubljana', 'Ljubljana', 46.058714, 14.501792, 8.64, 3.45, 'Med tednom: 11:00 - 15:00
Sobota: Zaprto
Nedelja: Zaprto', null, array['Brezmesno']::text[], 4),
  ('2581', 'KAPITAL', 'Kardeljeva ploščad 17, 1000 Ljubljana', 'Ljubljana', 46.074015, 14.516453, 5.19, 0.0, 'Med tednom: 08:00 - 17:00
Sobota: Zaprto
Nedelja: Zaprto', null, array['Brezmesno']::text[], 5),
  ('2644', 'Kitajska restavracija AZIJA', 'Gosposvetska ulica 1, 4000 Kranj', 'Kranj', 46.246117, 14.353085, 9.0, 3.81, 'Med tednom: 11:00 - 22:00
Sobota: 11:00 - 22:00
Nedelja: 11:00 - 22:00', null, array['Brezmesno','Odprt ob vikendih']::text[], 4),
  ('3264', 'Kitajska restavracija Beli labod 2', 'Jurčkova cesta 7, 1000 Ljubljana', 'Ljubljana', 46.032584, 14.515178, 9.0, 3.81, 'Ponedeljek: Zaprto
Torek: 11:00 - 22:00
Sreda: 11:00 - 22:00
Četrtek: 11:00 - 22:00
Petek: 11:00 - 22:00
Sobota: 11:00 - 22:00
Nedelja: 11:00 - 22:00', null, array['Brezmesno','Odprt ob vikendih']::text[], 5),
  ('2264', 'Kitajska restavracija Cesarska hiša', 'Ankaranska cesta 5B, 6000 Koper/Capodistria', 'Koper', 45.541507, 13.735879, 8.54, 3.35, 'Med tednom: 11:00 - 22:00
Sobota: 11:00 - 22:00
Nedelja: 11:00 - 22:00', null, array['Brezmesno','Odprt ob vikendih']::text[], 5),
  ('2635', 'Kitajska restavracija Dva zmaja', 'Kersnikova 31, 3000 Celje', 'Celje', 46.2391, 15.263821, 9.0, 3.81, 'Med tednom: 11:00 - 22:00
Sobota: 11:00 - 22:00
Nedelja: 11:00 - 22:00', null, array['Brezmesno','Odprt ob vikendih']::text[], 4),
  ('2950', 'Kitajska restavracija Han', 'Moskovska ulica 4, 1000 Ljubljana', 'Ljubljana', 46.07048, 14.550714, 9.0, 3.81, 'Med tednom: 11:00 - 21:00
Sobota: 11:00 - 21:00
Nedelja: Zaprto', null, array['Brezmesno','Dostop za invalide','Odprt ob vikendih']::text[], 4),
  ('3118', 'Kitajska restavracija Han - Aleja', 'Rakuševa ulica 1, 1000 Ljubljana', 'Ljubljana', 46.07829, 14.483678, 9.0, 3.81, 'Med tednom: 11:00 - 21:00
Sobota: 11:00 - 21:00
Nedelja: 11:00 - 21:00', null, array['Brezmesno','Dostop za invalide','Odprt ob vikendih']::text[], 4),
  ('2841', 'Kitajska restavracija Leteča zvezda', 'Cesta v mestni log 55, 1000 Ljubljana', 'Ljubljana', 46.036207, 14.489519, 8.72, 3.53, 'Med tednom: 10:00 - 22:00
Sobota: 10:00 - 22:00
Nedelja: Zaprto', null, array['Brezmesno','Odprt ob vikendih']::text[], 5),
  ('2842', 'Kitajska restavracija Leteča zvezda - dostava', 'Cesta v mestni log 55, 1000 Ljubljana', 'Ljubljana', 46.036207, 14.489519, 9.0, 3.81, 'Med tednom: 10:00 - 22:00
Sobota: 10:00 - 22:00
Nedelja: 10:00 - 22:00', null, array['Brezmesno','Dostava','Odprt ob vikendih']::text[], 4),
  ('2933', 'Kitajska restavracija Ming Zhu', 'Bazoviška ulica 6, 5000 Nova Gorica', 'Nova Gorica', 45.956308, 13.640135, 8.8, 3.61, 'Ponedeljek: Zaprto
Torek: 10:00 - 22:00
Sreda: 10:00 - 22:00
Četrtek: 10:00 - 22:00
Petek: 10:00 - 22:00
Sobota: 10:00 - 22:00
Nedelja: 10:00 - 22:00', null, array['Brezmesno','Odprt ob vikendih']::text[], 5),
  ('1415', 'Kitajska restavracija NANKING', 'Mačkovec 6, 8000 Novo mesto', 'Novo mesto', 45.826439, 15.192367, 8.6, 3.41, 'Med tednom: 10:00 - 22:00
Sobota: 11:00 - 22:00
Nedelja: 11:00 - 22:00', null, array['Brezmesno','Odprt ob vikendih']::text[], 5),
  ('1346', 'Kitajska restavracija Novi Šanghai', 'Kapitelska 5, 1000 Ljubljana', 'Ljubljana', 46.050863, 14.511475, 8.94, 3.75, 'Med tednom: 11:00 - 22:00
Sobota: 12:00 - 17:00
Nedelja: 12:00 - 22:00', null, array['Brezmesno','Odprt ob vikendih']::text[], 5),
  ('2446', 'Kitajska restavracija Šang Hai', 'Delavska ulica 11, 4270 Jesenice', 'Jesenice', 46.433446, 14.063569, 8.8, 3.61, 'Ponedeljek: Zaprto
Torek: 11:00 - 22:00
Sreda: 11:00 - 22:00
Četrtek: 11:00 - 22:00
Petek: 11:00 - 22:00
Sobota: 11:00 - 22:00
Nedelja: 11:00 - 22:00', null, array['Brezmesno','Odprt ob vikendih']::text[], 5),
  ('2761', 'Kitajska restavracija Zlata srna', 'Ulica Pohorskega bataljona 14, 2000 Maribor', 'Maribor', 46.554491, 15.6193, 8.34, 3.15, 'Med tednom: 10:30 - 22:00
Sobota: 10:30 - 22:00
Nedelja: 10:30 - 22:00', null, array['Brezmesno','Odprt ob vikendih']::text[], 5),
  ('2762', 'Kitajska restavracija Zlata srna - DOSTAVA', 'Ulica Pohorskega bataljona 14, 2000 Maribor', 'Maribor', 46.554491, 15.6193, 9.0, 3.81, 'Med tednom: 11:00 - 21:00
Sobota: 11:00 - 21:00
Nedelja: 11:00 - 21:00', null, array['Brezmesno','Dostava','Odprt ob vikendih']::text[], 4),
  ('1165', 'Kitajska restavracija Zvezda', 'Loška ulica 10, 2000 Maribor', 'Maribor', 46.556693, 15.650972, 8.69, 3.5, 'Ponedeljek: 10:00 - 21:00
Torek: 10:00 - 21:00
Sreda: 10:00 - 21:00
Četrtek: 10:00 - 21:00
Petek: 10:00 - 21:00
Sobota: 11:00 - 22:00
Nedelja: 11:00 - 20:00', null, array['Brezmesno','Odprt ob vikendih']::text[], 5),
  ('2265', 'Kitajska restavracja Cesarska hiša-DOSTAVA', 'Ankaranska cesta 5B, 6000 Koper/Capodistria', 'Koper', 45.541507, 13.735879, 9.0, 3.81, 'Med tednom: 11:00 - 22:00
Sobota: 11:00 - 22:00
Nedelja: 11:00 - 22:00', null, array['Brezmesno','Dostava','Odprt ob vikendih']::text[], 5),
  ('1610', 'Kitajski dvor', 'Dunajska cesta 29, 1000 Ljubljana', 'Ljubljana', 46.061737, 14.507618, 8.0, 2.81, 'Ponedeljek: Zaprto
Torek: 10:00 - 21:00
Sreda: 10:00 - 21:00
Četrtek: 10:00 - 21:00
Petek: 10:00 - 21:00
Sobota: 11:00 - 21:00
Nedelja: 11:00 - 21:00', null, array['Brezmesno','Odprt ob vikendih']::text[], 4),
  ('1911', 'Kitajski dvor', 'Teharska cesta 35, 3000 Celje', 'Celje', 46.231573, 15.276256, 8.0, 2.81, 'Med tednom: 10:00 - 22:00
Sobota: 10:00 - 22:00
Nedelja: 10:00 - 22:00', null, array['Brezmesno','Odprt ob vikendih']::text[], 5),
  ('2117', 'Kitajski dvor - dostava', 'Dunajska cesta 29, 1000 Ljubljana', 'Ljubljana', 46.062139, 14.507484, 9.0, 3.81, 'Ponedeljek: Zaprto
Torek: 10:00 - 21:00
Sreda: 10:00 - 21:00
Četrtek: 10:00 - 21:00
Petek: 10:00 - 21:00
Sobota: 11:00 - 21:00
Nedelja: 11:00 - 21:00', null, array['Brezmesno','Dostava','Odprt ob vikendih']::text[], 4),
  ('1164', 'Kitajski dvor - DOSTAVA', 'Teharska cesta 35, 3000 Celje', 'Celje', 46.23141, 15.276144, 9.0, 3.81, 'Med tednom: 10:00 - 22:00
Sobota: 10:00 - 22:00
Nedelja: 10:00 - 22:00', null, array['Brezmesno','Dostava','Odprt ob vikendih']::text[], 4),
  ('1838', 'Kitajsko mesto', 'Slamnikarjeva 1, 1230 Domžale', 'Domžale', 46.138201, 14.596938, 7.9, 2.71, 'Med tednom: 11:00 - 22:00
Sobota: 11:00 - 22:00
Nedelja: 11:00 - 22:00', null, array['Brezmesno','Odprt ob vikendih']::text[], 5),
  ('2772', 'Kitajsko mesto - dostava', 'Slamnikarjeva 1, 1230 Domžale', 'Domžale', 46.138201, 14.596938, 8.9, 3.71, 'Med tednom: 11:00 - 22:00
Sobota: 11:00 - 22:00
Nedelja: 11:00 - 22:00', null, array['Brezmesno','Dostava','Odprt ob vikendih']::text[], 5),
  ('1422', 'Klopčič', 'Litostrojska cesta 57, 1000 Ljubljana', 'Ljubljana', 46.081614, 14.492358, 7.5, 2.31, 'Med tednom: 08:00 - 14:00
Sobota: Zaprto
Nedelja: Zaprto', null, array['Solatni bar']::text[], 5),
  ('3140', 'KLUBAR GASTROPUB', 'Slovenski trg 7, 4000 Kranj', 'Kranj', 46.242888, 14.355981, 8.0, 2.81, 'Med tednom: 10:00 - 19:00
Sobota: 15:00 - 19:00
Nedelja: Zaprto', null, array['Brezmesno','Odprt ob vikendih']::text[], 4),
  ('3121', 'Kozlovna Poštna', 'Poštna ulica 12, 2000 Maribor', 'Maribor', 46.558597, 15.644979, 9.0, 3.81, 'Ponedeljek: 10:00 - 21:00
Torek: 10:00 - 21:00
Sreda: 10:00 - 21:00
Četrtek: 10:00 - 21:00
Petek: 10:00 - 18:00
Sobota: 12:00 - 18:00
Nedelja: Zaprto', null, array['Brezmesno','Odprt ob vikendih']::text[], 5),
  ('2145', 'Leonard', 'Trg mladinskih delovnih brigad 12, 1000 Ljubljana', 'Ljubljana', 46.047955, 14.496292, 5.19, 0.0, 'Med tednom: 08:00 - 22:00
Sobota: 08:00 - 19:00
Nedelja: 08:00 - 19:00', null, array['Brezmesno','Odprt ob vikendih']::text[], 4),
  ('2844', 'Leteča zvezda', 'Kvedrova cesta 5a, 1000 Ljubljana', 'Ljubljana', 46.070312, 14.541963, 7.5, 2.31, 'Med tednom: 11:00 - 22:00
Sobota: 12:00 - 22:00
Nedelja: 12:00 - 22:00', null, array['Brezmesno','Odprt ob vikendih']::text[], 4),
  ('2726', 'LIPCA - INDEKS', 'Borštnikov trg 3a, 1000 Ljubljana', 'Ljubljana', 46.047896, 14.498774, 5.19, 0.0, 'Med tednom: 08:00 - 21:00
Sobota: Zaprto
Nedelja: Zaprto', null, array['Brezmesno']::text[], 4),
  ('3297', 'Lokal P8', 'Plemljeva 8, 1210 Ljubljana - Šentvid', 'Ljubljana', 46.103792, 14.458945, 9.0, 3.81, 'Med tednom: 10:00 - 21:00
Sobota: 10:00 - 21:00
Nedelja: 10:00 - 21:00', null, array['Brezmesno','Odprt ob vikendih']::text[], 3),
  ('2331', 'Loving Hut', 'Gosposvetska cesta 43a, 2000 Maribor', 'Maribor', 46.561508, 15.63406, 8.02, 2.83, 'Med tednom: 11:00 - 19:00
Sobota: Zaprto
Nedelja: Zaprto', null, array['Brezmesno']::text[], 5),
  ('3322', 'LUNCH BOX', 'Gosposvetska cesta 19, 2000 Maribor', 'Maribor', 46.560759, 15.63923, 5.19, 0.0, 'Ponedeljek: 08:00 - 16:00
Torek: 08:00 - 16:00
Sreda: 08:00 - 16:00
Četrtek: 08:00 - 16:00
Petek: 07:00 - 15:00
Sobota: Zaprto
Nedelja: Zaprto', null, array['Brezmesno','Solatni bar']::text[], 5),
  ('3368', 'MAGMAX', 'Industrijska cesta 11, 5000 Nova Gorica', 'Nova Gorica', 45.953111, 13.669412, 8.0, 2.81, 'Med tednom: 11:00 - 15:00
Sobota: Zaprto
Nedelja: Zaprto', null, array['Brezmesno','Solatni bar','Dostop za invalide']::text[], null),
  ('3327', 'MANGO SNACKS', 'Gosposvetska cesta 83, 2000 Maribor', 'Maribor', 46.562874, 15.627126, 5.19, 0.0, 'Ponedeljek: 08:00 - 14:00
Torek: 08:00 - 14:00
Sreda: 08:00 - 14:00
Četrtek: 08:00 - 14:00
Petek: 08:00 - 12:00
Sobota: Zaprto
Nedelja: Zaprto', null, array['Brezmesno']::text[], 4),
  ('3205', 'MC PANDA', 'Ulica Vita Kraigherja 5, 2000 Maribor', 'Maribor', 46.55875, 15.650541, 5.19, 0.0, 'Med tednom: 09:00 - 22:00
Sobota: 09:00 - 22:00
Nedelja: Zaprto', null, array['Brezmesno','Odprt ob vikendih']::text[], 4),
  ('3122', 'McDonald s restavracija - Murska Sobota', 'Nemčavci 1d, 9000 Murska Sobota', 'Murska Sobota', 46.669498, 16.177526, 7.8, 2.61, 'Med tednom: 08:00 - 23:59
Sobota: 08:00 - 23:59
Nedelja: 08:00 - 23:59', null, array['Brezmesno','Dostop za invalide','Odprt ob vikendih']::text[], 4),
  ('1182', 'McDonald´s restavracija - Swaty', 'Tržaška 6, 2000 Maribor', 'Maribor', 46.541756, 15.64776, 7.8, 2.61, 'Ponedeljek: 07:00 - 23:59
Torek: 07:00 - 23:59
Sreda: 07:00 - 23:59
Četrtek: 07:00 - 23:59
Petek: 07:00 - 23:59
Sobota: 07:00 - 23:59
Nedelja: 07:00 - 23:59', null, array['Brezmesno','Dostop za invalide','Odprt ob vikendih']::text[], 4),
  ('1185', 'McDonald´s restavracija Europark', 'Pobreška 18, 2000 Maribor', 'Maribor', 46.553815, 15.65149, 7.8, 2.61, 'Ponedeljek: 09:00 - 21:00
Torek: 09:00 - 21:00
Sreda: 09:00 - 21:00
Četrtek: 09:00 - 21:00
Petek: 09:00 - 21:00
Sobota: 08:00 - 21:00
Nedelja: Zaprto', null, array['Brezmesno','Dostop za invalide','Odprt ob vikendih']::text[], 5),
  ('1184', 'McDonald´s restavracija Ptujska', 'Ptujska 106, 2000 Maribor', 'Maribor', 46.534907, 15.662209, 7.8, 2.61, 'Med tednom: 07:00 - 23:59
Sobota: 07:00 - 23:59
Nedelja: 07:00 - 23:59', null, array['Brezmesno','Dostop za invalide','Odprt ob vikendih']::text[], 4),
  ('3270', 'McDonald´s restavracija Studenci', 'Ulica Jožeta Košarja 2, 2000 Maribor', 'Maribor', 46.531553, 15.677394, 7.8, 2.61, 'Ponedeljek: 08:00 - 23:59
Torek: 08:00 - 23:59
Sreda: 08:00 - 23:59
Četrtek: 08:00 - 23:59
Petek: 08:00 - 23:59
Sobota: 08:00 - 23:59
Nedelja: 08:00 - 23:59', null, array['Brezmesno','Dostop za invalide','Odprt ob vikendih']::text[], 5),
  ('1179', 'McDonald´s restavracija Velenje', 'Kidričeva 2b, 3320 Velenje', 'Velenje', 46.359961, 15.119805, 7.8, 2.61, 'Ponedeljek: 08:00 - 23:59
Torek: 08:00 - 23:59
Sreda: 08:00 - 23:59
Četrtek: 08:00 - 23:59
Petek: 08:00 - 23:59
Sobota: 08:00 - 23:59
Nedelja: 08:00 - 23:59', null, array['Brezmesno','Dostop za invalide','Odprt ob vikendih']::text[], 4),
  ('3326', 'McDonald''s Petrol Maribor', 'Na Polju 24, 2000 Maribor', 'Maribor', 46.533455, 15.699382, 7.8, 2.61, 'Med tednom: 07:00 - 23:59
Sobota: 07:00 - 23:59
Nedelja: 07:00 - 23:59', null, array['Brezmesno','Dostop za invalide','Odprt ob vikendih']::text[], 3),
  ('1380', 'McDonald''s restavracij - Odiseja', 'Moskovska ulica 11, 1000 Ljubljana', 'Ljubljana', 46.06947, 14.547376, 7.8, 2.61, 'Med tednom: 07:00 - 23:59
Sobota: 07:00 - 23:59
Nedelja: 07:00 - 23:59', null, array['Brezmesno','Dostop za invalide','Odprt ob vikendih']::text[], 4),
  ('3107', 'McDonald''s restavracija - ALEJA', 'Rakuševa ulica 1, 1000 Ljubljana', 'Ljubljana', 46.07829, 14.483678, 7.8, 2.61, 'Med tednom: 10:00 - 22:00
Sobota: 10:00 - 22:00
Nedelja: 11:00 - 17:00', null, array['Brezmesno','Dostop za invalide','Odprt ob vikendih']::text[], 4),
  ('3246', 'McDonald''s restavracija - Barje jug', 'Cesta dveh cesarjev 73, 1000 Ljubljana', 'Ljubljana', 46.028873, 14.478429, 7.8, 2.61, 'Ponedeljek: 07:00 - 23:00
Torek: 07:00 - 23:00
Sreda: 07:00 - 23:00
Četrtek: 07:00 - 23:00
Petek: 07:00 - 23:59
Sobota: 07:00 - 23:59
Nedelja: 07:00 - 23:00', null, array['Brezmesno','Odprt ob vikendih']::text[], 4),
  ('3247', 'McDonald''s restavracija - Barje sever', 'Cesta dveh cesarjev 71, 1000 Ljubljana', 'Ljubljana', 46.029154, 14.481882, 7.8, 2.61, 'Ponedeljek: 07:00 - 23:00
Torek: 07:00 - 23:00
Sreda: 07:00 - 23:00
Četrtek: 07:00 - 23:00
Petek: 07:00 - 23:59
Sobota: 07:00 - 23:59
Nedelja: 07:00 - 23:00', null, array['Brezmesno','Odprt ob vikendih']::text[], 4),
  ('3189', 'McDonald''s restavracija - Cankarjeva', 'Cankarjeva cesta 4, 1000 Ljubljana', 'Ljubljana', 46.052715, 14.502896, 7.8, 2.61, 'Med tednom: 07:00 - 23:00
Sobota: 07:00 - 23:00
Nedelja: 07:00 - 23:00', null, array['Brezmesno','Dostop za invalide','Odprt ob vikendih']::text[], 4),
  ('2868', 'McDonald''s restavracija - Celje Drive', 'Mariborska cesta 164, 3000 Celje', 'Celje', 46.247996, 15.280446, 7.8, 2.61, 'Ponedeljek: 07:00 - 23:59
Torek: 07:00 - 23:59
Sreda: 07:00 - 23:59
Četrtek: 07:00 - 23:59
Petek: 07:00 - 23:59
Sobota: 07:00 - 23:59
Nedelja: 07:00 - 23:59', null, array['Brezmesno','Dostop za invalide','Odprt ob vikendih']::text[], 3),
  ('1341', 'McDonald''s restavracija - Celovška', 'Celovška cesta 170, 1000 Ljubljana', 'Ljubljana', 46.074961, 14.484671, 7.8, 2.61, 'Med tednom: 08:00 - 23:59
Sobota: 08:00 - 23:59
Nedelja: 09:00 - 23:59', null, array['Brezmesno','Dostop za invalide','Odprt ob vikendih']::text[], 4),
  ('1377', 'McDonald''s restavracija - Center', 'Čopova 14, 1000 Ljubljana', 'Ljubljana', 46.052001, 14.504882, 7.8, 2.61, 'Med tednom: 08:00 - 23:59
Sobota: 08:00 - 23:59
Nedelja: 08:00 - 23:59', null, array['Brezmesno','Odprt ob vikendih']::text[], 4),
  ('1342', 'McDonald''s restavracija - Domžale', 'Breznikova 15, 1230 Domžale', 'Domžale', 46.14684, 14.597511, 7.8, 2.61, 'Med tednom: 09:00 - 23:59
Sobota: 09:00 - 23:59
Nedelja: 09:00 - 23:00', null, array['Brezmesno','Dostop za invalide','Odprt ob vikendih']::text[], 4),
  ('2866', 'McDonald''s restavracija - Kranj', 'Cesta Boštjana Hladnika 7, 4000 Kranj', 'Kranj', 46.232304, 14.369412, 7.8, 2.61, 'Ponedeljek: 08:00 - 23:59
Torek: 08:00 - 23:59
Sreda: 08:00 - 23:59
Četrtek: 08:00 - 23:59
Petek: 08:00 - 23:59
Sobota: 08:00 - 23:59
Nedelja: 08:00 - 23:59', null, array['Brezmesno','Dostop za invalide','Odprt ob vikendih']::text[], 4),
  ('3279', 'McDonald''s restavracija - Lesce', 'Hraška cesta 21a, 4248 Lesce', 'Lesce', 46.361208, 14.160096, 7.8, 2.61, 'Med tednom: 07:00 - 23:59
Sobota: 07:00 - 23:59
Nedelja: 07:00 - 23:59', null, array['Brezmesno','Dostop za invalide','Odprt ob vikendih']::text[], 3),
  ('1381', 'McDonald''s restavracija - Novo mesto', 'Ljubljanska 24, 8000 Novo mesto', 'Novo mesto', 45.814805, 15.154172, 7.8, 2.61, 'Med tednom: 08:00 - 23:59
Sobota: 08:00 - 23:59
Nedelja: 08:00 - 23:59', null, array['Brezmesno','Dostop za invalide','Odprt ob vikendih']::text[], 5),
  ('1536', 'McDonald''s restavracija - Rudnik', 'Premrlova ulica 12, 1000 Ljubljana', 'Ljubljana', 46.017517, 14.530072, 7.8, 2.61, 'Med tednom: 08:00 - 23:59
Sobota: 08:00 - 23:59
Nedelja: 08:00 - 23:59', null, array['Brezmesno','Dostop za invalide','Odprt ob vikendih']::text[], 4),
  ('3188', 'McDonald''s restavracija - Supernova Rudnik', 'Jurčkova cesta 223, 1000 Ljubljana', 'Ljubljana', 46.021839, 14.535914, 7.8, 2.61, 'Med tednom: 08:00 - 22:00
Sobota: 08:00 - 22:00
Nedelja: 08:00 - 22:00', null, array['Brezmesno','Dostop za invalide','Odprt ob vikendih']::text[], 4),
  ('3164', 'McDonald''s restavracija - Šmartinka Drive', 'Šmartinska 147, 1000 Ljubljana', 'Ljubljana', 46.069479, 14.540809, 7.8, 2.61, 'Med tednom: 08:00 - 22:00
Sobota: 08:00 - 22:00
Nedelja: 08:00 - 22:00', null, array['Brezmesno','Dostop za invalide','Odprt ob vikendih']::text[], 4),
  ('1378', 'McDonald''s restavracija - Žito', 'Moskovska ulica 1, 1000 Ljubljana', 'Ljubljana', 46.069478, 14.547387, 7.8, 2.61, 'Med tednom: 08:00 - 22:00
Sobota: 08:00 - 22:00
Nedelja: 08:00 - 22:00', null, array['Brezmesno','Dostop za invalide','Odprt ob vikendih']::text[], 4),
  ('2253', 'McDonald''s restavracija Koper', 'Ankaranska 4, 6000 Koper/Capodistria', 'Koper', 45.541492, 13.73655, 7.8, 2.61, 'Med tednom: 08:00 - 23:59
Sobota: 08:00 - 23:59
Nedelja: 08:00 - 23:59', null, array['Brezmesno','Dostop za invalide','Odprt ob vikendih']::text[], 4),
  ('2815', 'McDonald''s restavracija Nova Gorica', 'Vojkova cesta 111, 5000 Nova Gorica', 'Nova Gorica', 45.954703, 13.653513, 7.8, 2.61, 'Med tednom: 08:00 - 23:59
Sobota: 08:00 - 23:59
Nedelja: 09:00 - 23:59', null, array['Brezmesno','Dostop za invalide','Odprt ob vikendih']::text[], 5),
  ('3330', 'McDonald''s Supernova Koper', 'Dolinska cesta 1a, 6000 Koper/Capodistria', 'Koper', 45.530774, 13.731828, 7.8, 2.61, 'Ponedeljek: 08:00 - 23:00
Torek: 08:00 - 23:00
Sreda: 08:00 - 23:00
Četrtek: 08:00 - 23:00
Petek: 08:00 - 00:00
Sobota: 08:00 - 00:00
Nedelja: 08:00 - 23:00', null, array['Brezmesno','Dostop za invalide','Odprt ob vikendih']::text[], 3),
  ('2648', 'ME GUSTA', 'Jezdarska ulica 8b (vhod v lokal iz Žitne ulice 4), 2000 Maribor', 'Maribor', 46.551372, 15.640921, 7.0, 1.81, 'Med tednom: 08:00 - 18:00
Sobota: Zaprto
Nedelja: Zaprto', null, array['Brezmesno']::text[], 5),
  ('3138', 'Meating pub & restavracija', 'Mlinska ulica 2, 2000 Maribor', 'Maribor', 46.560361, 15.655375, 8.6, 3.41, 'Med tednom: 10:00 - 16:00
Sobota: Zaprto
Nedelja: Zaprto', null, array['Brezmesno']::text[], 3),
  ('1407', 'Mehiška restavracija Imperio mexicano', 'Moskovska ulica 4, 1000 Ljubljana', 'Ljubljana', 46.070237, 14.549039, 9.0, 3.81, 'Med tednom: 10:00 - 21:00
Sobota: 10:00 - 21:00
Nedelja: Zaprto', null, array['Brezmesno','Dostop za invalide','Odprt ob vikendih']::text[], 5),
  ('2023', 'Menza BF', 'Večna pot 111, 1000 Ljubljana', 'Ljubljana', 46.051236, 14.469969, 8.2, 3.01, 'Med tednom: 10:30 - 14:30
Sobota: Zaprto
Nedelja: Zaprto', null, array['Brezmesno','Dostop za invalide']::text[], 4),
  ('2521', 'Menza FE', 'Tržaška cesta 25, 1000 Ljubljana', 'Ljubljana', 46.044899, 14.489231, 8.2, 3.01, 'Med tednom: 10:30 - 14:30
Sobota: Zaprto
Nedelja: Zaprto', null, array['Brezmesno','Dostop za invalide']::text[], 5),
  ('2360', 'MM PANDA', 'Koroška cesta 9, 2000 Maribor', 'Maribor', 46.557664, 15.643214, 7.24, 2.05, 'Ponedeljek: 09:00 - 23:00
Torek: 09:00 - 23:00
Sreda: 09:00 - 23:00
Četrtek: 09:00 - 23:00
Petek: 09:00 - 23:59
Sobota: 15:00 - 23:59
Nedelja: 15:00 - 23:00', null, array['Brezmesno','Solatni bar','Odprt ob vikendih']::text[], 5),
  ('3357', 'Moj cmok', 'Pogačarjev trg 1, 1000 Ljubljana', 'Ljubljana', 46.051198, 14.508511, 9.0, 3.81, 'Ponedeljek: Zaprto
Torek: 10:00 - 15:00
Sreda: 10:00 - 15:00
Četrtek: 10:00 - 15:00
Petek: 10:00 - 15:00
Sobota: 10:00 - 15:00
Nedelja: Zaprto', null, array['Brezmesno','Dostop za invalide','Odprt ob vikendih']::text[], 4),
  ('3362', 'Moji štruklji BTC', 'Italijanska ulica 7, 1000 Ljubljana', 'Ljubljana', 46.063985, 14.5444, 9.0, 3.81, 'Ponedeljek: 14:00 - 19:30
Torek: 14:00 - 19:30
Sreda: 14:00 - 19:30
Četrtek: 14:00 - 19:30
Petek: 12:00 - 19:30
Sobota: 09:00 - 13:00
Nedelja: Zaprto', null, array['Brezmesno','Dostop za invalide','Odprt ob vikendih']::text[], 5),
  ('3290', 'Namaste Grab & Go', 'Tomšičeva 2, 1000 Ljubljana', 'Ljubljana', 46.052288, 14.502739, 7.0, 1.81, 'Med tednom: 10:00 - 18:00
Sobota: 10:00 - 18:00
Nedelja: Zaprto', null, array['Brezmesno','Odprt ob vikendih']::text[], 5),
  ('2828', 'Namaste Indian Express', 'Trubarjeva ulica 31, 1000 Ljubljana', 'Ljubljana', 46.052474, 14.509783, 8.0, 2.81, 'Med tednom: 11:00 - 19:00
Sobota: 11:00 - 19:00
Nedelja: 11:00 - 19:00', null, array['Brezmesno','Odprt ob vikendih']::text[], 5),
  ('2249', 'News Cafe', 'Obala 4F, 6320 Portorož/Portorose', 'Portorož', 45.514839, 13.571944, 9.0, 3.81, 'Med tednom: 12:00 - 20:00
Sobota: 12:00 - 20:00
Nedelja: 12:00 - 20:00', null, array['Brezmesno','Dostop za invalide','Odprt ob vikendih']::text[], 5),
  ('3359', 'Niam niam garden', 'Trubarjeva cesta 50, 1000 Ljubljana', 'Ljubljana', 46.052298, 14.512259, 9.0, 3.81, 'Ponedeljek: Zaprto
Torek: 12:00 - 16:00
Sreda: 12:00 - 16:00
Četrtek: 12:00 - 16:00
Petek: 12:00 - 16:00
Sobota: 12:00 - 16:00
Nedelja: 12:00 - 16:00', null, array['Brezmesno','Odprt ob vikendih']::text[], 4),
  ('3167', 'NJAMY - dostava', 'Šorlijeva 12, 4000 Kranj', 'Kranj', 46.251947, 14.35727, 9.0, 3.81, 'Med tednom: 09:00 - 22:00
Sobota: 09:00 - 22:00
Nedelja: Zaprto', null, array['Brezmesno','Dostava','Odprt ob vikendih']::text[], 4),
  ('3229', 'Norma 23', 'Adamič-Lundrovo nabrežje 1, 1000 Ljubljana', 'Ljubljana', 46.051056, 14.506566, 9.0, 3.81, 'Ponedeljek: 09:00 - 19:00
Torek: 09:00 - 19:00
Sreda: 09:00 - 19:00
Četrtek: 09:00 - 19:00
Petek: 09:00 - 16:00
Sobota: 09:00 - 19:00
Nedelja: 09:00 - 17:00', null, array['Brezmesno','Dostop za invalide','Celiakiji prijazni obroki','Odprt ob vikendih']::text[], 4),
  ('2732', 'Okrepčevalnica - Diner kino gledališče Bežigrad', 'Linhartova 11, 1000 Ljubljana', 'Ljubljana', 46.064646, 14.510322, 8.62, 3.43, 'Med tednom: 10:00 - 21:00
Sobota: 15:00 - 21:00
Nedelja: 15:00 - 21:00', null, array['Brezmesno','Dostop za invalide','Odprt ob vikendih']::text[], 5),
  ('1683', 'Okrepčevalnica - pizzerija Maks', 'Dunajska cesta 111, 1000 Ljubljana', 'Ljubljana', 46.074506, 14.511379, 7.9, 2.71, 'Med tednom: 09:00 - 19:00
Sobota: Zaprto
Nedelja: Zaprto', null, array['Brezmesno','Dostop za invalide']::text[], 4),
  ('3397', 'Okrepčevalnica "Medicinska fakulteta"', 'Taborska ulica 8, 2000 Maribor', 'Maribor', 46.554862, 15.646944, 5.19, 0.0, 'Ponedeljek: 08:00 - 12:00
Torek: 08:00 - 12:00
Sreda: 08:00 - 12:00
Četrtek: 08:00 - 12:00
Petek: 08:00 - 12:00
Sobota: Zaprto
Nedelja: Zaprto', null, array['Dostop za invalide']::text[], 5),
  ('2944', 'Okrepčevalnica Ajda', 'Ajdovščina 4, 1000 Ljubljana', 'Ljubljana', 46.053364, 14.505204, 8.14, 2.95, 'Med tednom: 09:30 - 20:00
Sobota: 11:00 - 19:00
Nedelja: Zaprto', null, array['Brezmesno','Odprt ob vikendih']::text[], 5),
  ('2347', 'Okrepčevalnica FERI', 'Smetanova ulica 17, 2000 Maribor', 'Maribor', 46.559488, 15.639272, 5.19, 0.0, 'Med tednom: 08:00 - 12:00
Sobota: Zaprto
Nedelja: Zaprto', null, array['Brezmesno','Dostop za invalide']::text[], 5),
  ('3342', 'Okrepčevalnica HAM-HAM', 'Celjska cesta 3, 3252 Rogatec', 'Rogatec', 46.224141, 15.700568, 9.0, 3.81, 'Med tednom: 10:00 - 22:00
Sobota: 10:00 - 22:00
Nedelja: 11:00 - 22:00', null, array['Brezmesno','Odprt ob vikendih']::text[], 3),
  ('2652', 'Okrepčevalnica IZUM', 'Prešernova 17, 2000 Maribor', 'Maribor', 46.563605, 15.651434, 8.14, 2.95, 'Med tednom: 10:00 - 14:30
Sobota: Zaprto
Nedelja: Zaprto', null, array['Brezmesno','Dostop za invalide']::text[], 5),
  ('3200', 'Okrepčevalnica Marijanca', 'Večna pot 113, 1000 Ljubljana', 'Ljubljana', 46.051477, 14.480277, 6.76, 1.57, 'Med tednom: 10:00 - 15:00
Sobota: Zaprto
Nedelja: Zaprto', null, array['Brezmesno','Dostop za invalide']::text[], 4),
  ('3333', 'OKREPČEVALNICA PINELA', 'Obala 99, 6320 Portorož/Portorose', 'Portorož', 45.506889, 13.600407, 9.0, 3.81, 'Med tednom: 10:00 - 16:00
Sobota: 10:00 - 16:00
Nedelja: Zaprto', null, array['Brezmesno','Odprt ob vikendih']::text[], 5),
  ('3372', 'Okrepčevalnica Rock Cafe', 'Ukmarjev trg 5, 6000 Koper/Capodistria', 'Koper', 45.54894, 13.725289, 9.0, 3.81, 'Med tednom: 10:00 - 22:00
Sobota: 10:00 - 22:00
Nedelja: 10:00 - 22:00', null, array['Brezmesno','Odprt ob vikendih']::text[], 5),
  ('1817', 'OLA ENKA', 'Baragova ulica 16, 1000 Ljubljana', 'Ljubljana', 46.075976, 14.517009, 9.0, 3.81, 'Med tednom: 08:00 - 17:00
Sobota: Zaprto
Nedelja: Zaprto', null, array['Brezmesno']::text[], 5),
  ('3296', 'O-LALA', 'Tržaška cesta 18, 1000 Ljubljana', 'Ljubljana', 46.045694, 14.489593, 9.0, 3.81, 'Med tednom: 11:00 - 22:00
Sobota: Zaprto
Nedelja: 12:00 - 22:00', null, array['Brezmesno','Odprt ob vikendih']::text[], 5),
  ('3318', 'ON THAI Rudnik', 'Jurčkova cesta 225, 1000 Ljubljana', 'Ljubljana', 46.020267, 14.536676, 8.52, 3.33, 'Med tednom: 11:00 - 18:00
Sobota: 11:00 - 18:00
Nedelja: Zaprto', null, array['Brezmesno','Odprt ob vikendih']::text[], 5),
  ('3319', 'ON THAI Šiška', 'Cesta ljubljanske brigade 33, 1000 Ljubljana', 'Ljubljana', 46.088354, 14.477177, 8.52, 3.33, 'Med tednom: 11:00 - 19:30
Sobota: 11:00 - 18:30
Nedelja: Zaprto', null, array['Brezmesno','Dostop za invalide','Odprt ob vikendih']::text[], 4),
  ('3169', 'ORIENT EXPRESS, samopostrežna restavracija', 'Kolodvorska 11, 1000 Ljubljana', 'Ljubljana', 46.056613, 14.509415, 8.1, 2.91, 'Med tednom: 10:00 - 14:00
Sobota: Zaprto
Nedelja: Zaprto', null, array['Brezmesno']::text[], 5),
  ('3035', 'Oštarija City center Celje', 'Mariborska cesta 100, 3000 Celje', 'Celje', 46.241903, 15.277407, 9.0, 3.81, 'Med tednom: 11:00 - 20:30
Sobota: 11:00 - 20:30
Nedelja: Zaprto', null, array['Brezmesno','Solatni bar','Dostop za invalide','Odprt ob vikendih']::text[], 5),
  ('1471', 'Oštarija Rudolfswerth', 'Kandijska cesta 35, 8000 Novo mesto', 'Novo mesto', 45.800214, 15.174038, 8.4, 3.21, 'Med tednom: 10:00 - 14:00
Sobota: 10:00 - 14:00
Nedelja: Zaprto', null, array['Brezmesno','Odprt ob vikendih']::text[], 3),
  ('3298', 'P8 - dostava', 'Plemeljeva 8, 1210 Ljubljana - Šentvid', 'Ljubljana', 46.103792, 14.458945, 9.0, 3.81, 'Med tednom: 10:00 - 21:00
Sobota: 10:00 - 21:00
Nedelja: 10:00 - 21:00', null, array['Brezmesno','Dostava','Odprt ob vikendih']::text[], 4),
  ('2753', 'Palača SMELT', 'Dunajska 160, 1000 Ljubljana', 'Ljubljana', 46.082788, 14.513967, 7.96, 2.77, 'Med tednom: 11:00 - 14:00
Sobota: Zaprto
Nedelja: Zaprto', null, array['Brezmesno','Solatni bar']::text[], 4),
  ('2863', 'Papagayo', 'Gosposka ulica 6, 2000 Maribor', 'Maribor', 46.557861, 15.646434, 9.0, 3.81, 'Ponedeljek: 11:00 - 21:30
Torek: 11:00 - 21:30
Sreda: 11:00 - 21:30
Četrtek: 11:00 - 21:30
Petek: 11:00 - 22:00
Sobota: 11:00 - 22:00
Nedelja: Zaprto', null, array['Brezmesno','Solatni bar','Odprt ob vikendih']::text[], 4),
  ('2623', 'PE Dijaški dom Celje', 'Ljubljanska cesta 21, 3000 Celje', 'Celje', 46.232765, 15.256535, 8.0, 2.81, 'Ponedeljek: 11:00 - 15:00
Torek: 11:00 - 15:00
Sreda: 11:00 - 15:00
Četrtek: 11:00 - 15:00
Petek: 11:00 - 15:00
Sobota: Zaprto
Nedelja: Zaprto', null, array['Brezmesno','Javni zavod']::text[], 4),
  ('3392', 'Pe Hiša kruha junior', 'Tyrševa 2, 2000 Maribor', 'Maribor', 46.560519, 15.646765, 5.19, 0.0, 'Ponedeljek: 09:00 - 15:00
Torek: 09:00 - 15:00
Sreda: 09:00 - 15:00
Četrtek: 09:00 - 15:00
Petek: 09:00 - 15:00
Sobota: Zaprto
Nedelja: Zaprto', null, array['Dostop za invalide']::text[], 5),
  ('3390', 'PE LUCKY STREET FOOD', 'Vetrinjska ulica 9a, 2000 Maribor', 'Maribor', 46.557787, 15.647978, 6.2, 1.01, 'Ponedeljek: 10:00 - 18:00
Torek: 10:00 - 18:00
Sreda: 10:00 - 18:00
Četrtek: 10:00 - 18:00
Petek: 10:00 - 18:00
Sobota: 11:00 - 18:00
Nedelja: Zaprto', null, array['Brezmesno','Odprt ob vikendih']::text[], 5),
  ('1424', 'PE Marjetica', 'Tobačna ulica 5, 1000 Ljubljana', 'Ljubljana', 46.04933, 14.49386, 7.58, 2.39, 'Med tednom: 10:00 - 15:00
Sobota: Zaprto
Nedelja: Zaprto', null, array['Brezmesno']::text[], 5),
  ('3346', 'PE Melty', 'Kardeljeva ploščad 5, 1000 Ljubljana', 'Ljubljana', 46.074128, 14.514221, 5.19, 0.0, 'Ponedeljek: 07:00 - 17:00
Torek: 07:00 - 17:00
Sreda: 07:00 - 17:00
Četrtek: 07:00 - 17:00
Petek: 07:00 - 15:00
Sobota: Zaprto
Nedelja: Zaprto', null, array['Brezmesno']::text[], 4),
  ('3353', 'Picerija Barjan', 'Cesta v mestni log 55, 1000 Ljubljana', 'Ljubljana', 46.036154, 14.489593, 9.0, 3.81, 'Med tednom: 10:00 - 16:00
Sobota: Zaprto
Nedelja: Zaprto', null, array['Brezmesno','Dostop za invalide']::text[], 3),
  ('2243', 'PICERIJA CITYBURGER', 'Ankaranska 7, 6000 Koper/Capodistria', 'Koper', 45.545824, 13.740398, 9.0, 3.81, 'Med tednom: 12:00 - 21:00
Sobota: 12:00 - 21:00
Nedelja: 12:00 - 21:00', null, array['Brezmesno','Dostop za invalide','Študentske ugodnosti','Odprt ob vikendih']::text[], 4),
  ('2551', 'Picerija ERA', 'Pod Trško goro 83, 8000 Novo mesto', 'Novo mesto', 45.822527, 15.184241, 8.8, 3.61, 'Med tednom: 09:00 - 21:00
Sobota: 09:00 - 21:00
Nedelja: Zaprto', null, array['Brezmesno','Solatni bar','Odprt ob vikendih']::text[], 4),
  ('3142', 'Picerija in pivnica KUFR', 'Glavni trg 43, 2380 Slovenj Gradec', 'Slovenj Gradec', 46.508474, 15.078219, 8.0, 2.81, 'Med tednom: 10:00 - 21:00
Sobota: 10:00 - 21:00
Nedelja: 10:00 - 21:00', null, array['Brezmesno','Solatni bar','Dostop za invalide','Odprt ob vikendih']::text[], 4),
  ('3281', 'Picerija Pavon', 'Njegoševa ulica 6k, 1000 Ljubljana', 'Ljubljana', 46.053443, 14.519521, 9.0, 3.81, 'Med tednom: 10:00 - 15:00
Sobota: Zaprto
Nedelja: Zaprto', null, array['Brezmesno','Solatni bar','Dostop za invalide']::text[], null),
  ('1794', 'Picestavracija Boccaccio', 'Celovška cesta 249, 1000 Ljubljana', 'Ljubljana', 46.080806, 14.478609, 9.0, 3.81, 'Med tednom: 12:00 - 20:00
Sobota: 12:00 - 20:00
Nedelja: 12:00 - 20:00', null, array['Brezmesno','Pizza','Odprt ob vikendih']::text[], 4),
  ('3361', 'Pisana skleda', 'Zemljemerska ulica 7, 1000 Ljubljana', 'Ljubljana', 46.047347, 14.517206, 9.0, 3.81, 'Med tednom: 11:00 - 15:00
Sobota: Zaprto
Nedelja: Zaprto', null, array['Brezmesno']::text[], 5),
  ('2595', 'Pizza SALAMON - dostava', 'Vilharjeva 43, 1000 Ljubljana', 'Ljubljana', 46.030071, 14.532449, 9.0, 3.81, 'Med tednom: 09:00 - 21:00
Sobota: 10:00 - 21:00
Nedelja: 10:00 - 21:00', null, array['Brezmesno','Dostava','Odprt ob vikendih']::text[], 4),
  ('2308', 'Pizzeria Briksen', 'Ljubljanska cesta 5, 4260 Bled', 'Bled', 46.368334, 14.111119, 9.0, 3.81, 'Med tednom: 11:00 - 21:00
Sobota: 11:00 - 21:00
Nedelja: 11:00 - 21:00', null, array['Brezmesno','Dostop za invalide','Odprt ob vikendih']::text[], 4),
  ('3295', 'Pizzeria Favola', 'Dunajska cesta 129, 1000 Ljubljana', 'Ljubljana', 46.077594, 14.5119, 9.0, 3.81, 'Med tednom: 12:30 - 18:00
Sobota: Zaprto
Nedelja: Zaprto', null, array['Dostop za invalide','Celiakiji prijazni obroki']::text[], 4),
  ('1441', 'Pizzeria FoculuS', 'Gregorčičeva ulica 3, 1000 Ljubljana', 'Ljubljana', 46.047926, 14.502138, 9.0, 3.81, 'Med tednom: 11:00 - 18:00
Sobota: 11:00 - 18:00
Nedelja: 11:00 - 18:00', null, array['Brezmesno','Solatni bar','Študentske ugodnosti','Celiakiji prijazni obroki','Pizza','Odprt ob vikendih']::text[], 5),
  ('2284', 'Pizzeria Fontana', 'Dalmatinova ulica 2, 8270 Krško', 'Krško', 45.963862, 15.486192, 9.0, 3.81, 'Med tednom: 09:00 - 22:00
Sobota: 11:00 - 22:00
Nedelja: 12:00 - 22:00', null, array['Brezmesno','Solatni bar','Dostop za invalide','Odprt ob vikendih']::text[], 5),
  ('3388', 'Pizzeria Gusto', 'Trg osvobodilne fronte 14, 1000 Ljubljana', 'Ljubljana', 46.057446, 14.508947, 8.99, 3.8, 'Med tednom: 14:00 - 19:00
Sobota: 14:00 - 19:00
Nedelja: 14:00 - 19:00', null, array['Brezmesno','Odprt ob vikendih']::text[], 4),
  ('3174', 'Pizzeria in oštarija Chianti', 'Rakuševa cesta 1, 1000 Ljubljana', 'Ljubljana', 46.07829, 14.483678, 9.0, 3.81, 'Med tednom: 11:00 - 20:00
Sobota: 16:00 - 20:00
Nedelja: 15:00 - 19:00', null, array['Brezmesno','Dostop za invalide','Odprt ob vikendih']::text[], 4),
  ('1103', 'Pizzeria in špageteria Al Capone', 'Pobreška cesta 18, 2000 Maribor', 'Maribor', 46.553751, 15.651964, 9.0, 3.81, 'Med tednom: 09:00 - 21:00
Sobota: 09:00 - 21:00
Nedelja: Zaprto', null, array['Brezmesno','Dostop za invalide','Odprt ob vikendih']::text[], 3),
  ('1305', 'Pizzeria in špagetteria Cubus', 'Podbevškova ulica 11, 8000 Novo mesto', 'Novo mesto', 45.804309, 15.196019, 7.6, 2.41, 'Med tednom: 09:00 - 21:30
Sobota: 12:00 - 21:30
Nedelja: 12:00 - 21:30', null, array['Odprt ob vikendih']::text[], 5),
  ('1423', 'Pizzeria Laterna', 'Tržaška 79a, 1000 Ljubljana', 'Ljubljana', 46.042523, 14.479298, 9.0, 3.81, 'Med tednom: 10:00 - 21:30
Sobota: 12:30 - 21:00
Nedelja: 12:30 - 20:00', null, array['Brezmesno','Odprt ob vikendih']::text[], 4),
  ('3309', 'Pizzeria Oliva', 'Litijska cesta 38, 1000 Ljubljana', 'Ljubljana', 46.047074, 14.544928, 9.0, 3.81, 'Med tednom: 11:30 - 20:00
Sobota: 13:30 - 20:00
Nedelja: 12:30 - 20:00', null, array['Brezmesno','Odprt ob vikendih']::text[], 4),
  ('2165', 'Pizzeria Osmica', 'Nazorjeva ulica 8, 1000 Ljubljana', 'Ljubljana', 46.05273, 14.504587, 9.0, 3.81, 'Med tednom: 11:00 - 21:00
Sobota: 12:00 - 21:00
Nedelja: Zaprto', null, array['Brezmesno','Študentske ugodnosti','Pizza','Odprt ob vikendih']::text[], 4),
  ('2375', 'Pizzeria Parma', 'Trg republike 2, 1000 Ljubljana', 'Ljubljana', 46.05005, 14.500465, 8.8, 3.61, 'Med tednom: 11:00 - 21:00
Sobota: 11:00 - 21:00
Nedelja: Zaprto', null, array['Študentske ugodnosti','Celiakiji prijazni obroki','Pizza','Odprt ob vikendih']::text[], 4),
  ('1335', 'Pizzeria Šestinka', 'Miklošičeva cesta 22, 1000 Ljubljana', 'Ljubljana', 46.054449, 14.507249, 5.19, 0.0, 'Med tednom: 10:00 - 00:00
Sobota: 12:00 - 00:00
Nedelja: 12:00 - 00:00', null, array['Brezmesno','Pizza','Odprt ob vikendih']::text[], 4),
  ('1031', 'Pizzerija Atrij d.o.o.', 'Čevljarska 8, 6000 Koper/Capodistria', 'Koper', 45.547525, 13.729441, 8.42, 3.23, 'Med tednom: 11:00 - 21:00
Sobota: 11:00 - 21:00
Nedelja: Zaprto', null, array['Brezmesno','Solatni bar','Odprt ob vikendih']::text[], 5),
  ('1716', 'Pizzerija Dimnik', 'Obrtniška cesta 1, 1420 Trbovlje', 'Trbovlje', 46.154984, 15.05118, 9.0, 3.81, 'Med tednom: 09:00 - 20:00
Sobota: 12:00 - 20:00
Nedelja: 17:00 - 21:00', null, array['Brezmesno','Odprt ob vikendih']::text[], 4),
  ('1717', 'Pizzerija Dimnik - dostava', 'Obrtniška cesta 1, 1420 Trbovlje', 'Trbovlje', 46.154984, 15.05118, 9.0, 3.81, 'Med tednom: 09:00 - 20:00
Sobota: 12:00 - 20:00
Nedelja: 17:00 - 21:00', null, array['Brezmesno','Dostava','Odprt ob vikendih']::text[], 4),
  ('1413', 'Pizzerija in okrepčevalnica KONDOR', 'Cesta v Mestni log 55, 1000 Ljubljana', 'Ljubljana', 46.036678, 14.489586, 8.5, 3.31, 'Ponedeljek: 10:00 - 17:00
Torek: 10:00 - 17:00
Sreda: 10:00 - 17:00
Četrtek: 10:00 - 17:00
Petek: 10:00 - 17:00
Sobota: 10:00 - 15:00
Nedelja: Zaprto', null, array['Brezmesno','Dostop za invalide','Odprt ob vikendih']::text[], 4),
  ('3116', 'Pizzerija in špageterija Alcapone', 'Moskovska ulica 4, 1000 Ljubljana', 'Ljubljana', 46.068108, 14.542046, 9.0, 3.81, 'Med tednom: 11:00 - 20:00
Sobota: 11:00 - 20:00
Nedelja: Zaprto', null, array['Brezmesno','Dostop za invalide','Odprt ob vikendih']::text[], 3),
  ('1176', 'Pizzerija Velun', 'Šalek 24 a, 3320 Velenje', 'Velenje', 46.362191, 15.125862, 8.2, 3.01, 'Med tednom: 11:00 - 22:00
Sobota: 12:00 - 22:00
Nedelja: 12:00 - 22:00', null, array['Brezmesno','Odprt ob vikendih']::text[], 5),
  ('3360', 'Prfect Meals - dostava', 'Študljanska 20, 1230 Domžale', 'Domžale', 46.126047, 14.600046, 7.9, 2.71, 'Med tednom: 11:00 - 15:00
Sobota: 11:00 - 15:00
Nedelja: 11:00 - 15:00', null, array['Brezmesno','Dostava','Celiakiji prijazni obroki','Odprt ob vikendih']::text[], null),
  ('1265', 'Prometna šola Maribor', 'Preradovičeva ulica 33, 2000 Maribor', 'Maribor', 46.553867, 15.624584, 7.0, 1.81, 'Ponedeljek: 10:30 - 16:00
Torek: 10:30 - 16:00
Sreda: 10:30 - 16:00
Četrtek: 10:30 - 16:00
Petek: 10:30 - 15:30
Sobota: Zaprto
Nedelja: Zaprto', null, array['Brezmesno','Celiakiji prijazni obroki','Javni zavod']::text[], 5),
  ('3364', 'Pr''picopeku', 'Rimska cesta 17, 1000 Ljubljana', 'Ljubljana', 46.047555, 14.499063, 7.02, 1.83, 'Ponedeljek: Zaprto
Torek: 11:30 - 22:30
Sreda: 11:30 - 22:30
Četrtek: 11:30 - 22:30
Petek: 11:30 - 22:30
Sobota: 17:00 - 22:30
Nedelja: Zaprto', null, array['Odprt ob vikendih']::text[], 4),
  ('2651', 'Q TABOR', 'Gorkega ulica 45, 2000 Maribor', 'Maribor', 46.549958, 15.638503, 9.0, 3.81, 'Ponedeljek: 08:00 - 21:00
Torek: 08:00 - 21:00
Sreda: 08:00 - 21:00
Četrtek: 08:00 - 21:00
Petek: 08:00 - 21:00
Sobota: 08:00 - 21:00
Nedelja: 08:00 - 20:00', null, array['Brezmesno','Dostop za invalide','Odprt ob vikendih']::text[], 4),
  ('3344', 'Restavracija & pub GOLD PUB', 'koroška cesta 61, 2360 Radlje ob Dravi', 'Radlje ob Dravi', 46.615453, 15.212909, 9.0, 3.81, 'Med tednom: 09:00 - 22:00
Sobota: 12:00 - 22:00
Nedelja: 12:00 - 22:00', null, array['Brezmesno','Odprt ob vikendih']::text[], 5),
  ('2187', 'Restavracija 123 DSU', 'Litostrojska 54, 1000 Ljubljana', 'Ljubljana', 46.082321, 14.496419, 6.8, 1.61, 'Med tednom: 10:00 - 14:00
Sobota: Zaprto
Nedelja: Zaprto', null, array['Solatni bar','Študentske ugodnosti']::text[], 4),
  ('2528', 'Restavracija 123 Mega center 2', 'Verovškova ulica 55a, 1000 Ljubljana', 'Ljubljana', 46.063855, 14.495797, 6.8, 1.61, 'Med tednom: 10:00 - 14:00
Sobota: Zaprto
Nedelja: Zaprto', null, array['Solatni bar','Dostop za invalide','Študentske ugodnosti']::text[], 5),
  ('3339', 'Restavracija 123 Pristan Koper', 'Vojkovo nabrežje 32, 6000 Koper/Capodistria', 'Koper', 45.548204, 13.737768, 6.8, 1.61, 'Med tednom: 10:00 - 14:00
Sobota: Zaprto
Nedelja: Zaprto', null, array['Brezmesno','Solatni bar','Študentske ugodnosti']::text[], 5),
  ('2164', 'Restavracija Allegria', 'Nazorjeva ulica 8, 1000 Ljubljana', 'Ljubljana', 46.05273, 14.504587, 9.0, 3.81, 'Med tednom: 11:00 - 21:00
Sobota: 12:00 - 21:00
Nedelja: Zaprto', null, array['Brezmesno','Študentske ugodnosti','Odprt ob vikendih']::text[], 4),
  ('2501', 'Restavracija Ancora', 'Jurčičeva ulica 7, 2000 Maribor', 'Maribor', 46.559191, 15.647374, 8.72, 3.53, 'Med tednom: 10:00 - 21:00
Sobota: 11:00 - 21:00
Nedelja: 16:00 - 21:00', null, array['Brezmesno','Dostop za invalide','Prava izbira','Odprt ob vikendih']::text[], 5),
  ('2703', 'Restavracija Azija', 'Ptujska cesta 131 , 2000 Maribor', 'Maribor', 46.531126, 15.670116, 9.0, 3.81, 'Ponedeljek: 11:00 - 21:00
Torek: 11:00 - 21:00
Sreda: 11:00 - 21:00
Četrtek: 11:00 - 21:00
Petek: 12:00 - 21:00
Sobota: 12:00 - 21:00
Nedelja: 12:00 - 21:00', null, array['Brezmesno','Solatni bar','Odprt ob vikendih']::text[], 5),
  ('2527', 'Restavracija Brejk', 'Dunajska cesta 22, 1000 Ljubljana', 'Ljubljana', 46.062035, 14.509368, 9.0, 3.81, 'Med tednom: 10:30 - 15:00
Sobota: Zaprto
Nedelja: Zaprto', null, array['Brezmesno','Solatni bar']::text[], 4),
  ('2234', 'Restavracija Eat Smart 1', 'Koroška cesta 46, 2000 Maribor', 'Maribor', 46.559488, 15.639272, 8.19, 3.0, 'Med tednom: 10:00 - 15:00
Sobota: Zaprto
Nedelja: Zaprto', null, array['Brezmesno','Prava izbira']::text[], 5),
  ('3232', 'Restavracija Eat Smart 2', 'Koroška cesta 80, 2000 Maribor', 'Maribor', 46.559548, 15.633803, 8.19, 3.0, 'Med tednom: 10:00 - 21:00
Sobota: Zaprto
Nedelja: Zaprto', null, array['Brezmesno','Dostop za invalide']::text[], 5),
  ('1827', 'Restavracija Fany & Mary', 'Petkovškovo nabrežje 19, 1000 Ljubljana', 'Ljubljana', 46.052045, 14.508341, 9.0, 3.81, 'Med tednom: 09:00 - 19:00
Sobota: 09:00 - 19:00
Nedelja: 09:00 - 19:00', null, array['Brezmesno','Celiakiji prijazni obroki','Pizza','Odprt ob vikendih']::text[], 4),
  ('2097', 'Restavracija Fresco', 'Slovenska cesta 51, 1000 Ljubljana', 'Ljubljana', 46.055613, 14.504863, 8.99, 3.8, 'Med tednom: 10:00 - 21:00
Sobota: 10:00 - 21:00
Nedelja: 10:00 - 21:00', null, array['Brezmesno','Solatni bar','Odprt ob vikendih']::text[], 5),
  ('3134', 'Restavracija FS, Fakulteta za strojništvo', 'Aškerčeva ulica 6, 1000 Ljubljana', 'Ljubljana', 46.046858, 14.498428, 8.62, 3.43, 'Ponedeljek: 10:30 - 14:30
Torek: 10:30 - 14:30
Sreda: 10:30 - 14:30
Četrtek: 10:30 - 14:30
Petek: 10:00 - 14:00
Sobota: Zaprto
Nedelja: Zaprto', null, array['Brezmesno','Dostop za invalide']::text[], 4),
  ('3036', 'Restavracija in maloprodaja Hermine Wech - Koroška perutnina', 'Gačnikova pot 2, 2390 Ravne na Koroškem', 'Ravne na Koroškem', 46.544365, 14.962754, 7.8, 2.61, 'Med tednom: 08:00 - 18:00
Sobota: 08:00 - 14:00
Nedelja: Zaprto', null, array['Brezmesno','Dostop za invalide','Odprt ob vikendih']::text[], 5),
  ('3038', 'Restavracija in maloprodaja Hermine Wech - Koroška perutnina', 'Ozare, 2380 Slovenj Gradec', 'Slovenj Gradec', 46.507585, 15.076816, 7.8, 2.61, 'Med tednom: 08:00 - 17:00
Sobota: 08:00 - 14:00
Nedelja: Zaprto', null, array['Brezmesno','Solatni bar','Dostop za invalide','Odprt ob vikendih']::text[], 2),
  ('2343', 'Restavracija in pivnica Zvezda', 'Trg zmage 8, 9000 Murska Sobota', 'Murska Sobota', 46.660916, 16.164826, 8.5, 3.31, 'Med tednom: 10:00 - 20:00
Sobota: 10:00 - 20:00
Nedelja: Zaprto', null, array['Brezmesno','Solatni bar','Dostop za invalide','Odprt ob vikendih']::text[], 5),
  ('3389', 'Restavracija in prenočišča ČARDA', 'Nemčavci 39c, 9221 Martjanci', 'Martjanci', 46.672667, 16.178896, 9.0, 3.81, 'Ponedeljek: 10:00 - 15:00
Torek: 10:00 - 15:00
Sreda: 10:00 - 15:00
Četrtek: 10:00 - 15:00
Petek: 10:00 - 15:00
Sobota: 10:00 - 15:00
Nedelja: Zaprto', null, array['Brezmesno','Solatni bar','Odprt ob vikendih']::text[], 5),
  ('1195', 'Restavracija Interspar Celje', 'Mariborska 100, 3000 Celje', 'Celje', 46.241757, 15.276116, 8.76, 3.57, 'Med tednom: 10:00 - 18:00
Sobota: 10:00 - 18:00
Nedelja: Zaprto', null, array['Brezmesno','Solatni bar','Dostop za invalide','Študentske ugodnosti','Prava izbira','Odprt ob vikendih']::text[], 4),
  ('1369', 'Restavracija Interspar Citypark', 'Šmartinska 152g, 1000 Ljubljana', 'Ljubljana', 46.070237, 14.549039, 8.76, 3.57, 'Med tednom: 10:00 - 18:00
Sobota: 10:00 - 18:00
Nedelja: Zaprto', null, array['Brezmesno','Solatni bar','Dostop za invalide','Študentske ugodnosti','Prava izbira','Odprt ob vikendih']::text[], 4),
  ('1023', 'Restavracija Interspar Koper', 'Ankaranska cesta 3A, 6000 Koper/Capodistria', 'Koper', 45.543218, 13.741023, 8.76, 3.57, 'Med tednom: 10:00 - 18:00
Sobota: 10:00 - 18:00
Nedelja: Zaprto', null, array['Brezmesno','Solatni bar','Dostop za invalide','Študentske ugodnosti','Prava izbira','Odprt ob vikendih']::text[], 5),
  ('1198', 'Restavracija Interspar Kranj', 'Cesta 1.maja 77, 4000 Kranj', 'Kranj', 46.231797, 14.364596, 8.76, 3.57, 'Med tednom: 10:00 - 18:00
Sobota: 10:00 - 18:00
Nedelja: Zaprto', null, array['Brezmesno','Solatni bar','Dostop za invalide','Študentske ugodnosti','Prava izbira','Odprt ob vikendih']::text[], 5),
  ('1194', 'Restavracija Interspar Maribor Europark', 'Pobreška 18, 2000 Maribor', 'Maribor', 46.554734, 15.65348, 8.76, 3.57, 'Med tednom: 10:00 - 18:00
Sobota: 10:00 - 18:00
Nedelja: Zaprto', null, array['Brezmesno','Solatni bar','Dostop za invalide','Študentske ugodnosti','Prava izbira','Odprt ob vikendih']::text[], 5),
  ('1197', 'Restavracija Interspar Maribor2 Supernova Qlandia', 'Cesta Proletarskih brigad 100, 2000 Maribor', 'Maribor', 46.546433, 15.618417, 8.76, 3.57, 'Med tednom: 10:00 - 18:00
Sobota: 10:00 - 18:00
Nedelja: Zaprto', null, array['Brezmesno','Solatni bar','Dostop za invalide','Študentske ugodnosti','Prava izbira','Odprt ob vikendih']::text[], 5),
  ('1025', 'Restavracija Interspar Nova Gorica', 'Cesta 25. junija 1a, 5000 Nova Gorica', 'Nova Gorica', 45.955509, 13.657204, 8.76, 3.57, 'Med tednom: 10:00 - 18:00
Sobota: 10:00 - 18:00
Nedelja: Zaprto', null, array['Brezmesno','Solatni bar','Dostop za invalide','Študentske ugodnosti','Prava izbira','Odprt ob vikendih']::text[], 5),
  ('1370', 'Restavracija Interspar Vič', 'Jamova 105, 1000 Ljubljana', 'Ljubljana', 46.039678, 14.476703, 8.76, 3.57, 'Med tednom: 10:00 - 18:00
Sobota: 10:00 - 18:00
Nedelja: Zaprto', null, array['Brezmesno','Solatni bar','Dostop za invalide','Študentske ugodnosti','Prava izbira','Odprt ob vikendih']::text[], 5),
  ('2040', 'Restavracija Kitajska palača', 'Focheva ulica 41, 2000 Maribor', 'Maribor', 46.545366, 15.643939, 8.3, 3.11, 'Ponedeljek: 11:00 - 21:00
Torek: 11:00 - 21:00
Sreda: 11:00 - 21:00
Četrtek: 11:00 - 21:00
Petek: 11:00 - 21:00
Sobota: 11:00 - 21:00
Nedelja: 11:00 - 21:00', null, array['Brezmesno','Odprt ob vikendih']::text[], 5),
  ('2775', 'Restavracija Kitajska palača - DOSTAVA', 'Focheva ulica 41, 2000 Maribor', 'Maribor', 46.545366, 15.643939, 9.0, 3.81, 'Ponedeljek: 11:00 - 21:00
Torek: 11:00 - 21:00
Sreda: 11:00 - 21:00
Četrtek: 11:00 - 21:00
Petek: 11:00 - 21:00
Sobota: 11:00 - 21:00
Nedelja: 11:00 - 21:00', null, array['Brezmesno','Dostava','Odprt ob vikendih']::text[], 4),
  ('1768', 'Restavracija klub Cankarjevega doma', 'Prešernova cesta 10, 1000 Ljubljana', 'Ljubljana', 46.050043, 14.498836, 9.0, 3.81, 'Med tednom: 10:00 - 14:00
Sobota: Zaprto
Nedelja: Zaprto', null, array['Brezmesno','Solatni bar','Dostop za invalide']::text[], 5),
  ('1263', 'Restavracija Kolodvorska', 'Cesta talcev 37, 3320 Velenje', 'Velenje', 46.363364, 15.103754, 9.0, 3.81, 'Med tednom: 09:00 - 17:00
Sobota: 09:00 - 15:00
Nedelja: Zaprto', null, array['Brezmesno','Solatni bar','Dostop za invalide','Odprt ob vikendih']::text[], 5),
  ('3096', 'Restavracija Kompliment', 'Kidričeva cesta 75, 4220 Škofja Loka', 'Škofja Loka', 46.170667, 14.342255, 9.0, 3.81, 'Med tednom: 09:00 - 14:00
Sobota: Zaprto
Nedelja: Zaprto', null, array['Brezmesno','Solatni bar']::text[], 5),
  ('1713', 'Restavracija Letališka', 'Letališka cesta 15, 1000 Ljubljana', 'Ljubljana', 46.061963, 14.552553, 6.8, 1.61, 'Med tednom: 10:00 - 14:00
Sobota: Zaprto
Nedelja: Zaprto', null, array['Solatni bar','Študentske ugodnosti']::text[], 5),
  ('2085', 'Restavracija Mango', 'Turnerjeva ulica 17, 2000 Maribor', 'Maribor', 46.563169, 15.629657, 8.44, 3.25, 'Ponedeljek: 11:00 - 21:00
Torek: 11:00 - 21:00
Sreda: 11:00 - 21:00
Četrtek: 11:00 - 21:00
Petek: 11:00 - 21:00
Sobota: 11:00 - 20:00
Nedelja: Zaprto', null, array['Brezmesno','Solatni bar','Odprt ob vikendih']::text[], 5),
  ('2649', 'Restavracija McDonalds - Citycenter Celje', 'Mariborska cesta 100, 3000 Celje', 'Celje', 46.241903, 15.277407, 7.8, 2.61, 'Ponedeljek: 09:00 - 21:00
Torek: 09:00 - 21:00
Sreda: 09:00 - 21:00
Četrtek: 09:00 - 21:00
Petek: 09:00 - 21:00
Sobota: 08:00 - 21:00
Nedelja: Zaprto', null, array['Brezmesno','Dostop za invalide','Odprt ob vikendih']::text[], 4),
  ('2759', 'Restavracija McDonalds - Ptuj', 'Ormoška cesta 3, 2250 Ptuj', 'Ptuj', 46.418896, 15.877108, 7.8, 2.61, 'Med tednom: 08:00 - 23:59
Sobota: 08:00 - 23:59
Nedelja: 08:00 - 23:59', null, array['Brezmesno','Dostop za invalide','Odprt ob vikendih']::text[], 4),
  ('3144', 'Restavracija Mensana', 'Slomškova ulica 49, 9000 Murska Sobota', 'Murska Sobota', 46.657991, 16.163853, 8.2, 3.01, 'Med tednom: 10:00 - 15:00
Sobota: Zaprto
Nedelja: Zaprto', null, array['Brezmesno','Dostop za invalide']::text[], 5),
  ('3236', 'Restavracija Menza IJS', 'Jamova cesta 39, 1000 Ljubljana', 'Ljubljana', 46.042839, 14.487633, 8.2, 3.01, 'Med tednom: 10:30 - 14:30
Sobota: Zaprto
Nedelja: Zaprto', null, array['Brezmesno','Dostop za invalide']::text[], 4),
  ('2721', 'Restavracija Modri kvadrat', 'Davčna ulica 1, 1000 Ljubljana', 'Ljubljana', 46.065008, 14.526828, 8.5, 3.31, 'Med tednom: 09:00 - 14:00
Sobota: Zaprto
Nedelja: Zaprto', null, array['Brezmesno','Solatni bar','Dostop za invalide']::text[], 4),
  ('1382', 'Restavracija Mozart', 'Stegne 7, 1000 Ljubljana', 'Ljubljana', 46.081649, 14.486736, 8.5, 3.31, 'Med tednom: 09:00 - 15:00
Sobota: Zaprto
Nedelja: Zaprto', null, array['Brezmesno','Dostop za invalide']::text[], 5),
  ('3172', 'Restavracija Mozart P.E. Ekonomska fakulteta', 'Kardeljeva ploščad 17, 1000 Ljubljana', 'Ljubljana', 46.074017, 14.516449, 8.5, 3.31, 'Med tednom: 07:00 - 15:30
Sobota: Zaprto
Nedelja: Zaprto', null, array['Brezmesno','Dostop za invalide']::text[], 4),
  ('3049', 'Restavracija Mr.Falafel', 'Gosposka ulica 30, 2000 Maribor', 'Maribor', 46.559862, 15.646785, 9.0, 3.81, 'Med tednom: 11:00 - 21:00
Sobota: 11:00 - 21:00
Nedelja: 11:00 - 18:00', null, array['Brezmesno','Odprt ob vikendih']::text[], 4),
  ('3179', 'Restavracija OAZA Pef', 'Kardeljeva ploščad 16, 1000 Ljubljana', 'Ljubljana', 46.075416, 14.517989, 7.99, 2.8, 'Med tednom: 10:30 - 15:00
Sobota: Zaprto
Nedelja: Zaprto', null, array['Brezmesno','Študentske ugodnosti']::text[], 5),
  ('3241', 'Restavracija Pergola', 'Tomažičeva ulica 10, 6310 Izola/Isola', 'Izola', 45.532802, 13.651023, 8.4, 3.21, 'Ponedeljek: 08:00 - 21:00
Torek: 08:00 - 21:00
Sreda: 08:00 - 21:00
Četrtek: 08:00 - 21:00
Petek: 08:00 - 21:00
Sobota: 08:00 - 21:00
Nedelja: 08:00 - 21:00', null, array['Brezmesno','Solatni bar','Odprt ob vikendih']::text[], 5),
  ('3240', 'Restavracija PF, Pravna fakulteta', 'Poljanski nasip 2, 1000 Ljubljana', 'Ljubljana', 46.051525, 14.511099, 8.62, 3.43, 'Ponedeljek: 10:30 - 15:00
Torek: 10:30 - 15:00
Sreda: 10:30 - 15:00
Četrtek: 10:30 - 15:00
Petek: 10:00 - 14:00
Sobota: Zaprto
Nedelja: Zaprto', null, array['Brezmesno','Dostop za invalide']::text[], 4),
  ('3396', 'Restavracija Piano', 'Koroška cesta 160, 2000 Maribor', 'Maribor', 46.563898, 15.623931, 8.24, 3.05, 'Ponedeljek: 10:00 - 15:30
Torek: 10:00 - 15:30
Sreda: 10:00 - 15:30
Četrtek: 10:00 - 15:30
Petek: 10:00 - 14:30
Sobota: Zaprto
Nedelja: Zaprto', null, array['Brezmesno','Solatni bar']::text[], 4),
  ('3376', 'Restavracija pizza Bella Napoli', 'Moskovska ulica 11, 1000 Ljubljana', 'Ljubljana', 46.065363, 14.55022, 9.0, 3.81, 'Med tednom: 11:00 - 20:30
Sobota: 11:00 - 20:30
Nedelja: 11:00 - 20:30', null, array['Dostop za invalide','Odprt ob vikendih']::text[], 5),
  ('1360', 'Restavracija Plečnikov hram', 'Trg francoske revolucije 2, 1000 Ljubljana', 'Ljubljana', 46.047078, 14.503406, 8.8, 3.61, 'Med tednom: 09:00 - 18:00
Sobota: 11:00 - 15:00
Nedelja: Zaprto', null, array['Brezmesno','Odprt ob vikendih']::text[], 4),
  ('2180', 'Restavracija Prestige catering, GZS', 'Dimičeva ulica 13, 1000 Ljubljana', 'Ljubljana', 46.07159, 14.514827, 7.74, 2.55, 'Med tednom: 10:00 - 14:00
Sobota: Zaprto
Nedelja: Zaprto', null, array['Brezmesno','Solatni bar','Dostop za invalide','Prava izbira']::text[], 5),
  ('1321', 'Restavracija Rdeče jabolko', 'Tržaška 116, 1000 Ljubljana', 'Ljubljana', 46.039898, 14.473018, 9.0, 3.81, 'Ponedeljek: Zaprto
Torek: 12:00 - 22:00
Sreda: 12:00 - 22:00
Četrtek: 12:00 - 22:00
Petek: 12:00 - 22:00
Sobota: 12:00 - 22:00
Nedelja: 12:00 - 22:00', null, array['Brezmesno','Odprt ob vikendih']::text[], 5),
  ('2884', 'Restavracija sarajevskih jedi Valter Jesenice', 'Cesta Maršala Tita 106, 4270 Jesenice', 'Jesenice', 46.441619, 14.039078, 9.0, 3.81, 'Med tednom: 10:00 - 22:00
Sobota: 12:00 - 22:00
Nedelja: 12:00 - 22:00', null, array['Brezmesno','Odprt ob vikendih']::text[], 5),
  ('1298', 'Restavracija Splošne bolnišnice Novo mesto', 'Šmihelska cesta 1, 8000 Novo mesto', 'Novo mesto', 45.800237, 15.163002, 7.0, 1.81, 'Med tednom: 09:00 - 15:00
Sobota: 13:00 - 14:30
Nedelja: 13:00 - 14:30', null, array['Javni zavod','Odprt ob vikendih']::text[], 5),
  ('3156', 'Restavracija Vrtnica', 'Kidričeva ulica 11, 5000 Nova Gorica', 'Nova Gorica', 45.957599, 13.648926, 8.02, 2.83, 'Med tednom: 10:00 - 15:00
Sobota: Zaprto
Nedelja: Zaprto', null, array['Brezmesno','Solatni bar']::text[], 5),
  ('3324', 'Restavracija Zadružnik Kozje', 'Kozje 141a, 3260 Kozje', 'Kozje', 46.073321, 15.559672, 7.22, 2.03, 'Med tednom: 09:00 - 13:00
Sobota: 09:00 - 12:00
Nedelja: Zaprto', null, array['Brezmesno','Dostop za invalide','Odprt ob vikendih']::text[], 4),
  ('3323', 'Restavracija Zadružnik Šmarje', 'Obrtniška ulica 3, 3240 Šmarje pri Jelšah', 'Šmarje pri Jelšah', 46.22989, 15.523991, 7.22, 2.03, 'Med tednom: 09:00 - 15:00
Sobota: 09:00 - 13:00
Nedelja: Zaprto', null, array['Brezmesno','Odprt ob vikendih']::text[], 5),
  ('3336', 'Restavracija Zeleni Park', 'Cesta Zore Perello - Godina 2, 6000 Koper/Capodistria', 'Koper', 45.544774, 13.726931, 9.0, 3.81, 'Ponedeljek: 12:00 - 16:30
Torek: 12:00 - 16:30
Sreda: 12:00 - 16:30
Četrtek: 12:00 - 16:30
Petek: 12:00 - 16:30
Sobota: Zaprto
Nedelja: Zaprto', null, array['Brezmesno']::text[], 5),
  ('2698', 'Restavracija Zlata sreča', 'Metelkova ulica 29, 2000 Maribor', 'Maribor', 46.543881, 15.638065, 8.16, 2.97, 'Med tednom: 11:00 - 21:00
Sobota: 14:00 - 21:00
Nedelja: 14:00 - 21:00', null, array['Brezmesno','Odprt ob vikendih']::text[], 5),
  ('3289', 'Rex', 'Dunajska cesta 123, 1000 Ljubljana', 'Ljubljana', 46.075941, 14.509468, 9.0, 3.81, 'Med tednom: 10:00 - 22:00
Sobota: 12:00 - 22:00
Nedelja: Zaprto', null, array['Brezmesno','Odprt ob vikendih']::text[], 4),
  ('3220', 'RIKŠA CURRY&WOK', 'Resljeva cesta 1, 1000 Ljubljana', 'Ljubljana', 46.052316, 14.510093, 9.0, 3.81, 'Med tednom: 12:00 - 20:30
Sobota: 12:00 - 20:30
Nedelja: 12:00 - 20:30', null, array['Brezmesno','Odprt ob vikendih']::text[], 4),
  ('2739', 'Roza slon', 'Trg OF 14, 1000 Ljubljana', 'Ljubljana', 46.057443, 14.508752, 7.82, 2.63, 'Ponedeljek: 13:00 - 22:00
Torek: 13:00 - 22:00
Sreda: 13:00 - 22:00
Četrtek: 13:00 - 22:00
Petek: 13:00 - 22:00
Sobota: 12:00 - 20:00
Nedelja: Zaprto', null, array['Odprt ob vikendih']::text[], 5),
  ('2859', 'Roza slon Bežigrad', 'Dunajska 115, 1000 Ljubljana', 'Ljubljana', 46.07502, 14.51101, 7.82, 2.63, 'Med tednom: 13:00 - 22:00
Sobota: 12:00 - 20:00
Nedelja: Zaprto', null, array['Brezmesno','Odprt ob vikendih']::text[], 4),
  ('3225', 'Roza slon BTC', 'Kajuhova 32/R, 1000 Ljubljana', 'Ljubljana', 46.057764, 14.54034, 7.82, 2.63, 'Med tednom: 11:00 - 17:00
Sobota: Zaprto
Nedelja: Zaprto', null, array['Brezmesno']::text[], 5),
  ('3224', 'Roza slon Vič', 'Tržaška cesta 116, 1000 Ljubljana', 'Ljubljana', 46.039997, 14.472476, 7.82, 2.63, 'Med tednom: 10:00 - 17:00
Sobota: Zaprto
Nedelja: Zaprto', null, array['Brezmesno']::text[], 5),
  ('3072', 'Ruby food', 'Igriška ulica 5, 1000 Ljubljana', 'Ljubljana', 46.048082, 14.499302, 8.14, 2.95, 'Ponedeljek: 10:30 - 16:00
Torek: 10:30 - 16:00
Sreda: 10:30 - 16:00
Četrtek: 10:30 - 16:00
Petek: 10:30 - 16:00
Sobota: Zaprto
Nedelja: Zaprto', null, array['Brezmesno']::text[], 5),
  ('2781', 'Samopostrežna restavracija Stolpič', 'Mariborska cesta 7, 3000 Celje', 'Celje', 46.233737, 15.267788, 8.0, 2.81, 'Med tednom: 09:00 - 14:30
Sobota: Zaprto
Nedelja: Zaprto', null, array['Brezmesno']::text[], 4),
  ('3340', 'SB Nova Gorica', 'Ulica padlih borcev 13a, 5290 Šempeter pri Gorici', 'Šempeter pri Gorici', 45.929296, 13.642009, 8.0, 2.81, 'Med tednom: 11:00 - 16:00
Sobota: 11:30 - 12:30
Nedelja: 11:30 - 12:30', null, array['Brezmesno','Celiakiji prijazni obroki','Javni zavod','Odprt ob vikendih']::text[], 5),
  ('3365', 'Shaolin', 'Hacquetova ulica 5, 1000 Ljubljana', 'Ljubljana', 46.060631, 14.514628, 9.0, 3.81, 'Med tednom: 10:00 - 22:00
Sobota: 10:00 - 22:00
Nedelja: 10:00 - 22:00', null, array['Brezmesno','Odprt ob vikendih']::text[], 5),
  ('1367', 'Skriti kot - mestna gostilna', 'Ajdovščina 4, 1000 Ljubljana', 'Ljubljana', 46.053703, 14.504993, 9.0, 3.81, 'Ponedeljek: 10:30 - 18:00
Torek: 10:30 - 18:00
Sreda: 10:30 - 18:00
Četrtek: 10:30 - 18:00
Petek: 10:30 - 17:00
Sobota: Zaprto
Nedelja: Zaprto', null, array['Brezmesno','Solatni bar']::text[], 5),
  ('3069', 'Splošna bolnišnica Brežice', 'Černelčeva cesta 15, 8250 Brežice', 'Brežice', 45.90849, 15.593572, 9.0, 3.81, 'Med tednom: 10:00 - 14:00
Sobota: 10:00 - 14:00
Nedelja: 10:00 - 14:00', null, array['Javni zavod','Odprt ob vikendih']::text[], 5),
  ('2641', 'Splošna bolnišnica Izola', 'Polje 40, 6310 Izola/Isola', 'Izola', 45.544424, 13.687097, 8.0, 2.81, 'Med tednom: 12:00 - 16:00
Sobota: Zaprto
Nedelja: Zaprto', null, array['Brezmesno','Javni zavod']::text[], 5),
  ('2263', 'Srednja šola Izola - Scuola media Isola', 'Prekomorskih brigad 7, 6310 Izola/Isola', 'Izola', 45.535212, 13.658361, 8.0, 2.81, 'Med tednom: 11:30 - 15:30
Sobota: Zaprto
Nedelja: Zaprto', null, array['Brezmesno','Javni zavod']::text[], 5),
  ('2569', 'Stari Grill', 'Glavni trg 5, 2000 Maribor', 'Maribor', 46.557368, 15.645041, 8.2, 3.01, 'Med tednom: 09:00 - 20:00
Sobota: 09:00 - 20:00
Nedelja: Zaprto', null, array['Brezmesno','Solatni bar','Odprt ob vikendih']::text[], 4),
  ('3265', 'Subway - Bavarc', 'Slovenska cesta 56, 1000 Ljubljana', 'Ljubljana', 46.056163, 14.506251, 7.24, 2.05, 'Med tednom: 08:00 - 23:00
Sobota: 09:00 - 23:00
Nedelja: 09:00 - 23:00', null, array['Brezmesno','Celiakiji prijazni obroki','Odprt ob vikendih']::text[], 4),
  ('2714', 'Subway - Center', 'Slovenska cesta 1, 1000 Ljubljana', 'Ljubljana', 46.046919, 14.500933, 7.24, 2.05, 'Med tednom: 08:00 - 23:00
Sobota: 09:00 - 23:00
Nedelja: 09:00 - 23:00', null, array['Brezmesno','Celiakiji prijazni obroki','Odprt ob vikendih']::text[], 4),
  ('2389', 'Subway Bežigrad', 'Dunajska cesta 107, 1000 Ljubljana', 'Ljubljana', 46.058966, 14.506465, 7.1, 1.91, 'Med tednom: 08:00 - 22:00
Sobota: 09:00 - 22:00
Nedelja: 09:00 - 22:00', null, array['Brezmesno','Celiakiji prijazni obroki','Odprt ob vikendih']::text[], 4),
  ('2988', 'Subway BTC', 'Ameriška ulica 13, 1000 Ljubljana', 'Ljubljana', 46.068108, 14.542046, 7.1, 1.91, 'Med tednom: 08:00 - 21:00
Sobota: 09:00 - 21:00
Nedelja: Zaprto', null, array['Brezmesno','Celiakiji prijazni obroki','Odprt ob vikendih']::text[], 4),
  ('3374', 'SUBWAY KOPER', 'Ankaranska cesta 2, 6000 Koper/Capodistria', 'Koper', 45.539983, 13.735618, 7.1, 1.91, 'Med tednom: 10:00 - 21:00
Sobota: 10:00 - 21:00
Nedelja: Zaprto', null, array['Brezmesno','Dostop za invalide','Celiakiji prijazni obroki','Odprt ob vikendih']::text[], 4),
  ('3363', 'Šavirma', 'Štefanova ulica 5, 1000 Ljubljana', 'Ljubljana', 46.053295, 14.502894, 5.19, 0.0, 'Ponedeljek: 11:00 - 22:00
Torek: 10:00 - 22:00
Sreda: 10:00 - 22:00
Četrtek: 10:00 - 22:00
Petek: 10:00 - 22:00
Sobota: 10:00 - 22:00
Nedelja: Zaprto', null, array['Brezmesno','Odprt ob vikendih']::text[], 4),
  ('2092', 'Šeherezada', 'Trubarjeva cesta 31, 1000 Ljubljana', 'Ljubljana', 46.052526, 14.509833, 7.74, 2.55, 'Med tednom: 08:00 - 22:00
Sobota: 08:00 - 22:00
Nedelja: 10:00 - 22:00', null, array['Brezmesno','Odprt ob vikendih']::text[], 4),
  ('3159', 'Šeherezada 2', 'Slovenska cesta 55, 1000 Ljubljana', 'Ljubljana', 46.056384, 14.50506, 7.74, 2.55, 'Med tednom: 08:00 - 22:00
Sobota: 08:00 - 22:00
Nedelja: 10:00 - 22:00', null, array['Brezmesno','Odprt ob vikendih']::text[], 5),
  ('1841', 'ŠENDTVIČ', 'Prušnikova ulica 87, 1210 Ljubljana - Šentvid', 'Ljubljana', 46.096536, 14.466339, 9.0, 3.81, 'Med tednom: 09:00 - 17:00
Sobota: Zaprto
Nedelja: Zaprto', null, array['Brezmesno']::text[], 4),
  ('3329', 'Šiš okrepčevalnica', 'Usnjarska ulica 5, 2000 Maribor', 'Maribor', 46.556561, 15.647053, 8.52, 3.33, 'Ponedeljek: 10:00 - 22:00
Torek: 10:00 - 22:00
Sreda: 10:00 - 22:00
Četrtek: 10:00 - 22:00
Petek: 10:00 - 23:00
Sobota: 11:00 - 23:00
Nedelja: 11:00 - 23:00', null, array['Brezmesno','Celiakiji prijazni obroki','Odprt ob vikendih']::text[], 4),
  ('2523', 'Športni bar SLOVAN', 'Gortanova 21, 1000 Ljubljana', 'Ljubljana', 46.050359, 14.533207, 6.9, 1.71, 'Med tednom: 07:00 - 19:00
Sobota: Zaprto
Nedelja: Zaprto', null, array['Brezmesno']::text[], 4),
  ('2213', 'Študentski dom Ljubljana - Restavracija', 'Svetčeva ulica 9, 1000 Ljubljana', 'Ljubljana', 46.051935, 14.487097, 8.0, 2.81, 'Med tednom: 11:00 - 17:00
Sobota: Zaprto
Nedelja: Zaprto', null, array['Brezmesno','Prava izbira','Javni zavod']::text[], 4),
  ('3202', 'Taverna Palermo', 'Ulica Heroja Nandeta 31, 2000 Maribor', 'Maribor', 46.532658, 15.673326, 8.76, 3.57, 'Ponedeljek: 09:30 - 16:30
Torek: 09:30 - 16:30
Sreda: 09:30 - 16:30
Četrtek: 09:30 - 16:30
Petek: 09:30 - 19:00
Sobota: 11:00 - 19:00
Nedelja: Zaprto', null, array['Brezmesno','Odprt ob vikendih']::text[], 4),
  ('3203', 'Taverna Palermo - DOSTAVA', 'Ulica Heroja Nandeta 31, 2000 Maribor', 'Maribor', 46.532658, 15.673326, 8.76, 3.57, 'Ponedeljek: 10:00 - 16:00
Torek: 10:00 - 16:00
Sreda: 10:00 - 16:00
Četrtek: 10:00 - 16:00
Petek: 10:00 - 19:00
Sobota: 11:00 - 19:00
Nedelja: Zaprto', null, array['Brezmesno','Dostava','Odprt ob vikendih']::text[], 4),
  ('3288', 'The Place', 'Plečnikov trg 1, 1000 Ljubljana', 'Ljubljana', 46.05027, 14.502339, 9.0, 3.81, 'Ponedeljek: 12:00 - 22:00
Torek: 12:00 - 22:00
Sreda: 12:00 - 22:00
Četrtek: 12:00 - 22:00
Petek: 12:00 - 22:00
Sobota: Zaprto
Nedelja: Zaprto', null, array['Brezmesno']::text[], 3),
  ('3380', 'Top Pizza', 'Igriška ulica 5, 1000 Ljubljana', 'Ljubljana', 46.047986, 14.499489, 8.0, 2.81, 'Med tednom: 10:00 - 21:00
Sobota: 13:30 - 21:00
Nedelja: 13:30 - 21:00', null, array['Brezmesno','Odprt ob vikendih']::text[], 5),
  ('3253', 'Tvoj Chef Restavracija', 'Cesta 9. avgusta 8c, 1410 Zagorje ob Savi', 'Zagorje ob Savi', 46.134422, 14.99528, 9.0, 3.81, 'Ponedeljek: 08:00 - 15:00
Torek: 08:00 - 21:00
Sreda: 08:00 - 21:00
Četrtek: 08:00 - 21:00
Petek: 08:00 - 21:00
Sobota: 12:00 - 21:00
Nedelja: Zaprto', null, array['Brezmesno','Odprt ob vikendih']::text[], 4),
  ('3398', 'U Sushi', 'Tržaška cesta 65, 2000 Maribor', 'Maribor', 46.52439, 15.650164, 9.0, 3.81, 'Ponedeljek: 12:00 - 21:00
Torek: 12:00 - 21:00
Sreda: 12:00 - 21:00
Četrtek: 12:00 - 21:00
Petek: 12:00 - 21:00
Sobota: 12:00 - 21:00
Nedelja: 12:00 - 21:00', null, array['Dostop za invalide','Odprt ob vikendih']::text[], 5),
  ('1262', 'UFO', 'Svetčeva ulica 14, 1000 Ljubljana', 'Ljubljana', 46.051198, 14.486788, 8.19, 3.0, 'Ponedeljek: 11:00 - 22:00
Torek: 11:00 - 22:00
Sreda: 11:00 - 22:00
Četrtek: 11:00 - 22:00
Petek: 11:00 - 17:00
Sobota: Zaprto
Nedelja: Zaprto', null, array['Brezmesno']::text[], 4),
  ('3328', 'URNEBES URBAN GRILL', 'Koroška cesta 20, 2000 Maribor', 'Maribor', 46.558041, 15.642565, 8.0, 2.81, 'Ponedeljek: 10:00 - 22:00
Torek: 10:00 - 22:00
Sreda: 10:00 - 22:00
Četrtek: 10:00 - 22:00
Petek: 10:00 - 22:00
Sobota: 13:00 - 22:00
Nedelja: 14:00 - 22:00', null, array['Odprt ob vikendih']::text[], 5),
  ('3226', 'Uršin bistro', 'Poljanska 22, 1000 Ljubljana', 'Ljubljana', 46.049579, 14.516821, 8.8, 3.61, 'Ponedeljek: 08:00 - 17:00
Torek: 08:00 - 17:00
Sreda: 08:00 - 17:00
Četrtek: 08:00 - 17:00
Petek: 08:00 - 15:00
Sobota: Zaprto
Nedelja: Zaprto', null, array['Brezmesno']::text[], 4),
  ('3356', 'Vegetarijanska in veganska restavracija Jamuna', 'Ajdovščina 4, 1000 Ljubljana', 'Ljubljana', 46.053552, 14.505284, 9.0, 3.81, 'Med tednom: 11:00 - 18:00
Sobota: Zaprto
Nedelja: Zaprto', null, array['Brezmesno','Solatni bar']::text[], 5),
  ('1339', 'Vegetarijanska restavracija Radha Govinda', 'Žibretova 23, 1000 Ljubljana', 'Ljubljana', 46.062892, 14.498973, 9.0, 3.81, 'Med tednom: 11:00 - 18:00
Sobota: 11:00 - 18:00
Nedelja: Zaprto', null, array['Brezmesno','Solatni bar','Odprt ob vikendih']::text[], 5),
  ('3348', 'Vila de Casa Cafe', 'Gosarjeva ulica 5, 1000 Ljubljana', 'Ljubljana', 46.074607, 14.515152, 9.0, 3.81, 'Med tednom: 08:00 - 18:00
Sobota: Zaprto
Nedelja: Zaprto', null, array['Brezmesno','Dostop za invalide']::text[], 4),
  ('3117', 'Vino & ribe Aleja', 'Rakuševa ulica 1, 1000 Ljubljana', 'Ljubljana', 46.07829, 14.483678, 9.0, 3.81, 'Med tednom: 11:00 - 21:00
Sobota: 11:00 - 21:00
Nedelja: 12:00 - 18:00', null, array['Brezmesno','Dostop za invalide','Odprt ob vikendih']::text[], 4),
  ('3201', 'Vino & ribe Rudnik', 'Jurčkova cesta 223, 1000 Ljubljana', 'Ljubljana', 46.021839, 14.535914, 9.0, 3.81, 'Med tednom: 11:00 - 21:00
Sobota: 11:00 - 21:00
Nedelja: 12:00 - 18:00', null, array['Brezmesno','Dostop za invalide','Odprt ob vikendih']::text[], 3),
  ('2742', 'VIVO D125', 'Dunajska cesta 125, 1000 Ljubljana', 'Ljubljana', 46.076453, 14.511536, 9.0, 3.81, 'Med tednom: 10:00 - 14:00
Sobota: Zaprto
Nedelja: Zaprto', null, array['Brezmesno']::text[], 4),
  ('3304', 'Vrt bambus', 'Podutiška cesta 56, 1000 Ljubljana', 'Ljubljana', 46.071066, 14.470603, 9.0, 3.81, 'Ponedeljek: 11:00 - 20:00
Torek: 11:00 - 20:00
Sreda: 11:00 - 20:00
Četrtek: 11:00 - 20:00
Petek: 11:00 - 20:00
Sobota: 11:00 - 20:00
Nedelja: 11:00 - 20:00', null, array['Brezmesno','Odprt ob vikendih']::text[], 5),
  ('3386', 'WHITE SWAN dumpling', 'Slovenska cesta 3, 1000 Ljubljana', 'Ljubljana', 46.047233, 14.501062, 9.0, 3.81, 'Med tednom: 11:00 - 22:00
Sobota: 11:00 - 22:00
Nedelja: Zaprto', null, array['Brezmesno','Odprt ob vikendih']::text[], 5),
  ('3384', 'WHITE SWAN fast food', 'Dunajska cesta 107, 1000 Ljubljana', 'Ljubljana', 46.074318, 14.510871, 9.0, 3.81, 'Med tednom: 10:00 - 22:00
Sobota: 10:00 - 22:00
Nedelja: Zaprto', null, array['Brezmesno','Odprt ob vikendih']::text[], 5),
  ('3383', 'WHITE SWAN fast food', 'Kolodvorska ulica 20, 1000 Ljubljana', 'Ljubljana', 46.056892, 14.51043, 9.0, 3.81, 'Med tednom: 11:00 - 22:00
Sobota: 11:00 - 22:00
Nedelja: Zaprto', null, array['Brezmesno','Odprt ob vikendih']::text[], 4),
  ('3385', 'WHITE SWAN poke bowl', 'Miklošičeva cesta 22, 1000 Ljubljana', 'Ljubljana', 46.054636, 14.507515, 9.0, 3.81, 'Med tednom: 11:00 - 22:00
Sobota: 11:00 - 22:00
Nedelja: Zaprto', null, array['Brezmesno','Odprt ob vikendih']::text[], 4),
  ('3078', 'WOK MIX center', 'Vetrinjska ulic 15, 2000 Maribor', 'Maribor', 46.55937, 15.647724, 7.14, 1.95, 'Med tednom: 10:00 - 20:00
Sobota: 10:00 - 20:00
Nedelja: Zaprto', null, array['Brezmesno','Odprt ob vikendih']::text[], 4),
  ('3273', 'Wok&Roll', 'Mariborska cesta 1, 3000 Celje', 'Celje', 46.232335, 15.266587, 9.0, 3.81, 'Ponedeljek: 11:00 - 18:00
Torek: 11:00 - 18:00
Sreda: 11:00 - 18:00
Četrtek: 11:00 - 18:00
Petek: 11:00 - 18:00
Sobota: 12:00 - 16:00
Nedelja: Zaprto', null, array['Brezmesno','Odprt ob vikendih']::text[], 5),
  ('3345', 'WOOP! arena', 'Moskovska ulica 10, 1000 Ljubljana', 'Ljubljana', 46.06548, 14.547961, 9.0, 3.81, 'Ponedeljek: 11:00 - 15:00
Torek: 11:00 - 19:00
Sreda: 11:00 - 19:00
Četrtek: 11:00 - 19:00
Petek: 11:00 - 19:00
Sobota: 11:00 - 19:00
Nedelja: Zaprto', null, array['Brezmesno','Odprt ob vikendih']::text[], 5),
  ('3355', 'Yimi azijska restavracija', 'Slovenska cesta 55, 1000 Ljubljana', 'Ljubljana', 46.056112, 14.505015, 9.0, 3.81, 'Med tednom: 11:00 - 23:59
Sobota: 17:00 - 22:00
Nedelja: 17:00 - 22:00', null, array['Brezmesno','Odprt ob vikendih']::text[], 5),
  ('3254', 'Zamaro', 'Topniška ulica 29a, 1000 Ljubljana', 'Ljubljana', 46.067636, 14.511347, 7.74, 2.55, 'Med tednom: 11:30 - 15:30
Sobota: Zaprto
Nedelja: Zaprto', null, array['Brezmesno','Solatni bar','Dostop za invalide']::text[], 5),
  ('2952', 'Zbornica bar in žar', 'Rimska cesta 13, 1000 Ljubljana', 'Ljubljana', 46.047428, 14.499858, 9.0, 3.81, 'Med tednom: 12:00 - 21:00
Sobota: Zaprto
Nedelja: Zaprto', null, array['Brezmesno']::text[], 4),
  ('3303', 'Zmajevo mesto', 'Šentjernejska cesta 6, 8000 Novo mesto', 'Novo mesto', 45.799646, 15.182162, 8.0, 2.81, 'Ponedeljek: Zaprto
Torek: 11:00 - 22:00
Sreda: 11:00 - 22:00
Četrtek: 11:00 - 22:00
Petek: 11:00 - 22:00
Sobota: 11:00 - 22:00
Nedelja: 11:00 - 22:00', null, array['Brezmesno','Odprt ob vikendih']::text[], 4),
  ('2993', 'Znanstvena kavarna Mafija', 'Jadranska ulica 21, 1000 Ljubljana', 'Ljubljana', 46.04196, 14.48993, 5.19, 0.0, 'Med tednom: 07:00 - 15:00
Sobota: Zaprto
Nedelja: Zaprto', null, array['Brezmesno','Dostop za invalide']::text[], 4),
  ('3325', 'Žito Celje Prešernova', 'Prešernova ulica 25, 3000 Celje', 'Celje', 46.229278, 15.262349, 5.19, 0.0, 'Med tednom: 07:00 - 16:00
Sobota: Zaprto
Nedelja: Zaprto', null, array['Brezmesno']::text[], 5),
  ('2009', 'Žito Koper', 'Pristaniška ulica 2, 6000 Koper/Capodistria', 'Koper', 45.546168, 13.725994, 5.19, 0.0, 'Ponedeljek: 07:00 - 15:00
Torek: 07:00 - 15:00
Sreda: 07:00 - 15:00
Četrtek: 07:00 - 15:00
Petek: 07:00 - 15:00
Sobota: 07:00 - 13:00
Nedelja: Zaprto', null, array['Brezmesno','Odprt ob vikendih']::text[], 5),
  ('2956', 'Žito Leon Štukelj Maribor', 'Trg Leona Štuklja 1, 2000 Maribor', 'Maribor', 46.559239, 15.648421, 5.19, 0.0, 'Med tednom: 07:00 - 17:00
Sobota: Zaprto
Nedelja: Zaprto', null, array['Brezmesno']::text[], 4),
  ('2771', 'ŽITO Ljubljana Bavarski dvor', 'Slovenska cesta 58, 1000 Ljubljana', 'Ljubljana', 46.056911, 14.505859, 5.19, 0.0, 'Med tednom: 07:00 - 19:00
Sobota: 07:00 - 12:00
Nedelja: Zaprto', null, array['Brezmesno','Odprt ob vikendih']::text[], 5),
  ('3320', 'ŽITO Ljubljana Kolodvorska', 'Kolodvorska 3, 1000 Ljubljana', 'Ljubljana', 46.054898, 14.508774, 5.19, 0.0, 'Med tednom: 07:00 - 18:00
Sobota: 07:00 - 12:00
Nedelja: Zaprto', null, array['Brezmesno','Odprt ob vikendih']::text[], 5),
  ('1791', 'ŽITO Ljubljana Vodnik', 'Vodnikov trg 5, 1000 Ljubljana', 'Ljubljana', 46.050612, 14.509226, 5.19, 0.0, 'Med tednom: 07:00 - 15:00
Sobota: 07:00 - 14:00
Nedelja: Zaprto', null, array['Brezmesno','Odprt ob vikendih']::text[], 5),
  ('2535', 'ŽITO Ljubljana železniška (kolodvor)', 'Trg OF 7, 1000 Ljubljana', 'Ljubljana', 46.057994, 14.511482, 5.19, 0.0, 'Med tednom: 07:00 - 19:00
Sobota: 07:00 - 12:00
Nedelja: Zaprto', null, array['Brezmesno','Odprt ob vikendih']::text[], 5),
  ('2322', 'Žito Maribor Trg revolucije', 'Trg revolucije 2, 2000 Maribor', 'Maribor', 46.554224, 15.64617, 5.19, 0.0, 'Med tednom: 07:00 - 16:00
Sobota: Zaprto
Nedelja: Zaprto', null, array['Brezmesno']::text[], 4),
  ('3343', 'ŽITO Postojna', 'Novi trg 7B, 6230 Postojna', 'Postojna', 45.773493, 14.212328, 5.19, 0.0, 'Med tednom: 07:00 - 14:30
Sobota: Zaprto
Nedelja: Zaprto', null, array['Brezmesno']::text[], 5)
on conflict (id) do update set name = excluded.name, address = excluded.address, city = excluded.city, latitude = excluded.latitude, longitude = excluded.longitude, meal_price = excluded.meal_price, subsidy_price = excluded.subsidy_price, opening_hours = excluded.opening_hours, notice = excluded.notice, features = excluded.features, site_rating = excluded.site_rating, updated_at = now();
