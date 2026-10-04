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
  rating      smallint not null check (rating between 1 and 5),
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
  with check (rating between 1 and 5);

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
