export interface Location {
  id: string;
  name: string;
  address: string | null;
  latitude: number | null;
  longitude: number | null;
  subsidy_price: number | null; // e.g. 3.50
  opening_hours: string | null;
  city?: string;
}

export interface DailyMenu {
  id: string;
  location_id: string;
  menu_date: string; // ISO format YYYY-MM-DD
  dishes: string[]; // array of meal options
}

export interface Review {
  id: string;
  location_id: string;
  user_id?: string;
  rating: number; // 1 to 5
  comment: string | null;
  created_at: string;
  user_email?: string; // Optional user info
  author_name?: string; // Student nickname/name
}

export interface LocationWithDetails extends Location {
  daily_menu?: DailyMenu | null;
  reviews?: Review[];
  avg_rating?: number;
  review_count?: number;
}
