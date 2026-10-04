/** Lokal iz imenika studentska-prehrana.si (src/data/locations.json ali tabela `locations`). */
export interface Location {
  id: string; // ID lokala na studentska-prehrana.si (npr. "1478")
  name: string;
  address: string | null;
  city: string;
  latitude: number | null;
  longitude: number | null;
  meal_price: number | null; // polna cena obroka v EUR
  subsidy_price: number | null; // doplačilo študenta v EUR
  opening_hours: string | null; // vrstice ločene z \n
  notice?: string | null; // opomba lokala (spremenjen delovni čas ipd.)
  features: string[]; // npr. "Brezmesno", "Dostava", "Solatni bar"
  site_rating: number | null; // ocena (1–5) na studentska-prehrana.si
}

export interface DailyMenu {
  location_id: string;
  menu_date: string; // YYYY-MM-DD
  dishes: string[];
}

export interface Review {
  id: string;
  location_id: string;
  author_name: string;
  rating: number; // 1–5
  comment: string | null;
  created_at: string;
  local_only?: boolean; // shranjeno samo v tem brskalniku (Supabase ni povezan)
}

export interface LocationWithDetails extends Location {
  daily_menu?: DailyMenu | null;
  reviews: Review[];
  avg_rating?: number; // povprečje ocen uporabnikov te aplikacije
  review_count: number;
}
