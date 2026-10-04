import { LocationWithDetails } from './supabase/types';

export const INITIAL_LOCATIONS: LocationWithDetails[] = [
  {
    "id": "1478",
    "name": "ABI FALAFEL",
    "address": "Ljubljana, 1000 Ljubljana",
    "city": "Ljubljana",
    "latitude": 46.063,
    "longitude": 14.517,
    "subsidy_price": 3.65,
    "opening_hours": "Pon - Pet: 10:00 - 20:00",
    "avg_rating": 4.8,
    "review_count": 48,
    "daily_menu": {
      "id": "m-1478",
      "location_id": "1478",
      "menu_date": "2026-10-04",
      "dishes": [
        "Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko",
        "Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha",
        "Meni 3: Testenine v paradižnikovi omaki z baziliko, solata"
      ]
    },
    "reviews": [
      {
        "id": "r-1478",
        "location_id": "1478",
        "rating": 5,
        "comment": "Zelo dobra ponudba študentskih bonov!",
        "created_at": "2026-10-04T12:00:00Z",
        "author_name": "Študent"
      }
    ]
  },
  {
    "id": "3316",
    "name": "Aga kebab",
    "address": "Ljubljana, 1000 Ljubljana",
    "city": "Ljubljana",
    "latitude": 46.076,
    "longitude": 14.534,
    "subsidy_price": 3.8,
    "opening_hours": "Pon - Pet: 10:00 - 20:00",
    "avg_rating": 4.6,
    "review_count": 46,
    "daily_menu": {
      "id": "m-3316",
      "location_id": "3316",
      "menu_date": "2026-10-04",
      "dishes": [
        "Meni 1: Classic Beef Burger z ocvrtim krompirčkom in mešano solato",
        "Meni 2: Chicken Burger s svežo solato in omako",
        "Meni 3: Falafel ali Vegi Burger s krompirčkom, sadje"
      ]
    },
    "reviews": [
      {
        "id": "r-3316",
        "location_id": "3316",
        "rating": 5,
        "comment": "Zelo dobra ponudba študentskih bonov!",
        "created_at": "2026-10-04T12:00:00Z",
        "author_name": "Študent"
      }
    ]
  },
  {
    "id": "2999",
    "name": "Ajda burgers &amp; more BTC",
    "address": "Ljubljana, 1000 Ljubljana",
    "city": "Ljubljana",
    "latitude": 46.089,
    "longitude": 14.511,
    "subsidy_price": 3.95,
    "opening_hours": "Pon - Pet: 10:00 - 20:00",
    "avg_rating": 4.9,
    "review_count": 49,
    "daily_menu": {
      "id": "m-2999",
      "location_id": "2999",
      "menu_date": "2026-10-04",
      "dishes": [
        "Meni 1: Classic Beef Burger z ocvrtim krompirčkom in mešano solato",
        "Meni 2: Chicken Burger s svežo solato in omako",
        "Meni 3: Falafel ali Vegi Burger s krompirčkom, sadje"
      ]
    },
    "reviews": [
      {
        "id": "r-2999",
        "location_id": "2999",
        "rating": 5,
        "comment": "Zelo dobra ponudba študentskih bonov!",
        "created_at": "2026-10-04T12:00:00Z",
        "author_name": "Študent"
      }
    ]
  },
  {
    "id": "2549",
    "name": "Ajda burgers &amp; more postaja",
    "address": "Ljubljana, 1000 Ljubljana",
    "city": "Ljubljana",
    "latitude": 46.062,
    "longitude": 14.528,
    "subsidy_price": 4.1,
    "opening_hours": "Pon - Pet: 10:00 - 20:00",
    "avg_rating": 4.9,
    "review_count": 39,
    "daily_menu": {
      "id": "m-2549",
      "location_id": "2549",
      "menu_date": "2026-10-04",
      "dishes": [
        "Meni 1: Classic Beef Burger z ocvrtim krompirčkom in mešano solato",
        "Meni 2: Chicken Burger s svežo solato in omako",
        "Meni 3: Falafel ali Vegi Burger s krompirčkom, sadje"
      ]
    },
    "reviews": [
      {
        "id": "r-2549",
        "location_id": "2549",
        "rating": 5,
        "comment": "Zelo dobra ponudba študentskih bonov!",
        "created_at": "2026-10-04T12:00:00Z",
        "author_name": "Študent"
      }
    ]
  },
  {
    "id": "3347",
    "name": "AL YASMIN arabska restavracija",
    "address": "Ljubljana, 1000 Ljubljana",
    "city": "Ljubljana",
    "latitude": 46.075,
    "longitude": 14.505,
    "subsidy_price": 4.25,
    "opening_hours": "Pon - Pet: 10:00 - 20:00",
    "avg_rating": 4.7,
    "review_count": 37,
    "daily_menu": {
      "id": "m-3347",
      "location_id": "3347",
      "menu_date": "2026-10-04",
      "dishes": [
        "Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko",
        "Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha",
        "Meni 3: Testenine v paradižnikovi omaki z baziliko, solata"
      ]
    },
    "reviews": [
      {
        "id": "r-3347",
        "location_id": "3347",
        "rating": 5,
        "comment": "Zelo dobra ponudba študentskih bonov!",
        "created_at": "2026-10-04T12:00:00Z",
        "author_name": "Študent"
      }
    ]
  },
  {
    "id": "3332",
    "name": "ART kavarna Odeon",
    "address": "Ljubljana, 1000 Ljubljana",
    "city": "Ljubljana",
    "latitude": 46.088,
    "longitude": 14.522,
    "subsidy_price": 4.4,
    "opening_hours": "Pon - Pet: 10:00 - 20:00",
    "avg_rating": 4.2,
    "review_count": 22,
    "daily_menu": {
      "id": "m-3332",
      "location_id": "3332",
      "menu_date": "2026-10-04",
      "dishes": [
        "Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko",
        "Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha",
        "Meni 3: Testenine v paradižnikovi omaki z baziliko, solata"
      ]
    },
    "reviews": [
      {
        "id": "r-3332",
        "location_id": "3332",
        "rating": 5,
        "comment": "Zelo dobra ponudba študentskih bonov!",
        "created_at": "2026-10-04T12:00:00Z",
        "author_name": "Študent"
      }
    ]
  },
  {
    "id": "3275",
    "name": "Avokado",
    "address": "Ljubljana, 1000 Ljubljana",
    "city": "Ljubljana",
    "latitude": 46.061,
    "longitude": 14.539,
    "subsidy_price": 4.55,
    "opening_hours": "Pon - Pet: 10:00 - 20:00",
    "avg_rating": 4.5,
    "review_count": 45,
    "daily_menu": {
      "id": "m-3275",
      "location_id": "3275",
      "menu_date": "2026-10-04",
      "dishes": [
        "Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko",
        "Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha",
        "Meni 3: Testenine v paradižnikovi omaki z baziliko, solata"
      ]
    },
    "reviews": [
      {
        "id": "r-3275",
        "location_id": "3275",
        "rating": 5,
        "comment": "Zelo dobra ponudba študentskih bonov!",
        "created_at": "2026-10-04T12:00:00Z",
        "author_name": "Študent"
      }
    ]
  },
  {
    "id": "2147",
    "name": "Azijska restavracija Han",
    "address": "Ljubljana, 1000 Ljubljana",
    "city": "Ljubljana",
    "latitude": 46.074,
    "longitude": 14.516,
    "subsidy_price": 3.5,
    "opening_hours": "Pon - Pet: 10:00 - 20:00",
    "avg_rating": 4.7,
    "review_count": 37,
    "daily_menu": {
      "id": "m-2147",
      "location_id": "2147",
      "menu_date": "2026-10-04",
      "dishes": [
        "Meni 1: Hrustljavi piščanec v sladko-kisli omaki, pražen riž, zelenjavna juha",
        "Meni 2: Praženi rezanci z zelenjavo in tofujem, solata",
        "Meni 3: Pekinška raca z rižem, pomladni zavitki"
      ]
    },
    "reviews": [
      {
        "id": "r-2147",
        "location_id": "2147",
        "rating": 5,
        "comment": "Zelo dobra ponudba študentskih bonov!",
        "created_at": "2026-10-04T12:00:00Z",
        "author_name": "Študent"
      }
    ]
  },
  {
    "id": "3042",
    "name": "Bar Moment",
    "address": "Ljubljana, 1000 Ljubljana",
    "city": "Ljubljana",
    "latitude": 46.087,
    "longitude": 14.533,
    "subsidy_price": 3.65,
    "opening_hours": "Pon - Pet: 10:00 - 20:00",
    "avg_rating": 4.2,
    "review_count": 12,
    "daily_menu": {
      "id": "m-3042",
      "location_id": "3042",
      "menu_date": "2026-10-04",
      "dishes": [
        "Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko",
        "Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha",
        "Meni 3: Testenine v paradižnikovi omaki z baziliko, solata"
      ]
    },
    "reviews": [
      {
        "id": "r-3042",
        "location_id": "3042",
        "rating": 5,
        "comment": "Zelo dobra ponudba študentskih bonov!",
        "created_at": "2026-10-04T12:00:00Z",
        "author_name": "Študent"
      }
    ]
  },
  {
    "id": "3207",
    "name": "Baščaršija Koper Carpacciov trg",
    "address": "Koper, 6000 Koper",
    "city": "Koper",
    "latitude": 45.55,
    "longitude": 13.74,
    "subsidy_price": 3.8,
    "opening_hours": "Pon - Pet: 10:00 - 20:00",
    "avg_rating": 4.7,
    "review_count": 17,
    "daily_menu": {
      "id": "m-3207",
      "location_id": "3207",
      "menu_date": "2026-10-04",
      "dishes": [
        "Meni 1: Veliki čevapčiči (10x), vroča lepinja, čebula, zeljnata solata, jabolko",
        "Meni 2: Srednji čevapi s kajmakom in lepinjo, solata",
        "Meni 3: Telečja čorba z domačim kruhom, jabolko"
      ]
    },
    "reviews": [
      {
        "id": "r-3207",
        "location_id": "3207",
        "rating": 5,
        "comment": "Zelo dobra ponudba študentskih bonov!",
        "created_at": "2026-10-04T12:00:00Z",
        "author_name": "Študent"
      }
    ]
  },
  {
    "id": "3259",
    "name": "Baščaršija Ljubljana Trubarjeva",
    "address": "Ljubljana, 1000 Ljubljana",
    "city": "Ljubljana",
    "latitude": 46.073,
    "longitude": 14.527,
    "subsidy_price": 3.95,
    "opening_hours": "Pon - Pet: 10:00 - 20:00",
    "avg_rating": 4.9,
    "review_count": 29,
    "daily_menu": {
      "id": "m-3259",
      "location_id": "3259",
      "menu_date": "2026-10-04",
      "dishes": [
        "Meni 1: Veliki čevapčiči (10x), vroča lepinja, čebula, zeljnata solata, jabolko",
        "Meni 2: Srednji čevapi s kajmakom in lepinjo, solata",
        "Meni 3: Telečja čorba z domačim kruhom, jabolko"
      ]
    },
    "reviews": [
      {
        "id": "r-3259",
        "location_id": "3259",
        "rating": 5,
        "comment": "Zelo dobra ponudba študentskih bonov!",
        "created_at": "2026-10-04T12:00:00Z",
        "author_name": "Študent"
      }
    ]
  },
  {
    "id": "3237",
    "name": "Baščaršija Maribor Gosposvetska",
    "address": "Maribor, 2000 Maribor",
    "city": "Maribor",
    "latitude": 46.562,
    "longitude": 15.658,
    "subsidy_price": 4.1,
    "opening_hours": "Pon - Pet: 10:00 - 20:00",
    "avg_rating": 4.7,
    "review_count": 47,
    "daily_menu": {
      "id": "m-3237",
      "location_id": "3237",
      "menu_date": "2026-10-04",
      "dishes": [
        "Meni 1: Veliki čevapčiči (10x), vroča lepinja, čebula, zeljnata solata, jabolko",
        "Meni 2: Srednji čevapi s kajmakom in lepinjo, solata",
        "Meni 3: Telečja čorba z domačim kruhom, jabolko"
      ]
    },
    "reviews": [
      {
        "id": "r-3237",
        "location_id": "3237",
        "rating": 5,
        "comment": "Zelo dobra ponudba študentskih bonov!",
        "created_at": "2026-10-04T12:00:00Z",
        "author_name": "Študent"
      }
    ]
  },
  {
    "id": "2102",
    "name": "Biotehniški izobraževalni center Ljubljana",
    "address": "Ljubljana, 1000 Ljubljana",
    "city": "Ljubljana",
    "latitude": 46.059,
    "longitude": 14.521,
    "subsidy_price": 4.25,
    "opening_hours": "Pon - Pet: 10:00 - 20:00",
    "avg_rating": 4.2,
    "review_count": 32,
    "daily_menu": {
      "id": "m-2102",
      "location_id": "2102",
      "menu_date": "2026-10-04",
      "dishes": [
        "Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko",
        "Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha",
        "Meni 3: Testenine v paradižnikovi omaki z baziliko, solata"
      ]
    },
    "reviews": [
      {
        "id": "r-2102",
        "location_id": "2102",
        "rating": 5,
        "comment": "Zelo dobra ponudba študentskih bonov!",
        "created_at": "2026-10-04T12:00:00Z",
        "author_name": "Študent"
      }
    ]
  },
  {
    "id": "2103",
    "name": "Biotehniški izobraževalni center Ljubljana",
    "address": "Ljubljana, 1000 Ljubljana",
    "city": "Ljubljana",
    "latitude": 46.072,
    "longitude": 14.538,
    "subsidy_price": 4.4,
    "opening_hours": "Pon - Pet: 10:00 - 20:00",
    "avg_rating": 4.3,
    "review_count": 33,
    "daily_menu": {
      "id": "m-2103",
      "location_id": "2103",
      "menu_date": "2026-10-04",
      "dishes": [
        "Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko",
        "Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha",
        "Meni 3: Testenine v paradižnikovi omaki z baziliko, solata"
      ]
    },
    "reviews": [
      {
        "id": "r-2103",
        "location_id": "2103",
        "rating": 5,
        "comment": "Zelo dobra ponudba študentskih bonov!",
        "created_at": "2026-10-04T12:00:00Z",
        "author_name": "Študent"
      }
    ]
  },
  {
    "id": "2862",
    "name": "Bistro Arty",
    "address": "Ljubljana, 1000 Ljubljana",
    "city": "Ljubljana",
    "latitude": 46.085,
    "longitude": 14.515,
    "subsidy_price": 4.55,
    "opening_hours": "Pon - Pet: 10:00 - 20:00",
    "avg_rating": 4.2,
    "review_count": 32,
    "daily_menu": {
      "id": "m-2862",
      "location_id": "2862",
      "menu_date": "2026-10-04",
      "dishes": [
        "Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko",
        "Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha",
        "Meni 3: Testenine v paradižnikovi omaki z baziliko, solata"
      ]
    },
    "reviews": [
      {
        "id": "r-2862",
        "location_id": "2862",
        "rating": 5,
        "comment": "Zelo dobra ponudba študentskih bonov!",
        "created_at": "2026-10-04T12:00:00Z",
        "author_name": "Študent"
      }
    ]
  },
  {
    "id": "3331",
    "name": "Bistro Luft",
    "address": "Ljubljana, 1000 Ljubljana",
    "city": "Ljubljana",
    "latitude": 46.058,
    "longitude": 14.532,
    "subsidy_price": 3.5,
    "opening_hours": "Pon - Pet: 10:00 - 20:00",
    "avg_rating": 4.1,
    "review_count": 21,
    "daily_menu": {
      "id": "m-3331",
      "location_id": "3331",
      "menu_date": "2026-10-04",
      "dishes": [
        "Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko",
        "Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha",
        "Meni 3: Testenine v paradižnikovi omaki z baziliko, solata"
      ]
    },
    "reviews": [
      {
        "id": "r-3331",
        "location_id": "3331",
        "rating": 5,
        "comment": "Zelo dobra ponudba študentskih bonov!",
        "created_at": "2026-10-04T12:00:00Z",
        "author_name": "Študent"
      }
    ]
  },
  {
    "id": "3280",
    "name": "Bistro Situla",
    "address": "Ljubljana, 1000 Ljubljana",
    "city": "Ljubljana",
    "latitude": 46.071,
    "longitude": 14.509,
    "subsidy_price": 3.65,
    "opening_hours": "Pon - Pet: 10:00 - 20:00",
    "avg_rating": 4.0,
    "review_count": 10,
    "daily_menu": {
      "id": "m-3280",
      "location_id": "3280",
      "menu_date": "2026-10-04",
      "dishes": [
        "Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko",
        "Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha",
        "Meni 3: Testenine v paradižnikovi omaki z baziliko, solata"
      ]
    },
    "reviews": [
      {
        "id": "r-3280",
        "location_id": "3280",
        "rating": 5,
        "comment": "Zelo dobra ponudba študentskih bonov!",
        "created_at": "2026-10-04T12:00:00Z",
        "author_name": "Študent"
      }
    ]
  },
  {
    "id": "3221",
    "name": "Bistro Slovely",
    "address": "Ljubljana, 1000 Ljubljana",
    "city": "Ljubljana",
    "latitude": 46.084,
    "longitude": 14.526,
    "subsidy_price": 3.8,
    "opening_hours": "Pon - Pet: 10:00 - 20:00",
    "avg_rating": 4.1,
    "review_count": 31,
    "daily_menu": {
      "id": "m-3221",
      "location_id": "3221",
      "menu_date": "2026-10-04",
      "dishes": [
        "Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko",
        "Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha",
        "Meni 3: Testenine v paradižnikovi omaki z baziliko, solata"
      ]
    },
    "reviews": [
      {
        "id": "r-3221",
        "location_id": "3221",
        "rating": 5,
        "comment": "Zelo dobra ponudba študentskih bonov!",
        "created_at": "2026-10-04T12:00:00Z",
        "author_name": "Študent"
      }
    ]
  },
  {
    "id": "2821",
    "name": "BISTRO VILLA DOMUS",
    "address": "Ljubljana, 1000 Ljubljana",
    "city": "Ljubljana",
    "latitude": 46.057,
    "longitude": 14.503,
    "subsidy_price": 3.95,
    "opening_hours": "Pon - Pet: 10:00 - 20:00",
    "avg_rating": 4.1,
    "review_count": 31,
    "daily_menu": {
      "id": "m-2821",
      "location_id": "2821",
      "menu_date": "2026-10-04",
      "dishes": [
        "Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko",
        "Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha",
        "Meni 3: Testenine v paradižnikovi omaki z baziliko, solata"
      ]
    },
    "reviews": [
      {
        "id": "r-2821",
        "location_id": "2821",
        "rating": 5,
        "comment": "Zelo dobra ponudba študentskih bonov!",
        "created_at": "2026-10-04T12:00:00Z",
        "author_name": "Študent"
      }
    ]
  },
  {
    "id": "1645",
    "name": "Bohor",
    "address": "Ljubljana, 1000 Ljubljana",
    "city": "Ljubljana",
    "latitude": 46.07,
    "longitude": 14.52,
    "subsidy_price": 4.1,
    "opening_hours": "Pon - Pet: 10:00 - 20:00",
    "avg_rating": 4.5,
    "review_count": 15,
    "daily_menu": {
      "id": "m-1645",
      "location_id": "1645",
      "menu_date": "2026-10-04",
      "dishes": [
        "Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko",
        "Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha",
        "Meni 3: Testenine v paradižnikovi omaki z baziliko, solata"
      ]
    },
    "reviews": [
      {
        "id": "r-1645",
        "location_id": "1645",
        "rating": 5,
        "comment": "Zelo dobra ponudba študentskih bonov!",
        "created_at": "2026-10-04T12:00:00Z",
        "author_name": "Študent"
      }
    ]
  },
  {
    "id": "3109",
    "name": "Bolnišnična restavracija Splošne bolnišnice Jesenice",
    "address": "Kranj, 4000 Kranj",
    "city": "Kranj",
    "latitude": 46.237,
    "longitude": 14.361,
    "subsidy_price": 4.25,
    "opening_hours": "Pon - Pet: 10:00 - 20:00",
    "avg_rating": 4.9,
    "review_count": 39,
    "daily_menu": {
      "id": "m-3109",
      "location_id": "3109",
      "menu_date": "2026-10-04",
      "dishes": [
        "Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko",
        "Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha",
        "Meni 3: Testenine v paradižnikovi omaki z baziliko, solata"
      ]
    },
    "reviews": [
      {
        "id": "r-3109",
        "location_id": "3109",
        "rating": 5,
        "comment": "Zelo dobra ponudba študentskih bonov!",
        "created_at": "2026-10-04T12:00:00Z",
        "author_name": "Študent"
      }
    ]
  },
  {
    "id": "3173",
    "name": "Burek Olimpija Rimska",
    "address": "Ljubljana, 1000 Ljubljana",
    "city": "Ljubljana",
    "latitude": 46.056,
    "longitude": 14.514,
    "subsidy_price": 4.4,
    "opening_hours": "Pon - Pet: 10:00 - 20:00",
    "avg_rating": 4.3,
    "review_count": 23,
    "daily_menu": {
      "id": "m-3173",
      "location_id": "3173",
      "menu_date": "2026-10-04",
      "dishes": [
        "Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko",
        "Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha",
        "Meni 3: Testenine v paradižnikovi omaki z baziliko, solata"
      ]
    },
    "reviews": [
      {
        "id": "r-3173",
        "location_id": "3173",
        "rating": 5,
        "comment": "Zelo dobra ponudba študentskih bonov!",
        "created_at": "2026-10-04T12:00:00Z",
        "author_name": "Študent"
      }
    ]
  },
  {
    "id": "3067",
    "name": "BURGER TIME",
    "address": "Ljubljana, 1000 Ljubljana",
    "city": "Ljubljana",
    "latitude": 46.069,
    "longitude": 14.531,
    "subsidy_price": 4.55,
    "opening_hours": "Pon - Pet: 10:00 - 20:00",
    "avg_rating": 4.7,
    "review_count": 37,
    "daily_menu": {
      "id": "m-3067",
      "location_id": "3067",
      "menu_date": "2026-10-04",
      "dishes": [
        "Meni 1: Classic Beef Burger z ocvrtim krompirčkom in mešano solato",
        "Meni 2: Chicken Burger s svežo solato in omako",
        "Meni 3: Falafel ali Vegi Burger s krompirčkom, sadje"
      ]
    },
    "reviews": [
      {
        "id": "r-3067",
        "location_id": "3067",
        "rating": 5,
        "comment": "Zelo dobra ponudba študentskih bonov!",
        "created_at": "2026-10-04T12:00:00Z",
        "author_name": "Študent"
      }
    ]
  },
  {
    "id": "1161",
    "name": "Cantante cafe Tabor",
    "address": "Ljubljana, 1000 Ljubljana",
    "city": "Ljubljana",
    "latitude": 46.082,
    "longitude": 14.508,
    "subsidy_price": 3.5,
    "opening_hours": "Pon - Pet: 10:00 - 20:00",
    "avg_rating": 4.1,
    "review_count": 11,
    "daily_menu": {
      "id": "m-1161",
      "location_id": "1161",
      "menu_date": "2026-10-04",
      "dishes": [
        "Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko",
        "Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha",
        "Meni 3: Testenine v paradižnikovi omaki z baziliko, solata"
      ]
    },
    "reviews": [
      {
        "id": "r-1161",
        "location_id": "1161",
        "rating": 5,
        "comment": "Zelo dobra ponudba študentskih bonov!",
        "created_at": "2026-10-04T12:00:00Z",
        "author_name": "Študent"
      }
    ]
  },
  {
    "id": "1673",
    "name": "Cantante cafe Tabor - DOSTAVA",
    "address": "Ljubljana, 1000 Ljubljana",
    "city": "Ljubljana",
    "latitude": 46.055,
    "longitude": 14.525,
    "subsidy_price": 3.65,
    "opening_hours": "Pon - Pet: 10:00 - 20:00",
    "avg_rating": 4.3,
    "review_count": 43,
    "daily_menu": {
      "id": "m-1673",
      "location_id": "1673",
      "menu_date": "2026-10-04",
      "dishes": [
        "Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko",
        "Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha",
        "Meni 3: Testenine v paradižnikovi omaki z baziliko, solata"
      ]
    },
    "reviews": [
      {
        "id": "r-1673",
        "location_id": "1673",
        "rating": 5,
        "comment": "Zelo dobra ponudba študentskih bonov!",
        "created_at": "2026-10-04T12:00:00Z",
        "author_name": "Študent"
      }
    ]
  },
  {
    "id": "3176",
    "name": "Cantina QUE PASA",
    "address": "Ljubljana, 1000 Ljubljana",
    "city": "Ljubljana",
    "latitude": 46.068,
    "longitude": 14.502,
    "subsidy_price": 3.8,
    "opening_hours": "Pon - Pet: 10:00 - 20:00",
    "avg_rating": 4.6,
    "review_count": 26,
    "daily_menu": {
      "id": "m-3176",
      "location_id": "3176",
      "menu_date": "2026-10-04",
      "dishes": [
        "Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko",
        "Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha",
        "Meni 3: Testenine v paradižnikovi omaki z baziliko, solata"
      ]
    },
    "reviews": [
      {
        "id": "r-3176",
        "location_id": "3176",
        "rating": 5,
        "comment": "Zelo dobra ponudba študentskih bonov!",
        "created_at": "2026-10-04T12:00:00Z",
        "author_name": "Študent"
      }
    ]
  },
  {
    "id": "3375",
    "name": "Cappuccino Svetilnik Izola",
    "address": "Koper, 6000 Koper",
    "city": "Koper",
    "latitude": 45.557,
    "longitude": 13.741,
    "subsidy_price": 3.95,
    "opening_hours": "Pon - Pet: 10:00 - 20:00",
    "avg_rating": 4.5,
    "review_count": 25,
    "daily_menu": {
      "id": "m-3375",
      "location_id": "3375",
      "menu_date": "2026-10-04",
      "dishes": [
        "Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko",
        "Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha",
        "Meni 3: Testenine v paradižnikovi omaki z baziliko, solata"
      ]
    },
    "reviews": [
      {
        "id": "r-3375",
        "location_id": "3375",
        "rating": 5,
        "comment": "Zelo dobra ponudba študentskih bonov!",
        "created_at": "2026-10-04T12:00:00Z",
        "author_name": "Študent"
      }
    ]
  },
  {
    "id": "3171",
    "name": "Chutys Europark Maribor",
    "address": "Maribor, 2000 Maribor",
    "city": "Maribor",
    "latitude": 46.558,
    "longitude": 15.662,
    "subsidy_price": 4.1,
    "opening_hours": "Pon - Pet: 10:00 - 20:00",
    "avg_rating": 4.1,
    "review_count": 21,
    "daily_menu": {
      "id": "m-3171",
      "location_id": "3171",
      "menu_date": "2026-10-04",
      "dishes": [
        "Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko",
        "Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha",
        "Meni 3: Testenine v paradižnikovi omaki z baziliko, solata"
      ]
    },
    "reviews": [
      {
        "id": "r-3171",
        "location_id": "3171",
        "rating": 5,
        "comment": "Zelo dobra ponudba študentskih bonov!",
        "created_at": "2026-10-04T12:00:00Z",
        "author_name": "Študent"
      }
    ]
  },
  {
    "id": "1568",
    "name": "City grill",
    "address": "Ljubljana, 1000 Ljubljana",
    "city": "Ljubljana",
    "latitude": 46.067,
    "longitude": 14.513,
    "subsidy_price": 4.25,
    "opening_hours": "Pon - Pet: 10:00 - 20:00",
    "avg_rating": 4.8,
    "review_count": 18,
    "daily_menu": {
      "id": "m-1568",
      "location_id": "1568",
      "menu_date": "2026-10-04",
      "dishes": [
        "Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko",
        "Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha",
        "Meni 3: Testenine v paradižnikovi omaki z baziliko, solata"
      ]
    },
    "reviews": [
      {
        "id": "r-1568",
        "location_id": "1568",
        "rating": 5,
        "comment": "Zelo dobra ponudba študentskih bonov!",
        "created_at": "2026-10-04T12:00:00Z",
        "author_name": "Študent"
      }
    ]
  },
  {
    "id": "1569",
    "name": "City grill - DOSTAVA",
    "address": "Ljubljana, 1000 Ljubljana",
    "city": "Ljubljana",
    "latitude": 46.08,
    "longitude": 14.53,
    "subsidy_price": 4.4,
    "opening_hours": "Pon - Pet: 10:00 - 20:00",
    "avg_rating": 4.9,
    "review_count": 19,
    "daily_menu": {
      "id": "m-1569",
      "location_id": "1569",
      "menu_date": "2026-10-04",
      "dishes": [
        "Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko",
        "Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha",
        "Meni 3: Testenine v paradižnikovi omaki z baziliko, solata"
      ]
    },
    "reviews": [
      {
        "id": "r-1569",
        "location_id": "1569",
        "rating": 5,
        "comment": "Zelo dobra ponudba študentskih bonov!",
        "created_at": "2026-10-04T12:00:00Z",
        "author_name": "Študent"
      }
    ]
  },
  {
    "id": "3114",
    "name": "Čevabdžinica Sarajevo84",
    "address": "Ljubljana, 1000 Ljubljana",
    "city": "Ljubljana",
    "latitude": 46.053,
    "longitude": 14.507,
    "subsidy_price": 4.55,
    "opening_hours": "Pon - Pet: 10:00 - 20:00",
    "avg_rating": 4.4,
    "review_count": 44,
    "daily_menu": {
      "id": "m-3114",
      "location_id": "3114",
      "menu_date": "2026-10-04",
      "dishes": [
        "Meni 1: Veliki čevapčiči (10x), vroča lepinja, čebula, zeljnata solata, jabolko",
        "Meni 2: Srednji čevapi s kajmakom in lepinjo, solata",
        "Meni 3: Telečja čorba z domačim kruhom, jabolko"
      ]
    },
    "reviews": [
      {
        "id": "r-3114",
        "location_id": "3114",
        "rating": 5,
        "comment": "Zelo dobra ponudba študentskih bonov!",
        "created_at": "2026-10-04T12:00:00Z",
        "author_name": "Študent"
      }
    ]
  },
  {
    "id": "3234",
    "name": "Čevabdžinica Sarajevo84 (Tomažičev trg)",
    "address": "Ljubljana, 1000 Ljubljana",
    "city": "Ljubljana",
    "latitude": 46.066,
    "longitude": 14.524,
    "subsidy_price": 3.5,
    "opening_hours": "Pon - Pet: 10:00 - 20:00",
    "avg_rating": 4.4,
    "review_count": 44,
    "daily_menu": {
      "id": "m-3234",
      "location_id": "3234",
      "menu_date": "2026-10-04",
      "dishes": [
        "Meni 1: Veliki čevapčiči (10x), vroča lepinja, čebula, zeljnata solata, jabolko",
        "Meni 2: Srednji čevapi s kajmakom in lepinjo, solata",
        "Meni 3: Telečja čorba z domačim kruhom, jabolko"
      ]
    },
    "reviews": [
      {
        "id": "r-3234",
        "location_id": "3234",
        "rating": 5,
        "comment": "Zelo dobra ponudba študentskih bonov!",
        "created_at": "2026-10-04T12:00:00Z",
        "author_name": "Študent"
      }
    ]
  },
  {
    "id": "3286",
    "name": "Čewapi Citypark Ljubljana",
    "address": "Ljubljana, 1000 Ljubljana",
    "city": "Ljubljana",
    "latitude": 46.079,
    "longitude": 14.501,
    "subsidy_price": 3.65,
    "opening_hours": "Pon - Pet: 10:00 - 20:00",
    "avg_rating": 4.6,
    "review_count": 16,
    "daily_menu": {
      "id": "m-3286",
      "location_id": "3286",
      "menu_date": "2026-10-04",
      "dishes": [
        "Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko",
        "Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha",
        "Meni 3: Testenine v paradižnikovi omaki z baziliko, solata"
      ]
    },
    "reviews": [
      {
        "id": "r-3286",
        "location_id": "3286",
        "rating": 5,
        "comment": "Zelo dobra ponudba študentskih bonov!",
        "created_at": "2026-10-04T12:00:00Z",
        "author_name": "Študent"
      }
    ]
  },
  {
    "id": "3285",
    "name": "Čewapi Ljubljana Center",
    "address": "Ljubljana, 1000 Ljubljana",
    "city": "Ljubljana",
    "latitude": 46.052,
    "longitude": 14.518,
    "subsidy_price": 3.8,
    "opening_hours": "Pon - Pet: 10:00 - 20:00",
    "avg_rating": 4.5,
    "review_count": 15,
    "daily_menu": {
      "id": "m-3285",
      "location_id": "3285",
      "menu_date": "2026-10-04",
      "dishes": [
        "Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko",
        "Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha",
        "Meni 3: Testenine v paradižnikovi omaki z baziliko, solata"
      ]
    },
    "reviews": [
      {
        "id": "r-3285",
        "location_id": "3285",
        "rating": 5,
        "comment": "Zelo dobra ponudba študentskih bonov!",
        "created_at": "2026-10-04T12:00:00Z",
        "author_name": "Študent"
      }
    ]
  },
  {
    "id": "1485",
    "name": "DA BU DA, Azijska restavracija",
    "address": "Ljubljana, 1000 Ljubljana",
    "city": "Ljubljana",
    "latitude": 46.065,
    "longitude": 14.535,
    "subsidy_price": 3.95,
    "opening_hours": "Pon - Pet: 10:00 - 20:00",
    "avg_rating": 4.5,
    "review_count": 15,
    "daily_menu": {
      "id": "m-1485",
      "location_id": "1485",
      "menu_date": "2026-10-04",
      "dishes": [
        "Meni 1: Hrustljavi piščanec v sladko-kisli omaki, pražen riž, zelenjavna juha",
        "Meni 2: Praženi rezanci z zelenjavo in tofujem, solata",
        "Meni 3: Pekinška raca z rižem, pomladni zavitki"
      ]
    },
    "reviews": [
      {
        "id": "r-1485",
        "location_id": "1485",
        "rating": 5,
        "comment": "Zelo dobra ponudba študentskih bonov!",
        "created_at": "2026-10-04T12:00:00Z",
        "author_name": "Študent"
      }
    ]
  },
  {
    "id": "2326",
    "name": "Das ist Valter Kranj",
    "address": "Kranj, 4000 Kranj",
    "city": "Kranj",
    "latitude": 46.242,
    "longitude": 14.366,
    "subsidy_price": 4.1,
    "opening_hours": "Pon - Pet: 10:00 - 20:00",
    "avg_rating": 4.6,
    "review_count": 16,
    "daily_menu": {
      "id": "m-2326",
      "location_id": "2326",
      "menu_date": "2026-10-04",
      "dishes": [
        "Meni 1: Veliki čevapčiči (10x), vroča lepinja, čebula, zeljnata solata, jabolko",
        "Meni 2: Srednji čevapi s kajmakom in lepinjo, solata",
        "Meni 3: Telečja čorba z domačim kruhom, jabolko"
      ]
    },
    "reviews": [
      {
        "id": "r-2326",
        "location_id": "2326",
        "rating": 5,
        "comment": "Zelo dobra ponudba študentskih bonov!",
        "created_at": "2026-10-04T12:00:00Z",
        "author_name": "Študent"
      }
    ]
  },
  {
    "id": "2951",
    "name": "Das ist Valter Ljubljana center",
    "address": "Ljubljana, 1000 Ljubljana",
    "city": "Ljubljana",
    "latitude": 46.051,
    "longitude": 14.529,
    "subsidy_price": 4.25,
    "opening_hours": "Pon - Pet: 10:00 - 20:00",
    "avg_rating": 4.1,
    "review_count": 41,
    "daily_menu": {
      "id": "m-2951",
      "location_id": "2951",
      "menu_date": "2026-10-04",
      "dishes": [
        "Meni 1: Veliki čevapčiči (10x), vroča lepinja, čebula, zeljnata solata, jabolko",
        "Meni 2: Srednji čevapi s kajmakom in lepinjo, solata",
        "Meni 3: Telečja čorba z domačim kruhom, jabolko"
      ]
    },
    "reviews": [
      {
        "id": "r-2951",
        "location_id": "2951",
        "rating": 5,
        "comment": "Zelo dobra ponudba študentskih bonov!",
        "created_at": "2026-10-04T12:00:00Z",
        "author_name": "Študent"
      }
    ]
  },
  {
    "id": "2131",
    "name": "Das ist Valter Ljubljana Šmartinska",
    "address": "Ljubljana, 1000 Ljubljana",
    "city": "Ljubljana",
    "latitude": 46.064,
    "longitude": 14.506,
    "subsidy_price": 4.4,
    "opening_hours": "Pon - Pet: 10:00 - 20:00",
    "avg_rating": 4.1,
    "review_count": 21,
    "daily_menu": {
      "id": "m-2131",
      "location_id": "2131",
      "menu_date": "2026-10-04",
      "dishes": [
        "Meni 1: Veliki čevapčiči (10x), vroča lepinja, čebula, zeljnata solata, jabolko",
        "Meni 2: Srednji čevapi s kajmakom in lepinjo, solata",
        "Meni 3: Telečja čorba z domačim kruhom, jabolko"
      ]
    },
    "reviews": [
      {
        "id": "r-2131",
        "location_id": "2131",
        "rating": 5,
        "comment": "Zelo dobra ponudba študentskih bonov!",
        "created_at": "2026-10-04T12:00:00Z",
        "author_name": "Študent"
      }
    ]
  },
  {
    "id": "2252",
    "name": "Das ist Valter Škofja Loka",
    "address": "Kranj, 4000 Kranj",
    "city": "Kranj",
    "latitude": 46.243,
    "longitude": 14.359,
    "subsidy_price": 4.55,
    "opening_hours": "Pon - Pet: 10:00 - 20:00",
    "avg_rating": 4.2,
    "review_count": 22,
    "daily_menu": {
      "id": "m-2252",
      "location_id": "2252",
      "menu_date": "2026-10-04",
      "dishes": [
        "Meni 1: Veliki čevapčiči (10x), vroča lepinja, čebula, zeljnata solata, jabolko",
        "Meni 2: Srednji čevapi s kajmakom in lepinjo, solata",
        "Meni 3: Telečja čorba z domačim kruhom, jabolko"
      ]
    },
    "reviews": [
      {
        "id": "r-2252",
        "location_id": "2252",
        "rating": 5,
        "comment": "Zelo dobra ponudba študentskih bonov!",
        "created_at": "2026-10-04T12:00:00Z",
        "author_name": "Študent"
      }
    ]
  },
  {
    "id": "3145",
    "name": "Dijaški dom",
    "address": "Ljubljana, 1000 Ljubljana",
    "city": "Ljubljana",
    "latitude": 46.05,
    "longitude": 14.5,
    "subsidy_price": 3.5,
    "opening_hours": "Pon - Pet: 10:00 - 20:00",
    "avg_rating": 4.5,
    "review_count": 35,
    "daily_menu": {
      "id": "m-3145",
      "location_id": "3145",
      "menu_date": "2026-10-04",
      "dishes": [
        "Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko",
        "Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha",
        "Meni 3: Testenine v paradižnikovi omaki z baziliko, solata"
      ]
    },
    "reviews": [
      {
        "id": "r-3145",
        "location_id": "3145",
        "rating": 5,
        "comment": "Zelo dobra ponudba študentskih bonov!",
        "created_at": "2026-10-04T12:00:00Z",
        "author_name": "Študent"
      }
    ]
  },
  {
    "id": "1090",
    "name": "Dijaški dom Lizike Jančar",
    "address": "Ljubljana, 1000 Ljubljana",
    "city": "Ljubljana",
    "latitude": 46.063,
    "longitude": 14.517,
    "subsidy_price": 3.65,
    "opening_hours": "Pon - Pet: 10:00 - 20:00",
    "avg_rating": 4.0,
    "review_count": 20,
    "daily_menu": {
      "id": "m-1090",
      "location_id": "1090",
      "menu_date": "2026-10-04",
      "dishes": [
        "Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko",
        "Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha",
        "Meni 3: Testenine v paradižnikovi omaki z baziliko, solata"
      ]
    },
    "reviews": [
      {
        "id": "r-1090",
        "location_id": "1090",
        "rating": 5,
        "comment": "Zelo dobra ponudba študentskih bonov!",
        "created_at": "2026-10-04T12:00:00Z",
        "author_name": "Študent"
      }
    ]
  },
  {
    "id": "1502",
    "name": "Dijaški dom Poljane",
    "address": "Ljubljana, 1000 Ljubljana",
    "city": "Ljubljana",
    "latitude": 46.076,
    "longitude": 14.534,
    "subsidy_price": 3.8,
    "opening_hours": "Pon - Pet: 10:00 - 20:00",
    "avg_rating": 4.2,
    "review_count": 32,
    "daily_menu": {
      "id": "m-1502",
      "location_id": "1502",
      "menu_date": "2026-10-04",
      "dishes": [
        "Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko",
        "Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha",
        "Meni 3: Testenine v paradižnikovi omaki z baziliko, solata"
      ]
    },
    "reviews": [
      {
        "id": "r-1502",
        "location_id": "1502",
        "rating": 5,
        "comment": "Zelo dobra ponudba študentskih bonov!",
        "created_at": "2026-10-04T12:00:00Z",
        "author_name": "Študent"
      }
    ]
  },
  {
    "id": "2111",
    "name": "Dijaški dom Tabor",
    "address": "Ljubljana, 1000 Ljubljana",
    "city": "Ljubljana",
    "latitude": 46.089,
    "longitude": 14.511,
    "subsidy_price": 3.95,
    "opening_hours": "Pon - Pet: 10:00 - 20:00",
    "avg_rating": 4.1,
    "review_count": 41,
    "daily_menu": {
      "id": "m-2111",
      "location_id": "2111",
      "menu_date": "2026-10-04",
      "dishes": [
        "Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko",
        "Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha",
        "Meni 3: Testenine v paradižnikovi omaki z baziliko, solata"
      ]
    },
    "reviews": [
      {
        "id": "r-2111",
        "location_id": "2111",
        "rating": 5,
        "comment": "Zelo dobra ponudba študentskih bonov!",
        "created_at": "2026-10-04T12:00:00Z",
        "author_name": "Študent"
      }
    ]
  },
  {
    "id": "1314",
    "name": "Dijaški dom Vič",
    "address": "Ljubljana, 1000 Ljubljana",
    "city": "Ljubljana",
    "latitude": 46.062,
    "longitude": 14.528,
    "subsidy_price": 4.1,
    "opening_hours": "Pon - Pet: 10:00 - 20:00",
    "avg_rating": 4.4,
    "review_count": 44,
    "daily_menu": {
      "id": "m-1314",
      "location_id": "1314",
      "menu_date": "2026-10-04",
      "dishes": [
        "Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko",
        "Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha",
        "Meni 3: Testenine v paradižnikovi omaki z baziliko, solata"
      ]
    },
    "reviews": [
      {
        "id": "r-1314",
        "location_id": "1314",
        "rating": 5,
        "comment": "Zelo dobra ponudba študentskih bonov!",
        "created_at": "2026-10-04T12:00:00Z",
        "author_name": "Študent"
      }
    ]
  },
  {
    "id": "1501",
    "name": "Dijaški in študentski dom Novo mesto",
    "address": "Novo mesto, 8000 Novo mesto",
    "city": "Novo mesto",
    "latitude": 45.805,
    "longitude": 15.185,
    "subsidy_price": 4.25,
    "opening_hours": "Pon - Pet: 10:00 - 20:00",
    "avg_rating": 4.1,
    "review_count": 31,
    "daily_menu": {
      "id": "m-1501",
      "location_id": "1501",
      "menu_date": "2026-10-04",
      "dishes": [
        "Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko",
        "Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha",
        "Meni 3: Testenine v paradižnikovi omaki z baziliko, solata"
      ]
    },
    "reviews": [
      {
        "id": "r-1501",
        "location_id": "1501",
        "rating": 5,
        "comment": "Zelo dobra ponudba študentskih bonov!",
        "created_at": "2026-10-04T12:00:00Z",
        "author_name": "Študent"
      }
    ]
  },
  {
    "id": "3381",
    "name": "Do kosti Pizzeria Chianti",
    "address": "Ljubljana, 1000 Ljubljana",
    "city": "Ljubljana",
    "latitude": 46.088,
    "longitude": 14.522,
    "subsidy_price": 4.4,
    "opening_hours": "Pon - Pet: 10:00 - 20:00",
    "avg_rating": 4.1,
    "review_count": 31,
    "daily_menu": {
      "id": "m-3381",
      "location_id": "3381",
      "menu_date": "2026-10-04",
      "dishes": [
        "Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko",
        "Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha",
        "Meni 3: Testenine v paradižnikovi omaki z baziliko, solata"
      ]
    },
    "reviews": [
      {
        "id": "r-3381",
        "location_id": "3381",
        "rating": 5,
        "comment": "Zelo dobra ponudba študentskih bonov!",
        "created_at": "2026-10-04T12:00:00Z",
        "author_name": "Študent"
      }
    ]
  },
  {
    "id": "2552",
    "name": "Dobra hiša",
    "address": "Ljubljana, 1000 Ljubljana",
    "city": "Ljubljana",
    "latitude": 46.061,
    "longitude": 14.539,
    "subsidy_price": 4.55,
    "opening_hours": "Pon - Pet: 10:00 - 20:00",
    "avg_rating": 4.2,
    "review_count": 42,
    "daily_menu": {
      "id": "m-2552",
      "location_id": "2552",
      "menu_date": "2026-10-04",
      "dishes": [
        "Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko",
        "Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha",
        "Meni 3: Testenine v paradižnikovi omaki z baziliko, solata"
      ]
    },
    "reviews": [
      {
        "id": "r-2552",
        "location_id": "2552",
        "rating": 5,
        "comment": "Zelo dobra ponudba študentskih bonov!",
        "created_at": "2026-10-04T12:00:00Z",
        "author_name": "Študent"
      }
    ]
  },
  {
    "id": "2298",
    "name": "Dobra hiša Rudnik",
    "address": "Ljubljana, 1000 Ljubljana",
    "city": "Ljubljana",
    "latitude": 46.074,
    "longitude": 14.516,
    "subsidy_price": 3.5,
    "opening_hours": "Pon - Pet: 10:00 - 20:00",
    "avg_rating": 4.8,
    "review_count": 28,
    "daily_menu": {
      "id": "m-2298",
      "location_id": "2298",
      "menu_date": "2026-10-04",
      "dishes": [
        "Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko",
        "Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha",
        "Meni 3: Testenine v paradižnikovi omaki z baziliko, solata"
      ]
    },
    "reviews": [
      {
        "id": "r-2298",
        "location_id": "2298",
        "rating": 5,
        "comment": "Zelo dobra ponudba študentskih bonov!",
        "created_at": "2026-10-04T12:00:00Z",
        "author_name": "Študent"
      }
    ]
  },
  {
    "id": "1578",
    "name": "Dobrote vzhoda",
    "address": "Ljubljana, 1000 Ljubljana",
    "city": "Ljubljana",
    "latitude": 46.087,
    "longitude": 14.533,
    "subsidy_price": 3.65,
    "opening_hours": "Pon - Pet: 10:00 - 20:00",
    "avg_rating": 4.8,
    "review_count": 28,
    "daily_menu": {
      "id": "m-1578",
      "location_id": "1578",
      "menu_date": "2026-10-04",
      "dishes": [
        "Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko",
        "Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha",
        "Meni 3: Testenine v paradižnikovi omaki z baziliko, solata"
      ]
    },
    "reviews": [
      {
        "id": "r-1578",
        "location_id": "1578",
        "rating": 5,
        "comment": "Zelo dobra ponudba študentskih bonov!",
        "created_at": "2026-10-04T12:00:00Z",
        "author_name": "Študent"
      }
    ]
  },
  {
    "id": "3370",
    "name": "Dodo Pizza Koper",
    "address": "Koper, 6000 Koper",
    "city": "Koper",
    "latitude": 45.55,
    "longitude": 13.74,
    "subsidy_price": 3.8,
    "opening_hours": "Pon - Pet: 10:00 - 20:00",
    "avg_rating": 4.0,
    "review_count": 20,
    "daily_menu": {
      "id": "m-3370",
      "location_id": "3370",
      "menu_date": "2026-10-04",
      "dishes": [
        "Meni 1: Pizza Margherita (pelati, mocarela, bazilika), mešana solata, sadje",
        "Meni 2: Pizza Klasika (šunka, sir, gobe), mešana solata",
        "Meni 3: Veganska pizza s pečenimi jajčevci in bučkami, solata"
      ]
    },
    "reviews": [
      {
        "id": "r-3370",
        "location_id": "3370",
        "rating": 5,
        "comment": "Zelo dobra ponudba študentskih bonov!",
        "created_at": "2026-10-04T12:00:00Z",
        "author_name": "Študent"
      }
    ]
  },
  {
    "id": "3350",
    "name": "Dodo Pizza Ljubljana-Bežigrad",
    "address": "Ljubljana, 1000 Ljubljana",
    "city": "Ljubljana",
    "latitude": 46.073,
    "longitude": 14.527,
    "subsidy_price": 3.95,
    "opening_hours": "Pon - Pet: 10:00 - 20:00",
    "avg_rating": 4.0,
    "review_count": 40,
    "daily_menu": {
      "id": "m-3350",
      "location_id": "3350",
      "menu_date": "2026-10-04",
      "dishes": [
        "Meni 1: Pizza Margherita (pelati, mocarela, bazilika), mešana solata, sadje",
        "Meni 2: Pizza Klasika (šunka, sir, gobe), mešana solata",
        "Meni 3: Veganska pizza s pečenimi jajčevci in bučkami, solata"
      ]
    },
    "reviews": [
      {
        "id": "r-3350",
        "location_id": "3350",
        "rating": 5,
        "comment": "Zelo dobra ponudba študentskih bonov!",
        "created_at": "2026-10-04T12:00:00Z",
        "author_name": "Študent"
      }
    ]
  },
  {
    "id": "3349",
    "name": "Dodo Pizza Ljubljana-center",
    "address": "Ljubljana, 1000 Ljubljana",
    "city": "Ljubljana",
    "latitude": 46.086,
    "longitude": 14.504,
    "subsidy_price": 4.1,
    "opening_hours": "Pon - Pet: 10:00 - 20:00",
    "avg_rating": 4.9,
    "review_count": 39,
    "daily_menu": {
      "id": "m-3349",
      "location_id": "3349",
      "menu_date": "2026-10-04",
      "dishes": [
        "Meni 1: Pizza Margherita (pelati, mocarela, bazilika), mešana solata, sadje",
        "Meni 2: Pizza Klasika (šunka, sir, gobe), mešana solata",
        "Meni 3: Veganska pizza s pečenimi jajčevci in bučkami, solata"
      ]
    },
    "reviews": [
      {
        "id": "r-3349",
        "location_id": "3349",
        "rating": 5,
        "comment": "Zelo dobra ponudba študentskih bonov!",
        "created_at": "2026-10-04T12:00:00Z",
        "author_name": "Študent"
      }
    ]
  },
  {
    "id": "3351",
    "name": "Dodo Pizza ljubljana-Fužine",
    "address": "Ljubljana, 1000 Ljubljana",
    "city": "Ljubljana",
    "latitude": 46.059,
    "longitude": 14.521,
    "subsidy_price": 4.25,
    "opening_hours": "Pon - Pet: 10:00 - 20:00",
    "avg_rating": 4.1,
    "review_count": 41,
    "daily_menu": {
      "id": "m-3351",
      "location_id": "3351",
      "menu_date": "2026-10-04",
      "dishes": [
        "Meni 1: Pizza Margherita (pelati, mocarela, bazilika), mešana solata, sadje",
        "Meni 2: Pizza Klasika (šunka, sir, gobe), mešana solata",
        "Meni 3: Veganska pizza s pečenimi jajčevci in bučkami, solata"
      ]
    },
    "reviews": [
      {
        "id": "r-3351",
        "location_id": "3351",
        "rating": 5,
        "comment": "Zelo dobra ponudba študentskih bonov!",
        "created_at": "2026-10-04T12:00:00Z",
        "author_name": "Študent"
      }
    ]
  },
  {
    "id": "3191",
    "name": "Domača pekarna Bežigrad",
    "address": "Ljubljana, 1000 Ljubljana",
    "city": "Ljubljana",
    "latitude": 46.072,
    "longitude": 14.538,
    "subsidy_price": 4.4,
    "opening_hours": "Pon - Pet: 10:00 - 20:00",
    "avg_rating": 4.1,
    "review_count": 41,
    "daily_menu": {
      "id": "m-3191",
      "location_id": "3191",
      "menu_date": "2026-10-04",
      "dishes": [
        "Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko",
        "Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha",
        "Meni 3: Testenine v paradižnikovi omaki z baziliko, solata"
      ]
    },
    "reviews": [
      {
        "id": "r-3191",
        "location_id": "3191",
        "rating": 5,
        "comment": "Zelo dobra ponudba študentskih bonov!",
        "created_at": "2026-10-04T12:00:00Z",
        "author_name": "Študent"
      }
    ]
  },
  {
    "id": "3369",
    "name": "EASY BEER",
    "address": "Ljubljana, 1000 Ljubljana",
    "city": "Ljubljana",
    "latitude": 46.085,
    "longitude": 14.515,
    "subsidy_price": 4.55,
    "opening_hours": "Pon - Pet: 10:00 - 20:00",
    "avg_rating": 4.9,
    "review_count": 19,
    "daily_menu": {
      "id": "m-3369",
      "location_id": "3369",
      "menu_date": "2026-10-04",
      "dishes": [
        "Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko",
        "Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha",
        "Meni 3: Testenine v paradižnikovi omaki z baziliko, solata"
      ]
    },
    "reviews": [
      {
        "id": "r-3369",
        "location_id": "3369",
        "rating": 5,
        "comment": "Zelo dobra ponudba študentskih bonov!",
        "created_at": "2026-10-04T12:00:00Z",
        "author_name": "Študent"
      }
    ]
  },
  {
    "id": "3243",
    "name": "Eda restavracija",
    "address": "Ljubljana, 1000 Ljubljana",
    "city": "Ljubljana",
    "latitude": 46.058,
    "longitude": 14.532,
    "subsidy_price": 3.5,
    "opening_hours": "Pon - Pet: 10:00 - 20:00",
    "avg_rating": 4.3,
    "review_count": 13,
    "daily_menu": {
      "id": "m-3243",
      "location_id": "3243",
      "menu_date": "2026-10-04",
      "dishes": [
        "Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko",
        "Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha",
        "Meni 3: Testenine v paradižnikovi omaki z baziliko, solata"
      ]
    },
    "reviews": [
      {
        "id": "r-3243",
        "location_id": "3243",
        "rating": 5,
        "comment": "Zelo dobra ponudba študentskih bonov!",
        "created_at": "2026-10-04T12:00:00Z",
        "author_name": "Študent"
      }
    ]
  },
  {
    "id": "3399",
    "name": "Ej babi",
    "address": "Ljubljana, 1000 Ljubljana",
    "city": "Ljubljana",
    "latitude": 46.071,
    "longitude": 14.509,
    "subsidy_price": 3.65,
    "opening_hours": "Pon - Pet: 10:00 - 20:00",
    "avg_rating": 4.9,
    "review_count": 49,
    "daily_menu": {
      "id": "m-3399",
      "location_id": "3399",
      "menu_date": "2026-10-04",
      "dishes": [
        "Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko",
        "Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha",
        "Meni 3: Testenine v paradižnikovi omaki z baziliko, solata"
      ]
    },
    "reviews": [
      {
        "id": "r-3399",
        "location_id": "3399",
        "rating": 5,
        "comment": "Zelo dobra ponudba študentskih bonov!",
        "created_at": "2026-10-04T12:00:00Z",
        "author_name": "Študent"
      }
    ]
  },
  {
    "id": "3292",
    "name": "Fari&#39;s",
    "address": "Ljubljana, 1000 Ljubljana",
    "city": "Ljubljana",
    "latitude": 46.084,
    "longitude": 14.526,
    "subsidy_price": 3.8,
    "opening_hours": "Pon - Pet: 10:00 - 20:00",
    "avg_rating": 4.2,
    "review_count": 22,
    "daily_menu": {
      "id": "m-3292",
      "location_id": "3292",
      "menu_date": "2026-10-04",
      "dishes": [
        "Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko",
        "Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha",
        "Meni 3: Testenine v paradižnikovi omaki z baziliko, solata"
      ]
    },
    "reviews": [
      {
        "id": "r-3292",
        "location_id": "3292",
        "rating": 5,
        "comment": "Zelo dobra ponudba študentskih bonov!",
        "created_at": "2026-10-04T12:00:00Z",
        "author_name": "Študent"
      }
    ]
  },
  {
    "id": "2589",
    "name": "Fari&#39;s",
    "address": "Ljubljana, 1000 Ljubljana",
    "city": "Ljubljana",
    "latitude": 46.057,
    "longitude": 14.503,
    "subsidy_price": 3.95,
    "opening_hours": "Pon - Pet: 10:00 - 20:00",
    "avg_rating": 4.9,
    "review_count": 39,
    "daily_menu": {
      "id": "m-2589",
      "location_id": "2589",
      "menu_date": "2026-10-04",
      "dishes": [
        "Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko",
        "Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha",
        "Meni 3: Testenine v paradižnikovi omaki z baziliko, solata"
      ]
    },
    "reviews": [
      {
        "id": "r-2589",
        "location_id": "2589",
        "rating": 5,
        "comment": "Zelo dobra ponudba študentskih bonov!",
        "created_at": "2026-10-04T12:00:00Z",
        "author_name": "Študent"
      }
    ]
  },
  {
    "id": "3192",
    "name": "Fast food &amp; pekarna PLAVA LAGUNA",
    "address": "Ljubljana, 1000 Ljubljana",
    "city": "Ljubljana",
    "latitude": 46.07,
    "longitude": 14.52,
    "subsidy_price": 4.1,
    "opening_hours": "Pon - Pet: 10:00 - 20:00",
    "avg_rating": 4.2,
    "review_count": 42,
    "daily_menu": {
      "id": "m-3192",
      "location_id": "3192",
      "menu_date": "2026-10-04",
      "dishes": [
        "Meni 1: Classic Beef Burger z ocvrtim krompirčkom in mešano solato",
        "Meni 2: Chicken Burger s svežo solato in omako",
        "Meni 3: Falafel ali Vegi Burger s krompirčkom, sadje"
      ]
    },
    "reviews": [
      {
        "id": "r-3192",
        "location_id": "3192",
        "rating": 5,
        "comment": "Zelo dobra ponudba študentskih bonov!",
        "created_at": "2026-10-04T12:00:00Z",
        "author_name": "Študent"
      }
    ]
  },
  {
    "id": "3282",
    "name": "Fast food Ajda",
    "address": "Ljubljana, 1000 Ljubljana",
    "city": "Ljubljana",
    "latitude": 46.083,
    "longitude": 14.537,
    "subsidy_price": 4.25,
    "opening_hours": "Pon - Pet: 10:00 - 20:00",
    "avg_rating": 4.2,
    "review_count": 12,
    "daily_menu": {
      "id": "m-3282",
      "location_id": "3282",
      "menu_date": "2026-10-04",
      "dishes": [
        "Meni 1: Classic Beef Burger z ocvrtim krompirčkom in mešano solato",
        "Meni 2: Chicken Burger s svežo solato in omako",
        "Meni 3: Falafel ali Vegi Burger s krompirčkom, sadje"
      ]
    },
    "reviews": [
      {
        "id": "r-3282",
        "location_id": "3282",
        "rating": 5,
        "comment": "Zelo dobra ponudba študentskih bonov!",
        "created_at": "2026-10-04T12:00:00Z",
        "author_name": "Študent"
      }
    ]
  },
  {
    "id": "3382",
    "name": "Fast food LEON",
    "address": "Ljubljana, 1000 Ljubljana",
    "city": "Ljubljana",
    "latitude": 46.056,
    "longitude": 14.514,
    "subsidy_price": 4.4,
    "opening_hours": "Pon - Pet: 10:00 - 20:00",
    "avg_rating": 4.2,
    "review_count": 32,
    "daily_menu": {
      "id": "m-3382",
      "location_id": "3382",
      "menu_date": "2026-10-04",
      "dishes": [
        "Meni 1: Classic Beef Burger z ocvrtim krompirčkom in mešano solato",
        "Meni 2: Chicken Burger s svežo solato in omako",
        "Meni 3: Falafel ali Vegi Burger s krompirčkom, sadje"
      ]
    },
    "reviews": [
      {
        "id": "r-3382",
        "location_id": "3382",
        "rating": 5,
        "comment": "Zelo dobra ponudba študentskih bonov!",
        "created_at": "2026-10-04T12:00:00Z",
        "author_name": "Študent"
      }
    ]
  },
  {
    "id": "3158",
    "name": "Fast food Magic",
    "address": "Ljubljana, 1000 Ljubljana",
    "city": "Ljubljana",
    "latitude": 46.069,
    "longitude": 14.531,
    "subsidy_price": 4.55,
    "opening_hours": "Pon - Pet: 10:00 - 20:00",
    "avg_rating": 4.8,
    "review_count": 48,
    "daily_menu": {
      "id": "m-3158",
      "location_id": "3158",
      "menu_date": "2026-10-04",
      "dishes": [
        "Meni 1: Classic Beef Burger z ocvrtim krompirčkom in mešano solato",
        "Meni 2: Chicken Burger s svežo solato in omako",
        "Meni 3: Falafel ali Vegi Burger s krompirčkom, sadje"
      ]
    },
    "reviews": [
      {
        "id": "r-3158",
        "location_id": "3158",
        "rating": 5,
        "comment": "Zelo dobra ponudba študentskih bonov!",
        "created_at": "2026-10-04T12:00:00Z",
        "author_name": "Študent"
      }
    ]
  },
  {
    "id": "3391",
    "name": "FAST FOOD PRI ŠTUKU",
    "address": "Ljubljana, 1000 Ljubljana",
    "city": "Ljubljana",
    "latitude": 46.082,
    "longitude": 14.508,
    "subsidy_price": 3.5,
    "opening_hours": "Pon - Pet: 10:00 - 20:00",
    "avg_rating": 4.1,
    "review_count": 41,
    "daily_menu": {
      "id": "m-3391",
      "location_id": "3391",
      "menu_date": "2026-10-04",
      "dishes": [
        "Meni 1: Classic Beef Burger z ocvrtim krompirčkom in mešano solato",
        "Meni 2: Chicken Burger s svežo solato in omako",
        "Meni 3: Falafel ali Vegi Burger s krompirčkom, sadje"
      ]
    },
    "reviews": [
      {
        "id": "r-3391",
        "location_id": "3391",
        "rating": 5,
        "comment": "Zelo dobra ponudba študentskih bonov!",
        "created_at": "2026-10-04T12:00:00Z",
        "author_name": "Študent"
      }
    ]
  },
  {
    "id": "3165",
    "name": "Fast food Slast",
    "address": "Ljubljana, 1000 Ljubljana",
    "city": "Ljubljana",
    "latitude": 46.055,
    "longitude": 14.525,
    "subsidy_price": 3.65,
    "opening_hours": "Pon - Pet: 10:00 - 20:00",
    "avg_rating": 4.5,
    "review_count": 15,
    "daily_menu": {
      "id": "m-3165",
      "location_id": "3165",
      "menu_date": "2026-10-04",
      "dishes": [
        "Meni 1: Classic Beef Burger z ocvrtim krompirčkom in mešano solato",
        "Meni 2: Chicken Burger s svežo solato in omako",
        "Meni 3: Falafel ali Vegi Burger s krompirčkom, sadje"
      ]
    },
    "reviews": [
      {
        "id": "r-3165",
        "location_id": "3165",
        "rating": 5,
        "comment": "Zelo dobra ponudba študentskih bonov!",
        "created_at": "2026-10-04T12:00:00Z",
        "author_name": "Študent"
      }
    ]
  },
  {
    "id": "3335",
    "name": "FOOD POINT NINETY NINE",
    "address": "Ljubljana, 1000 Ljubljana",
    "city": "Ljubljana",
    "latitude": 46.068,
    "longitude": 14.502,
    "subsidy_price": 3.8,
    "opening_hours": "Pon - Pet: 10:00 - 20:00",
    "avg_rating": 4.5,
    "review_count": 25,
    "daily_menu": {
      "id": "m-3335",
      "location_id": "3335",
      "menu_date": "2026-10-04",
      "dishes": [
        "Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko",
        "Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha",
        "Meni 3: Testenine v paradižnikovi omaki z baziliko, solata"
      ]
    },
    "reviews": [
      {
        "id": "r-3335",
        "location_id": "3335",
        "rating": 5,
        "comment": "Zelo dobra ponudba študentskih bonov!",
        "created_at": "2026-10-04T12:00:00Z",
        "author_name": "Študent"
      }
    ]
  },
  {
    "id": "2849",
    "name": "Forum",
    "address": "Ljubljana, 1000 Ljubljana",
    "city": "Ljubljana",
    "latitude": 46.081,
    "longitude": 14.519,
    "subsidy_price": 3.95,
    "opening_hours": "Pon - Pet: 10:00 - 20:00",
    "avg_rating": 4.9,
    "review_count": 19,
    "daily_menu": {
      "id": "m-2849",
      "location_id": "2849",
      "menu_date": "2026-10-04",
      "dishes": [
        "Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko",
        "Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha",
        "Meni 3: Testenine v paradižnikovi omaki z baziliko, solata"
      ]
    },
    "reviews": [
      {
        "id": "r-2849",
        "location_id": "2849",
        "rating": 5,
        "comment": "Zelo dobra ponudba študentskih bonov!",
        "created_at": "2026-10-04T12:00:00Z",
        "author_name": "Študent"
      }
    ]
  },
  {
    "id": "3291",
    "name": "Galaksija Trebnje",
    "address": "Novo mesto, 8000 Novo mesto",
    "city": "Novo mesto",
    "latitude": 45.8,
    "longitude": 15.178,
    "subsidy_price": 4.1,
    "opening_hours": "Pon - Pet: 10:00 - 20:00",
    "avg_rating": 4.1,
    "review_count": 21,
    "daily_menu": {
      "id": "m-3291",
      "location_id": "3291",
      "menu_date": "2026-10-04",
      "dishes": [
        "Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko",
        "Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha",
        "Meni 3: Testenine v paradižnikovi omaki z baziliko, solata"
      ]
    },
    "reviews": [
      {
        "id": "r-3291",
        "location_id": "3291",
        "rating": 5,
        "comment": "Zelo dobra ponudba študentskih bonov!",
        "created_at": "2026-10-04T12:00:00Z",
        "author_name": "Študent"
      }
    ]
  },
  {
    "id": "2591",
    "name": "Garač - Restavracija &quot;M&quot;",
    "address": "Ljubljana, 1000 Ljubljana",
    "city": "Ljubljana",
    "latitude": 46.067,
    "longitude": 14.513,
    "subsidy_price": 4.25,
    "opening_hours": "Pon - Pet: 10:00 - 20:00",
    "avg_rating": 4.1,
    "review_count": 41,
    "daily_menu": {
      "id": "m-2591",
      "location_id": "2591",
      "menu_date": "2026-10-04",
      "dishes": [
        "Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko",
        "Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha",
        "Meni 3: Testenine v paradižnikovi omaki z baziliko, solata"
      ]
    },
    "reviews": [
      {
        "id": "r-2591",
        "location_id": "2591",
        "rating": 5,
        "comment": "Zelo dobra ponudba študentskih bonov!",
        "created_at": "2026-10-04T12:00:00Z",
        "author_name": "Študent"
      }
    ]
  },
  {
    "id": "3308",
    "name": "Gaudi &amp; Naan",
    "address": "Ljubljana, 1000 Ljubljana",
    "city": "Ljubljana",
    "latitude": 46.08,
    "longitude": 14.53,
    "subsidy_price": 4.4,
    "opening_hours": "Pon - Pet: 10:00 - 20:00",
    "avg_rating": 4.8,
    "review_count": 38,
    "daily_menu": {
      "id": "m-3308",
      "location_id": "3308",
      "menu_date": "2026-10-04",
      "dishes": [
        "Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko",
        "Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha",
        "Meni 3: Testenine v paradižnikovi omaki z baziliko, solata"
      ]
    },
    "reviews": [
      {
        "id": "r-3308",
        "location_id": "3308",
        "rating": 5,
        "comment": "Zelo dobra ponudba študentskih bonov!",
        "created_at": "2026-10-04T12:00:00Z",
        "author_name": "Študent"
      }
    ]
  },
  {
    "id": "3223",
    "name": "Gig Bar &amp; Burger",
    "address": "Ljubljana, 1000 Ljubljana",
    "city": "Ljubljana",
    "latitude": 46.053,
    "longitude": 14.507,
    "subsidy_price": 4.55,
    "opening_hours": "Pon - Pet: 10:00 - 20:00",
    "avg_rating": 4.3,
    "review_count": 33,
    "daily_menu": {
      "id": "m-3223",
      "location_id": "3223",
      "menu_date": "2026-10-04",
      "dishes": [
        "Meni 1: Classic Beef Burger z ocvrtim krompirčkom in mešano solato",
        "Meni 2: Chicken Burger s svežo solato in omako",
        "Meni 3: Falafel ali Vegi Burger s krompirčkom, sadje"
      ]
    },
    "reviews": [
      {
        "id": "r-3223",
        "location_id": "3223",
        "rating": 5,
        "comment": "Zelo dobra ponudba študentskih bonov!",
        "created_at": "2026-10-04T12:00:00Z",
        "author_name": "Študent"
      }
    ]
  },
  {
    "id": "3352",
    "name": "Gostilna Godec",
    "address": "Ljubljana, 1000 Ljubljana",
    "city": "Ljubljana",
    "latitude": 46.066,
    "longitude": 14.524,
    "subsidy_price": 3.5,
    "opening_hours": "Pon - Pet: 10:00 - 20:00",
    "avg_rating": 4.2,
    "review_count": 42,
    "daily_menu": {
      "id": "m-3352",
      "location_id": "3352",
      "menu_date": "2026-10-04",
      "dishes": [
        "Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko",
        "Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha",
        "Meni 3: Testenine v paradižnikovi omaki z baziliko, solata"
      ]
    },
    "reviews": [
      {
        "id": "r-3352",
        "location_id": "3352",
        "rating": 5,
        "comment": "Zelo dobra ponudba študentskih bonov!",
        "created_at": "2026-10-04T12:00:00Z",
        "author_name": "Študent"
      }
    ]
  },
  {
    "id": "3299",
    "name": "Gostilna in picerija Guliver",
    "address": "Ljubljana, 1000 Ljubljana",
    "city": "Ljubljana",
    "latitude": 46.079,
    "longitude": 14.501,
    "subsidy_price": 3.65,
    "opening_hours": "Pon - Pet: 10:00 - 20:00",
    "avg_rating": 4.9,
    "review_count": 29,
    "daily_menu": {
      "id": "m-3299",
      "location_id": "3299",
      "menu_date": "2026-10-04",
      "dishes": [
        "Meni 1: Pizza Margherita (pelati, mocarela, bazilika), mešana solata, sadje",
        "Meni 2: Pizza Klasika (šunka, sir, gobe), mešana solata",
        "Meni 3: Veganska pizza s pečenimi jajčevci in bučkami, solata"
      ]
    },
    "reviews": [
      {
        "id": "r-3299",
        "location_id": "3299",
        "rating": 5,
        "comment": "Zelo dobra ponudba študentskih bonov!",
        "created_at": "2026-10-04T12:00:00Z",
        "author_name": "Študent"
      }
    ]
  },
  {
    "id": "3300",
    "name": "Gostilna in picerija Guliver - dostava",
    "address": "Ljubljana, 1000 Ljubljana",
    "city": "Ljubljana",
    "latitude": 46.052,
    "longitude": 14.518,
    "subsidy_price": 3.8,
    "opening_hours": "Pon - Pet: 10:00 - 20:00",
    "avg_rating": 4.0,
    "review_count": 30,
    "daily_menu": {
      "id": "m-3300",
      "location_id": "3300",
      "menu_date": "2026-10-04",
      "dishes": [
        "Meni 1: Pizza Margherita (pelati, mocarela, bazilika), mešana solata, sadje",
        "Meni 2: Pizza Klasika (šunka, sir, gobe), mešana solata",
        "Meni 3: Veganska pizza s pečenimi jajčevci in bučkami, solata"
      ]
    },
    "reviews": [
      {
        "id": "r-3300",
        "location_id": "3300",
        "rating": 5,
        "comment": "Zelo dobra ponudba študentskih bonov!",
        "created_at": "2026-10-04T12:00:00Z",
        "author_name": "Študent"
      }
    ]
  },
  {
    "id": "2411",
    "name": "Gostilna in picerija JERNEJEV HRAM",
    "address": "Ljubljana, 1000 Ljubljana",
    "city": "Ljubljana",
    "latitude": 46.065,
    "longitude": 14.535,
    "subsidy_price": 3.95,
    "opening_hours": "Pon - Pet: 10:00 - 20:00",
    "avg_rating": 4.1,
    "review_count": 21,
    "daily_menu": {
      "id": "m-2411",
      "location_id": "2411",
      "menu_date": "2026-10-04",
      "dishes": [
        "Meni 1: Pizza Margherita (pelati, mocarela, bazilika), mešana solata, sadje",
        "Meni 2: Pizza Klasika (šunka, sir, gobe), mešana solata",
        "Meni 3: Veganska pizza s pečenimi jajčevci in bučkami, solata"
      ]
    },
    "reviews": [
      {
        "id": "r-2411",
        "location_id": "2411",
        "rating": 5,
        "comment": "Zelo dobra ponudba študentskih bonov!",
        "created_at": "2026-10-04T12:00:00Z",
        "author_name": "Študent"
      }
    ]
  },
  {
    "id": "3294",
    "name": "Gostilna in Pizzerija Kovač",
    "address": "Ljubljana, 1000 Ljubljana",
    "city": "Ljubljana",
    "latitude": 46.078,
    "longitude": 14.512,
    "subsidy_price": 4.1,
    "opening_hours": "Pon - Pet: 10:00 - 20:00",
    "avg_rating": 4.4,
    "review_count": 24,
    "daily_menu": {
      "id": "m-3294",
      "location_id": "3294",
      "menu_date": "2026-10-04",
      "dishes": [
        "Meni 1: Pizza Margherita (pelati, mocarela, bazilika), mešana solata, sadje",
        "Meni 2: Pizza Klasika (šunka, sir, gobe), mešana solata",
        "Meni 3: Veganska pizza s pečenimi jajčevci in bučkami, solata"
      ]
    },
    "reviews": [
      {
        "id": "r-3294",
        "location_id": "3294",
        "rating": 5,
        "comment": "Zelo dobra ponudba študentskih bonov!",
        "created_at": "2026-10-04T12:00:00Z",
        "author_name": "Študent"
      }
    ]
  },
  {
    "id": "2543",
    "name": "Gostilna Pod Škalcami",
    "address": "Ljubljana, 1000 Ljubljana",
    "city": "Ljubljana",
    "latitude": 46.051,
    "longitude": 14.529,
    "subsidy_price": 4.25,
    "opening_hours": "Pon - Pet: 10:00 - 20:00",
    "avg_rating": 4.3,
    "review_count": 33,
    "daily_menu": {
      "id": "m-2543",
      "location_id": "2543",
      "menu_date": "2026-10-04",
      "dishes": [
        "Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko",
        "Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha",
        "Meni 3: Testenine v paradižnikovi omaki z baziliko, solata"
      ]
    },
    "reviews": [
      {
        "id": "r-2543",
        "location_id": "2543",
        "rating": 5,
        "comment": "Zelo dobra ponudba študentskih bonov!",
        "created_at": "2026-10-04T12:00:00Z",
        "author_name": "Študent"
      }
    ]
  },
  {
    "id": "2346",
    "name": "Gostilna pod Škalcami - DOSTAVA",
    "address": "Ljubljana, 1000 Ljubljana",
    "city": "Ljubljana",
    "latitude": 46.064,
    "longitude": 14.506,
    "subsidy_price": 4.4,
    "opening_hours": "Pon - Pet: 10:00 - 20:00",
    "avg_rating": 4.6,
    "review_count": 36,
    "daily_menu": {
      "id": "m-2346",
      "location_id": "2346",
      "menu_date": "2026-10-04",
      "dishes": [
        "Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko",
        "Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha",
        "Meni 3: Testenine v paradižnikovi omaki z baziliko, solata"
      ]
    },
    "reviews": [
      {
        "id": "r-2346",
        "location_id": "2346",
        "rating": 5,
        "comment": "Zelo dobra ponudba študentskih bonov!",
        "created_at": "2026-10-04T12:00:00Z",
        "author_name": "Študent"
      }
    ]
  },
  {
    "id": "3123",
    "name": "Gostilna Stara Brajda",
    "address": "Ljubljana, 1000 Ljubljana",
    "city": "Ljubljana",
    "latitude": 46.077,
    "longitude": 14.523,
    "subsidy_price": 4.55,
    "opening_hours": "Pon - Pet: 10:00 - 20:00",
    "avg_rating": 4.3,
    "review_count": 13,
    "daily_menu": {
      "id": "m-3123",
      "location_id": "3123",
      "menu_date": "2026-10-04",
      "dishes": [
        "Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko",
        "Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha",
        "Meni 3: Testenine v paradižnikovi omaki z baziliko, solata"
      ]
    },
    "reviews": [
      {
        "id": "r-3123",
        "location_id": "3123",
        "rating": 5,
        "comment": "Zelo dobra ponudba študentskih bonov!",
        "created_at": "2026-10-04T12:00:00Z",
        "author_name": "Študent"
      }
    ]
  },
  {
    "id": "3126",
    "name": "Gostilna Štorklja",
    "address": "Ljubljana, 1000 Ljubljana",
    "city": "Ljubljana",
    "latitude": 46.05,
    "longitude": 14.5,
    "subsidy_price": 3.5,
    "opening_hours": "Pon - Pet: 10:00 - 20:00",
    "avg_rating": 4.6,
    "review_count": 16,
    "daily_menu": {
      "id": "m-3126",
      "location_id": "3126",
      "menu_date": "2026-10-04",
      "dishes": [
        "Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko",
        "Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha",
        "Meni 3: Testenine v paradižnikovi omaki z baziliko, solata"
      ]
    },
    "reviews": [
      {
        "id": "r-3126",
        "location_id": "3126",
        "rating": 5,
        "comment": "Zelo dobra ponudba študentskih bonov!",
        "created_at": "2026-10-04T12:00:00Z",
        "author_name": "Študent"
      }
    ]
  },
  {
    "id": "1123",
    "name": "Gostilna Zlati lev",
    "address": "Ljubljana, 1000 Ljubljana",
    "city": "Ljubljana",
    "latitude": 46.063,
    "longitude": 14.517,
    "subsidy_price": 3.65,
    "opening_hours": "Pon - Pet: 10:00 - 20:00",
    "avg_rating": 4.3,
    "review_count": 13,
    "daily_menu": {
      "id": "m-1123",
      "location_id": "1123",
      "menu_date": "2026-10-04",
      "dishes": [
        "Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko",
        "Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha",
        "Meni 3: Testenine v paradižnikovi omaki z baziliko, solata"
      ]
    },
    "reviews": [
      {
        "id": "r-1123",
        "location_id": "1123",
        "rating": 5,
        "comment": "Zelo dobra ponudba študentskih bonov!",
        "created_at": "2026-10-04T12:00:00Z",
        "author_name": "Študent"
      }
    ]
  },
  {
    "id": "2185",
    "name": "Gostilnica in pivnica Kratochwill",
    "address": "Ljubljana, 1000 Ljubljana",
    "city": "Ljubljana",
    "latitude": 46.076,
    "longitude": 14.534,
    "subsidy_price": 3.8,
    "opening_hours": "Pon - Pet: 10:00 - 20:00",
    "avg_rating": 4.5,
    "review_count": 35,
    "daily_menu": {
      "id": "m-2185",
      "location_id": "2185",
      "menu_date": "2026-10-04",
      "dishes": [
        "Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko",
        "Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha",
        "Meni 3: Testenine v paradižnikovi omaki z baziliko, solata"
      ]
    },
    "reviews": [
      {
        "id": "r-2185",
        "location_id": "2185",
        "rating": 5,
        "comment": "Zelo dobra ponudba študentskih bonov!",
        "created_at": "2026-10-04T12:00:00Z",
        "author_name": "Študent"
      }
    ]
  },
  {
    "id": "3060",
    "name": "Gostilnica in pivnica Vič",
    "address": "Ljubljana, 1000 Ljubljana",
    "city": "Ljubljana",
    "latitude": 46.089,
    "longitude": 14.511,
    "subsidy_price": 3.95,
    "opening_hours": "Pon - Pet: 10:00 - 20:00",
    "avg_rating": 4.0,
    "review_count": 30,
    "daily_menu": {
      "id": "m-3060",
      "location_id": "3060",
      "menu_date": "2026-10-04",
      "dishes": [
        "Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko",
        "Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha",
        "Meni 3: Testenine v paradižnikovi omaki z baziliko, solata"
      ]
    },
    "reviews": [
      {
        "id": "r-3060",
        "location_id": "3060",
        "rating": 5,
        "comment": "Zelo dobra ponudba študentskih bonov!",
        "created_at": "2026-10-04T12:00:00Z",
        "author_name": "Študent"
      }
    ]
  },
  {
    "id": "1834",
    "name": "Gostilnica in pizzerija Kratochwill",
    "address": "Ljubljana, 1000 Ljubljana",
    "city": "Ljubljana",
    "latitude": 46.062,
    "longitude": 14.528,
    "subsidy_price": 4.1,
    "opening_hours": "Pon - Pet: 10:00 - 20:00",
    "avg_rating": 4.4,
    "review_count": 44,
    "daily_menu": {
      "id": "m-1834",
      "location_id": "1834",
      "menu_date": "2026-10-04",
      "dishes": [
        "Meni 1: Pizza Margherita (pelati, mocarela, bazilika), mešana solata, sadje",
        "Meni 2: Pizza Klasika (šunka, sir, gobe), mešana solata",
        "Meni 3: Veganska pizza s pečenimi jajčevci in bučkami, solata"
      ]
    },
    "reviews": [
      {
        "id": "r-1834",
        "location_id": "1834",
        "rating": 5,
        "comment": "Zelo dobra ponudba študentskih bonov!",
        "created_at": "2026-10-04T12:00:00Z",
        "author_name": "Študent"
      }
    ]
  },
  {
    "id": "1835",
    "name": "Gostilnica in pizzerija Kratochwill",
    "address": "Ljubljana, 1000 Ljubljana",
    "city": "Ljubljana",
    "latitude": 46.075,
    "longitude": 14.505,
    "subsidy_price": 4.25,
    "opening_hours": "Pon - Pet: 10:00 - 20:00",
    "avg_rating": 4.5,
    "review_count": 45,
    "daily_menu": {
      "id": "m-1835",
      "location_id": "1835",
      "menu_date": "2026-10-04",
      "dishes": [
        "Meni 1: Pizza Margherita (pelati, mocarela, bazilika), mešana solata, sadje",
        "Meni 2: Pizza Klasika (šunka, sir, gobe), mešana solata",
        "Meni 3: Veganska pizza s pečenimi jajčevci in bučkami, solata"
      ]
    },
    "reviews": [
      {
        "id": "r-1835",
        "location_id": "1835",
        "rating": 5,
        "comment": "Zelo dobra ponudba študentskih bonov!",
        "created_at": "2026-10-04T12:00:00Z",
        "author_name": "Študent"
      }
    ]
  },
  {
    "id": "3394",
    "name": "GOSTILNICA KENIK",
    "address": "Ljubljana, 1000 Ljubljana",
    "city": "Ljubljana",
    "latitude": 46.088,
    "longitude": 14.522,
    "subsidy_price": 4.4,
    "opening_hours": "Pon - Pet: 10:00 - 20:00",
    "avg_rating": 4.4,
    "review_count": 44,
    "daily_menu": {
      "id": "m-3394",
      "location_id": "3394",
      "menu_date": "2026-10-04",
      "dishes": [
        "Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko",
        "Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha",
        "Meni 3: Testenine v paradižnikovi omaki z baziliko, solata"
      ]
    },
    "reviews": [
      {
        "id": "r-3394",
        "location_id": "3394",
        "rating": 5,
        "comment": "Zelo dobra ponudba študentskih bonov!",
        "created_at": "2026-10-04T12:00:00Z",
        "author_name": "Študent"
      }
    ]
  },
  {
    "id": "2995",
    "name": "Gostilnica Meta in Bazilika",
    "address": "Ljubljana, 1000 Ljubljana",
    "city": "Ljubljana",
    "latitude": 46.061,
    "longitude": 14.539,
    "subsidy_price": 4.55,
    "opening_hours": "Pon - Pet: 10:00 - 20:00",
    "avg_rating": 4.5,
    "review_count": 45,
    "daily_menu": {
      "id": "m-2995",
      "location_id": "2995",
      "menu_date": "2026-10-04",
      "dishes": [
        "Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko",
        "Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha",
        "Meni 3: Testenine v paradižnikovi omaki z baziliko, solata"
      ]
    },
    "reviews": [
      {
        "id": "r-2995",
        "location_id": "2995",
        "rating": 5,
        "comment": "Zelo dobra ponudba študentskih bonov!",
        "created_at": "2026-10-04T12:00:00Z",
        "author_name": "Študent"
      }
    ]
  },
  {
    "id": "1213",
    "name": "Gostilnica Namanova",
    "address": "Ljubljana, 1000 Ljubljana",
    "city": "Ljubljana",
    "latitude": 46.074,
    "longitude": 14.516,
    "subsidy_price": 3.5,
    "opening_hours": "Pon - Pet: 10:00 - 20:00",
    "avg_rating": 4.3,
    "review_count": 23,
    "daily_menu": {
      "id": "m-1213",
      "location_id": "1213",
      "menu_date": "2026-10-04",
      "dishes": [
        "Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko",
        "Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha",
        "Meni 3: Testenine v paradižnikovi omaki z baziliko, solata"
      ]
    },
    "reviews": [
      {
        "id": "r-1213",
        "location_id": "1213",
        "rating": 5,
        "comment": "Zelo dobra ponudba študentskih bonov!",
        "created_at": "2026-10-04T12:00:00Z",
        "author_name": "Študent"
      }
    ]
  },
  {
    "id": "3305",
    "name": "Gostišče LOKA",
    "address": "Ljubljana, 1000 Ljubljana",
    "city": "Ljubljana",
    "latitude": 46.087,
    "longitude": 14.533,
    "subsidy_price": 3.65,
    "opening_hours": "Pon - Pet: 10:00 - 20:00",
    "avg_rating": 4.5,
    "review_count": 35,
    "daily_menu": {
      "id": "m-3305",
      "location_id": "3305",
      "menu_date": "2026-10-04",
      "dishes": [
        "Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko",
        "Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha",
        "Meni 3: Testenine v paradižnikovi omaki z baziliko, solata"
      ]
    },
    "reviews": [
      {
        "id": "r-3305",
        "location_id": "3305",
        "rating": 5,
        "comment": "Zelo dobra ponudba študentskih bonov!",
        "created_at": "2026-10-04T12:00:00Z",
        "author_name": "Študent"
      }
    ]
  },
  {
    "id": "1847",
    "name": "Gostišče na trgu - Hiša kulinarike",
    "address": "Ljubljana, 1000 Ljubljana",
    "city": "Ljubljana",
    "latitude": 46.06,
    "longitude": 14.51,
    "subsidy_price": 3.8,
    "opening_hours": "Pon - Pet: 10:00 - 20:00",
    "avg_rating": 4.7,
    "review_count": 17,
    "daily_menu": {
      "id": "m-1847",
      "location_id": "1847",
      "menu_date": "2026-10-04",
      "dishes": [
        "Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko",
        "Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha",
        "Meni 3: Testenine v paradižnikovi omaki z baziliko, solata"
      ]
    },
    "reviews": [
      {
        "id": "r-1847",
        "location_id": "1847",
        "rating": 5,
        "comment": "Zelo dobra ponudba študentskih bonov!",
        "created_at": "2026-10-04T12:00:00Z",
        "author_name": "Študent"
      }
    ]
  },
  {
    "id": "3354",
    "name": "Grashka Deli",
    "address": "Ljubljana, 1000 Ljubljana",
    "city": "Ljubljana",
    "latitude": 46.073,
    "longitude": 14.527,
    "subsidy_price": 3.95,
    "opening_hours": "Pon - Pet: 10:00 - 20:00",
    "avg_rating": 4.4,
    "review_count": 44,
    "daily_menu": {
      "id": "m-3354",
      "location_id": "3354",
      "menu_date": "2026-10-04",
      "dishes": [
        "Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko",
        "Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha",
        "Meni 3: Testenine v paradižnikovi omaki z baziliko, solata"
      ]
    },
    "reviews": [
      {
        "id": "r-3354",
        "location_id": "3354",
        "rating": 5,
        "comment": "Zelo dobra ponudba študentskih bonov!",
        "created_at": "2026-10-04T12:00:00Z",
        "author_name": "Študent"
      }
    ]
  },
  {
    "id": "1188",
    "name": "Gurmanski hram",
    "address": "Ljubljana, 1000 Ljubljana",
    "city": "Ljubljana",
    "latitude": 46.086,
    "longitude": 14.504,
    "subsidy_price": 4.1,
    "opening_hours": "Pon - Pet: 10:00 - 20:00",
    "avg_rating": 4.8,
    "review_count": 38,
    "daily_menu": {
      "id": "m-1188",
      "location_id": "1188",
      "menu_date": "2026-10-04",
      "dishes": [
        "Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko",
        "Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha",
        "Meni 3: Testenine v paradižnikovi omaki z baziliko, solata"
      ]
    },
    "reviews": [
      {
        "id": "r-1188",
        "location_id": "1188",
        "rating": 5,
        "comment": "Zelo dobra ponudba študentskih bonov!",
        "created_at": "2026-10-04T12:00:00Z",
        "author_name": "Študent"
      }
    ]
  },
  {
    "id": "1189",
    "name": "Gurmanski hram - DOSTAVA",
    "address": "Ljubljana, 1000 Ljubljana",
    "city": "Ljubljana",
    "latitude": 46.059,
    "longitude": 14.521,
    "subsidy_price": 4.25,
    "opening_hours": "Pon - Pet: 10:00 - 20:00",
    "avg_rating": 4.9,
    "review_count": 39,
    "daily_menu": {
      "id": "m-1189",
      "location_id": "1189",
      "menu_date": "2026-10-04",
      "dishes": [
        "Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko",
        "Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha",
        "Meni 3: Testenine v paradižnikovi omaki z baziliko, solata"
      ]
    },
    "reviews": [
      {
        "id": "r-1189",
        "location_id": "1189",
        "rating": 5,
        "comment": "Zelo dobra ponudba študentskih bonov!",
        "created_at": "2026-10-04T12:00:00Z",
        "author_name": "Študent"
      }
    ]
  },
  {
    "id": "2355",
    "name": "Halo Katra - dostava",
    "address": "Ljubljana, 1000 Ljubljana",
    "city": "Ljubljana",
    "latitude": 46.072,
    "longitude": 14.538,
    "subsidy_price": 4.4,
    "opening_hours": "Pon - Pet: 10:00 - 20:00",
    "avg_rating": 4.5,
    "review_count": 45,
    "daily_menu": {
      "id": "m-2355",
      "location_id": "2355",
      "menu_date": "2026-10-04",
      "dishes": [
        "Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko",
        "Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha",
        "Meni 3: Testenine v paradižnikovi omaki z baziliko, solata"
      ]
    },
    "reviews": [
      {
        "id": "r-2355",
        "location_id": "2355",
        "rating": 5,
        "comment": "Zelo dobra ponudba študentskih bonov!",
        "created_at": "2026-10-04T12:00:00Z",
        "author_name": "Študent"
      }
    ]
  },
  {
    "id": "1514",
    "name": "Halo Pinki - dostava",
    "address": "Ljubljana, 1000 Ljubljana",
    "city": "Ljubljana",
    "latitude": 46.085,
    "longitude": 14.515,
    "subsidy_price": 4.55,
    "opening_hours": "Pon - Pet: 10:00 - 20:00",
    "avg_rating": 4.4,
    "review_count": 44,
    "daily_menu": {
      "id": "m-1514",
      "location_id": "1514",
      "menu_date": "2026-10-04",
      "dishes": [
        "Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko",
        "Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha",
        "Meni 3: Testenine v paradižnikovi omaki z baziliko, solata"
      ]
    },
    "reviews": [
      {
        "id": "r-1514",
        "location_id": "1514",
        "rating": 5,
        "comment": "Zelo dobra ponudba študentskih bonov!",
        "created_at": "2026-10-04T12:00:00Z",
        "author_name": "Študent"
      }
    ]
  },
  {
    "id": "3366",
    "name": "Halo Shaolin - dostava",
    "address": "Ljubljana, 1000 Ljubljana",
    "city": "Ljubljana",
    "latitude": 46.058,
    "longitude": 14.532,
    "subsidy_price": 3.5,
    "opening_hours": "Pon - Pet: 10:00 - 20:00",
    "avg_rating": 4.6,
    "review_count": 16,
    "daily_menu": {
      "id": "m-3366",
      "location_id": "3366",
      "menu_date": "2026-10-04",
      "dishes": [
        "Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko",
        "Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha",
        "Meni 3: Testenine v paradižnikovi omaki z baziliko, solata"
      ]
    },
    "reviews": [
      {
        "id": "r-3366",
        "location_id": "3366",
        "rating": 5,
        "comment": "Zelo dobra ponudba študentskih bonov!",
        "created_at": "2026-10-04T12:00:00Z",
        "author_name": "Študent"
      }
    ]
  },
  {
    "id": "2668",
    "name": "Hiša pod gradom",
    "address": "Ljubljana, 1000 Ljubljana",
    "city": "Ljubljana",
    "latitude": 46.071,
    "longitude": 14.509,
    "subsidy_price": 3.65,
    "opening_hours": "Pon - Pet: 10:00 - 20:00",
    "avg_rating": 4.8,
    "review_count": 38,
    "daily_menu": {
      "id": "m-2668",
      "location_id": "2668",
      "menu_date": "2026-10-04",
      "dishes": [
        "Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko",
        "Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha",
        "Meni 3: Testenine v paradižnikovi omaki z baziliko, solata"
      ]
    },
    "reviews": [
      {
        "id": "r-2668",
        "location_id": "2668",
        "rating": 5,
        "comment": "Zelo dobra ponudba študentskih bonov!",
        "created_at": "2026-10-04T12:00:00Z",
        "author_name": "Študent"
      }
    ]
  },
  {
    "id": "2430",
    "name": "Hit wok",
    "address": "Ljubljana, 1000 Ljubljana",
    "city": "Ljubljana",
    "latitude": 46.084,
    "longitude": 14.526,
    "subsidy_price": 3.8,
    "opening_hours": "Pon - Pet: 10:00 - 20:00",
    "avg_rating": 4.0,
    "review_count": 40,
    "daily_menu": {
      "id": "m-2430",
      "location_id": "2430",
      "menu_date": "2026-10-04",
      "dishes": [
        "Meni 1: Hrustljavi piščanec v sladko-kisli omaki, pražen riž, zelenjavna juha",
        "Meni 2: Praženi rezanci z zelenjavo in tofujem, solata",
        "Meni 3: Pekinška raca z rižem, pomladni zavitki"
      ]
    },
    "reviews": [
      {
        "id": "r-2430",
        "location_id": "2430",
        "rating": 5,
        "comment": "Zelo dobra ponudba študentskih bonov!",
        "created_at": "2026-10-04T12:00:00Z",
        "author_name": "Študent"
      }
    ]
  },
  {
    "id": "3373",
    "name": "Hotel restavracija Prunk",
    "address": "Ljubljana, 1000 Ljubljana",
    "city": "Ljubljana",
    "latitude": 46.057,
    "longitude": 14.503,
    "subsidy_price": 3.95,
    "opening_hours": "Pon - Pet: 10:00 - 20:00",
    "avg_rating": 4.3,
    "review_count": 23,
    "daily_menu": {
      "id": "m-3373",
      "location_id": "3373",
      "menu_date": "2026-10-04",
      "dishes": [
        "Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko",
        "Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha",
        "Meni 3: Testenine v paradižnikovi omaki z baziliko, solata"
      ]
    },
    "reviews": [
      {
        "id": "r-3373",
        "location_id": "3373",
        "rating": 5,
        "comment": "Zelo dobra ponudba študentskih bonov!",
        "created_at": "2026-10-04T12:00:00Z",
        "author_name": "Študent"
      }
    ]
  },
  {
    "id": "2846",
    "name": "HotSpot bar&amp;bistro",
    "address": "Ljubljana, 1000 Ljubljana",
    "city": "Ljubljana",
    "latitude": 46.07,
    "longitude": 14.52,
    "subsidy_price": 4.1,
    "opening_hours": "Pon - Pet: 10:00 - 20:00",
    "avg_rating": 4.6,
    "review_count": 16,
    "daily_menu": {
      "id": "m-2846",
      "location_id": "2846",
      "menu_date": "2026-10-04",
      "dishes": [
        "Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko",
        "Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha",
        "Meni 3: Testenine v paradižnikovi omaki z baziliko, solata"
      ]
    },
    "reviews": [
      {
        "id": "r-2846",
        "location_id": "2846",
        "rating": 5,
        "comment": "Zelo dobra ponudba študentskih bonov!",
        "created_at": "2026-10-04T12:00:00Z",
        "author_name": "Študent"
      }
    ]
  },
  {
    "id": "3197",
    "name": "HUDA .",
    "address": "Ljubljana, 1000 Ljubljana",
    "city": "Ljubljana",
    "latitude": 46.083,
    "longitude": 14.537,
    "subsidy_price": 4.25,
    "opening_hours": "Pon - Pet: 10:00 - 20:00",
    "avg_rating": 4.7,
    "review_count": 47,
    "daily_menu": {
      "id": "m-3197",
      "location_id": "3197",
      "menu_date": "2026-10-04",
      "dishes": [
        "Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko",
        "Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha",
        "Meni 3: Testenine v paradižnikovi omaki z baziliko, solata"
      ]
    },
    "reviews": [
      {
        "id": "r-3197",
        "location_id": "3197",
        "rating": 5,
        "comment": "Zelo dobra ponudba študentskih bonov!",
        "created_at": "2026-10-04T12:00:00Z",
        "author_name": "Študent"
      }
    ]
  },
  {
    "id": "3387",
    "name": "IT`S WOK O`CLOCK",
    "address": "Ljubljana, 1000 Ljubljana",
    "city": "Ljubljana",
    "latitude": 46.056,
    "longitude": 14.514,
    "subsidy_price": 4.4,
    "opening_hours": "Pon - Pet: 10:00 - 20:00",
    "avg_rating": 4.7,
    "review_count": 37,
    "daily_menu": {
      "id": "m-3387",
      "location_id": "3387",
      "menu_date": "2026-10-04",
      "dishes": [
        "Meni 1: Hrustljavi piščanec v sladko-kisli omaki, pražen riž, zelenjavna juha",
        "Meni 2: Praženi rezanci z zelenjavo in tofujem, solata",
        "Meni 3: Pekinška raca z rižem, pomladni zavitki"
      ]
    },
    "reviews": [
      {
        "id": "r-3387",
        "location_id": "3387",
        "rating": 5,
        "comment": "Zelo dobra ponudba študentskih bonov!",
        "created_at": "2026-10-04T12:00:00Z",
        "author_name": "Študent"
      }
    ]
  },
  {
    "id": "3256",
    "name": "JOE PENA&#180;S, mehiška restavracija",
    "address": "Ljubljana, 1000 Ljubljana",
    "city": "Ljubljana",
    "latitude": 46.069,
    "longitude": 14.531,
    "subsidy_price": 4.55,
    "opening_hours": "Pon - Pet: 10:00 - 20:00",
    "avg_rating": 4.6,
    "review_count": 26,
    "daily_menu": {
      "id": "m-3256",
      "location_id": "3256",
      "menu_date": "2026-10-04",
      "dishes": [
        "Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko",
        "Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha",
        "Meni 3: Testenine v paradižnikovi omaki z baziliko, solata"
      ]
    },
    "reviews": [
      {
        "id": "r-3256",
        "location_id": "3256",
        "rating": 5,
        "comment": "Zelo dobra ponudba študentskih bonov!",
        "created_at": "2026-10-04T12:00:00Z",
        "author_name": "Študent"
      }
    ]
  },
  {
    "id": "3238",
    "name": "K16",
    "address": "Ljubljana, 1000 Ljubljana",
    "city": "Ljubljana",
    "latitude": 46.082,
    "longitude": 14.508,
    "subsidy_price": 3.5,
    "opening_hours": "Pon - Pet: 10:00 - 20:00",
    "avg_rating": 4.8,
    "review_count": 48,
    "daily_menu": {
      "id": "m-3238",
      "location_id": "3238",
      "menu_date": "2026-10-04",
      "dishes": [
        "Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko",
        "Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha",
        "Meni 3: Testenine v paradižnikovi omaki z baziliko, solata"
      ]
    },
    "reviews": [
      {
        "id": "r-3238",
        "location_id": "3238",
        "rating": 5,
        "comment": "Zelo dobra ponudba študentskih bonov!",
        "created_at": "2026-10-04T12:00:00Z",
        "author_name": "Študent"
      }
    ]
  },
  {
    "id": "3302",
    "name": "Kampus food",
    "address": "Ljubljana, 1000 Ljubljana",
    "city": "Ljubljana",
    "latitude": 46.055,
    "longitude": 14.525,
    "subsidy_price": 3.65,
    "opening_hours": "Pon - Pet: 10:00 - 20:00",
    "avg_rating": 4.2,
    "review_count": 32,
    "daily_menu": {
      "id": "m-3302",
      "location_id": "3302",
      "menu_date": "2026-10-04",
      "dishes": [
        "Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko",
        "Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha",
        "Meni 3: Testenine v paradižnikovi omaki z baziliko, solata"
      ]
    },
    "reviews": [
      {
        "id": "r-3302",
        "location_id": "3302",
        "rating": 5,
        "comment": "Zelo dobra ponudba študentskih bonov!",
        "created_at": "2026-10-04T12:00:00Z",
        "author_name": "Študent"
      }
    ]
  },
  {
    "id": "2581",
    "name": "KAPITAL",
    "address": "Ljubljana, 1000 Ljubljana",
    "city": "Ljubljana",
    "latitude": 46.068,
    "longitude": 14.502,
    "subsidy_price": 3.8,
    "opening_hours": "Pon - Pet: 10:00 - 20:00",
    "avg_rating": 4.1,
    "review_count": 31,
    "daily_menu": {
      "id": "m-2581",
      "location_id": "2581",
      "menu_date": "2026-10-04",
      "dishes": [
        "Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko",
        "Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha",
        "Meni 3: Testenine v paradižnikovi omaki z baziliko, solata"
      ]
    },
    "reviews": [
      {
        "id": "r-2581",
        "location_id": "2581",
        "rating": 5,
        "comment": "Zelo dobra ponudba študentskih bonov!",
        "created_at": "2026-10-04T12:00:00Z",
        "author_name": "Študent"
      }
    ]
  },
  {
    "id": "2644",
    "name": "Kitajska restavracija AZIJA",
    "address": "Ljubljana, 1000 Ljubljana",
    "city": "Ljubljana",
    "latitude": 46.081,
    "longitude": 14.519,
    "subsidy_price": 3.95,
    "opening_hours": "Pon - Pet: 10:00 - 20:00",
    "avg_rating": 4.4,
    "review_count": 14,
    "daily_menu": {
      "id": "m-2644",
      "location_id": "2644",
      "menu_date": "2026-10-04",
      "dishes": [
        "Meni 1: Hrustljavi piščanec v sladko-kisli omaki, pražen riž, zelenjavna juha",
        "Meni 2: Praženi rezanci z zelenjavo in tofujem, solata",
        "Meni 3: Pekinška raca z rižem, pomladni zavitki"
      ]
    },
    "reviews": [
      {
        "id": "r-2644",
        "location_id": "2644",
        "rating": 5,
        "comment": "Zelo dobra ponudba študentskih bonov!",
        "created_at": "2026-10-04T12:00:00Z",
        "author_name": "Študent"
      }
    ]
  },
  {
    "id": "3264",
    "name": "Kitajska restavracija Beli labod 2",
    "address": "Ljubljana, 1000 Ljubljana",
    "city": "Ljubljana",
    "latitude": 46.054,
    "longitude": 14.536,
    "subsidy_price": 4.1,
    "opening_hours": "Pon - Pet: 10:00 - 20:00",
    "avg_rating": 4.4,
    "review_count": 34,
    "daily_menu": {
      "id": "m-3264",
      "location_id": "3264",
      "menu_date": "2026-10-04",
      "dishes": [
        "Meni 1: Hrustljavi piščanec v sladko-kisli omaki, pražen riž, zelenjavna juha",
        "Meni 2: Praženi rezanci z zelenjavo in tofujem, solata",
        "Meni 3: Pekinška raca z rižem, pomladni zavitki"
      ]
    },
    "reviews": [
      {
        "id": "r-3264",
        "location_id": "3264",
        "rating": 5,
        "comment": "Zelo dobra ponudba študentskih bonov!",
        "created_at": "2026-10-04T12:00:00Z",
        "author_name": "Študent"
      }
    ]
  },
  {
    "id": "2264",
    "name": "Kitajska restavracija Cesarska hiša",
    "address": "Ljubljana, 1000 Ljubljana",
    "city": "Ljubljana",
    "latitude": 46.067,
    "longitude": 14.513,
    "subsidy_price": 4.25,
    "opening_hours": "Pon - Pet: 10:00 - 20:00",
    "avg_rating": 4.4,
    "review_count": 34,
    "daily_menu": {
      "id": "m-2264",
      "location_id": "2264",
      "menu_date": "2026-10-04",
      "dishes": [
        "Meni 1: Hrustljavi piščanec v sladko-kisli omaki, pražen riž, zelenjavna juha",
        "Meni 2: Praženi rezanci z zelenjavo in tofujem, solata",
        "Meni 3: Pekinška raca z rižem, pomladni zavitki"
      ]
    },
    "reviews": [
      {
        "id": "r-2264",
        "location_id": "2264",
        "rating": 5,
        "comment": "Zelo dobra ponudba študentskih bonov!",
        "created_at": "2026-10-04T12:00:00Z",
        "author_name": "Študent"
      }
    ]
  },
  {
    "id": "2635",
    "name": "Kitajska restavracija Dva zmaja",
    "address": "Ljubljana, 1000 Ljubljana",
    "city": "Ljubljana",
    "latitude": 46.08,
    "longitude": 14.53,
    "subsidy_price": 4.4,
    "opening_hours": "Pon - Pet: 10:00 - 20:00",
    "avg_rating": 4.5,
    "review_count": 45,
    "daily_menu": {
      "id": "m-2635",
      "location_id": "2635",
      "menu_date": "2026-10-04",
      "dishes": [
        "Meni 1: Hrustljavi piščanec v sladko-kisli omaki, pražen riž, zelenjavna juha",
        "Meni 2: Praženi rezanci z zelenjavo in tofujem, solata",
        "Meni 3: Pekinška raca z rižem, pomladni zavitki"
      ]
    },
    "reviews": [
      {
        "id": "r-2635",
        "location_id": "2635",
        "rating": 5,
        "comment": "Zelo dobra ponudba študentskih bonov!",
        "created_at": "2026-10-04T12:00:00Z",
        "author_name": "Študent"
      }
    ]
  },
  {
    "id": "2950",
    "name": "Kitajska restavracija Han",
    "address": "Ljubljana, 1000 Ljubljana",
    "city": "Ljubljana",
    "latitude": 46.053,
    "longitude": 14.507,
    "subsidy_price": 4.55,
    "opening_hours": "Pon - Pet: 10:00 - 20:00",
    "avg_rating": 4.0,
    "review_count": 40,
    "daily_menu": {
      "id": "m-2950",
      "location_id": "2950",
      "menu_date": "2026-10-04",
      "dishes": [
        "Meni 1: Hrustljavi piščanec v sladko-kisli omaki, pražen riž, zelenjavna juha",
        "Meni 2: Praženi rezanci z zelenjavo in tofujem, solata",
        "Meni 3: Pekinška raca z rižem, pomladni zavitki"
      ]
    },
    "reviews": [
      {
        "id": "r-2950",
        "location_id": "2950",
        "rating": 5,
        "comment": "Zelo dobra ponudba študentskih bonov!",
        "created_at": "2026-10-04T12:00:00Z",
        "author_name": "Študent"
      }
    ]
  },
  {
    "id": "3118",
    "name": "Kitajska restavracija Han - Aleja",
    "address": "Ljubljana, 1000 Ljubljana",
    "city": "Ljubljana",
    "latitude": 46.066,
    "longitude": 14.524,
    "subsidy_price": 3.5,
    "opening_hours": "Pon - Pet: 10:00 - 20:00",
    "avg_rating": 4.8,
    "review_count": 48,
    "daily_menu": {
      "id": "m-3118",
      "location_id": "3118",
      "menu_date": "2026-10-04",
      "dishes": [
        "Meni 1: Hrustljavi piščanec v sladko-kisli omaki, pražen riž, zelenjavna juha",
        "Meni 2: Praženi rezanci z zelenjavo in tofujem, solata",
        "Meni 3: Pekinška raca z rižem, pomladni zavitki"
      ]
    },
    "reviews": [
      {
        "id": "r-3118",
        "location_id": "3118",
        "rating": 5,
        "comment": "Zelo dobra ponudba študentskih bonov!",
        "created_at": "2026-10-04T12:00:00Z",
        "author_name": "Študent"
      }
    ]
  },
  {
    "id": "2841",
    "name": "Kitajska restavracija Leteča zvezda",
    "address": "Ljubljana, 1000 Ljubljana",
    "city": "Ljubljana",
    "latitude": 46.079,
    "longitude": 14.501,
    "subsidy_price": 3.65,
    "opening_hours": "Pon - Pet: 10:00 - 20:00",
    "avg_rating": 4.1,
    "review_count": 11,
    "daily_menu": {
      "id": "m-2841",
      "location_id": "2841",
      "menu_date": "2026-10-04",
      "dishes": [
        "Meni 1: Hrustljavi piščanec v sladko-kisli omaki, pražen riž, zelenjavna juha",
        "Meni 2: Praženi rezanci z zelenjavo in tofujem, solata",
        "Meni 3: Pekinška raca z rižem, pomladni zavitki"
      ]
    },
    "reviews": [
      {
        "id": "r-2841",
        "location_id": "2841",
        "rating": 5,
        "comment": "Zelo dobra ponudba študentskih bonov!",
        "created_at": "2026-10-04T12:00:00Z",
        "author_name": "Študent"
      }
    ]
  },
  {
    "id": "2842",
    "name": "Kitajska restavracija Leteča zvezda - dostava",
    "address": "Ljubljana, 1000 Ljubljana",
    "city": "Ljubljana",
    "latitude": 46.052,
    "longitude": 14.518,
    "subsidy_price": 3.8,
    "opening_hours": "Pon - Pet: 10:00 - 20:00",
    "avg_rating": 4.2,
    "review_count": 12,
    "daily_menu": {
      "id": "m-2842",
      "location_id": "2842",
      "menu_date": "2026-10-04",
      "dishes": [
        "Meni 1: Hrustljavi piščanec v sladko-kisli omaki, pražen riž, zelenjavna juha",
        "Meni 2: Praženi rezanci z zelenjavo in tofujem, solata",
        "Meni 3: Pekinška raca z rižem, pomladni zavitki"
      ]
    },
    "reviews": [
      {
        "id": "r-2842",
        "location_id": "2842",
        "rating": 5,
        "comment": "Zelo dobra ponudba študentskih bonov!",
        "created_at": "2026-10-04T12:00:00Z",
        "author_name": "Študent"
      }
    ]
  },
  {
    "id": "2933",
    "name": "Kitajska restavracija Ming Zhu",
    "address": "Ljubljana, 1000 Ljubljana",
    "city": "Ljubljana",
    "latitude": 46.065,
    "longitude": 14.535,
    "subsidy_price": 3.95,
    "opening_hours": "Pon - Pet: 10:00 - 20:00",
    "avg_rating": 4.3,
    "review_count": 23,
    "daily_menu": {
      "id": "m-2933",
      "location_id": "2933",
      "menu_date": "2026-10-04",
      "dishes": [
        "Meni 1: Hrustljavi piščanec v sladko-kisli omaki, pražen riž, zelenjavna juha",
        "Meni 2: Praženi rezanci z zelenjavo in tofujem, solata",
        "Meni 3: Pekinška raca z rižem, pomladni zavitki"
      ]
    },
    "reviews": [
      {
        "id": "r-2933",
        "location_id": "2933",
        "rating": 5,
        "comment": "Zelo dobra ponudba študentskih bonov!",
        "created_at": "2026-10-04T12:00:00Z",
        "author_name": "Študent"
      }
    ]
  },
  {
    "id": "1415",
    "name": "Kitajska restavracija NANKING",
    "address": "Ljubljana, 1000 Ljubljana",
    "city": "Ljubljana",
    "latitude": 46.078,
    "longitude": 14.512,
    "subsidy_price": 4.1,
    "opening_hours": "Pon - Pet: 10:00 - 20:00",
    "avg_rating": 4.5,
    "review_count": 25,
    "daily_menu": {
      "id": "m-1415",
      "location_id": "1415",
      "menu_date": "2026-10-04",
      "dishes": [
        "Meni 1: Hrustljavi piščanec v sladko-kisli omaki, pražen riž, zelenjavna juha",
        "Meni 2: Praženi rezanci z zelenjavo in tofujem, solata",
        "Meni 3: Pekinška raca z rižem, pomladni zavitki"
      ]
    },
    "reviews": [
      {
        "id": "r-1415",
        "location_id": "1415",
        "rating": 5,
        "comment": "Zelo dobra ponudba študentskih bonov!",
        "created_at": "2026-10-04T12:00:00Z",
        "author_name": "Študent"
      }
    ]
  },
  {
    "id": "1346",
    "name": "Kitajska restavracija Novi Šanghai",
    "address": "Ljubljana, 1000 Ljubljana",
    "city": "Ljubljana",
    "latitude": 46.051,
    "longitude": 14.529,
    "subsidy_price": 4.25,
    "opening_hours": "Pon - Pet: 10:00 - 20:00",
    "avg_rating": 4.6,
    "review_count": 36,
    "daily_menu": {
      "id": "m-1346",
      "location_id": "1346",
      "menu_date": "2026-10-04",
      "dishes": [
        "Meni 1: Hrustljavi piščanec v sladko-kisli omaki, pražen riž, zelenjavna juha",
        "Meni 2: Praženi rezanci z zelenjavo in tofujem, solata",
        "Meni 3: Pekinška raca z rižem, pomladni zavitki"
      ]
    },
    "reviews": [
      {
        "id": "r-1346",
        "location_id": "1346",
        "rating": 5,
        "comment": "Zelo dobra ponudba študentskih bonov!",
        "created_at": "2026-10-04T12:00:00Z",
        "author_name": "Študent"
      }
    ]
  },
  {
    "id": "2446",
    "name": "Kitajska restavracija Šang Hai",
    "address": "Ljubljana, 1000 Ljubljana",
    "city": "Ljubljana",
    "latitude": 46.064,
    "longitude": 14.506,
    "subsidy_price": 4.4,
    "opening_hours": "Pon - Pet: 10:00 - 20:00",
    "avg_rating": 4.6,
    "review_count": 16,
    "daily_menu": {
      "id": "m-2446",
      "location_id": "2446",
      "menu_date": "2026-10-04",
      "dishes": [
        "Meni 1: Hrustljavi piščanec v sladko-kisli omaki, pražen riž, zelenjavna juha",
        "Meni 2: Praženi rezanci z zelenjavo in tofujem, solata",
        "Meni 3: Pekinška raca z rižem, pomladni zavitki"
      ]
    },
    "reviews": [
      {
        "id": "r-2446",
        "location_id": "2446",
        "rating": 5,
        "comment": "Zelo dobra ponudba študentskih bonov!",
        "created_at": "2026-10-04T12:00:00Z",
        "author_name": "Študent"
      }
    ]
  },
  {
    "id": "2761",
    "name": "Kitajska restavracija Zlata srna",
    "address": "Ljubljana, 1000 Ljubljana",
    "city": "Ljubljana",
    "latitude": 46.077,
    "longitude": 14.523,
    "subsidy_price": 4.55,
    "opening_hours": "Pon - Pet: 10:00 - 20:00",
    "avg_rating": 4.1,
    "review_count": 11,
    "daily_menu": {
      "id": "m-2761",
      "location_id": "2761",
      "menu_date": "2026-10-04",
      "dishes": [
        "Meni 1: Hrustljavi piščanec v sladko-kisli omaki, pražen riž, zelenjavna juha",
        "Meni 2: Praženi rezanci z zelenjavo in tofujem, solata",
        "Meni 3: Pekinška raca z rižem, pomladni zavitki"
      ]
    },
    "reviews": [
      {
        "id": "r-2761",
        "location_id": "2761",
        "rating": 5,
        "comment": "Zelo dobra ponudba študentskih bonov!",
        "created_at": "2026-10-04T12:00:00Z",
        "author_name": "Študent"
      }
    ]
  },
  {
    "id": "2762",
    "name": "Kitajska restavracija Zlata srna - DOSTAVA",
    "address": "Ljubljana, 1000 Ljubljana",
    "city": "Ljubljana",
    "latitude": 46.05,
    "longitude": 14.5,
    "subsidy_price": 3.5,
    "opening_hours": "Pon - Pet: 10:00 - 20:00",
    "avg_rating": 4.2,
    "review_count": 12,
    "daily_menu": {
      "id": "m-2762",
      "location_id": "2762",
      "menu_date": "2026-10-04",
      "dishes": [
        "Meni 1: Hrustljavi piščanec v sladko-kisli omaki, pražen riž, zelenjavna juha",
        "Meni 2: Praženi rezanci z zelenjavo in tofujem, solata",
        "Meni 3: Pekinška raca z rižem, pomladni zavitki"
      ]
    },
    "reviews": [
      {
        "id": "r-2762",
        "location_id": "2762",
        "rating": 5,
        "comment": "Zelo dobra ponudba študentskih bonov!",
        "created_at": "2026-10-04T12:00:00Z",
        "author_name": "Študent"
      }
    ]
  },
  {
    "id": "1165",
    "name": "Kitajska restavracija Zvezda",
    "address": "Ljubljana, 1000 Ljubljana",
    "city": "Ljubljana",
    "latitude": 46.063,
    "longitude": 14.517,
    "subsidy_price": 3.65,
    "opening_hours": "Pon - Pet: 10:00 - 20:00",
    "avg_rating": 4.5,
    "review_count": 15,
    "daily_menu": {
      "id": "m-1165",
      "location_id": "1165",
      "menu_date": "2026-10-04",
      "dishes": [
        "Meni 1: Hrustljavi piščanec v sladko-kisli omaki, pražen riž, zelenjavna juha",
        "Meni 2: Praženi rezanci z zelenjavo in tofujem, solata",
        "Meni 3: Pekinška raca z rižem, pomladni zavitki"
      ]
    },
    "reviews": [
      {
        "id": "r-1165",
        "location_id": "1165",
        "rating": 5,
        "comment": "Zelo dobra ponudba študentskih bonov!",
        "created_at": "2026-10-04T12:00:00Z",
        "author_name": "Študent"
      }
    ]
  },
  {
    "id": "2265",
    "name": "Kitajska restavracja Cesarska hiša-DOSTAVA",
    "address": "Ljubljana, 1000 Ljubljana",
    "city": "Ljubljana",
    "latitude": 46.076,
    "longitude": 14.534,
    "subsidy_price": 3.8,
    "opening_hours": "Pon - Pet: 10:00 - 20:00",
    "avg_rating": 4.5,
    "review_count": 35,
    "daily_menu": {
      "id": "m-2265",
      "location_id": "2265",
      "menu_date": "2026-10-04",
      "dishes": [
        "Meni 1: Hrustljavi piščanec v sladko-kisli omaki, pražen riž, zelenjavna juha",
        "Meni 2: Praženi rezanci z zelenjavo in tofujem, solata",
        "Meni 3: Pekinška raca z rižem, pomladni zavitki"
      ]
    },
    "reviews": [
      {
        "id": "r-2265",
        "location_id": "2265",
        "rating": 5,
        "comment": "Zelo dobra ponudba študentskih bonov!",
        "created_at": "2026-10-04T12:00:00Z",
        "author_name": "Študent"
      }
    ]
  },
  {
    "id": "1610",
    "name": "Kitajski dvor",
    "address": "Ljubljana, 1000 Ljubljana",
    "city": "Ljubljana",
    "latitude": 46.089,
    "longitude": 14.511,
    "subsidy_price": 3.95,
    "opening_hours": "Pon - Pet: 10:00 - 20:00",
    "avg_rating": 4.0,
    "review_count": 20,
    "daily_menu": {
      "id": "m-1610",
      "location_id": "1610",
      "menu_date": "2026-10-04",
      "dishes": [
        "Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko",
        "Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha",
        "Meni 3: Testenine v paradižnikovi omaki z baziliko, solata"
      ]
    },
    "reviews": [
      {
        "id": "r-1610",
        "location_id": "1610",
        "rating": 5,
        "comment": "Zelo dobra ponudba študentskih bonov!",
        "created_at": "2026-10-04T12:00:00Z",
        "author_name": "Študent"
      }
    ]
  },
  {
    "id": "1911",
    "name": "Kitajski dvor",
    "address": "Ljubljana, 1000 Ljubljana",
    "city": "Ljubljana",
    "latitude": 46.062,
    "longitude": 14.528,
    "subsidy_price": 4.1,
    "opening_hours": "Pon - Pet: 10:00 - 20:00",
    "avg_rating": 4.1,
    "review_count": 41,
    "daily_menu": {
      "id": "m-1911",
      "location_id": "1911",
      "menu_date": "2026-10-04",
      "dishes": [
        "Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko",
        "Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha",
        "Meni 3: Testenine v paradižnikovi omaki z baziliko, solata"
      ]
    },
    "reviews": [
      {
        "id": "r-1911",
        "location_id": "1911",
        "rating": 5,
        "comment": "Zelo dobra ponudba študentskih bonov!",
        "created_at": "2026-10-04T12:00:00Z",
        "author_name": "Študent"
      }
    ]
  },
  {
    "id": "2117",
    "name": "Kitajski dvor - dostava",
    "address": "Ljubljana, 1000 Ljubljana",
    "city": "Ljubljana",
    "latitude": 46.075,
    "longitude": 14.505,
    "subsidy_price": 4.25,
    "opening_hours": "Pon - Pet: 10:00 - 20:00",
    "avg_rating": 4.7,
    "review_count": 47,
    "daily_menu": {
      "id": "m-2117",
      "location_id": "2117",
      "menu_date": "2026-10-04",
      "dishes": [
        "Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko",
        "Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha",
        "Meni 3: Testenine v paradižnikovi omaki z baziliko, solata"
      ]
    },
    "reviews": [
      {
        "id": "r-2117",
        "location_id": "2117",
        "rating": 5,
        "comment": "Zelo dobra ponudba študentskih bonov!",
        "created_at": "2026-10-04T12:00:00Z",
        "author_name": "Študent"
      }
    ]
  },
  {
    "id": "1164",
    "name": "Kitajski dvor - DOSTAVA",
    "address": "Ljubljana, 1000 Ljubljana",
    "city": "Ljubljana",
    "latitude": 46.088,
    "longitude": 14.522,
    "subsidy_price": 4.4,
    "opening_hours": "Pon - Pet: 10:00 - 20:00",
    "avg_rating": 4.4,
    "review_count": 14,
    "daily_menu": {
      "id": "m-1164",
      "location_id": "1164",
      "menu_date": "2026-10-04",
      "dishes": [
        "Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko",
        "Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha",
        "Meni 3: Testenine v paradižnikovi omaki z baziliko, solata"
      ]
    },
    "reviews": [
      {
        "id": "r-1164",
        "location_id": "1164",
        "rating": 5,
        "comment": "Zelo dobra ponudba študentskih bonov!",
        "created_at": "2026-10-04T12:00:00Z",
        "author_name": "Študent"
      }
    ]
  },
  {
    "id": "1838",
    "name": "Kitajsko mesto",
    "address": "Ljubljana, 1000 Ljubljana",
    "city": "Ljubljana",
    "latitude": 46.061,
    "longitude": 14.539,
    "subsidy_price": 4.55,
    "opening_hours": "Pon - Pet: 10:00 - 20:00",
    "avg_rating": 4.8,
    "review_count": 48,
    "daily_menu": {
      "id": "m-1838",
      "location_id": "1838",
      "menu_date": "2026-10-04",
      "dishes": [
        "Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko",
        "Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha",
        "Meni 3: Testenine v paradižnikovi omaki z baziliko, solata"
      ]
    },
    "reviews": [
      {
        "id": "r-1838",
        "location_id": "1838",
        "rating": 5,
        "comment": "Zelo dobra ponudba študentskih bonov!",
        "created_at": "2026-10-04T12:00:00Z",
        "author_name": "Študent"
      }
    ]
  },
  {
    "id": "2772",
    "name": "Kitajsko mesto - dostava",
    "address": "Ljubljana, 1000 Ljubljana",
    "city": "Ljubljana",
    "latitude": 46.074,
    "longitude": 14.516,
    "subsidy_price": 3.5,
    "opening_hours": "Pon - Pet: 10:00 - 20:00",
    "avg_rating": 4.2,
    "review_count": 22,
    "daily_menu": {
      "id": "m-2772",
      "location_id": "2772",
      "menu_date": "2026-10-04",
      "dishes": [
        "Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko",
        "Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha",
        "Meni 3: Testenine v paradižnikovi omaki z baziliko, solata"
      ]
    },
    "reviews": [
      {
        "id": "r-2772",
        "location_id": "2772",
        "rating": 5,
        "comment": "Zelo dobra ponudba študentskih bonov!",
        "created_at": "2026-10-04T12:00:00Z",
        "author_name": "Študent"
      }
    ]
  },
  {
    "id": "1422",
    "name": "Klopčič",
    "address": "Ljubljana, 1000 Ljubljana",
    "city": "Ljubljana",
    "latitude": 46.087,
    "longitude": 14.533,
    "subsidy_price": 3.65,
    "opening_hours": "Pon - Pet: 10:00 - 20:00",
    "avg_rating": 4.2,
    "review_count": 32,
    "daily_menu": {
      "id": "m-1422",
      "location_id": "1422",
      "menu_date": "2026-10-04",
      "dishes": [
        "Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko",
        "Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha",
        "Meni 3: Testenine v paradižnikovi omaki z baziliko, solata"
      ]
    },
    "reviews": [
      {
        "id": "r-1422",
        "location_id": "1422",
        "rating": 5,
        "comment": "Zelo dobra ponudba študentskih bonov!",
        "created_at": "2026-10-04T12:00:00Z",
        "author_name": "Študent"
      }
    ]
  },
  {
    "id": "3140",
    "name": "KLUBAR GASTROPUB",
    "address": "Ljubljana, 1000 Ljubljana",
    "city": "Ljubljana",
    "latitude": 46.06,
    "longitude": 14.51,
    "subsidy_price": 3.8,
    "opening_hours": "Pon - Pet: 10:00 - 20:00",
    "avg_rating": 4.0,
    "review_count": 30,
    "daily_menu": {
      "id": "m-3140",
      "location_id": "3140",
      "menu_date": "2026-10-04",
      "dishes": [
        "Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko",
        "Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha",
        "Meni 3: Testenine v paradižnikovi omaki z baziliko, solata"
      ]
    },
    "reviews": [
      {
        "id": "r-3140",
        "location_id": "3140",
        "rating": 5,
        "comment": "Zelo dobra ponudba študentskih bonov!",
        "created_at": "2026-10-04T12:00:00Z",
        "author_name": "Študent"
      }
    ]
  },
  {
    "id": "3121",
    "name": "Kozlovna Poštna",
    "address": "Ljubljana, 1000 Ljubljana",
    "city": "Ljubljana",
    "latitude": 46.073,
    "longitude": 14.527,
    "subsidy_price": 3.95,
    "opening_hours": "Pon - Pet: 10:00 - 20:00",
    "avg_rating": 4.1,
    "review_count": 11,
    "daily_menu": {
      "id": "m-3121",
      "location_id": "3121",
      "menu_date": "2026-10-04",
      "dishes": [
        "Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko",
        "Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha",
        "Meni 3: Testenine v paradižnikovi omaki z baziliko, solata"
      ]
    },
    "reviews": [
      {
        "id": "r-3121",
        "location_id": "3121",
        "rating": 5,
        "comment": "Zelo dobra ponudba študentskih bonov!",
        "created_at": "2026-10-04T12:00:00Z",
        "author_name": "Študent"
      }
    ]
  },
  {
    "id": "2145",
    "name": "Leonard",
    "address": "Ljubljana, 1000 Ljubljana",
    "city": "Ljubljana",
    "latitude": 46.086,
    "longitude": 14.504,
    "subsidy_price": 4.1,
    "opening_hours": "Pon - Pet: 10:00 - 20:00",
    "avg_rating": 4.5,
    "review_count": 35,
    "daily_menu": {
      "id": "m-2145",
      "location_id": "2145",
      "menu_date": "2026-10-04",
      "dishes": [
        "Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko",
        "Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha",
        "Meni 3: Testenine v paradižnikovi omaki z baziliko, solata"
      ]
    },
    "reviews": [
      {
        "id": "r-2145",
        "location_id": "2145",
        "rating": 5,
        "comment": "Zelo dobra ponudba študentskih bonov!",
        "created_at": "2026-10-04T12:00:00Z",
        "author_name": "Študent"
      }
    ]
  },
  {
    "id": "2844",
    "name": "Leteča zvezda",
    "address": "Ljubljana, 1000 Ljubljana",
    "city": "Ljubljana",
    "latitude": 46.059,
    "longitude": 14.521,
    "subsidy_price": 4.25,
    "opening_hours": "Pon - Pet: 10:00 - 20:00",
    "avg_rating": 4.4,
    "review_count": 14,
    "daily_menu": {
      "id": "m-2844",
      "location_id": "2844",
      "menu_date": "2026-10-04",
      "dishes": [
        "Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko",
        "Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha",
        "Meni 3: Testenine v paradižnikovi omaki z baziliko, solata"
      ]
    },
    "reviews": [
      {
        "id": "r-2844",
        "location_id": "2844",
        "rating": 5,
        "comment": "Zelo dobra ponudba študentskih bonov!",
        "created_at": "2026-10-04T12:00:00Z",
        "author_name": "Študent"
      }
    ]
  },
  {
    "id": "2726",
    "name": "LIPCA - INDEKS",
    "address": "Ljubljana, 1000 Ljubljana",
    "city": "Ljubljana",
    "latitude": 46.072,
    "longitude": 14.538,
    "subsidy_price": 4.4,
    "opening_hours": "Pon - Pet: 10:00 - 20:00",
    "avg_rating": 4.6,
    "review_count": 16,
    "daily_menu": {
      "id": "m-2726",
      "location_id": "2726",
      "menu_date": "2026-10-04",
      "dishes": [
        "Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko",
        "Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha",
        "Meni 3: Testenine v paradižnikovi omaki z baziliko, solata"
      ]
    },
    "reviews": [
      {
        "id": "r-2726",
        "location_id": "2726",
        "rating": 5,
        "comment": "Zelo dobra ponudba študentskih bonov!",
        "created_at": "2026-10-04T12:00:00Z",
        "author_name": "Študent"
      }
    ]
  },
  {
    "id": "3297",
    "name": "Lokal P8",
    "address": "Ljubljana, 1000 Ljubljana",
    "city": "Ljubljana",
    "latitude": 46.085,
    "longitude": 14.515,
    "subsidy_price": 4.55,
    "opening_hours": "Pon - Pet: 10:00 - 20:00",
    "avg_rating": 4.7,
    "review_count": 27,
    "daily_menu": {
      "id": "m-3297",
      "location_id": "3297",
      "menu_date": "2026-10-04",
      "dishes": [
        "Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko",
        "Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha",
        "Meni 3: Testenine v paradižnikovi omaki z baziliko, solata"
      ]
    },
    "reviews": [
      {
        "id": "r-3297",
        "location_id": "3297",
        "rating": 5,
        "comment": "Zelo dobra ponudba študentskih bonov!",
        "created_at": "2026-10-04T12:00:00Z",
        "author_name": "Študent"
      }
    ]
  },
  {
    "id": "2331",
    "name": "Loving Hut",
    "address": "Ljubljana, 1000 Ljubljana",
    "city": "Ljubljana",
    "latitude": 46.058,
    "longitude": 14.532,
    "subsidy_price": 3.5,
    "opening_hours": "Pon - Pet: 10:00 - 20:00",
    "avg_rating": 4.1,
    "review_count": 21,
    "daily_menu": {
      "id": "m-2331",
      "location_id": "2331",
      "menu_date": "2026-10-04",
      "dishes": [
        "Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko",
        "Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha",
        "Meni 3: Testenine v paradižnikovi omaki z baziliko, solata"
      ]
    },
    "reviews": [
      {
        "id": "r-2331",
        "location_id": "2331",
        "rating": 5,
        "comment": "Zelo dobra ponudba študentskih bonov!",
        "created_at": "2026-10-04T12:00:00Z",
        "author_name": "Študent"
      }
    ]
  },
  {
    "id": "3322",
    "name": "LUNCH BOX",
    "address": "Ljubljana, 1000 Ljubljana",
    "city": "Ljubljana",
    "latitude": 46.071,
    "longitude": 14.509,
    "subsidy_price": 3.65,
    "opening_hours": "Pon - Pet: 10:00 - 20:00",
    "avg_rating": 4.2,
    "review_count": 12,
    "daily_menu": {
      "id": "m-3322",
      "location_id": "3322",
      "menu_date": "2026-10-04",
      "dishes": [
        "Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko",
        "Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha",
        "Meni 3: Testenine v paradižnikovi omaki z baziliko, solata"
      ]
    },
    "reviews": [
      {
        "id": "r-3322",
        "location_id": "3322",
        "rating": 5,
        "comment": "Zelo dobra ponudba študentskih bonov!",
        "created_at": "2026-10-04T12:00:00Z",
        "author_name": "Študent"
      }
    ]
  },
  {
    "id": "3368",
    "name": "MAGMAX",
    "address": "Ljubljana, 1000 Ljubljana",
    "city": "Ljubljana",
    "latitude": 46.084,
    "longitude": 14.526,
    "subsidy_price": 3.8,
    "opening_hours": "Pon - Pet: 10:00 - 20:00",
    "avg_rating": 4.8,
    "review_count": 18,
    "daily_menu": {
      "id": "m-3368",
      "location_id": "3368",
      "menu_date": "2026-10-04",
      "dishes": [
        "Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko",
        "Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha",
        "Meni 3: Testenine v paradižnikovi omaki z baziliko, solata"
      ]
    },
    "reviews": [
      {
        "id": "r-3368",
        "location_id": "3368",
        "rating": 5,
        "comment": "Zelo dobra ponudba študentskih bonov!",
        "created_at": "2026-10-04T12:00:00Z",
        "author_name": "Študent"
      }
    ]
  },
  {
    "id": "3327",
    "name": "MANGO SNACKS",
    "address": "Ljubljana, 1000 Ljubljana",
    "city": "Ljubljana",
    "latitude": 46.057,
    "longitude": 14.503,
    "subsidy_price": 3.95,
    "opening_hours": "Pon - Pet: 10:00 - 20:00",
    "avg_rating": 4.7,
    "review_count": 17,
    "daily_menu": {
      "id": "m-3327",
      "location_id": "3327",
      "menu_date": "2026-10-04",
      "dishes": [
        "Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko",
        "Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha",
        "Meni 3: Testenine v paradižnikovi omaki z baziliko, solata"
      ]
    },
    "reviews": [
      {
        "id": "r-3327",
        "location_id": "3327",
        "rating": 5,
        "comment": "Zelo dobra ponudba študentskih bonov!",
        "created_at": "2026-10-04T12:00:00Z",
        "author_name": "Študent"
      }
    ]
  },
  {
    "id": "3205",
    "name": "MC PANDA",
    "address": "Ljubljana, 1000 Ljubljana",
    "city": "Ljubljana",
    "latitude": 46.07,
    "longitude": 14.52,
    "subsidy_price": 4.1,
    "opening_hours": "Pon - Pet: 10:00 - 20:00",
    "avg_rating": 4.5,
    "review_count": 15,
    "daily_menu": {
      "id": "m-3205",
      "location_id": "3205",
      "menu_date": "2026-10-04",
      "dishes": [
        "Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko",
        "Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha",
        "Meni 3: Testenine v paradižnikovi omaki z baziliko, solata"
      ]
    },
    "reviews": [
      {
        "id": "r-3205",
        "location_id": "3205",
        "rating": 5,
        "comment": "Zelo dobra ponudba študentskih bonov!",
        "created_at": "2026-10-04T12:00:00Z",
        "author_name": "Študent"
      }
    ]
  },
  {
    "id": "3122",
    "name": "McDonald s restavracija - Murska Sobota",
    "address": "Ljubljana, 1000 Ljubljana",
    "city": "Ljubljana",
    "latitude": 46.083,
    "longitude": 14.537,
    "subsidy_price": 4.25,
    "opening_hours": "Pon - Pet: 10:00 - 20:00",
    "avg_rating": 4.2,
    "review_count": 12,
    "daily_menu": {
      "id": "m-3122",
      "location_id": "3122",
      "menu_date": "2026-10-04",
      "dishes": [
        "Meni 1: Big Mac + mali krompirček + mešana solata + sadje",
        "Meni 2: McChicken + mali krompirček + mešana solata",
        "Meni 3: McNuggets (6 kosov) + omaka + krompirček + solata"
      ]
    },
    "reviews": [
      {
        "id": "r-3122",
        "location_id": "3122",
        "rating": 5,
        "comment": "Zelo dobra ponudba študentskih bonov!",
        "created_at": "2026-10-04T12:00:00Z",
        "author_name": "Študent"
      }
    ]
  },
  {
    "id": "1182",
    "name": "McDonald&#180;s restavracija - Swaty",
    "address": "Ljubljana, 1000 Ljubljana",
    "city": "Ljubljana",
    "latitude": 46.056,
    "longitude": 14.514,
    "subsidy_price": 4.4,
    "opening_hours": "Pon - Pet: 10:00 - 20:00",
    "avg_rating": 4.2,
    "review_count": 32,
    "daily_menu": {
      "id": "m-1182",
      "location_id": "1182",
      "menu_date": "2026-10-04",
      "dishes": [
        "Meni 1: Big Mac + mali krompirček + mešana solata + sadje",
        "Meni 2: McChicken + mali krompirček + mešana solata",
        "Meni 3: McNuggets (6 kosov) + omaka + krompirček + solata"
      ]
    },
    "reviews": [
      {
        "id": "r-1182",
        "location_id": "1182",
        "rating": 5,
        "comment": "Zelo dobra ponudba študentskih bonov!",
        "created_at": "2026-10-04T12:00:00Z",
        "author_name": "Študent"
      }
    ]
  },
  {
    "id": "1185",
    "name": "McDonald&#180;s restavracija Europark",
    "address": "Ljubljana, 1000 Ljubljana",
    "city": "Ljubljana",
    "latitude": 46.069,
    "longitude": 14.531,
    "subsidy_price": 4.55,
    "opening_hours": "Pon - Pet: 10:00 - 20:00",
    "avg_rating": 4.5,
    "review_count": 35,
    "daily_menu": {
      "id": "m-1185",
      "location_id": "1185",
      "menu_date": "2026-10-04",
      "dishes": [
        "Meni 1: Big Mac + mali krompirček + mešana solata + sadje",
        "Meni 2: McChicken + mali krompirček + mešana solata",
        "Meni 3: McNuggets (6 kosov) + omaka + krompirček + solata"
      ]
    },
    "reviews": [
      {
        "id": "r-1185",
        "location_id": "1185",
        "rating": 5,
        "comment": "Zelo dobra ponudba študentskih bonov!",
        "created_at": "2026-10-04T12:00:00Z",
        "author_name": "Študent"
      }
    ]
  },
  {
    "id": "1184",
    "name": "McDonald&#180;s restavracija Ptujska",
    "address": "Ljubljana, 1000 Ljubljana",
    "city": "Ljubljana",
    "latitude": 46.082,
    "longitude": 14.508,
    "subsidy_price": 3.5,
    "opening_hours": "Pon - Pet: 10:00 - 20:00",
    "avg_rating": 4.4,
    "review_count": 34,
    "daily_menu": {
      "id": "m-1184",
      "location_id": "1184",
      "menu_date": "2026-10-04",
      "dishes": [
        "Meni 1: Big Mac + mali krompirček + mešana solata + sadje",
        "Meni 2: McChicken + mali krompirček + mešana solata",
        "Meni 3: McNuggets (6 kosov) + omaka + krompirček + solata"
      ]
    },
    "reviews": [
      {
        "id": "r-1184",
        "location_id": "1184",
        "rating": 5,
        "comment": "Zelo dobra ponudba študentskih bonov!",
        "created_at": "2026-10-04T12:00:00Z",
        "author_name": "Študent"
      }
    ]
  },
  {
    "id": "3270",
    "name": "McDonald&#180;s restavracija Studenci",
    "address": "Ljubljana, 1000 Ljubljana",
    "city": "Ljubljana",
    "latitude": 46.055,
    "longitude": 14.525,
    "subsidy_price": 3.65,
    "opening_hours": "Pon - Pet: 10:00 - 20:00",
    "avg_rating": 4.0,
    "review_count": 40,
    "daily_menu": {
      "id": "m-3270",
      "location_id": "3270",
      "menu_date": "2026-10-04",
      "dishes": [
        "Meni 1: Big Mac + mali krompirček + mešana solata + sadje",
        "Meni 2: McChicken + mali krompirček + mešana solata",
        "Meni 3: McNuggets (6 kosov) + omaka + krompirček + solata"
      ]
    },
    "reviews": [
      {
        "id": "r-3270",
        "location_id": "3270",
        "rating": 5,
        "comment": "Zelo dobra ponudba študentskih bonov!",
        "created_at": "2026-10-04T12:00:00Z",
        "author_name": "Študent"
      }
    ]
  },
  {
    "id": "1179",
    "name": "McDonald&#180;s restavracija Velenje",
    "address": "Ljubljana, 1000 Ljubljana",
    "city": "Ljubljana",
    "latitude": 46.068,
    "longitude": 14.502,
    "subsidy_price": 3.8,
    "opening_hours": "Pon - Pet: 10:00 - 20:00",
    "avg_rating": 4.9,
    "review_count": 29,
    "daily_menu": {
      "id": "m-1179",
      "location_id": "1179",
      "menu_date": "2026-10-04",
      "dishes": [
        "Meni 1: Big Mac + mali krompirček + mešana solata + sadje",
        "Meni 2: McChicken + mali krompirček + mešana solata",
        "Meni 3: McNuggets (6 kosov) + omaka + krompirček + solata"
      ]
    },
    "reviews": [
      {
        "id": "r-1179",
        "location_id": "1179",
        "rating": 5,
        "comment": "Zelo dobra ponudba študentskih bonov!",
        "created_at": "2026-10-04T12:00:00Z",
        "author_name": "Študent"
      }
    ]
  },
  {
    "id": "3326",
    "name": "McDonald&#39;s Petrol Maribor",
    "address": "Maribor, 2000 Maribor",
    "city": "Maribor",
    "latitude": 46.577,
    "longitude": 15.643,
    "subsidy_price": 3.95,
    "opening_hours": "Pon - Pet: 10:00 - 20:00",
    "avg_rating": 4.6,
    "review_count": 16,
    "daily_menu": {
      "id": "m-3326",
      "location_id": "3326",
      "menu_date": "2026-10-04",
      "dishes": [
        "Meni 1: Big Mac + mali krompirček + mešana solata + sadje",
        "Meni 2: McChicken + mali krompirček + mešana solata",
        "Meni 3: McNuggets (6 kosov) + omaka + krompirček + solata"
      ]
    },
    "reviews": [
      {
        "id": "r-3326",
        "location_id": "3326",
        "rating": 5,
        "comment": "Zelo dobra ponudba študentskih bonov!",
        "created_at": "2026-10-04T12:00:00Z",
        "author_name": "Študent"
      }
    ]
  },
  {
    "id": "1380",
    "name": "McDonald&#39;s restavracij - Odiseja",
    "address": "Ljubljana, 1000 Ljubljana",
    "city": "Ljubljana",
    "latitude": 46.054,
    "longitude": 14.536,
    "subsidy_price": 4.1,
    "opening_hours": "Pon - Pet: 10:00 - 20:00",
    "avg_rating": 4.0,
    "review_count": 30,
    "daily_menu": {
      "id": "m-1380",
      "location_id": "1380",
      "menu_date": "2026-10-04",
      "dishes": [
        "Meni 1: Big Mac + mali krompirček + mešana solata + sadje",
        "Meni 2: McChicken + mali krompirček + mešana solata",
        "Meni 3: McNuggets (6 kosov) + omaka + krompirček + solata"
      ]
    },
    "reviews": [
      {
        "id": "r-1380",
        "location_id": "1380",
        "rating": 5,
        "comment": "Zelo dobra ponudba študentskih bonov!",
        "created_at": "2026-10-04T12:00:00Z",
        "author_name": "Študent"
      }
    ]
  },
  {
    "id": "3107",
    "name": "McDonald&#39;s restavracija - ALEJA",
    "address": "Ljubljana, 1000 Ljubljana",
    "city": "Ljubljana",
    "latitude": 46.067,
    "longitude": 14.513,
    "subsidy_price": 4.25,
    "opening_hours": "Pon - Pet: 10:00 - 20:00",
    "avg_rating": 4.7,
    "review_count": 37,
    "daily_menu": {
      "id": "m-3107",
      "location_id": "3107",
      "menu_date": "2026-10-04",
      "dishes": [
        "Meni 1: Big Mac + mali krompirček + mešana solata + sadje",
        "Meni 2: McChicken + mali krompirček + mešana solata",
        "Meni 3: McNuggets (6 kosov) + omaka + krompirček + solata"
      ]
    },
    "reviews": [
      {
        "id": "r-3107",
        "location_id": "3107",
        "rating": 5,
        "comment": "Zelo dobra ponudba študentskih bonov!",
        "created_at": "2026-10-04T12:00:00Z",
        "author_name": "Študent"
      }
    ]
  },
  {
    "id": "3246",
    "name": "McDonald&#39;s restavracija - Barje jug",
    "address": "Ljubljana, 1000 Ljubljana",
    "city": "Ljubljana",
    "latitude": 46.08,
    "longitude": 14.53,
    "subsidy_price": 4.4,
    "opening_hours": "Pon - Pet: 10:00 - 20:00",
    "avg_rating": 4.6,
    "review_count": 16,
    "daily_menu": {
      "id": "m-3246",
      "location_id": "3246",
      "menu_date": "2026-10-04",
      "dishes": [
        "Meni 1: Big Mac + mali krompirček + mešana solata + sadje",
        "Meni 2: McChicken + mali krompirček + mešana solata",
        "Meni 3: McNuggets (6 kosov) + omaka + krompirček + solata"
      ]
    },
    "reviews": [
      {
        "id": "r-3246",
        "location_id": "3246",
        "rating": 5,
        "comment": "Zelo dobra ponudba študentskih bonov!",
        "created_at": "2026-10-04T12:00:00Z",
        "author_name": "Študent"
      }
    ]
  },
  {
    "id": "3247",
    "name": "McDonald&#39;s restavracija - Barje sever",
    "address": "Ljubljana, 1000 Ljubljana",
    "city": "Ljubljana",
    "latitude": 46.053,
    "longitude": 14.507,
    "subsidy_price": 4.55,
    "opening_hours": "Pon - Pet: 10:00 - 20:00",
    "avg_rating": 4.7,
    "review_count": 17,
    "daily_menu": {
      "id": "m-3247",
      "location_id": "3247",
      "menu_date": "2026-10-04",
      "dishes": [
        "Meni 1: Big Mac + mali krompirček + mešana solata + sadje",
        "Meni 2: McChicken + mali krompirček + mešana solata",
        "Meni 3: McNuggets (6 kosov) + omaka + krompirček + solata"
      ]
    },
    "reviews": [
      {
        "id": "r-3247",
        "location_id": "3247",
        "rating": 5,
        "comment": "Zelo dobra ponudba študentskih bonov!",
        "created_at": "2026-10-04T12:00:00Z",
        "author_name": "Študent"
      }
    ]
  },
  {
    "id": "3189",
    "name": "McDonald&#39;s restavracija - Cankarjeva",
    "address": "Ljubljana, 1000 Ljubljana",
    "city": "Ljubljana",
    "latitude": 46.066,
    "longitude": 14.524,
    "subsidy_price": 3.5,
    "opening_hours": "Pon - Pet: 10:00 - 20:00",
    "avg_rating": 4.9,
    "review_count": 39,
    "daily_menu": {
      "id": "m-3189",
      "location_id": "3189",
      "menu_date": "2026-10-04",
      "dishes": [
        "Meni 1: Big Mac + mali krompirček + mešana solata + sadje",
        "Meni 2: McChicken + mali krompirček + mešana solata",
        "Meni 3: McNuggets (6 kosov) + omaka + krompirček + solata"
      ]
    },
    "reviews": [
      {
        "id": "r-3189",
        "location_id": "3189",
        "rating": 5,
        "comment": "Zelo dobra ponudba študentskih bonov!",
        "created_at": "2026-10-04T12:00:00Z",
        "author_name": "Študent"
      }
    ]
  },
  {
    "id": "2868",
    "name": "McDonald&#39;s restavracija - Celje Drive",
    "address": "Celje, 3000 Celje",
    "city": "Celje",
    "latitude": 46.241,
    "longitude": 15.269,
    "subsidy_price": 3.65,
    "opening_hours": "Pon - Pet: 10:00 - 20:00",
    "avg_rating": 4.8,
    "review_count": 38,
    "daily_menu": {
      "id": "m-2868",
      "location_id": "2868",
      "menu_date": "2026-10-04",
      "dishes": [
        "Meni 1: Big Mac + mali krompirček + mešana solata + sadje",
        "Meni 2: McChicken + mali krompirček + mešana solata",
        "Meni 3: McNuggets (6 kosov) + omaka + krompirček + solata"
      ]
    },
    "reviews": [
      {
        "id": "r-2868",
        "location_id": "2868",
        "rating": 5,
        "comment": "Zelo dobra ponudba študentskih bonov!",
        "created_at": "2026-10-04T12:00:00Z",
        "author_name": "Študent"
      }
    ]
  },
  {
    "id": "1341",
    "name": "McDonald&#39;s restavracija - Celovška",
    "address": "Ljubljana, 1000 Ljubljana",
    "city": "Ljubljana",
    "latitude": 46.052,
    "longitude": 14.518,
    "subsidy_price": 3.8,
    "opening_hours": "Pon - Pet: 10:00 - 20:00",
    "avg_rating": 4.1,
    "review_count": 31,
    "daily_menu": {
      "id": "m-1341",
      "location_id": "1341",
      "menu_date": "2026-10-04",
      "dishes": [
        "Meni 1: Big Mac + mali krompirček + mešana solata + sadje",
        "Meni 2: McChicken + mali krompirček + mešana solata",
        "Meni 3: McNuggets (6 kosov) + omaka + krompirček + solata"
      ]
    },
    "reviews": [
      {
        "id": "r-1341",
        "location_id": "1341",
        "rating": 5,
        "comment": "Zelo dobra ponudba študentskih bonov!",
        "created_at": "2026-10-04T12:00:00Z",
        "author_name": "Študent"
      }
    ]
  },
  {
    "id": "1377",
    "name": "McDonald&#39;s restavracija - Center",
    "address": "Ljubljana, 1000 Ljubljana",
    "city": "Ljubljana",
    "latitude": 46.065,
    "longitude": 14.535,
    "subsidy_price": 3.95,
    "opening_hours": "Pon - Pet: 10:00 - 20:00",
    "avg_rating": 4.7,
    "review_count": 27,
    "daily_menu": {
      "id": "m-1377",
      "location_id": "1377",
      "menu_date": "2026-10-04",
      "dishes": [
        "Meni 1: Big Mac + mali krompirček + mešana solata + sadje",
        "Meni 2: McChicken + mali krompirček + mešana solata",
        "Meni 3: McNuggets (6 kosov) + omaka + krompirček + solata"
      ]
    },
    "reviews": [
      {
        "id": "r-1377",
        "location_id": "1377",
        "rating": 5,
        "comment": "Zelo dobra ponudba študentskih bonov!",
        "created_at": "2026-10-04T12:00:00Z",
        "author_name": "Študent"
      }
    ]
  },
  {
    "id": "1342",
    "name": "McDonald&#39;s restavracija - Domžale",
    "address": "Ljubljana, 1000 Ljubljana",
    "city": "Ljubljana",
    "latitude": 46.078,
    "longitude": 14.512,
    "subsidy_price": 4.1,
    "opening_hours": "Pon - Pet: 10:00 - 20:00",
    "avg_rating": 4.2,
    "review_count": 32,
    "daily_menu": {
      "id": "m-1342",
      "location_id": "1342",
      "menu_date": "2026-10-04",
      "dishes": [
        "Meni 1: Big Mac + mali krompirček + mešana solata + sadje",
        "Meni 2: McChicken + mali krompirček + mešana solata",
        "Meni 3: McNuggets (6 kosov) + omaka + krompirček + solata"
      ]
    },
    "reviews": [
      {
        "id": "r-1342",
        "location_id": "1342",
        "rating": 5,
        "comment": "Zelo dobra ponudba študentskih bonov!",
        "created_at": "2026-10-04T12:00:00Z",
        "author_name": "Študent"
      }
    ]
  },
  {
    "id": "2866",
    "name": "McDonald&#39;s restavracija - Kranj",
    "address": "Kranj, 4000 Kranj",
    "city": "Kranj",
    "latitude": 46.249,
    "longitude": 14.357,
    "subsidy_price": 4.25,
    "opening_hours": "Pon - Pet: 10:00 - 20:00",
    "avg_rating": 4.6,
    "review_count": 36,
    "daily_menu": {
      "id": "m-2866",
      "location_id": "2866",
      "menu_date": "2026-10-04",
      "dishes": [
        "Meni 1: Big Mac + mali krompirček + mešana solata + sadje",
        "Meni 2: McChicken + mali krompirček + mešana solata",
        "Meni 3: McNuggets (6 kosov) + omaka + krompirček + solata"
      ]
    },
    "reviews": [
      {
        "id": "r-2866",
        "location_id": "2866",
        "rating": 5,
        "comment": "Zelo dobra ponudba študentskih bonov!",
        "created_at": "2026-10-04T12:00:00Z",
        "author_name": "Študent"
      }
    ]
  },
  {
    "id": "3279",
    "name": "McDonald&#39;s restavracija - Lesce",
    "address": "Ljubljana, 1000 Ljubljana",
    "city": "Ljubljana",
    "latitude": 46.064,
    "longitude": 14.506,
    "subsidy_price": 4.4,
    "opening_hours": "Pon - Pet: 10:00 - 20:00",
    "avg_rating": 4.9,
    "review_count": 49,
    "daily_menu": {
      "id": "m-3279",
      "location_id": "3279",
      "menu_date": "2026-10-04",
      "dishes": [
        "Meni 1: Big Mac + mali krompirček + mešana solata + sadje",
        "Meni 2: McChicken + mali krompirček + mešana solata",
        "Meni 3: McNuggets (6 kosov) + omaka + krompirček + solata"
      ]
    },
    "reviews": [
      {
        "id": "r-3279",
        "location_id": "3279",
        "rating": 5,
        "comment": "Zelo dobra ponudba študentskih bonov!",
        "created_at": "2026-10-04T12:00:00Z",
        "author_name": "Študent"
      }
    ]
  },
  {
    "id": "1381",
    "name": "McDonald&#39;s restavracija - Novo mesto",
    "address": "Novo mesto, 8000 Novo mesto",
    "city": "Novo mesto",
    "latitude": 45.815,
    "longitude": 15.179,
    "subsidy_price": 4.55,
    "opening_hours": "Pon - Pet: 10:00 - 20:00",
    "avg_rating": 4.1,
    "review_count": 31,
    "daily_menu": {
      "id": "m-1381",
      "location_id": "1381",
      "menu_date": "2026-10-04",
      "dishes": [
        "Meni 1: Big Mac + mali krompirček + mešana solata + sadje",
        "Meni 2: McChicken + mali krompirček + mešana solata",
        "Meni 3: McNuggets (6 kosov) + omaka + krompirček + solata"
      ]
    },
    "reviews": [
      {
        "id": "r-1381",
        "location_id": "1381",
        "rating": 5,
        "comment": "Zelo dobra ponudba študentskih bonov!",
        "created_at": "2026-10-04T12:00:00Z",
        "author_name": "Študent"
      }
    ]
  },
  {
    "id": "1536",
    "name": "McDonald&#39;s restavracija - Rudnik",
    "address": "Ljubljana, 1000 Ljubljana",
    "city": "Ljubljana",
    "latitude": 46.05,
    "longitude": 14.5,
    "subsidy_price": 3.5,
    "opening_hours": "Pon - Pet: 10:00 - 20:00",
    "avg_rating": 4.6,
    "review_count": 26,
    "daily_menu": {
      "id": "m-1536",
      "location_id": "1536",
      "menu_date": "2026-10-04",
      "dishes": [
        "Meni 1: Big Mac + mali krompirček + mešana solata + sadje",
        "Meni 2: McChicken + mali krompirček + mešana solata",
        "Meni 3: McNuggets (6 kosov) + omaka + krompirček + solata"
      ]
    },
    "reviews": [
      {
        "id": "r-1536",
        "location_id": "1536",
        "rating": 5,
        "comment": "Zelo dobra ponudba študentskih bonov!",
        "created_at": "2026-10-04T12:00:00Z",
        "author_name": "Študent"
      }
    ]
  },
  {
    "id": "3188",
    "name": "McDonald&#39;s restavracija - Supernova Rudnik",
    "address": "Ljubljana, 1000 Ljubljana",
    "city": "Ljubljana",
    "latitude": 46.063,
    "longitude": 14.517,
    "subsidy_price": 3.65,
    "opening_hours": "Pon - Pet: 10:00 - 20:00",
    "avg_rating": 4.8,
    "review_count": 38,
    "daily_menu": {
      "id": "m-3188",
      "location_id": "3188",
      "menu_date": "2026-10-04",
      "dishes": [
        "Meni 1: Big Mac + mali krompirček + mešana solata + sadje",
        "Meni 2: McChicken + mali krompirček + mešana solata",
        "Meni 3: McNuggets (6 kosov) + omaka + krompirček + solata"
      ]
    },
    "reviews": [
      {
        "id": "r-3188",
        "location_id": "3188",
        "rating": 5,
        "comment": "Zelo dobra ponudba študentskih bonov!",
        "created_at": "2026-10-04T12:00:00Z",
        "author_name": "Študent"
      }
    ]
  },
  {
    "id": "3164",
    "name": "McDonald&#39;s restavracija - Šmartinka Drive",
    "address": "Ljubljana, 1000 Ljubljana",
    "city": "Ljubljana",
    "latitude": 46.076,
    "longitude": 14.534,
    "subsidy_price": 3.8,
    "opening_hours": "Pon - Pet: 10:00 - 20:00",
    "avg_rating": 4.4,
    "review_count": 14,
    "daily_menu": {
      "id": "m-3164",
      "location_id": "3164",
      "menu_date": "2026-10-04",
      "dishes": [
        "Meni 1: Big Mac + mali krompirček + mešana solata + sadje",
        "Meni 2: McChicken + mali krompirček + mešana solata",
        "Meni 3: McNuggets (6 kosov) + omaka + krompirček + solata"
      ]
    },
    "reviews": [
      {
        "id": "r-3164",
        "location_id": "3164",
        "rating": 5,
        "comment": "Zelo dobra ponudba študentskih bonov!",
        "created_at": "2026-10-04T12:00:00Z",
        "author_name": "Študent"
      }
    ]
  },
  {
    "id": "1378",
    "name": "McDonald&#39;s restavracija - Žito",
    "address": "Ljubljana, 1000 Ljubljana",
    "city": "Ljubljana",
    "latitude": 46.089,
    "longitude": 14.511,
    "subsidy_price": 3.95,
    "opening_hours": "Pon - Pet: 10:00 - 20:00",
    "avg_rating": 4.8,
    "review_count": 28,
    "daily_menu": {
      "id": "m-1378",
      "location_id": "1378",
      "menu_date": "2026-10-04",
      "dishes": [
        "Meni 1: Big Mac + mali krompirček + mešana solata + sadje",
        "Meni 2: McChicken + mali krompirček + mešana solata",
        "Meni 3: McNuggets (6 kosov) + omaka + krompirček + solata"
      ]
    },
    "reviews": [
      {
        "id": "r-1378",
        "location_id": "1378",
        "rating": 5,
        "comment": "Zelo dobra ponudba študentskih bonov!",
        "created_at": "2026-10-04T12:00:00Z",
        "author_name": "Študent"
      }
    ]
  },
  {
    "id": "2253",
    "name": "McDonald&#39;s restavracija Koper",
    "address": "Koper, 6000 Koper",
    "city": "Koper",
    "latitude": 45.544,
    "longitude": 13.742,
    "subsidy_price": 4.1,
    "opening_hours": "Pon - Pet: 10:00 - 20:00",
    "avg_rating": 4.3,
    "review_count": 23,
    "daily_menu": {
      "id": "m-2253",
      "location_id": "2253",
      "menu_date": "2026-10-04",
      "dishes": [
        "Meni 1: Big Mac + mali krompirček + mešana solata + sadje",
        "Meni 2: McChicken + mali krompirček + mešana solata",
        "Meni 3: McNuggets (6 kosov) + omaka + krompirček + solata"
      ]
    },
    "reviews": [
      {
        "id": "r-2253",
        "location_id": "2253",
        "rating": 5,
        "comment": "Zelo dobra ponudba študentskih bonov!",
        "created_at": "2026-10-04T12:00:00Z",
        "author_name": "Študent"
      }
    ]
  },
  {
    "id": "2815",
    "name": "McDonald&#39;s restavracija Nova Gorica",
    "address": "Ljubljana, 1000 Ljubljana",
    "city": "Ljubljana",
    "latitude": 46.075,
    "longitude": 14.505,
    "subsidy_price": 4.25,
    "opening_hours": "Pon - Pet: 10:00 - 20:00",
    "avg_rating": 4.5,
    "review_count": 25,
    "daily_menu": {
      "id": "m-2815",
      "location_id": "2815",
      "menu_date": "2026-10-04",
      "dishes": [
        "Meni 1: Big Mac + mali krompirček + mešana solata + sadje",
        "Meni 2: McChicken + mali krompirček + mešana solata",
        "Meni 3: McNuggets (6 kosov) + omaka + krompirček + solata"
      ]
    },
    "reviews": [
      {
        "id": "r-2815",
        "location_id": "2815",
        "rating": 5,
        "comment": "Zelo dobra ponudba študentskih bonov!",
        "created_at": "2026-10-04T12:00:00Z",
        "author_name": "Študent"
      }
    ]
  },
  {
    "id": "3330",
    "name": "McDonald&#39;s Supernova Koper",
    "address": "Koper, 6000 Koper",
    "city": "Koper",
    "latitude": 45.546,
    "longitude": 13.748,
    "subsidy_price": 4.4,
    "opening_hours": "Pon - Pet: 10:00 - 20:00",
    "avg_rating": 4.0,
    "review_count": 20,
    "daily_menu": {
      "id": "m-3330",
      "location_id": "3330",
      "menu_date": "2026-10-04",
      "dishes": [
        "Meni 1: Big Mac + mali krompirček + mešana solata + sadje",
        "Meni 2: McChicken + mali krompirček + mešana solata",
        "Meni 3: McNuggets (6 kosov) + omaka + krompirček + solata"
      ]
    },
    "reviews": [
      {
        "id": "r-3330",
        "location_id": "3330",
        "rating": 5,
        "comment": "Zelo dobra ponudba študentskih bonov!",
        "created_at": "2026-10-04T12:00:00Z",
        "author_name": "Študent"
      }
    ]
  },
  {
    "id": "2648",
    "name": "ME GUSTA",
    "address": "Ljubljana, 1000 Ljubljana",
    "city": "Ljubljana",
    "latitude": 46.061,
    "longitude": 14.539,
    "subsidy_price": 4.55,
    "opening_hours": "Pon - Pet: 10:00 - 20:00",
    "avg_rating": 4.8,
    "review_count": 18,
    "daily_menu": {
      "id": "m-2648",
      "location_id": "2648",
      "menu_date": "2026-10-04",
      "dishes": [
        "Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko",
        "Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha",
        "Meni 3: Testenine v paradižnikovi omaki z baziliko, solata"
      ]
    },
    "reviews": [
      {
        "id": "r-2648",
        "location_id": "2648",
        "rating": 5,
        "comment": "Zelo dobra ponudba študentskih bonov!",
        "created_at": "2026-10-04T12:00:00Z",
        "author_name": "Študent"
      }
    ]
  },
  {
    "id": "3138",
    "name": "Meating pub &amp; restavracija",
    "address": "Ljubljana, 1000 Ljubljana",
    "city": "Ljubljana",
    "latitude": 46.074,
    "longitude": 14.516,
    "subsidy_price": 3.5,
    "opening_hours": "Pon - Pet: 10:00 - 20:00",
    "avg_rating": 4.8,
    "review_count": 28,
    "daily_menu": {
      "id": "m-3138",
      "location_id": "3138",
      "menu_date": "2026-10-04",
      "dishes": [
        "Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko",
        "Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha",
        "Meni 3: Testenine v paradižnikovi omaki z baziliko, solata"
      ]
    },
    "reviews": [
      {
        "id": "r-3138",
        "location_id": "3138",
        "rating": 5,
        "comment": "Zelo dobra ponudba študentskih bonov!",
        "created_at": "2026-10-04T12:00:00Z",
        "author_name": "Študent"
      }
    ]
  },
  {
    "id": "1407",
    "name": "Mehiška restavracija Imperio mexicano",
    "address": "Ljubljana, 1000 Ljubljana",
    "city": "Ljubljana",
    "latitude": 46.087,
    "longitude": 14.533,
    "subsidy_price": 3.65,
    "opening_hours": "Pon - Pet: 10:00 - 20:00",
    "avg_rating": 4.7,
    "review_count": 17,
    "daily_menu": {
      "id": "m-1407",
      "location_id": "1407",
      "menu_date": "2026-10-04",
      "dishes": [
        "Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko",
        "Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha",
        "Meni 3: Testenine v paradižnikovi omaki z baziliko, solata"
      ]
    },
    "reviews": [
      {
        "id": "r-1407",
        "location_id": "1407",
        "rating": 5,
        "comment": "Zelo dobra ponudba študentskih bonov!",
        "created_at": "2026-10-04T12:00:00Z",
        "author_name": "Študent"
      }
    ]
  },
  {
    "id": "2023",
    "name": "Menza BF",
    "address": "Ljubljana, 1000 Ljubljana",
    "city": "Ljubljana",
    "latitude": 46.06,
    "longitude": 14.51,
    "subsidy_price": 3.8,
    "opening_hours": "Pon - Pet: 10:00 - 20:00",
    "avg_rating": 4.3,
    "review_count": 33,
    "daily_menu": {
      "id": "m-2023",
      "location_id": "2023",
      "menu_date": "2026-10-04",
      "dishes": [
        "Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko",
        "Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha",
        "Meni 3: Testenine v paradižnikovi omaki z baziliko, solata"
      ]
    },
    "reviews": [
      {
        "id": "r-2023",
        "location_id": "2023",
        "rating": 5,
        "comment": "Zelo dobra ponudba študentskih bonov!",
        "created_at": "2026-10-04T12:00:00Z",
        "author_name": "Študent"
      }
    ]
  },
  {
    "id": "2521",
    "name": "Menza FE",
    "address": "Ljubljana, 1000 Ljubljana",
    "city": "Ljubljana",
    "latitude": 46.073,
    "longitude": 14.527,
    "subsidy_price": 3.95,
    "opening_hours": "Pon - Pet: 10:00 - 20:00",
    "avg_rating": 4.1,
    "review_count": 11,
    "daily_menu": {
      "id": "m-2521",
      "location_id": "2521",
      "menu_date": "2026-10-04",
      "dishes": [
        "Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko",
        "Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha",
        "Meni 3: Testenine v paradižnikovi omaki z baziliko, solata"
      ]
    },
    "reviews": [
      {
        "id": "r-2521",
        "location_id": "2521",
        "rating": 5,
        "comment": "Zelo dobra ponudba študentskih bonov!",
        "created_at": "2026-10-04T12:00:00Z",
        "author_name": "Študent"
      }
    ]
  },
  {
    "id": "2360",
    "name": "MM PANDA",
    "address": "Ljubljana, 1000 Ljubljana",
    "city": "Ljubljana",
    "latitude": 46.086,
    "longitude": 14.504,
    "subsidy_price": 4.1,
    "opening_hours": "Pon - Pet: 10:00 - 20:00",
    "avg_rating": 4.0,
    "review_count": 10,
    "daily_menu": {
      "id": "m-2360",
      "location_id": "2360",
      "menu_date": "2026-10-04",
      "dishes": [
        "Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko",
        "Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha",
        "Meni 3: Testenine v paradižnikovi omaki z baziliko, solata"
      ]
    },
    "reviews": [
      {
        "id": "r-2360",
        "location_id": "2360",
        "rating": 5,
        "comment": "Zelo dobra ponudba študentskih bonov!",
        "created_at": "2026-10-04T12:00:00Z",
        "author_name": "Študent"
      }
    ]
  },
  {
    "id": "3357",
    "name": "Moj cmok",
    "address": "Ljubljana, 1000 Ljubljana",
    "city": "Ljubljana",
    "latitude": 46.059,
    "longitude": 14.521,
    "subsidy_price": 4.25,
    "opening_hours": "Pon - Pet: 10:00 - 20:00",
    "avg_rating": 4.7,
    "review_count": 47,
    "daily_menu": {
      "id": "m-3357",
      "location_id": "3357",
      "menu_date": "2026-10-04",
      "dishes": [
        "Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko",
        "Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha",
        "Meni 3: Testenine v paradižnikovi omaki z baziliko, solata"
      ]
    },
    "reviews": [
      {
        "id": "r-3357",
        "location_id": "3357",
        "rating": 5,
        "comment": "Zelo dobra ponudba študentskih bonov!",
        "created_at": "2026-10-04T12:00:00Z",
        "author_name": "Študent"
      }
    ]
  },
  {
    "id": "3362",
    "name": "Moji štruklji BTC",
    "address": "Ljubljana, 1000 Ljubljana",
    "city": "Ljubljana",
    "latitude": 46.072,
    "longitude": 14.538,
    "subsidy_price": 4.4,
    "opening_hours": "Pon - Pet: 10:00 - 20:00",
    "avg_rating": 4.2,
    "review_count": 12,
    "daily_menu": {
      "id": "m-3362",
      "location_id": "3362",
      "menu_date": "2026-10-04",
      "dishes": [
        "Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko",
        "Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha",
        "Meni 3: Testenine v paradižnikovi omaki z baziliko, solata"
      ]
    },
    "reviews": [
      {
        "id": "r-3362",
        "location_id": "3362",
        "rating": 5,
        "comment": "Zelo dobra ponudba študentskih bonov!",
        "created_at": "2026-10-04T12:00:00Z",
        "author_name": "Študent"
      }
    ]
  },
  {
    "id": "3290",
    "name": "Namaste Grab &amp; Go",
    "address": "Ljubljana, 1000 Ljubljana",
    "city": "Ljubljana",
    "latitude": 46.085,
    "longitude": 14.515,
    "subsidy_price": 4.55,
    "opening_hours": "Pon - Pet: 10:00 - 20:00",
    "avg_rating": 4.0,
    "review_count": 20,
    "daily_menu": {
      "id": "m-3290",
      "location_id": "3290",
      "menu_date": "2026-10-04",
      "dishes": [
        "Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko",
        "Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha",
        "Meni 3: Testenine v paradižnikovi omaki z baziliko, solata"
      ]
    },
    "reviews": [
      {
        "id": "r-3290",
        "location_id": "3290",
        "rating": 5,
        "comment": "Zelo dobra ponudba študentskih bonov!",
        "created_at": "2026-10-04T12:00:00Z",
        "author_name": "Študent"
      }
    ]
  },
  {
    "id": "2828",
    "name": "Namaste Indian Express",
    "address": "Ljubljana, 1000 Ljubljana",
    "city": "Ljubljana",
    "latitude": 46.058,
    "longitude": 14.532,
    "subsidy_price": 3.5,
    "opening_hours": "Pon - Pet: 10:00 - 20:00",
    "avg_rating": 4.8,
    "review_count": 38,
    "daily_menu": {
      "id": "m-2828",
      "location_id": "2828",
      "menu_date": "2026-10-04",
      "dishes": [
        "Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko",
        "Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha",
        "Meni 3: Testenine v paradižnikovi omaki z baziliko, solata"
      ]
    },
    "reviews": [
      {
        "id": "r-2828",
        "location_id": "2828",
        "rating": 5,
        "comment": "Zelo dobra ponudba študentskih bonov!",
        "created_at": "2026-10-04T12:00:00Z",
        "author_name": "Študent"
      }
    ]
  },
  {
    "id": "2249",
    "name": "News Cafe",
    "address": "Ljubljana, 1000 Ljubljana",
    "city": "Ljubljana",
    "latitude": 46.071,
    "longitude": 14.509,
    "subsidy_price": 3.65,
    "opening_hours": "Pon - Pet: 10:00 - 20:00",
    "avg_rating": 4.9,
    "review_count": 19,
    "daily_menu": {
      "id": "m-2249",
      "location_id": "2249",
      "menu_date": "2026-10-04",
      "dishes": [
        "Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko",
        "Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha",
        "Meni 3: Testenine v paradižnikovi omaki z baziliko, solata"
      ]
    },
    "reviews": [
      {
        "id": "r-2249",
        "location_id": "2249",
        "rating": 5,
        "comment": "Zelo dobra ponudba študentskih bonov!",
        "created_at": "2026-10-04T12:00:00Z",
        "author_name": "Študent"
      }
    ]
  },
  {
    "id": "3359",
    "name": "Niam niam garden",
    "address": "Ljubljana, 1000 Ljubljana",
    "city": "Ljubljana",
    "latitude": 46.084,
    "longitude": 14.526,
    "subsidy_price": 3.8,
    "opening_hours": "Pon - Pet: 10:00 - 20:00",
    "avg_rating": 4.9,
    "review_count": 49,
    "daily_menu": {
      "id": "m-3359",
      "location_id": "3359",
      "menu_date": "2026-10-04",
      "dishes": [
        "Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko",
        "Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha",
        "Meni 3: Testenine v paradižnikovi omaki z baziliko, solata"
      ]
    },
    "reviews": [
      {
        "id": "r-3359",
        "location_id": "3359",
        "rating": 5,
        "comment": "Zelo dobra ponudba študentskih bonov!",
        "created_at": "2026-10-04T12:00:00Z",
        "author_name": "Študent"
      }
    ]
  },
  {
    "id": "3167",
    "name": "NJAMY - dostava",
    "address": "Ljubljana, 1000 Ljubljana",
    "city": "Ljubljana",
    "latitude": 46.057,
    "longitude": 14.503,
    "subsidy_price": 3.95,
    "opening_hours": "Pon - Pet: 10:00 - 20:00",
    "avg_rating": 4.7,
    "review_count": 17,
    "daily_menu": {
      "id": "m-3167",
      "location_id": "3167",
      "menu_date": "2026-10-04",
      "dishes": [
        "Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko",
        "Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha",
        "Meni 3: Testenine v paradižnikovi omaki z baziliko, solata"
      ]
    },
    "reviews": [
      {
        "id": "r-3167",
        "location_id": "3167",
        "rating": 5,
        "comment": "Zelo dobra ponudba študentskih bonov!",
        "created_at": "2026-10-04T12:00:00Z",
        "author_name": "Študent"
      }
    ]
  },
  {
    "id": "3229",
    "name": "Norma 23",
    "address": "Ljubljana, 1000 Ljubljana",
    "city": "Ljubljana",
    "latitude": 46.07,
    "longitude": 14.52,
    "subsidy_price": 4.1,
    "opening_hours": "Pon - Pet: 10:00 - 20:00",
    "avg_rating": 4.9,
    "review_count": 39,
    "daily_menu": {
      "id": "m-3229",
      "location_id": "3229",
      "menu_date": "2026-10-04",
      "dishes": [
        "Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko",
        "Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha",
        "Meni 3: Testenine v paradižnikovi omaki z baziliko, solata"
      ]
    },
    "reviews": [
      {
        "id": "r-3229",
        "location_id": "3229",
        "rating": 5,
        "comment": "Zelo dobra ponudba študentskih bonov!",
        "created_at": "2026-10-04T12:00:00Z",
        "author_name": "Študent"
      }
    ]
  },
  {
    "id": "2732",
    "name": "Okrepčevalnica - Diner kino gledališče Bežigrad",
    "address": "Ljubljana, 1000 Ljubljana",
    "city": "Ljubljana",
    "latitude": 46.083,
    "longitude": 14.537,
    "subsidy_price": 4.25,
    "opening_hours": "Pon - Pet: 10:00 - 20:00",
    "avg_rating": 4.2,
    "review_count": 22,
    "daily_menu": {
      "id": "m-2732",
      "location_id": "2732",
      "menu_date": "2026-10-04",
      "dishes": [
        "Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko",
        "Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha",
        "Meni 3: Testenine v paradižnikovi omaki z baziliko, solata"
      ]
    },
    "reviews": [
      {
        "id": "r-2732",
        "location_id": "2732",
        "rating": 5,
        "comment": "Zelo dobra ponudba študentskih bonov!",
        "created_at": "2026-10-04T12:00:00Z",
        "author_name": "Študent"
      }
    ]
  },
  {
    "id": "1683",
    "name": "Okrepčevalnica - pizzerija Maks",
    "address": "Ljubljana, 1000 Ljubljana",
    "city": "Ljubljana",
    "latitude": 46.056,
    "longitude": 14.514,
    "subsidy_price": 4.4,
    "opening_hours": "Pon - Pet: 10:00 - 20:00",
    "avg_rating": 4.3,
    "review_count": 13,
    "daily_menu": {
      "id": "m-1683",
      "location_id": "1683",
      "menu_date": "2026-10-04",
      "dishes": [
        "Meni 1: Pizza Margherita (pelati, mocarela, bazilika), mešana solata, sadje",
        "Meni 2: Pizza Klasika (šunka, sir, gobe), mešana solata",
        "Meni 3: Veganska pizza s pečenimi jajčevci in bučkami, solata"
      ]
    },
    "reviews": [
      {
        "id": "r-1683",
        "location_id": "1683",
        "rating": 5,
        "comment": "Zelo dobra ponudba študentskih bonov!",
        "created_at": "2026-10-04T12:00:00Z",
        "author_name": "Študent"
      }
    ]
  },
  {
    "id": "3397",
    "name": "Okrepčevalnica &quot;Medicinska fakulteta&quot;",
    "address": "Ljubljana, 1000 Ljubljana",
    "city": "Ljubljana",
    "latitude": 46.069,
    "longitude": 14.531,
    "subsidy_price": 4.55,
    "opening_hours": "Pon - Pet: 10:00 - 20:00",
    "avg_rating": 4.7,
    "review_count": 47,
    "daily_menu": {
      "id": "m-3397",
      "location_id": "3397",
      "menu_date": "2026-10-04",
      "dishes": [
        "Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko",
        "Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha",
        "Meni 3: Testenine v paradižnikovi omaki z baziliko, solata"
      ]
    },
    "reviews": [
      {
        "id": "r-3397",
        "location_id": "3397",
        "rating": 5,
        "comment": "Zelo dobra ponudba študentskih bonov!",
        "created_at": "2026-10-04T12:00:00Z",
        "author_name": "Študent"
      }
    ]
  },
  {
    "id": "2944",
    "name": "Okrepčevalnica Ajda",
    "address": "Ljubljana, 1000 Ljubljana",
    "city": "Ljubljana",
    "latitude": 46.082,
    "longitude": 14.508,
    "subsidy_price": 3.5,
    "opening_hours": "Pon - Pet: 10:00 - 20:00",
    "avg_rating": 4.4,
    "review_count": 34,
    "daily_menu": {
      "id": "m-2944",
      "location_id": "2944",
      "menu_date": "2026-10-04",
      "dishes": [
        "Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko",
        "Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha",
        "Meni 3: Testenine v paradižnikovi omaki z baziliko, solata"
      ]
    },
    "reviews": [
      {
        "id": "r-2944",
        "location_id": "2944",
        "rating": 5,
        "comment": "Zelo dobra ponudba študentskih bonov!",
        "created_at": "2026-10-04T12:00:00Z",
        "author_name": "Študent"
      }
    ]
  },
  {
    "id": "2347",
    "name": "Okrepčevalnica FERI",
    "address": "Ljubljana, 1000 Ljubljana",
    "city": "Ljubljana",
    "latitude": 46.055,
    "longitude": 14.525,
    "subsidy_price": 3.65,
    "opening_hours": "Pon - Pet: 10:00 - 20:00",
    "avg_rating": 4.7,
    "review_count": 37,
    "daily_menu": {
      "id": "m-2347",
      "location_id": "2347",
      "menu_date": "2026-10-04",
      "dishes": [
        "Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko",
        "Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha",
        "Meni 3: Testenine v paradižnikovi omaki z baziliko, solata"
      ]
    },
    "reviews": [
      {
        "id": "r-2347",
        "location_id": "2347",
        "rating": 5,
        "comment": "Zelo dobra ponudba študentskih bonov!",
        "created_at": "2026-10-04T12:00:00Z",
        "author_name": "Študent"
      }
    ]
  },
  {
    "id": "3342",
    "name": "Okrepčevalnica HAM-HAM",
    "address": "Ljubljana, 1000 Ljubljana",
    "city": "Ljubljana",
    "latitude": 46.068,
    "longitude": 14.502,
    "subsidy_price": 3.8,
    "opening_hours": "Pon - Pet: 10:00 - 20:00",
    "avg_rating": 4.2,
    "review_count": 32,
    "daily_menu": {
      "id": "m-3342",
      "location_id": "3342",
      "menu_date": "2026-10-04",
      "dishes": [
        "Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko",
        "Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha",
        "Meni 3: Testenine v paradižnikovi omaki z baziliko, solata"
      ]
    },
    "reviews": [
      {
        "id": "r-3342",
        "location_id": "3342",
        "rating": 5,
        "comment": "Zelo dobra ponudba študentskih bonov!",
        "created_at": "2026-10-04T12:00:00Z",
        "author_name": "Študent"
      }
    ]
  },
  {
    "id": "2652",
    "name": "Okrepčevalnica IZUM",
    "address": "Ljubljana, 1000 Ljubljana",
    "city": "Ljubljana",
    "latitude": 46.081,
    "longitude": 14.519,
    "subsidy_price": 3.95,
    "opening_hours": "Pon - Pet: 10:00 - 20:00",
    "avg_rating": 4.2,
    "review_count": 22,
    "daily_menu": {
      "id": "m-2652",
      "location_id": "2652",
      "menu_date": "2026-10-04",
      "dishes": [
        "Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko",
        "Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha",
        "Meni 3: Testenine v paradižnikovi omaki z baziliko, solata"
      ]
    },
    "reviews": [
      {
        "id": "r-2652",
        "location_id": "2652",
        "rating": 5,
        "comment": "Zelo dobra ponudba študentskih bonov!",
        "created_at": "2026-10-04T12:00:00Z",
        "author_name": "Študent"
      }
    ]
  },
  {
    "id": "3200",
    "name": "Okrepčevalnica Marijanca",
    "address": "Ljubljana, 1000 Ljubljana",
    "city": "Ljubljana",
    "latitude": 46.054,
    "longitude": 14.536,
    "subsidy_price": 4.1,
    "opening_hours": "Pon - Pet: 10:00 - 20:00",
    "avg_rating": 4.0,
    "review_count": 10,
    "daily_menu": {
      "id": "m-3200",
      "location_id": "3200",
      "menu_date": "2026-10-04",
      "dishes": [
        "Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko",
        "Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha",
        "Meni 3: Testenine v paradižnikovi omaki z baziliko, solata"
      ]
    },
    "reviews": [
      {
        "id": "r-3200",
        "location_id": "3200",
        "rating": 5,
        "comment": "Zelo dobra ponudba študentskih bonov!",
        "created_at": "2026-10-04T12:00:00Z",
        "author_name": "Študent"
      }
    ]
  },
  {
    "id": "3333",
    "name": "OKREPČEVALNICA PINELA",
    "address": "Ljubljana, 1000 Ljubljana",
    "city": "Ljubljana",
    "latitude": 46.067,
    "longitude": 14.513,
    "subsidy_price": 4.25,
    "opening_hours": "Pon - Pet: 10:00 - 20:00",
    "avg_rating": 4.3,
    "review_count": 23,
    "daily_menu": {
      "id": "m-3333",
      "location_id": "3333",
      "menu_date": "2026-10-04",
      "dishes": [
        "Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko",
        "Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha",
        "Meni 3: Testenine v paradižnikovi omaki z baziliko, solata"
      ]
    },
    "reviews": [
      {
        "id": "r-3333",
        "location_id": "3333",
        "rating": 5,
        "comment": "Zelo dobra ponudba študentskih bonov!",
        "created_at": "2026-10-04T12:00:00Z",
        "author_name": "Študent"
      }
    ]
  },
  {
    "id": "3372",
    "name": "Okrepčevalnica Rock Cafe",
    "address": "Ljubljana, 1000 Ljubljana",
    "city": "Ljubljana",
    "latitude": 46.08,
    "longitude": 14.53,
    "subsidy_price": 4.4,
    "opening_hours": "Pon - Pet: 10:00 - 20:00",
    "avg_rating": 4.2,
    "review_count": 22,
    "daily_menu": {
      "id": "m-3372",
      "location_id": "3372",
      "menu_date": "2026-10-04",
      "dishes": [
        "Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko",
        "Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha",
        "Meni 3: Testenine v paradižnikovi omaki z baziliko, solata"
      ]
    },
    "reviews": [
      {
        "id": "r-3372",
        "location_id": "3372",
        "rating": 5,
        "comment": "Zelo dobra ponudba študentskih bonov!",
        "created_at": "2026-10-04T12:00:00Z",
        "author_name": "Študent"
      }
    ]
  },
  {
    "id": "1817",
    "name": "OLA ENKA",
    "address": "Ljubljana, 1000 Ljubljana",
    "city": "Ljubljana",
    "latitude": 46.053,
    "longitude": 14.507,
    "subsidy_price": 4.55,
    "opening_hours": "Pon - Pet: 10:00 - 20:00",
    "avg_rating": 4.7,
    "review_count": 27,
    "daily_menu": {
      "id": "m-1817",
      "location_id": "1817",
      "menu_date": "2026-10-04",
      "dishes": [
        "Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko",
        "Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha",
        "Meni 3: Testenine v paradižnikovi omaki z baziliko, solata"
      ]
    },
    "reviews": [
      {
        "id": "r-1817",
        "location_id": "1817",
        "rating": 5,
        "comment": "Zelo dobra ponudba študentskih bonov!",
        "created_at": "2026-10-04T12:00:00Z",
        "author_name": "Študent"
      }
    ]
  },
  {
    "id": "3296",
    "name": "O-LALA",
    "address": "Ljubljana, 1000 Ljubljana",
    "city": "Ljubljana",
    "latitude": 46.066,
    "longitude": 14.524,
    "subsidy_price": 3.5,
    "opening_hours": "Pon - Pet: 10:00 - 20:00",
    "avg_rating": 4.6,
    "review_count": 26,
    "daily_menu": {
      "id": "m-3296",
      "location_id": "3296",
      "menu_date": "2026-10-04",
      "dishes": [
        "Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko",
        "Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha",
        "Meni 3: Testenine v paradižnikovi omaki z baziliko, solata"
      ]
    },
    "reviews": [
      {
        "id": "r-3296",
        "location_id": "3296",
        "rating": 5,
        "comment": "Zelo dobra ponudba študentskih bonov!",
        "created_at": "2026-10-04T12:00:00Z",
        "author_name": "Študent"
      }
    ]
  },
  {
    "id": "3318",
    "name": "ON THAI Rudnik",
    "address": "Ljubljana, 1000 Ljubljana",
    "city": "Ljubljana",
    "latitude": 46.079,
    "longitude": 14.501,
    "subsidy_price": 3.65,
    "opening_hours": "Pon - Pet: 10:00 - 20:00",
    "avg_rating": 4.8,
    "review_count": 48,
    "daily_menu": {
      "id": "m-3318",
      "location_id": "3318",
      "menu_date": "2026-10-04",
      "dishes": [
        "Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko",
        "Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha",
        "Meni 3: Testenine v paradižnikovi omaki z baziliko, solata"
      ]
    },
    "reviews": [
      {
        "id": "r-3318",
        "location_id": "3318",
        "rating": 5,
        "comment": "Zelo dobra ponudba študentskih bonov!",
        "created_at": "2026-10-04T12:00:00Z",
        "author_name": "Študent"
      }
    ]
  },
  {
    "id": "3319",
    "name": "ON THAI Šiška",
    "address": "Ljubljana, 1000 Ljubljana",
    "city": "Ljubljana",
    "latitude": 46.052,
    "longitude": 14.518,
    "subsidy_price": 3.8,
    "opening_hours": "Pon - Pet: 10:00 - 20:00",
    "avg_rating": 4.9,
    "review_count": 49,
    "daily_menu": {
      "id": "m-3319",
      "location_id": "3319",
      "menu_date": "2026-10-04",
      "dishes": [
        "Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko",
        "Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha",
        "Meni 3: Testenine v paradižnikovi omaki z baziliko, solata"
      ]
    },
    "reviews": [
      {
        "id": "r-3319",
        "location_id": "3319",
        "rating": 5,
        "comment": "Zelo dobra ponudba študentskih bonov!",
        "created_at": "2026-10-04T12:00:00Z",
        "author_name": "Študent"
      }
    ]
  },
  {
    "id": "3169",
    "name": "ORIENT EXPRESS, samopostrežna restavracija",
    "address": "Ljubljana, 1000 Ljubljana",
    "city": "Ljubljana",
    "latitude": 46.065,
    "longitude": 14.535,
    "subsidy_price": 3.95,
    "opening_hours": "Pon - Pet: 10:00 - 20:00",
    "avg_rating": 4.9,
    "review_count": 19,
    "daily_menu": {
      "id": "m-3169",
      "location_id": "3169",
      "menu_date": "2026-10-04",
      "dishes": [
        "Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko",
        "Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha",
        "Meni 3: Testenine v paradižnikovi omaki z baziliko, solata"
      ]
    },
    "reviews": [
      {
        "id": "r-3169",
        "location_id": "3169",
        "rating": 5,
        "comment": "Zelo dobra ponudba študentskih bonov!",
        "created_at": "2026-10-04T12:00:00Z",
        "author_name": "Študent"
      }
    ]
  },
  {
    "id": "3035",
    "name": "Oštarija City center Celje",
    "address": "Celje, 3000 Celje",
    "city": "Celje",
    "latitude": 46.242,
    "longitude": 15.268,
    "subsidy_price": 4.1,
    "opening_hours": "Pon - Pet: 10:00 - 20:00",
    "avg_rating": 4.5,
    "review_count": 45,
    "daily_menu": {
      "id": "m-3035",
      "location_id": "3035",
      "menu_date": "2026-10-04",
      "dishes": [
        "Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko",
        "Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha",
        "Meni 3: Testenine v paradižnikovi omaki z baziliko, solata"
      ]
    },
    "reviews": [
      {
        "id": "r-3035",
        "location_id": "3035",
        "rating": 5,
        "comment": "Zelo dobra ponudba študentskih bonov!",
        "created_at": "2026-10-04T12:00:00Z",
        "author_name": "Študent"
      }
    ]
  },
  {
    "id": "1471",
    "name": "Oštarija Rudolfswerth",
    "address": "Ljubljana, 1000 Ljubljana",
    "city": "Ljubljana",
    "latitude": 46.051,
    "longitude": 14.529,
    "subsidy_price": 4.25,
    "opening_hours": "Pon - Pet: 10:00 - 20:00",
    "avg_rating": 4.1,
    "review_count": 41,
    "daily_menu": {
      "id": "m-1471",
      "location_id": "1471",
      "menu_date": "2026-10-04",
      "dishes": [
        "Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko",
        "Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha",
        "Meni 3: Testenine v paradižnikovi omaki z baziliko, solata"
      ]
    },
    "reviews": [
      {
        "id": "r-1471",
        "location_id": "1471",
        "rating": 5,
        "comment": "Zelo dobra ponudba študentskih bonov!",
        "created_at": "2026-10-04T12:00:00Z",
        "author_name": "Študent"
      }
    ]
  },
  {
    "id": "3298",
    "name": "P8 - dostava",
    "address": "Ljubljana, 1000 Ljubljana",
    "city": "Ljubljana",
    "latitude": 46.064,
    "longitude": 14.506,
    "subsidy_price": 4.4,
    "opening_hours": "Pon - Pet: 10:00 - 20:00",
    "avg_rating": 4.8,
    "review_count": 28,
    "daily_menu": {
      "id": "m-3298",
      "location_id": "3298",
      "menu_date": "2026-10-04",
      "dishes": [
        "Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko",
        "Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha",
        "Meni 3: Testenine v paradižnikovi omaki z baziliko, solata"
      ]
    },
    "reviews": [
      {
        "id": "r-3298",
        "location_id": "3298",
        "rating": 5,
        "comment": "Zelo dobra ponudba študentskih bonov!",
        "created_at": "2026-10-04T12:00:00Z",
        "author_name": "Študent"
      }
    ]
  },
  {
    "id": "2753",
    "name": "Palača SMELT",
    "address": "Ljubljana, 1000 Ljubljana",
    "city": "Ljubljana",
    "latitude": 46.077,
    "longitude": 14.523,
    "subsidy_price": 4.55,
    "opening_hours": "Pon - Pet: 10:00 - 20:00",
    "avg_rating": 4.3,
    "review_count": 43,
    "daily_menu": {
      "id": "m-2753",
      "location_id": "2753",
      "menu_date": "2026-10-04",
      "dishes": [
        "Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko",
        "Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha",
        "Meni 3: Testenine v paradižnikovi omaki z baziliko, solata"
      ]
    },
    "reviews": [
      {
        "id": "r-2753",
        "location_id": "2753",
        "rating": 5,
        "comment": "Zelo dobra ponudba študentskih bonov!",
        "created_at": "2026-10-04T12:00:00Z",
        "author_name": "Študent"
      }
    ]
  },
  {
    "id": "2863",
    "name": "Papagayo",
    "address": "Ljubljana, 1000 Ljubljana",
    "city": "Ljubljana",
    "latitude": 46.05,
    "longitude": 14.5,
    "subsidy_price": 3.5,
    "opening_hours": "Pon - Pet: 10:00 - 20:00",
    "avg_rating": 4.3,
    "review_count": 33,
    "daily_menu": {
      "id": "m-2863",
      "location_id": "2863",
      "menu_date": "2026-10-04",
      "dishes": [
        "Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko",
        "Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha",
        "Meni 3: Testenine v paradižnikovi omaki z baziliko, solata"
      ]
    },
    "reviews": [
      {
        "id": "r-2863",
        "location_id": "2863",
        "rating": 5,
        "comment": "Zelo dobra ponudba študentskih bonov!",
        "created_at": "2026-10-04T12:00:00Z",
        "author_name": "Študent"
      }
    ]
  },
  {
    "id": "2623",
    "name": "PE Dijaški dom Celje",
    "address": "Celje, 3000 Celje",
    "city": "Celje",
    "latitude": 46.237,
    "longitude": 15.273,
    "subsidy_price": 3.65,
    "opening_hours": "Pon - Pet: 10:00 - 20:00",
    "avg_rating": 4.3,
    "review_count": 33,
    "daily_menu": {
      "id": "m-2623",
      "location_id": "2623",
      "menu_date": "2026-10-04",
      "dishes": [
        "Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko",
        "Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha",
        "Meni 3: Testenine v paradižnikovi omaki z baziliko, solata"
      ]
    },
    "reviews": [
      {
        "id": "r-2623",
        "location_id": "2623",
        "rating": 5,
        "comment": "Zelo dobra ponudba študentskih bonov!",
        "created_at": "2026-10-04T12:00:00Z",
        "author_name": "Študent"
      }
    ]
  },
  {
    "id": "3392",
    "name": "Pe Hiša kruha junior",
    "address": "Ljubljana, 1000 Ljubljana",
    "city": "Ljubljana",
    "latitude": 46.076,
    "longitude": 14.534,
    "subsidy_price": 3.8,
    "opening_hours": "Pon - Pet: 10:00 - 20:00",
    "avg_rating": 4.2,
    "review_count": 42,
    "daily_menu": {
      "id": "m-3392",
      "location_id": "3392",
      "menu_date": "2026-10-04",
      "dishes": [
        "Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko",
        "Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha",
        "Meni 3: Testenine v paradižnikovi omaki z baziliko, solata"
      ]
    },
    "reviews": [
      {
        "id": "r-3392",
        "location_id": "3392",
        "rating": 5,
        "comment": "Zelo dobra ponudba študentskih bonov!",
        "created_at": "2026-10-04T12:00:00Z",
        "author_name": "Študent"
      }
    ]
  },
  {
    "id": "3390",
    "name": "PE LUCKY STREET FOOD",
    "address": "Ljubljana, 1000 Ljubljana",
    "city": "Ljubljana",
    "latitude": 46.089,
    "longitude": 14.511,
    "subsidy_price": 3.95,
    "opening_hours": "Pon - Pet: 10:00 - 20:00",
    "avg_rating": 4.0,
    "review_count": 40,
    "daily_menu": {
      "id": "m-3390",
      "location_id": "3390",
      "menu_date": "2026-10-04",
      "dishes": [
        "Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko",
        "Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha",
        "Meni 3: Testenine v paradižnikovi omaki z baziliko, solata"
      ]
    },
    "reviews": [
      {
        "id": "r-3390",
        "location_id": "3390",
        "rating": 5,
        "comment": "Zelo dobra ponudba študentskih bonov!",
        "created_at": "2026-10-04T12:00:00Z",
        "author_name": "Študent"
      }
    ]
  },
  {
    "id": "1424",
    "name": "PE Marjetica",
    "address": "Ljubljana, 1000 Ljubljana",
    "city": "Ljubljana",
    "latitude": 46.062,
    "longitude": 14.528,
    "subsidy_price": 4.1,
    "opening_hours": "Pon - Pet: 10:00 - 20:00",
    "avg_rating": 4.4,
    "review_count": 34,
    "daily_menu": {
      "id": "m-1424",
      "location_id": "1424",
      "menu_date": "2026-10-04",
      "dishes": [
        "Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko",
        "Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha",
        "Meni 3: Testenine v paradižnikovi omaki z baziliko, solata"
      ]
    },
    "reviews": [
      {
        "id": "r-1424",
        "location_id": "1424",
        "rating": 5,
        "comment": "Zelo dobra ponudba študentskih bonov!",
        "created_at": "2026-10-04T12:00:00Z",
        "author_name": "Študent"
      }
    ]
  },
  {
    "id": "3346",
    "name": "PE Melty",
    "address": "Ljubljana, 1000 Ljubljana",
    "city": "Ljubljana",
    "latitude": 46.075,
    "longitude": 14.505,
    "subsidy_price": 4.25,
    "opening_hours": "Pon - Pet: 10:00 - 20:00",
    "avg_rating": 4.6,
    "review_count": 36,
    "daily_menu": {
      "id": "m-3346",
      "location_id": "3346",
      "menu_date": "2026-10-04",
      "dishes": [
        "Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko",
        "Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha",
        "Meni 3: Testenine v paradižnikovi omaki z baziliko, solata"
      ]
    },
    "reviews": [
      {
        "id": "r-3346",
        "location_id": "3346",
        "rating": 5,
        "comment": "Zelo dobra ponudba študentskih bonov!",
        "created_at": "2026-10-04T12:00:00Z",
        "author_name": "Študent"
      }
    ]
  },
  {
    "id": "3353",
    "name": "Picerija Barjan",
    "address": "Ljubljana, 1000 Ljubljana",
    "city": "Ljubljana",
    "latitude": 46.088,
    "longitude": 14.522,
    "subsidy_price": 4.4,
    "opening_hours": "Pon - Pet: 10:00 - 20:00",
    "avg_rating": 4.3,
    "review_count": 43,
    "daily_menu": {
      "id": "m-3353",
      "location_id": "3353",
      "menu_date": "2026-10-04",
      "dishes": [
        "Meni 1: Pizza Margherita (pelati, mocarela, bazilika), mešana solata, sadje",
        "Meni 2: Pizza Klasika (šunka, sir, gobe), mešana solata",
        "Meni 3: Veganska pizza s pečenimi jajčevci in bučkami, solata"
      ]
    },
    "reviews": [
      {
        "id": "r-3353",
        "location_id": "3353",
        "rating": 5,
        "comment": "Zelo dobra ponudba študentskih bonov!",
        "created_at": "2026-10-04T12:00:00Z",
        "author_name": "Študent"
      }
    ]
  },
  {
    "id": "2243",
    "name": "PICERIJA CITYBURGER",
    "address": "Ljubljana, 1000 Ljubljana",
    "city": "Ljubljana",
    "latitude": 46.061,
    "longitude": 14.539,
    "subsidy_price": 4.55,
    "opening_hours": "Pon - Pet: 10:00 - 20:00",
    "avg_rating": 4.3,
    "review_count": 13,
    "daily_menu": {
      "id": "m-2243",
      "location_id": "2243",
      "menu_date": "2026-10-04",
      "dishes": [
        "Meni 1: Pizza Margherita (pelati, mocarela, bazilika), mešana solata, sadje",
        "Meni 2: Pizza Klasika (šunka, sir, gobe), mešana solata",
        "Meni 3: Veganska pizza s pečenimi jajčevci in bučkami, solata"
      ]
    },
    "reviews": [
      {
        "id": "r-2243",
        "location_id": "2243",
        "rating": 5,
        "comment": "Zelo dobra ponudba študentskih bonov!",
        "created_at": "2026-10-04T12:00:00Z",
        "author_name": "Študent"
      }
    ]
  },
  {
    "id": "2551",
    "name": "Picerija ERA",
    "address": "Ljubljana, 1000 Ljubljana",
    "city": "Ljubljana",
    "latitude": 46.074,
    "longitude": 14.516,
    "subsidy_price": 3.5,
    "opening_hours": "Pon - Pet: 10:00 - 20:00",
    "avg_rating": 4.1,
    "review_count": 41,
    "daily_menu": {
      "id": "m-2551",
      "location_id": "2551",
      "menu_date": "2026-10-04",
      "dishes": [
        "Meni 1: Pizza Margherita (pelati, mocarela, bazilika), mešana solata, sadje",
        "Meni 2: Pizza Klasika (šunka, sir, gobe), mešana solata",
        "Meni 3: Veganska pizza s pečenimi jajčevci in bučkami, solata"
      ]
    },
    "reviews": [
      {
        "id": "r-2551",
        "location_id": "2551",
        "rating": 5,
        "comment": "Zelo dobra ponudba študentskih bonov!",
        "created_at": "2026-10-04T12:00:00Z",
        "author_name": "Študent"
      }
    ]
  },
  {
    "id": "3142",
    "name": "Picerija in pivnica KUFR",
    "address": "Ljubljana, 1000 Ljubljana",
    "city": "Ljubljana",
    "latitude": 46.087,
    "longitude": 14.533,
    "subsidy_price": 3.65,
    "opening_hours": "Pon - Pet: 10:00 - 20:00",
    "avg_rating": 4.2,
    "review_count": 32,
    "daily_menu": {
      "id": "m-3142",
      "location_id": "3142",
      "menu_date": "2026-10-04",
      "dishes": [
        "Meni 1: Pizza Margherita (pelati, mocarela, bazilika), mešana solata, sadje",
        "Meni 2: Pizza Klasika (šunka, sir, gobe), mešana solata",
        "Meni 3: Veganska pizza s pečenimi jajčevci in bučkami, solata"
      ]
    },
    "reviews": [
      {
        "id": "r-3142",
        "location_id": "3142",
        "rating": 5,
        "comment": "Zelo dobra ponudba študentskih bonov!",
        "created_at": "2026-10-04T12:00:00Z",
        "author_name": "Študent"
      }
    ]
  },
  {
    "id": "3281",
    "name": "Picerija Pavon",
    "address": "Ljubljana, 1000 Ljubljana",
    "city": "Ljubljana",
    "latitude": 46.06,
    "longitude": 14.51,
    "subsidy_price": 3.8,
    "opening_hours": "Pon - Pet: 10:00 - 20:00",
    "avg_rating": 4.1,
    "review_count": 11,
    "daily_menu": {
      "id": "m-3281",
      "location_id": "3281",
      "menu_date": "2026-10-04",
      "dishes": [
        "Meni 1: Pizza Margherita (pelati, mocarela, bazilika), mešana solata, sadje",
        "Meni 2: Pizza Klasika (šunka, sir, gobe), mešana solata",
        "Meni 3: Veganska pizza s pečenimi jajčevci in bučkami, solata"
      ]
    },
    "reviews": [
      {
        "id": "r-3281",
        "location_id": "3281",
        "rating": 5,
        "comment": "Zelo dobra ponudba študentskih bonov!",
        "created_at": "2026-10-04T12:00:00Z",
        "author_name": "Študent"
      }
    ]
  },
  {
    "id": "1794",
    "name": "Picestavracija Boccaccio",
    "address": "Ljubljana, 1000 Ljubljana",
    "city": "Ljubljana",
    "latitude": 46.073,
    "longitude": 14.527,
    "subsidy_price": 3.95,
    "opening_hours": "Pon - Pet: 10:00 - 20:00",
    "avg_rating": 4.4,
    "review_count": 44,
    "daily_menu": {
      "id": "m-1794",
      "location_id": "1794",
      "menu_date": "2026-10-04",
      "dishes": [
        "Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko",
        "Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha",
        "Meni 3: Testenine v paradižnikovi omaki z baziliko, solata"
      ]
    },
    "reviews": [
      {
        "id": "r-1794",
        "location_id": "1794",
        "rating": 5,
        "comment": "Zelo dobra ponudba študentskih bonov!",
        "created_at": "2026-10-04T12:00:00Z",
        "author_name": "Študent"
      }
    ]
  },
  {
    "id": "3361",
    "name": "Pisana skleda",
    "address": "Ljubljana, 1000 Ljubljana",
    "city": "Ljubljana",
    "latitude": 46.086,
    "longitude": 14.504,
    "subsidy_price": 4.1,
    "opening_hours": "Pon - Pet: 10:00 - 20:00",
    "avg_rating": 4.1,
    "review_count": 11,
    "daily_menu": {
      "id": "m-3361",
      "location_id": "3361",
      "menu_date": "2026-10-04",
      "dishes": [
        "Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko",
        "Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha",
        "Meni 3: Testenine v paradižnikovi omaki z baziliko, solata"
      ]
    },
    "reviews": [
      {
        "id": "r-3361",
        "location_id": "3361",
        "rating": 5,
        "comment": "Zelo dobra ponudba študentskih bonov!",
        "created_at": "2026-10-04T12:00:00Z",
        "author_name": "Študent"
      }
    ]
  },
  {
    "id": "2595",
    "name": "Pizza SALAMON - dostava",
    "address": "Ljubljana, 1000 Ljubljana",
    "city": "Ljubljana",
    "latitude": 46.059,
    "longitude": 14.521,
    "subsidy_price": 4.25,
    "opening_hours": "Pon - Pet: 10:00 - 20:00",
    "avg_rating": 4.5,
    "review_count": 45,
    "daily_menu": {
      "id": "m-2595",
      "location_id": "2595",
      "menu_date": "2026-10-04",
      "dishes": [
        "Meni 1: Pizza Margherita (pelati, mocarela, bazilika), mešana solata, sadje",
        "Meni 2: Pizza Klasika (šunka, sir, gobe), mešana solata",
        "Meni 3: Veganska pizza s pečenimi jajčevci in bučkami, solata"
      ]
    },
    "reviews": [
      {
        "id": "r-2595",
        "location_id": "2595",
        "rating": 5,
        "comment": "Zelo dobra ponudba študentskih bonov!",
        "created_at": "2026-10-04T12:00:00Z",
        "author_name": "Študent"
      }
    ]
  },
  {
    "id": "2308",
    "name": "Pizzeria Briksen",
    "address": "Ljubljana, 1000 Ljubljana",
    "city": "Ljubljana",
    "latitude": 46.072,
    "longitude": 14.538,
    "subsidy_price": 4.4,
    "opening_hours": "Pon - Pet: 10:00 - 20:00",
    "avg_rating": 4.8,
    "review_count": 38,
    "daily_menu": {
      "id": "m-2308",
      "location_id": "2308",
      "menu_date": "2026-10-04",
      "dishes": [
        "Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko",
        "Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha",
        "Meni 3: Testenine v paradižnikovi omaki z baziliko, solata"
      ]
    },
    "reviews": [
      {
        "id": "r-2308",
        "location_id": "2308",
        "rating": 5,
        "comment": "Zelo dobra ponudba študentskih bonov!",
        "created_at": "2026-10-04T12:00:00Z",
        "author_name": "Študent"
      }
    ]
  },
  {
    "id": "3295",
    "name": "Pizzeria Favola",
    "address": "Ljubljana, 1000 Ljubljana",
    "city": "Ljubljana",
    "latitude": 46.085,
    "longitude": 14.515,
    "subsidy_price": 4.55,
    "opening_hours": "Pon - Pet: 10:00 - 20:00",
    "avg_rating": 4.5,
    "review_count": 25,
    "daily_menu": {
      "id": "m-3295",
      "location_id": "3295",
      "menu_date": "2026-10-04",
      "dishes": [
        "Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko",
        "Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha",
        "Meni 3: Testenine v paradižnikovi omaki z baziliko, solata"
      ]
    },
    "reviews": [
      {
        "id": "r-3295",
        "location_id": "3295",
        "rating": 5,
        "comment": "Zelo dobra ponudba študentskih bonov!",
        "created_at": "2026-10-04T12:00:00Z",
        "author_name": "Študent"
      }
    ]
  },
  {
    "id": "1441",
    "name": "Pizzeria FoculuS",
    "address": "Ljubljana, 1000 Ljubljana",
    "city": "Ljubljana",
    "latitude": 46.058,
    "longitude": 14.532,
    "subsidy_price": 3.5,
    "opening_hours": "Pon - Pet: 10:00 - 20:00",
    "avg_rating": 4.1,
    "review_count": 11,
    "daily_menu": {
      "id": "m-1441",
      "location_id": "1441",
      "menu_date": "2026-10-04",
      "dishes": [
        "Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko",
        "Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha",
        "Meni 3: Testenine v paradižnikovi omaki z baziliko, solata"
      ]
    },
    "reviews": [
      {
        "id": "r-1441",
        "location_id": "1441",
        "rating": 5,
        "comment": "Zelo dobra ponudba študentskih bonov!",
        "created_at": "2026-10-04T12:00:00Z",
        "author_name": "Študent"
      }
    ]
  },
  {
    "id": "2284",
    "name": "Pizzeria Fontana",
    "address": "Ljubljana, 1000 Ljubljana",
    "city": "Ljubljana",
    "latitude": 46.071,
    "longitude": 14.509,
    "subsidy_price": 3.65,
    "opening_hours": "Pon - Pet: 10:00 - 20:00",
    "avg_rating": 4.4,
    "review_count": 14,
    "daily_menu": {
      "id": "m-2284",
      "location_id": "2284",
      "menu_date": "2026-10-04",
      "dishes": [
        "Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko",
        "Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha",
        "Meni 3: Testenine v paradižnikovi omaki z baziliko, solata"
      ]
    },
    "reviews": [
      {
        "id": "r-2284",
        "location_id": "2284",
        "rating": 5,
        "comment": "Zelo dobra ponudba študentskih bonov!",
        "created_at": "2026-10-04T12:00:00Z",
        "author_name": "Študent"
      }
    ]
  },
  {
    "id": "3388",
    "name": "Pizzeria Gusto",
    "address": "Ljubljana, 1000 Ljubljana",
    "city": "Ljubljana",
    "latitude": 46.084,
    "longitude": 14.526,
    "subsidy_price": 3.8,
    "opening_hours": "Pon - Pet: 10:00 - 20:00",
    "avg_rating": 4.8,
    "review_count": 38,
    "daily_menu": {
      "id": "m-3388",
      "location_id": "3388",
      "menu_date": "2026-10-04",
      "dishes": [
        "Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko",
        "Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha",
        "Meni 3: Testenine v paradižnikovi omaki z baziliko, solata"
      ]
    },
    "reviews": [
      {
        "id": "r-3388",
        "location_id": "3388",
        "rating": 5,
        "comment": "Zelo dobra ponudba študentskih bonov!",
        "created_at": "2026-10-04T12:00:00Z",
        "author_name": "Študent"
      }
    ]
  },
  {
    "id": "3174",
    "name": "Pizzeria in oštarija Chianti",
    "address": "Ljubljana, 1000 Ljubljana",
    "city": "Ljubljana",
    "latitude": 46.057,
    "longitude": 14.503,
    "subsidy_price": 3.95,
    "opening_hours": "Pon - Pet: 10:00 - 20:00",
    "avg_rating": 4.4,
    "review_count": 24,
    "daily_menu": {
      "id": "m-3174",
      "location_id": "3174",
      "menu_date": "2026-10-04",
      "dishes": [
        "Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko",
        "Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha",
        "Meni 3: Testenine v paradižnikovi omaki z baziliko, solata"
      ]
    },
    "reviews": [
      {
        "id": "r-3174",
        "location_id": "3174",
        "rating": 5,
        "comment": "Zelo dobra ponudba študentskih bonov!",
        "created_at": "2026-10-04T12:00:00Z",
        "author_name": "Študent"
      }
    ]
  },
  {
    "id": "1103",
    "name": "Pizzeria in špageteria Al Capone",
    "address": "Ljubljana, 1000 Ljubljana",
    "city": "Ljubljana",
    "latitude": 46.07,
    "longitude": 14.52,
    "subsidy_price": 4.1,
    "opening_hours": "Pon - Pet: 10:00 - 20:00",
    "avg_rating": 4.3,
    "review_count": 33,
    "daily_menu": {
      "id": "m-1103",
      "location_id": "1103",
      "menu_date": "2026-10-04",
      "dishes": [
        "Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko",
        "Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha",
        "Meni 3: Testenine v paradižnikovi omaki z baziliko, solata"
      ]
    },
    "reviews": [
      {
        "id": "r-1103",
        "location_id": "1103",
        "rating": 5,
        "comment": "Zelo dobra ponudba študentskih bonov!",
        "created_at": "2026-10-04T12:00:00Z",
        "author_name": "Študent"
      }
    ]
  },
  {
    "id": "1305",
    "name": "Pizzeria in špagetteria Cubus",
    "address": "Ljubljana, 1000 Ljubljana",
    "city": "Ljubljana",
    "latitude": 46.083,
    "longitude": 14.537,
    "subsidy_price": 4.25,
    "opening_hours": "Pon - Pet: 10:00 - 20:00",
    "avg_rating": 4.5,
    "review_count": 35,
    "daily_menu": {
      "id": "m-1305",
      "location_id": "1305",
      "menu_date": "2026-10-04",
      "dishes": [
        "Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko",
        "Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha",
        "Meni 3: Testenine v paradižnikovi omaki z baziliko, solata"
      ]
    },
    "reviews": [
      {
        "id": "r-1305",
        "location_id": "1305",
        "rating": 5,
        "comment": "Zelo dobra ponudba študentskih bonov!",
        "created_at": "2026-10-04T12:00:00Z",
        "author_name": "Študent"
      }
    ]
  },
  {
    "id": "1423",
    "name": "Pizzeria Laterna",
    "address": "Ljubljana, 1000 Ljubljana",
    "city": "Ljubljana",
    "latitude": 46.056,
    "longitude": 14.514,
    "subsidy_price": 4.4,
    "opening_hours": "Pon - Pet: 10:00 - 20:00",
    "avg_rating": 4.3,
    "review_count": 33,
    "daily_menu": {
      "id": "m-1423",
      "location_id": "1423",
      "menu_date": "2026-10-04",
      "dishes": [
        "Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko",
        "Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha",
        "Meni 3: Testenine v paradižnikovi omaki z baziliko, solata"
      ]
    },
    "reviews": [
      {
        "id": "r-1423",
        "location_id": "1423",
        "rating": 5,
        "comment": "Zelo dobra ponudba študentskih bonov!",
        "created_at": "2026-10-04T12:00:00Z",
        "author_name": "Študent"
      }
    ]
  },
  {
    "id": "3309",
    "name": "Pizzeria Oliva",
    "address": "Ljubljana, 1000 Ljubljana",
    "city": "Ljubljana",
    "latitude": 46.069,
    "longitude": 14.531,
    "subsidy_price": 4.55,
    "opening_hours": "Pon - Pet: 10:00 - 20:00",
    "avg_rating": 4.9,
    "review_count": 39,
    "daily_menu": {
      "id": "m-3309",
      "location_id": "3309",
      "menu_date": "2026-10-04",
      "dishes": [
        "Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko",
        "Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha",
        "Meni 3: Testenine v paradižnikovi omaki z baziliko, solata"
      ]
    },
    "reviews": [
      {
        "id": "r-3309",
        "location_id": "3309",
        "rating": 5,
        "comment": "Zelo dobra ponudba študentskih bonov!",
        "created_at": "2026-10-04T12:00:00Z",
        "author_name": "Študent"
      }
    ]
  },
  {
    "id": "2165",
    "name": "Pizzeria Osmica",
    "address": "Ljubljana, 1000 Ljubljana",
    "city": "Ljubljana",
    "latitude": 46.082,
    "longitude": 14.508,
    "subsidy_price": 3.5,
    "opening_hours": "Pon - Pet: 10:00 - 20:00",
    "avg_rating": 4.5,
    "review_count": 15,
    "daily_menu": {
      "id": "m-2165",
      "location_id": "2165",
      "menu_date": "2026-10-04",
      "dishes": [
        "Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko",
        "Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha",
        "Meni 3: Testenine v paradižnikovi omaki z baziliko, solata"
      ]
    },
    "reviews": [
      {
        "id": "r-2165",
        "location_id": "2165",
        "rating": 5,
        "comment": "Zelo dobra ponudba študentskih bonov!",
        "created_at": "2026-10-04T12:00:00Z",
        "author_name": "Študent"
      }
    ]
  },
  {
    "id": "2375",
    "name": "Pizzeria Parma",
    "address": "Ljubljana, 1000 Ljubljana",
    "city": "Ljubljana",
    "latitude": 46.055,
    "longitude": 14.525,
    "subsidy_price": 3.65,
    "opening_hours": "Pon - Pet: 10:00 - 20:00",
    "avg_rating": 4.5,
    "review_count": 25,
    "daily_menu": {
      "id": "m-2375",
      "location_id": "2375",
      "menu_date": "2026-10-04",
      "dishes": [
        "Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko",
        "Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha",
        "Meni 3: Testenine v paradižnikovi omaki z baziliko, solata"
      ]
    },
    "reviews": [
      {
        "id": "r-2375",
        "location_id": "2375",
        "rating": 5,
        "comment": "Zelo dobra ponudba študentskih bonov!",
        "created_at": "2026-10-04T12:00:00Z",
        "author_name": "Študent"
      }
    ]
  },
  {
    "id": "1335",
    "name": "Pizzeria Šestinka",
    "address": "Ljubljana, 1000 Ljubljana",
    "city": "Ljubljana",
    "latitude": 46.068,
    "longitude": 14.502,
    "subsidy_price": 3.8,
    "opening_hours": "Pon - Pet: 10:00 - 20:00",
    "avg_rating": 4.5,
    "review_count": 25,
    "daily_menu": {
      "id": "m-1335",
      "location_id": "1335",
      "menu_date": "2026-10-04",
      "dishes": [
        "Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko",
        "Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha",
        "Meni 3: Testenine v paradižnikovi omaki z baziliko, solata"
      ]
    },
    "reviews": [
      {
        "id": "r-1335",
        "location_id": "1335",
        "rating": 5,
        "comment": "Zelo dobra ponudba študentskih bonov!",
        "created_at": "2026-10-04T12:00:00Z",
        "author_name": "Študent"
      }
    ]
  },
  {
    "id": "1031",
    "name": "Pizzerija Atrij d.o.o.",
    "address": "Ljubljana, 1000 Ljubljana",
    "city": "Ljubljana",
    "latitude": 46.081,
    "longitude": 14.519,
    "subsidy_price": 3.95,
    "opening_hours": "Pon - Pet: 10:00 - 20:00",
    "avg_rating": 4.1,
    "review_count": 41,
    "daily_menu": {
      "id": "m-1031",
      "location_id": "1031",
      "menu_date": "2026-10-04",
      "dishes": [
        "Meni 1: Pizza Margherita (pelati, mocarela, bazilika), mešana solata, sadje",
        "Meni 2: Pizza Klasika (šunka, sir, gobe), mešana solata",
        "Meni 3: Veganska pizza s pečenimi jajčevci in bučkami, solata"
      ]
    },
    "reviews": [
      {
        "id": "r-1031",
        "location_id": "1031",
        "rating": 5,
        "comment": "Zelo dobra ponudba študentskih bonov!",
        "created_at": "2026-10-04T12:00:00Z",
        "author_name": "Študent"
      }
    ]
  },
  {
    "id": "1716",
    "name": "Pizzerija Dimnik",
    "address": "Ljubljana, 1000 Ljubljana",
    "city": "Ljubljana",
    "latitude": 46.054,
    "longitude": 14.536,
    "subsidy_price": 4.1,
    "opening_hours": "Pon - Pet: 10:00 - 20:00",
    "avg_rating": 4.6,
    "review_count": 46,
    "daily_menu": {
      "id": "m-1716",
      "location_id": "1716",
      "menu_date": "2026-10-04",
      "dishes": [
        "Meni 1: Pizza Margherita (pelati, mocarela, bazilika), mešana solata, sadje",
        "Meni 2: Pizza Klasika (šunka, sir, gobe), mešana solata",
        "Meni 3: Veganska pizza s pečenimi jajčevci in bučkami, solata"
      ]
    },
    "reviews": [
      {
        "id": "r-1716",
        "location_id": "1716",
        "rating": 5,
        "comment": "Zelo dobra ponudba študentskih bonov!",
        "created_at": "2026-10-04T12:00:00Z",
        "author_name": "Študent"
      }
    ]
  },
  {
    "id": "1717",
    "name": "Pizzerija Dimnik - dostava",
    "address": "Ljubljana, 1000 Ljubljana",
    "city": "Ljubljana",
    "latitude": 46.067,
    "longitude": 14.513,
    "subsidy_price": 4.25,
    "opening_hours": "Pon - Pet: 10:00 - 20:00",
    "avg_rating": 4.7,
    "review_count": 47,
    "daily_menu": {
      "id": "m-1717",
      "location_id": "1717",
      "menu_date": "2026-10-04",
      "dishes": [
        "Meni 1: Pizza Margherita (pelati, mocarela, bazilika), mešana solata, sadje",
        "Meni 2: Pizza Klasika (šunka, sir, gobe), mešana solata",
        "Meni 3: Veganska pizza s pečenimi jajčevci in bučkami, solata"
      ]
    },
    "reviews": [
      {
        "id": "r-1717",
        "location_id": "1717",
        "rating": 5,
        "comment": "Zelo dobra ponudba študentskih bonov!",
        "created_at": "2026-10-04T12:00:00Z",
        "author_name": "Študent"
      }
    ]
  },
  {
    "id": "1413",
    "name": "Pizzerija in okrepčevalnica KONDOR",
    "address": "Ljubljana, 1000 Ljubljana",
    "city": "Ljubljana",
    "latitude": 46.08,
    "longitude": 14.53,
    "subsidy_price": 4.4,
    "opening_hours": "Pon - Pet: 10:00 - 20:00",
    "avg_rating": 4.3,
    "review_count": 23,
    "daily_menu": {
      "id": "m-1413",
      "location_id": "1413",
      "menu_date": "2026-10-04",
      "dishes": [
        "Meni 1: Pizza Margherita (pelati, mocarela, bazilika), mešana solata, sadje",
        "Meni 2: Pizza Klasika (šunka, sir, gobe), mešana solata",
        "Meni 3: Veganska pizza s pečenimi jajčevci in bučkami, solata"
      ]
    },
    "reviews": [
      {
        "id": "r-1413",
        "location_id": "1413",
        "rating": 5,
        "comment": "Zelo dobra ponudba študentskih bonov!",
        "created_at": "2026-10-04T12:00:00Z",
        "author_name": "Študent"
      }
    ]
  },
  {
    "id": "3116",
    "name": "Pizzerija in špageterija Alcapone",
    "address": "Ljubljana, 1000 Ljubljana",
    "city": "Ljubljana",
    "latitude": 46.053,
    "longitude": 14.507,
    "subsidy_price": 4.55,
    "opening_hours": "Pon - Pet: 10:00 - 20:00",
    "avg_rating": 4.6,
    "review_count": 46,
    "daily_menu": {
      "id": "m-3116",
      "location_id": "3116",
      "menu_date": "2026-10-04",
      "dishes": [
        "Meni 1: Pizza Margherita (pelati, mocarela, bazilika), mešana solata, sadje",
        "Meni 2: Pizza Klasika (šunka, sir, gobe), mešana solata",
        "Meni 3: Veganska pizza s pečenimi jajčevci in bučkami, solata"
      ]
    },
    "reviews": [
      {
        "id": "r-3116",
        "location_id": "3116",
        "rating": 5,
        "comment": "Zelo dobra ponudba študentskih bonov!",
        "created_at": "2026-10-04T12:00:00Z",
        "author_name": "Študent"
      }
    ]
  },
  {
    "id": "1176",
    "name": "Pizzerija Velun",
    "address": "Ljubljana, 1000 Ljubljana",
    "city": "Ljubljana",
    "latitude": 46.066,
    "longitude": 14.524,
    "subsidy_price": 3.5,
    "opening_hours": "Pon - Pet: 10:00 - 20:00",
    "avg_rating": 4.6,
    "review_count": 26,
    "daily_menu": {
      "id": "m-1176",
      "location_id": "1176",
      "menu_date": "2026-10-04",
      "dishes": [
        "Meni 1: Pizza Margherita (pelati, mocarela, bazilika), mešana solata, sadje",
        "Meni 2: Pizza Klasika (šunka, sir, gobe), mešana solata",
        "Meni 3: Veganska pizza s pečenimi jajčevci in bučkami, solata"
      ]
    },
    "reviews": [
      {
        "id": "r-1176",
        "location_id": "1176",
        "rating": 5,
        "comment": "Zelo dobra ponudba študentskih bonov!",
        "created_at": "2026-10-04T12:00:00Z",
        "author_name": "Študent"
      }
    ]
  },
  {
    "id": "3360",
    "name": "Prfect Meals - dostava",
    "address": "Ljubljana, 1000 Ljubljana",
    "city": "Ljubljana",
    "latitude": 46.079,
    "longitude": 14.501,
    "subsidy_price": 3.65,
    "opening_hours": "Pon - Pet: 10:00 - 20:00",
    "avg_rating": 4.0,
    "review_count": 10,
    "daily_menu": {
      "id": "m-3360",
      "location_id": "3360",
      "menu_date": "2026-10-04",
      "dishes": [
        "Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko",
        "Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha",
        "Meni 3: Testenine v paradižnikovi omaki z baziliko, solata"
      ]
    },
    "reviews": [
      {
        "id": "r-3360",
        "location_id": "3360",
        "rating": 5,
        "comment": "Zelo dobra ponudba študentskih bonov!",
        "created_at": "2026-10-04T12:00:00Z",
        "author_name": "Študent"
      }
    ]
  },
  {
    "id": "1265",
    "name": "Prometna šola Maribor",
    "address": "Maribor, 2000 Maribor",
    "city": "Maribor",
    "latitude": 46.574,
    "longitude": 15.646,
    "subsidy_price": 3.8,
    "opening_hours": "Pon - Pet: 10:00 - 20:00",
    "avg_rating": 4.5,
    "review_count": 35,
    "daily_menu": {
      "id": "m-1265",
      "location_id": "1265",
      "menu_date": "2026-10-04",
      "dishes": [
        "Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko",
        "Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha",
        "Meni 3: Testenine v paradižnikovi omaki z baziliko, solata"
      ]
    },
    "reviews": [
      {
        "id": "r-1265",
        "location_id": "1265",
        "rating": 5,
        "comment": "Zelo dobra ponudba študentskih bonov!",
        "created_at": "2026-10-04T12:00:00Z",
        "author_name": "Študent"
      }
    ]
  },
  {
    "id": "3364",
    "name": "Pr&#39;picopeku",
    "address": "Ljubljana, 1000 Ljubljana",
    "city": "Ljubljana",
    "latitude": 46.065,
    "longitude": 14.535,
    "subsidy_price": 3.95,
    "opening_hours": "Pon - Pet: 10:00 - 20:00",
    "avg_rating": 4.4,
    "review_count": 14,
    "daily_menu": {
      "id": "m-3364",
      "location_id": "3364",
      "menu_date": "2026-10-04",
      "dishes": [
        "Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko",
        "Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha",
        "Meni 3: Testenine v paradižnikovi omaki z baziliko, solata"
      ]
    },
    "reviews": [
      {
        "id": "r-3364",
        "location_id": "3364",
        "rating": 5,
        "comment": "Zelo dobra ponudba študentskih bonov!",
        "created_at": "2026-10-04T12:00:00Z",
        "author_name": "Študent"
      }
    ]
  },
  {
    "id": "2651",
    "name": "Q TABOR",
    "address": "Ljubljana, 1000 Ljubljana",
    "city": "Ljubljana",
    "latitude": 46.078,
    "longitude": 14.512,
    "subsidy_price": 4.1,
    "opening_hours": "Pon - Pet: 10:00 - 20:00",
    "avg_rating": 4.1,
    "review_count": 21,
    "daily_menu": {
      "id": "m-2651",
      "location_id": "2651",
      "menu_date": "2026-10-04",
      "dishes": [
        "Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko",
        "Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha",
        "Meni 3: Testenine v paradižnikovi omaki z baziliko, solata"
      ]
    },
    "reviews": [
      {
        "id": "r-2651",
        "location_id": "2651",
        "rating": 5,
        "comment": "Zelo dobra ponudba študentskih bonov!",
        "created_at": "2026-10-04T12:00:00Z",
        "author_name": "Študent"
      }
    ]
  },
  {
    "id": "3344",
    "name": "Restavracija &amp; pub GOLD PUB",
    "address": "Ljubljana, 1000 Ljubljana",
    "city": "Ljubljana",
    "latitude": 46.051,
    "longitude": 14.529,
    "subsidy_price": 4.25,
    "opening_hours": "Pon - Pet: 10:00 - 20:00",
    "avg_rating": 4.4,
    "review_count": 34,
    "daily_menu": {
      "id": "m-3344",
      "location_id": "3344",
      "menu_date": "2026-10-04",
      "dishes": [
        "Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko",
        "Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha",
        "Meni 3: Testenine v paradižnikovi omaki z baziliko, solata"
      ]
    },
    "reviews": [
      {
        "id": "r-3344",
        "location_id": "3344",
        "rating": 5,
        "comment": "Zelo dobra ponudba študentskih bonov!",
        "created_at": "2026-10-04T12:00:00Z",
        "author_name": "Študent"
      }
    ]
  },
  {
    "id": "2187",
    "name": "Restavracija 123 DSU",
    "address": "Ljubljana, 1000 Ljubljana",
    "city": "Ljubljana",
    "latitude": 46.064,
    "longitude": 14.506,
    "subsidy_price": 4.4,
    "opening_hours": "Pon - Pet: 10:00 - 20:00",
    "avg_rating": 4.7,
    "review_count": 37,
    "daily_menu": {
      "id": "m-2187",
      "location_id": "2187",
      "menu_date": "2026-10-04",
      "dishes": [
        "Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko",
        "Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha",
        "Meni 3: Testenine v paradižnikovi omaki z baziliko, solata"
      ]
    },
    "reviews": [
      {
        "id": "r-2187",
        "location_id": "2187",
        "rating": 5,
        "comment": "Zelo dobra ponudba študentskih bonov!",
        "created_at": "2026-10-04T12:00:00Z",
        "author_name": "Študent"
      }
    ]
  },
  {
    "id": "2528",
    "name": "Restavracija 123 Mega center 2",
    "address": "Ljubljana, 1000 Ljubljana",
    "city": "Ljubljana",
    "latitude": 46.077,
    "longitude": 14.523,
    "subsidy_price": 4.55,
    "opening_hours": "Pon - Pet: 10:00 - 20:00",
    "avg_rating": 4.8,
    "review_count": 18,
    "daily_menu": {
      "id": "m-2528",
      "location_id": "2528",
      "menu_date": "2026-10-04",
      "dishes": [
        "Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko",
        "Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha",
        "Meni 3: Testenine v paradižnikovi omaki z baziliko, solata"
      ]
    },
    "reviews": [
      {
        "id": "r-2528",
        "location_id": "2528",
        "rating": 5,
        "comment": "Zelo dobra ponudba študentskih bonov!",
        "created_at": "2026-10-04T12:00:00Z",
        "author_name": "Študent"
      }
    ]
  },
  {
    "id": "3339",
    "name": "Restavracija 123 Pristan Koper",
    "address": "Koper, 6000 Koper",
    "city": "Koper",
    "latitude": 45.54,
    "longitude": 13.73,
    "subsidy_price": 3.5,
    "opening_hours": "Pon - Pet: 10:00 - 20:00",
    "avg_rating": 4.9,
    "review_count": 29,
    "daily_menu": {
      "id": "m-3339",
      "location_id": "3339",
      "menu_date": "2026-10-04",
      "dishes": [
        "Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko",
        "Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha",
        "Meni 3: Testenine v paradižnikovi omaki z baziliko, solata"
      ]
    },
    "reviews": [
      {
        "id": "r-3339",
        "location_id": "3339",
        "rating": 5,
        "comment": "Zelo dobra ponudba študentskih bonov!",
        "created_at": "2026-10-04T12:00:00Z",
        "author_name": "Študent"
      }
    ]
  },
  {
    "id": "2164",
    "name": "Restavracija Allegria",
    "address": "Ljubljana, 1000 Ljubljana",
    "city": "Ljubljana",
    "latitude": 46.063,
    "longitude": 14.517,
    "subsidy_price": 3.65,
    "opening_hours": "Pon - Pet: 10:00 - 20:00",
    "avg_rating": 4.4,
    "review_count": 14,
    "daily_menu": {
      "id": "m-2164",
      "location_id": "2164",
      "menu_date": "2026-10-04",
      "dishes": [
        "Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko",
        "Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha",
        "Meni 3: Testenine v paradižnikovi omaki z baziliko, solata"
      ]
    },
    "reviews": [
      {
        "id": "r-2164",
        "location_id": "2164",
        "rating": 5,
        "comment": "Zelo dobra ponudba študentskih bonov!",
        "created_at": "2026-10-04T12:00:00Z",
        "author_name": "Študent"
      }
    ]
  },
  {
    "id": "2501",
    "name": "Restavracija Ancora",
    "address": "Ljubljana, 1000 Ljubljana",
    "city": "Ljubljana",
    "latitude": 46.076,
    "longitude": 14.534,
    "subsidy_price": 3.8,
    "opening_hours": "Pon - Pet: 10:00 - 20:00",
    "avg_rating": 4.1,
    "review_count": 31,
    "daily_menu": {
      "id": "m-2501",
      "location_id": "2501",
      "menu_date": "2026-10-04",
      "dishes": [
        "Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko",
        "Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha",
        "Meni 3: Testenine v paradižnikovi omaki z baziliko, solata"
      ]
    },
    "reviews": [
      {
        "id": "r-2501",
        "location_id": "2501",
        "rating": 5,
        "comment": "Zelo dobra ponudba študentskih bonov!",
        "created_at": "2026-10-04T12:00:00Z",
        "author_name": "Študent"
      }
    ]
  },
  {
    "id": "2703",
    "name": "Restavracija Azija",
    "address": "Ljubljana, 1000 Ljubljana",
    "city": "Ljubljana",
    "latitude": 46.089,
    "longitude": 14.511,
    "subsidy_price": 3.95,
    "opening_hours": "Pon - Pet: 10:00 - 20:00",
    "avg_rating": 4.3,
    "review_count": 33,
    "daily_menu": {
      "id": "m-2703",
      "location_id": "2703",
      "menu_date": "2026-10-04",
      "dishes": [
        "Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko",
        "Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha",
        "Meni 3: Testenine v paradižnikovi omaki z baziliko, solata"
      ]
    },
    "reviews": [
      {
        "id": "r-2703",
        "location_id": "2703",
        "rating": 5,
        "comment": "Zelo dobra ponudba študentskih bonov!",
        "created_at": "2026-10-04T12:00:00Z",
        "author_name": "Študent"
      }
    ]
  },
  {
    "id": "2527",
    "name": "Restavracija Brejk",
    "address": "Ljubljana, 1000 Ljubljana",
    "city": "Ljubljana",
    "latitude": 46.062,
    "longitude": 14.528,
    "subsidy_price": 4.1,
    "opening_hours": "Pon - Pet: 10:00 - 20:00",
    "avg_rating": 4.7,
    "review_count": 17,
    "daily_menu": {
      "id": "m-2527",
      "location_id": "2527",
      "menu_date": "2026-10-04",
      "dishes": [
        "Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko",
        "Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha",
        "Meni 3: Testenine v paradižnikovi omaki z baziliko, solata"
      ]
    },
    "reviews": [
      {
        "id": "r-2527",
        "location_id": "2527",
        "rating": 5,
        "comment": "Zelo dobra ponudba študentskih bonov!",
        "created_at": "2026-10-04T12:00:00Z",
        "author_name": "Študent"
      }
    ]
  },
  {
    "id": "2234",
    "name": "Restavracija Eat Smart 1",
    "address": "Ljubljana, 1000 Ljubljana",
    "city": "Ljubljana",
    "latitude": 46.075,
    "longitude": 14.505,
    "subsidy_price": 4.25,
    "opening_hours": "Pon - Pet: 10:00 - 20:00",
    "avg_rating": 4.4,
    "review_count": 44,
    "daily_menu": {
      "id": "m-2234",
      "location_id": "2234",
      "menu_date": "2026-10-04",
      "dishes": [
        "Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko",
        "Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha",
        "Meni 3: Testenine v paradižnikovi omaki z baziliko, solata"
      ]
    },
    "reviews": [
      {
        "id": "r-2234",
        "location_id": "2234",
        "rating": 5,
        "comment": "Zelo dobra ponudba študentskih bonov!",
        "created_at": "2026-10-04T12:00:00Z",
        "author_name": "Študent"
      }
    ]
  },
  {
    "id": "3232",
    "name": "Restavracija Eat Smart 2",
    "address": "Ljubljana, 1000 Ljubljana",
    "city": "Ljubljana",
    "latitude": 46.088,
    "longitude": 14.522,
    "subsidy_price": 4.4,
    "opening_hours": "Pon - Pet: 10:00 - 20:00",
    "avg_rating": 4.2,
    "review_count": 42,
    "daily_menu": {
      "id": "m-3232",
      "location_id": "3232",
      "menu_date": "2026-10-04",
      "dishes": [
        "Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko",
        "Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha",
        "Meni 3: Testenine v paradižnikovi omaki z baziliko, solata"
      ]
    },
    "reviews": [
      {
        "id": "r-3232",
        "location_id": "3232",
        "rating": 5,
        "comment": "Zelo dobra ponudba študentskih bonov!",
        "created_at": "2026-10-04T12:00:00Z",
        "author_name": "Študent"
      }
    ]
  },
  {
    "id": "1827",
    "name": "Restavracija Fany &amp; Mary",
    "address": "Ljubljana, 1000 Ljubljana",
    "city": "Ljubljana",
    "latitude": 46.061,
    "longitude": 14.539,
    "subsidy_price": 4.55,
    "opening_hours": "Pon - Pet: 10:00 - 20:00",
    "avg_rating": 4.7,
    "review_count": 37,
    "daily_menu": {
      "id": "m-1827",
      "location_id": "1827",
      "menu_date": "2026-10-04",
      "dishes": [
        "Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko",
        "Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha",
        "Meni 3: Testenine v paradižnikovi omaki z baziliko, solata"
      ]
    },
    "reviews": [
      {
        "id": "r-1827",
        "location_id": "1827",
        "rating": 5,
        "comment": "Zelo dobra ponudba študentskih bonov!",
        "created_at": "2026-10-04T12:00:00Z",
        "author_name": "Študent"
      }
    ]
  },
  {
    "id": "2097",
    "name": "Restavracija Fresco",
    "address": "Ljubljana, 1000 Ljubljana",
    "city": "Ljubljana",
    "latitude": 46.074,
    "longitude": 14.516,
    "subsidy_price": 3.5,
    "opening_hours": "Pon - Pet: 10:00 - 20:00",
    "avg_rating": 4.7,
    "review_count": 27,
    "daily_menu": {
      "id": "m-2097",
      "location_id": "2097",
      "menu_date": "2026-10-04",
      "dishes": [
        "Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko",
        "Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha",
        "Meni 3: Testenine v paradižnikovi omaki z baziliko, solata"
      ]
    },
    "reviews": [
      {
        "id": "r-2097",
        "location_id": "2097",
        "rating": 5,
        "comment": "Zelo dobra ponudba študentskih bonov!",
        "created_at": "2026-10-04T12:00:00Z",
        "author_name": "Študent"
      }
    ]
  },
  {
    "id": "3134",
    "name": "Restavracija FS, Fakulteta za strojništvo",
    "address": "Ljubljana, 1000 Ljubljana",
    "city": "Ljubljana",
    "latitude": 46.087,
    "longitude": 14.533,
    "subsidy_price": 3.65,
    "opening_hours": "Pon - Pet: 10:00 - 20:00",
    "avg_rating": 4.4,
    "review_count": 24,
    "daily_menu": {
      "id": "m-3134",
      "location_id": "3134",
      "menu_date": "2026-10-04",
      "dishes": [
        "Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko",
        "Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha",
        "Meni 3: Testenine v paradižnikovi omaki z baziliko, solata"
      ]
    },
    "reviews": [
      {
        "id": "r-3134",
        "location_id": "3134",
        "rating": 5,
        "comment": "Zelo dobra ponudba študentskih bonov!",
        "created_at": "2026-10-04T12:00:00Z",
        "author_name": "Študent"
      }
    ]
  },
  {
    "id": "3036",
    "name": "Restavracija in maloprodaja Hermine Wech - Koroška perutnina",
    "address": "Ljubljana, 1000 Ljubljana",
    "city": "Ljubljana",
    "latitude": 46.06,
    "longitude": 14.51,
    "subsidy_price": 3.8,
    "opening_hours": "Pon - Pet: 10:00 - 20:00",
    "avg_rating": 4.6,
    "review_count": 46,
    "daily_menu": {
      "id": "m-3036",
      "location_id": "3036",
      "menu_date": "2026-10-04",
      "dishes": [
        "Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko",
        "Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha",
        "Meni 3: Testenine v paradižnikovi omaki z baziliko, solata"
      ]
    },
    "reviews": [
      {
        "id": "r-3036",
        "location_id": "3036",
        "rating": 5,
        "comment": "Zelo dobra ponudba študentskih bonov!",
        "created_at": "2026-10-04T12:00:00Z",
        "author_name": "Študent"
      }
    ]
  },
  {
    "id": "3038",
    "name": "Restavracija in maloprodaja Hermine Wech - Koroška perutnina",
    "address": "Ljubljana, 1000 Ljubljana",
    "city": "Ljubljana",
    "latitude": 46.073,
    "longitude": 14.527,
    "subsidy_price": 3.95,
    "opening_hours": "Pon - Pet: 10:00 - 20:00",
    "avg_rating": 4.8,
    "review_count": 48,
    "daily_menu": {
      "id": "m-3038",
      "location_id": "3038",
      "menu_date": "2026-10-04",
      "dishes": [
        "Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko",
        "Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha",
        "Meni 3: Testenine v paradižnikovi omaki z baziliko, solata"
      ]
    },
    "reviews": [
      {
        "id": "r-3038",
        "location_id": "3038",
        "rating": 5,
        "comment": "Zelo dobra ponudba študentskih bonov!",
        "created_at": "2026-10-04T12:00:00Z",
        "author_name": "Študent"
      }
    ]
  },
  {
    "id": "2343",
    "name": "Restavracija in pivnica Zvezda",
    "address": "Ljubljana, 1000 Ljubljana",
    "city": "Ljubljana",
    "latitude": 46.086,
    "longitude": 14.504,
    "subsidy_price": 4.1,
    "opening_hours": "Pon - Pet: 10:00 - 20:00",
    "avg_rating": 4.3,
    "review_count": 33,
    "daily_menu": {
      "id": "m-2343",
      "location_id": "2343",
      "menu_date": "2026-10-04",
      "dishes": [
        "Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko",
        "Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha",
        "Meni 3: Testenine v paradižnikovi omaki z baziliko, solata"
      ]
    },
    "reviews": [
      {
        "id": "r-2343",
        "location_id": "2343",
        "rating": 5,
        "comment": "Zelo dobra ponudba študentskih bonov!",
        "created_at": "2026-10-04T12:00:00Z",
        "author_name": "Študent"
      }
    ]
  },
  {
    "id": "3389",
    "name": "Restavracija in prenočišča ČARDA",
    "address": "Ljubljana, 1000 Ljubljana",
    "city": "Ljubljana",
    "latitude": 46.059,
    "longitude": 14.521,
    "subsidy_price": 4.25,
    "opening_hours": "Pon - Pet: 10:00 - 20:00",
    "avg_rating": 4.9,
    "review_count": 39,
    "daily_menu": {
      "id": "m-3389",
      "location_id": "3389",
      "menu_date": "2026-10-04",
      "dishes": [
        "Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko",
        "Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha",
        "Meni 3: Testenine v paradižnikovi omaki z baziliko, solata"
      ]
    },
    "reviews": [
      {
        "id": "r-3389",
        "location_id": "3389",
        "rating": 5,
        "comment": "Zelo dobra ponudba študentskih bonov!",
        "created_at": "2026-10-04T12:00:00Z",
        "author_name": "Študent"
      }
    ]
  },
  {
    "id": "1195",
    "name": "Restavracija Interspar Celje",
    "address": "Celje, 3000 Celje",
    "city": "Celje",
    "latitude": 46.248,
    "longitude": 15.262,
    "subsidy_price": 4.4,
    "opening_hours": "Pon - Pet: 10:00 - 20:00",
    "avg_rating": 4.5,
    "review_count": 45,
    "daily_menu": {
      "id": "m-1195",
      "location_id": "1195",
      "menu_date": "2026-10-04",
      "dishes": [
        "Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko",
        "Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha",
        "Meni 3: Testenine v paradižnikovi omaki z baziliko, solata"
      ]
    },
    "reviews": [
      {
        "id": "r-1195",
        "location_id": "1195",
        "rating": 5,
        "comment": "Zelo dobra ponudba študentskih bonov!",
        "created_at": "2026-10-04T12:00:00Z",
        "author_name": "Študent"
      }
    ]
  },
  {
    "id": "1369",
    "name": "Restavracija Interspar Citypark",
    "address": "Ljubljana, 1000 Ljubljana",
    "city": "Ljubljana",
    "latitude": 46.085,
    "longitude": 14.515,
    "subsidy_price": 4.55,
    "opening_hours": "Pon - Pet: 10:00 - 20:00",
    "avg_rating": 4.9,
    "review_count": 19,
    "daily_menu": {
      "id": "m-1369",
      "location_id": "1369",
      "menu_date": "2026-10-04",
      "dishes": [
        "Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko",
        "Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha",
        "Meni 3: Testenine v paradižnikovi omaki z baziliko, solata"
      ]
    },
    "reviews": [
      {
        "id": "r-1369",
        "location_id": "1369",
        "rating": 5,
        "comment": "Zelo dobra ponudba študentskih bonov!",
        "created_at": "2026-10-04T12:00:00Z",
        "author_name": "Študent"
      }
    ]
  },
  {
    "id": "1023",
    "name": "Restavracija Interspar Koper",
    "address": "Koper, 6000 Koper",
    "city": "Koper",
    "latitude": 45.556,
    "longitude": 13.738,
    "subsidy_price": 3.5,
    "opening_hours": "Pon - Pet: 10:00 - 20:00",
    "avg_rating": 4.3,
    "review_count": 33,
    "daily_menu": {
      "id": "m-1023",
      "location_id": "1023",
      "menu_date": "2026-10-04",
      "dishes": [
        "Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko",
        "Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha",
        "Meni 3: Testenine v paradižnikovi omaki z baziliko, solata"
      ]
    },
    "reviews": [
      {
        "id": "r-1023",
        "location_id": "1023",
        "rating": 5,
        "comment": "Zelo dobra ponudba študentskih bonov!",
        "created_at": "2026-10-04T12:00:00Z",
        "author_name": "Študent"
      }
    ]
  },
  {
    "id": "1198",
    "name": "Restavracija Interspar Kranj",
    "address": "Kranj, 4000 Kranj",
    "city": "Kranj",
    "latitude": 46.249,
    "longitude": 14.357,
    "subsidy_price": 3.65,
    "opening_hours": "Pon - Pet: 10:00 - 20:00",
    "avg_rating": 4.8,
    "review_count": 48,
    "daily_menu": {
      "id": "m-1198",
      "location_id": "1198",
      "menu_date": "2026-10-04",
      "dishes": [
        "Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko",
        "Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha",
        "Meni 3: Testenine v paradižnikovi omaki z baziliko, solata"
      ]
    },
    "reviews": [
      {
        "id": "r-1198",
        "location_id": "1198",
        "rating": 5,
        "comment": "Zelo dobra ponudba študentskih bonov!",
        "created_at": "2026-10-04T12:00:00Z",
        "author_name": "Študent"
      }
    ]
  },
  {
    "id": "1194",
    "name": "Restavracija Interspar Maribor Europark",
    "address": "Maribor, 2000 Maribor",
    "city": "Maribor",
    "latitude": 46.568,
    "longitude": 15.652,
    "subsidy_price": 3.8,
    "opening_hours": "Pon - Pet: 10:00 - 20:00",
    "avg_rating": 4.4,
    "review_count": 44,
    "daily_menu": {
      "id": "m-1194",
      "location_id": "1194",
      "menu_date": "2026-10-04",
      "dishes": [
        "Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko",
        "Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha",
        "Meni 3: Testenine v paradižnikovi omaki z baziliko, solata"
      ]
    },
    "reviews": [
      {
        "id": "r-1194",
        "location_id": "1194",
        "rating": 5,
        "comment": "Zelo dobra ponudba študentskih bonov!",
        "created_at": "2026-10-04T12:00:00Z",
        "author_name": "Študent"
      }
    ]
  },
  {
    "id": "1197",
    "name": "Restavracija Interspar Maribor2 Supernova Qlandia",
    "address": "Maribor, 2000 Maribor",
    "city": "Maribor",
    "latitude": 46.579,
    "longitude": 15.641,
    "subsidy_price": 3.95,
    "opening_hours": "Pon - Pet: 10:00 - 20:00",
    "avg_rating": 4.7,
    "review_count": 47,
    "daily_menu": {
      "id": "m-1197",
      "location_id": "1197",
      "menu_date": "2026-10-04",
      "dishes": [
        "Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko",
        "Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha",
        "Meni 3: Testenine v paradižnikovi omaki z baziliko, solata"
      ]
    },
    "reviews": [
      {
        "id": "r-1197",
        "location_id": "1197",
        "rating": 5,
        "comment": "Zelo dobra ponudba študentskih bonov!",
        "created_at": "2026-10-04T12:00:00Z",
        "author_name": "Študent"
      }
    ]
  },
  {
    "id": "1025",
    "name": "Restavracija Interspar Nova Gorica",
    "address": "Ljubljana, 1000 Ljubljana",
    "city": "Ljubljana",
    "latitude": 46.07,
    "longitude": 14.52,
    "subsidy_price": 4.1,
    "opening_hours": "Pon - Pet: 10:00 - 20:00",
    "avg_rating": 4.5,
    "review_count": 35,
    "daily_menu": {
      "id": "m-1025",
      "location_id": "1025",
      "menu_date": "2026-10-04",
      "dishes": [
        "Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko",
        "Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha",
        "Meni 3: Testenine v paradižnikovi omaki z baziliko, solata"
      ]
    },
    "reviews": [
      {
        "id": "r-1025",
        "location_id": "1025",
        "rating": 5,
        "comment": "Zelo dobra ponudba študentskih bonov!",
        "created_at": "2026-10-04T12:00:00Z",
        "author_name": "Študent"
      }
    ]
  },
  {
    "id": "1370",
    "name": "Restavracija Interspar Vič",
    "address": "Ljubljana, 1000 Ljubljana",
    "city": "Ljubljana",
    "latitude": 46.083,
    "longitude": 14.537,
    "subsidy_price": 4.25,
    "opening_hours": "Pon - Pet: 10:00 - 20:00",
    "avg_rating": 4.0,
    "review_count": 20,
    "daily_menu": {
      "id": "m-1370",
      "location_id": "1370",
      "menu_date": "2026-10-04",
      "dishes": [
        "Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko",
        "Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha",
        "Meni 3: Testenine v paradižnikovi omaki z baziliko, solata"
      ]
    },
    "reviews": [
      {
        "id": "r-1370",
        "location_id": "1370",
        "rating": 5,
        "comment": "Zelo dobra ponudba študentskih bonov!",
        "created_at": "2026-10-04T12:00:00Z",
        "author_name": "Študent"
      }
    ]
  },
  {
    "id": "2040",
    "name": "Restavracija Kitajska palača",
    "address": "Ljubljana, 1000 Ljubljana",
    "city": "Ljubljana",
    "latitude": 46.056,
    "longitude": 14.514,
    "subsidy_price": 4.4,
    "opening_hours": "Pon - Pet: 10:00 - 20:00",
    "avg_rating": 4.0,
    "review_count": 10,
    "daily_menu": {
      "id": "m-2040",
      "location_id": "2040",
      "menu_date": "2026-10-04",
      "dishes": [
        "Meni 1: Hrustljavi piščanec v sladko-kisli omaki, pražen riž, zelenjavna juha",
        "Meni 2: Praženi rezanci z zelenjavo in tofujem, solata",
        "Meni 3: Pekinška raca z rižem, pomladni zavitki"
      ]
    },
    "reviews": [
      {
        "id": "r-2040",
        "location_id": "2040",
        "rating": 5,
        "comment": "Zelo dobra ponudba študentskih bonov!",
        "created_at": "2026-10-04T12:00:00Z",
        "author_name": "Študent"
      }
    ]
  },
  {
    "id": "2775",
    "name": "Restavracija Kitajska palača - DOSTAVA",
    "address": "Ljubljana, 1000 Ljubljana",
    "city": "Ljubljana",
    "latitude": 46.069,
    "longitude": 14.531,
    "subsidy_price": 4.55,
    "opening_hours": "Pon - Pet: 10:00 - 20:00",
    "avg_rating": 4.5,
    "review_count": 25,
    "daily_menu": {
      "id": "m-2775",
      "location_id": "2775",
      "menu_date": "2026-10-04",
      "dishes": [
        "Meni 1: Hrustljavi piščanec v sladko-kisli omaki, pražen riž, zelenjavna juha",
        "Meni 2: Praženi rezanci z zelenjavo in tofujem, solata",
        "Meni 3: Pekinška raca z rižem, pomladni zavitki"
      ]
    },
    "reviews": [
      {
        "id": "r-2775",
        "location_id": "2775",
        "rating": 5,
        "comment": "Zelo dobra ponudba študentskih bonov!",
        "created_at": "2026-10-04T12:00:00Z",
        "author_name": "Študent"
      }
    ]
  },
  {
    "id": "1768",
    "name": "Restavracija klub Cankarjevega doma",
    "address": "Ljubljana, 1000 Ljubljana",
    "city": "Ljubljana",
    "latitude": 46.082,
    "longitude": 14.508,
    "subsidy_price": 3.5,
    "opening_hours": "Pon - Pet: 10:00 - 20:00",
    "avg_rating": 4.8,
    "review_count": 18,
    "daily_menu": {
      "id": "m-1768",
      "location_id": "1768",
      "menu_date": "2026-10-04",
      "dishes": [
        "Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko",
        "Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha",
        "Meni 3: Testenine v paradižnikovi omaki z baziliko, solata"
      ]
    },
    "reviews": [
      {
        "id": "r-1768",
        "location_id": "1768",
        "rating": 5,
        "comment": "Zelo dobra ponudba študentskih bonov!",
        "created_at": "2026-10-04T12:00:00Z",
        "author_name": "Študent"
      }
    ]
  },
  {
    "id": "1263",
    "name": "Restavracija Kolodvorska",
    "address": "Ljubljana, 1000 Ljubljana",
    "city": "Ljubljana",
    "latitude": 46.055,
    "longitude": 14.525,
    "subsidy_price": 3.65,
    "opening_hours": "Pon - Pet: 10:00 - 20:00",
    "avg_rating": 4.3,
    "review_count": 33,
    "daily_menu": {
      "id": "m-1263",
      "location_id": "1263",
      "menu_date": "2026-10-04",
      "dishes": [
        "Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko",
        "Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha",
        "Meni 3: Testenine v paradižnikovi omaki z baziliko, solata"
      ]
    },
    "reviews": [
      {
        "id": "r-1263",
        "location_id": "1263",
        "rating": 5,
        "comment": "Zelo dobra ponudba študentskih bonov!",
        "created_at": "2026-10-04T12:00:00Z",
        "author_name": "Študent"
      }
    ]
  },
  {
    "id": "3096",
    "name": "Restavracija Kompliment",
    "address": "Ljubljana, 1000 Ljubljana",
    "city": "Ljubljana",
    "latitude": 46.068,
    "longitude": 14.502,
    "subsidy_price": 3.8,
    "opening_hours": "Pon - Pet: 10:00 - 20:00",
    "avg_rating": 4.6,
    "review_count": 26,
    "daily_menu": {
      "id": "m-3096",
      "location_id": "3096",
      "menu_date": "2026-10-04",
      "dishes": [
        "Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko",
        "Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha",
        "Meni 3: Testenine v paradižnikovi omaki z baziliko, solata"
      ]
    },
    "reviews": [
      {
        "id": "r-3096",
        "location_id": "3096",
        "rating": 5,
        "comment": "Zelo dobra ponudba študentskih bonov!",
        "created_at": "2026-10-04T12:00:00Z",
        "author_name": "Študent"
      }
    ]
  },
  {
    "id": "1713",
    "name": "Restavracija Letališka",
    "address": "Ljubljana, 1000 Ljubljana",
    "city": "Ljubljana",
    "latitude": 46.081,
    "longitude": 14.519,
    "subsidy_price": 3.95,
    "opening_hours": "Pon - Pet: 10:00 - 20:00",
    "avg_rating": 4.3,
    "review_count": 43,
    "daily_menu": {
      "id": "m-1713",
      "location_id": "1713",
      "menu_date": "2026-10-04",
      "dishes": [
        "Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko",
        "Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha",
        "Meni 3: Testenine v paradižnikovi omaki z baziliko, solata"
      ]
    },
    "reviews": [
      {
        "id": "r-1713",
        "location_id": "1713",
        "rating": 5,
        "comment": "Zelo dobra ponudba študentskih bonov!",
        "created_at": "2026-10-04T12:00:00Z",
        "author_name": "Študent"
      }
    ]
  },
  {
    "id": "2085",
    "name": "Restavracija Mango",
    "address": "Ljubljana, 1000 Ljubljana",
    "city": "Ljubljana",
    "latitude": 46.054,
    "longitude": 14.536,
    "subsidy_price": 4.1,
    "opening_hours": "Pon - Pet: 10:00 - 20:00",
    "avg_rating": 4.5,
    "review_count": 15,
    "daily_menu": {
      "id": "m-2085",
      "location_id": "2085",
      "menu_date": "2026-10-04",
      "dishes": [
        "Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko",
        "Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha",
        "Meni 3: Testenine v paradižnikovi omaki z baziliko, solata"
      ]
    },
    "reviews": [
      {
        "id": "r-2085",
        "location_id": "2085",
        "rating": 5,
        "comment": "Zelo dobra ponudba študentskih bonov!",
        "created_at": "2026-10-04T12:00:00Z",
        "author_name": "Študent"
      }
    ]
  },
  {
    "id": "2649",
    "name": "Restavracija McDonalds - Citycenter Celje",
    "address": "Celje, 3000 Celje",
    "city": "Celje",
    "latitude": 46.233,
    "longitude": 15.277,
    "subsidy_price": 4.25,
    "opening_hours": "Pon - Pet: 10:00 - 20:00",
    "avg_rating": 4.9,
    "review_count": 19,
    "daily_menu": {
      "id": "m-2649",
      "location_id": "2649",
      "menu_date": "2026-10-04",
      "dishes": [
        "Meni 1: Big Mac + mali krompirček + mešana solata + sadje",
        "Meni 2: McChicken + mali krompirček + mešana solata",
        "Meni 3: McNuggets (6 kosov) + omaka + krompirček + solata"
      ]
    },
    "reviews": [
      {
        "id": "r-2649",
        "location_id": "2649",
        "rating": 5,
        "comment": "Zelo dobra ponudba študentskih bonov!",
        "created_at": "2026-10-04T12:00:00Z",
        "author_name": "Študent"
      }
    ]
  },
  {
    "id": "2759",
    "name": "Restavracija McDonalds - Ptuj",
    "address": "Ljubljana, 1000 Ljubljana",
    "city": "Ljubljana",
    "latitude": 46.08,
    "longitude": 14.53,
    "subsidy_price": 4.4,
    "opening_hours": "Pon - Pet: 10:00 - 20:00",
    "avg_rating": 4.9,
    "review_count": 49,
    "daily_menu": {
      "id": "m-2759",
      "location_id": "2759",
      "menu_date": "2026-10-04",
      "dishes": [
        "Meni 1: Big Mac + mali krompirček + mešana solata + sadje",
        "Meni 2: McChicken + mali krompirček + mešana solata",
        "Meni 3: McNuggets (6 kosov) + omaka + krompirček + solata"
      ]
    },
    "reviews": [
      {
        "id": "r-2759",
        "location_id": "2759",
        "rating": 5,
        "comment": "Zelo dobra ponudba študentskih bonov!",
        "created_at": "2026-10-04T12:00:00Z",
        "author_name": "Študent"
      }
    ]
  },
  {
    "id": "3144",
    "name": "Restavracija Mensana",
    "address": "Ljubljana, 1000 Ljubljana",
    "city": "Ljubljana",
    "latitude": 46.053,
    "longitude": 14.507,
    "subsidy_price": 4.55,
    "opening_hours": "Pon - Pet: 10:00 - 20:00",
    "avg_rating": 4.4,
    "review_count": 34,
    "daily_menu": {
      "id": "m-3144",
      "location_id": "3144",
      "menu_date": "2026-10-04",
      "dishes": [
        "Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko",
        "Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha",
        "Meni 3: Testenine v paradižnikovi omaki z baziliko, solata"
      ]
    },
    "reviews": [
      {
        "id": "r-3144",
        "location_id": "3144",
        "rating": 5,
        "comment": "Zelo dobra ponudba študentskih bonov!",
        "created_at": "2026-10-04T12:00:00Z",
        "author_name": "Študent"
      }
    ]
  },
  {
    "id": "3236",
    "name": "Restavracija Menza IJS",
    "address": "Ljubljana, 1000 Ljubljana",
    "city": "Ljubljana",
    "latitude": 46.066,
    "longitude": 14.524,
    "subsidy_price": 3.5,
    "opening_hours": "Pon - Pet: 10:00 - 20:00",
    "avg_rating": 4.6,
    "review_count": 46,
    "daily_menu": {
      "id": "m-3236",
      "location_id": "3236",
      "menu_date": "2026-10-04",
      "dishes": [
        "Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko",
        "Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha",
        "Meni 3: Testenine v paradižnikovi omaki z baziliko, solata"
      ]
    },
    "reviews": [
      {
        "id": "r-3236",
        "location_id": "3236",
        "rating": 5,
        "comment": "Zelo dobra ponudba študentskih bonov!",
        "created_at": "2026-10-04T12:00:00Z",
        "author_name": "Študent"
      }
    ]
  },
  {
    "id": "2721",
    "name": "Restavracija Modri kvadrat",
    "address": "Ljubljana, 1000 Ljubljana",
    "city": "Ljubljana",
    "latitude": 46.079,
    "longitude": 14.501,
    "subsidy_price": 3.65,
    "opening_hours": "Pon - Pet: 10:00 - 20:00",
    "avg_rating": 4.1,
    "review_count": 11,
    "daily_menu": {
      "id": "m-2721",
      "location_id": "2721",
      "menu_date": "2026-10-04",
      "dishes": [
        "Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko",
        "Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha",
        "Meni 3: Testenine v paradižnikovi omaki z baziliko, solata"
      ]
    },
    "reviews": [
      {
        "id": "r-2721",
        "location_id": "2721",
        "rating": 5,
        "comment": "Zelo dobra ponudba študentskih bonov!",
        "created_at": "2026-10-04T12:00:00Z",
        "author_name": "Študent"
      }
    ]
  },
  {
    "id": "1382",
    "name": "Restavracija Mozart",
    "address": "Ljubljana, 1000 Ljubljana",
    "city": "Ljubljana",
    "latitude": 46.052,
    "longitude": 14.518,
    "subsidy_price": 3.8,
    "opening_hours": "Pon - Pet: 10:00 - 20:00",
    "avg_rating": 4.2,
    "review_count": 32,
    "daily_menu": {
      "id": "m-1382",
      "location_id": "1382",
      "menu_date": "2026-10-04",
      "dishes": [
        "Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko",
        "Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha",
        "Meni 3: Testenine v paradižnikovi omaki z baziliko, solata"
      ]
    },
    "reviews": [
      {
        "id": "r-1382",
        "location_id": "1382",
        "rating": 5,
        "comment": "Zelo dobra ponudba študentskih bonov!",
        "created_at": "2026-10-04T12:00:00Z",
        "author_name": "Študent"
      }
    ]
  },
  {
    "id": "3172",
    "name": "Restavracija Mozart P.E. Ekonomska fakulteta",
    "address": "Ljubljana, 1000 Ljubljana",
    "city": "Ljubljana",
    "latitude": 46.065,
    "longitude": 14.535,
    "subsidy_price": 3.95,
    "opening_hours": "Pon - Pet: 10:00 - 20:00",
    "avg_rating": 4.2,
    "review_count": 22,
    "daily_menu": {
      "id": "m-3172",
      "location_id": "3172",
      "menu_date": "2026-10-04",
      "dishes": [
        "Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko",
        "Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha",
        "Meni 3: Testenine v paradižnikovi omaki z baziliko, solata"
      ]
    },
    "reviews": [
      {
        "id": "r-3172",
        "location_id": "3172",
        "rating": 5,
        "comment": "Zelo dobra ponudba študentskih bonov!",
        "created_at": "2026-10-04T12:00:00Z",
        "author_name": "Študent"
      }
    ]
  },
  {
    "id": "3049",
    "name": "Restavracija Mr.Falafel",
    "address": "Ljubljana, 1000 Ljubljana",
    "city": "Ljubljana",
    "latitude": 46.078,
    "longitude": 14.512,
    "subsidy_price": 4.1,
    "opening_hours": "Pon - Pet: 10:00 - 20:00",
    "avg_rating": 4.9,
    "review_count": 19,
    "daily_menu": {
      "id": "m-3049",
      "location_id": "3049",
      "menu_date": "2026-10-04",
      "dishes": [
        "Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko",
        "Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha",
        "Meni 3: Testenine v paradižnikovi omaki z baziliko, solata"
      ]
    },
    "reviews": [
      {
        "id": "r-3049",
        "location_id": "3049",
        "rating": 5,
        "comment": "Zelo dobra ponudba študentskih bonov!",
        "created_at": "2026-10-04T12:00:00Z",
        "author_name": "Študent"
      }
    ]
  },
  {
    "id": "3179",
    "name": "Restavracija OAZA Pef",
    "address": "Ljubljana, 1000 Ljubljana",
    "city": "Ljubljana",
    "latitude": 46.051,
    "longitude": 14.529,
    "subsidy_price": 4.25,
    "opening_hours": "Pon - Pet: 10:00 - 20:00",
    "avg_rating": 4.9,
    "review_count": 29,
    "daily_menu": {
      "id": "m-3179",
      "location_id": "3179",
      "menu_date": "2026-10-04",
      "dishes": [
        "Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko",
        "Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha",
        "Meni 3: Testenine v paradižnikovi omaki z baziliko, solata"
      ]
    },
    "reviews": [
      {
        "id": "r-3179",
        "location_id": "3179",
        "rating": 5,
        "comment": "Zelo dobra ponudba študentskih bonov!",
        "created_at": "2026-10-04T12:00:00Z",
        "author_name": "Študent"
      }
    ]
  },
  {
    "id": "3241",
    "name": "Restavracija Pergola",
    "address": "Ljubljana, 1000 Ljubljana",
    "city": "Ljubljana",
    "latitude": 46.064,
    "longitude": 14.506,
    "subsidy_price": 4.4,
    "opening_hours": "Pon - Pet: 10:00 - 20:00",
    "avg_rating": 4.1,
    "review_count": 11,
    "daily_menu": {
      "id": "m-3241",
      "location_id": "3241",
      "menu_date": "2026-10-04",
      "dishes": [
        "Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko",
        "Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha",
        "Meni 3: Testenine v paradižnikovi omaki z baziliko, solata"
      ]
    },
    "reviews": [
      {
        "id": "r-3241",
        "location_id": "3241",
        "rating": 5,
        "comment": "Zelo dobra ponudba študentskih bonov!",
        "created_at": "2026-10-04T12:00:00Z",
        "author_name": "Študent"
      }
    ]
  },
  {
    "id": "3240",
    "name": "Restavracija PF, Pravna fakulteta",
    "address": "Ljubljana, 1000 Ljubljana",
    "city": "Ljubljana",
    "latitude": 46.077,
    "longitude": 14.523,
    "subsidy_price": 4.55,
    "opening_hours": "Pon - Pet: 10:00 - 20:00",
    "avg_rating": 4.0,
    "review_count": 10,
    "daily_menu": {
      "id": "m-3240",
      "location_id": "3240",
      "menu_date": "2026-10-04",
      "dishes": [
        "Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko",
        "Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha",
        "Meni 3: Testenine v paradižnikovi omaki z baziliko, solata"
      ]
    },
    "reviews": [
      {
        "id": "r-3240",
        "location_id": "3240",
        "rating": 5,
        "comment": "Zelo dobra ponudba študentskih bonov!",
        "created_at": "2026-10-04T12:00:00Z",
        "author_name": "Študent"
      }
    ]
  },
  {
    "id": "3396",
    "name": "Restavracija Piano",
    "address": "Ljubljana, 1000 Ljubljana",
    "city": "Ljubljana",
    "latitude": 46.05,
    "longitude": 14.5,
    "subsidy_price": 3.5,
    "opening_hours": "Pon - Pet: 10:00 - 20:00",
    "avg_rating": 4.6,
    "review_count": 46,
    "daily_menu": {
      "id": "m-3396",
      "location_id": "3396",
      "menu_date": "2026-10-04",
      "dishes": [
        "Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko",
        "Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha",
        "Meni 3: Testenine v paradižnikovi omaki z baziliko, solata"
      ]
    },
    "reviews": [
      {
        "id": "r-3396",
        "location_id": "3396",
        "rating": 5,
        "comment": "Zelo dobra ponudba študentskih bonov!",
        "created_at": "2026-10-04T12:00:00Z",
        "author_name": "Študent"
      }
    ]
  },
  {
    "id": "3376",
    "name": "Restavracija pizza Bella Napoli",
    "address": "Ljubljana, 1000 Ljubljana",
    "city": "Ljubljana",
    "latitude": 46.063,
    "longitude": 14.517,
    "subsidy_price": 3.65,
    "opening_hours": "Pon - Pet: 10:00 - 20:00",
    "avg_rating": 4.6,
    "review_count": 26,
    "daily_menu": {
      "id": "m-3376",
      "location_id": "3376",
      "menu_date": "2026-10-04",
      "dishes": [
        "Meni 1: Pizza Margherita (pelati, mocarela, bazilika), mešana solata, sadje",
        "Meni 2: Pizza Klasika (šunka, sir, gobe), mešana solata",
        "Meni 3: Veganska pizza s pečenimi jajčevci in bučkami, solata"
      ]
    },
    "reviews": [
      {
        "id": "r-3376",
        "location_id": "3376",
        "rating": 5,
        "comment": "Zelo dobra ponudba študentskih bonov!",
        "created_at": "2026-10-04T12:00:00Z",
        "author_name": "Študent"
      }
    ]
  },
  {
    "id": "1360",
    "name": "Restavracija Plečnikov hram",
    "address": "Ljubljana, 1000 Ljubljana",
    "city": "Ljubljana",
    "latitude": 46.076,
    "longitude": 14.534,
    "subsidy_price": 3.8,
    "opening_hours": "Pon - Pet: 10:00 - 20:00",
    "avg_rating": 4.0,
    "review_count": 10,
    "daily_menu": {
      "id": "m-1360",
      "location_id": "1360",
      "menu_date": "2026-10-04",
      "dishes": [
        "Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko",
        "Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha",
        "Meni 3: Testenine v paradižnikovi omaki z baziliko, solata"
      ]
    },
    "reviews": [
      {
        "id": "r-1360",
        "location_id": "1360",
        "rating": 5,
        "comment": "Zelo dobra ponudba študentskih bonov!",
        "created_at": "2026-10-04T12:00:00Z",
        "author_name": "Študent"
      }
    ]
  },
  {
    "id": "2180",
    "name": "Restavracija Prestige catering, GZS",
    "address": "Ljubljana, 1000 Ljubljana",
    "city": "Ljubljana",
    "latitude": 46.089,
    "longitude": 14.511,
    "subsidy_price": 3.95,
    "opening_hours": "Pon - Pet: 10:00 - 20:00",
    "avg_rating": 4.0,
    "review_count": 30,
    "daily_menu": {
      "id": "m-2180",
      "location_id": "2180",
      "menu_date": "2026-10-04",
      "dishes": [
        "Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko",
        "Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha",
        "Meni 3: Testenine v paradižnikovi omaki z baziliko, solata"
      ]
    },
    "reviews": [
      {
        "id": "r-2180",
        "location_id": "2180",
        "rating": 5,
        "comment": "Zelo dobra ponudba študentskih bonov!",
        "created_at": "2026-10-04T12:00:00Z",
        "author_name": "Študent"
      }
    ]
  },
  {
    "id": "1321",
    "name": "Restavracija Rdeče jabolko",
    "address": "Ljubljana, 1000 Ljubljana",
    "city": "Ljubljana",
    "latitude": 46.062,
    "longitude": 14.528,
    "subsidy_price": 4.1,
    "opening_hours": "Pon - Pet: 10:00 - 20:00",
    "avg_rating": 4.1,
    "review_count": 11,
    "daily_menu": {
      "id": "m-1321",
      "location_id": "1321",
      "menu_date": "2026-10-04",
      "dishes": [
        "Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko",
        "Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha",
        "Meni 3: Testenine v paradižnikovi omaki z baziliko, solata"
      ]
    },
    "reviews": [
      {
        "id": "r-1321",
        "location_id": "1321",
        "rating": 5,
        "comment": "Zelo dobra ponudba študentskih bonov!",
        "created_at": "2026-10-04T12:00:00Z",
        "author_name": "Študent"
      }
    ]
  },
  {
    "id": "2884",
    "name": "Restavracija sarajevskih jedi Valter Jesenice",
    "address": "Kranj, 4000 Kranj",
    "city": "Kranj",
    "latitude": 46.245,
    "longitude": 14.365,
    "subsidy_price": 4.25,
    "opening_hours": "Pon - Pet: 10:00 - 20:00",
    "avg_rating": 4.4,
    "review_count": 14,
    "daily_menu": {
      "id": "m-2884",
      "location_id": "2884",
      "menu_date": "2026-10-04",
      "dishes": [
        "Meni 1: Veliki čevapčiči (10x), vroča lepinja, čebula, zeljnata solata, jabolko",
        "Meni 2: Srednji čevapi s kajmakom in lepinjo, solata",
        "Meni 3: Telečja čorba z domačim kruhom, jabolko"
      ]
    },
    "reviews": [
      {
        "id": "r-2884",
        "location_id": "2884",
        "rating": 5,
        "comment": "Zelo dobra ponudba študentskih bonov!",
        "created_at": "2026-10-04T12:00:00Z",
        "author_name": "Študent"
      }
    ]
  },
  {
    "id": "1298",
    "name": "Restavracija Splošne bolnišnice Novo mesto",
    "address": "Novo mesto, 8000 Novo mesto",
    "city": "Novo mesto",
    "latitude": 45.81,
    "longitude": 15.176,
    "subsidy_price": 4.4,
    "opening_hours": "Pon - Pet: 10:00 - 20:00",
    "avg_rating": 4.8,
    "review_count": 28,
    "daily_menu": {
      "id": "m-1298",
      "location_id": "1298",
      "menu_date": "2026-10-04",
      "dishes": [
        "Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko",
        "Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha",
        "Meni 3: Testenine v paradižnikovi omaki z baziliko, solata"
      ]
    },
    "reviews": [
      {
        "id": "r-1298",
        "location_id": "1298",
        "rating": 5,
        "comment": "Zelo dobra ponudba študentskih bonov!",
        "created_at": "2026-10-04T12:00:00Z",
        "author_name": "Študent"
      }
    ]
  },
  {
    "id": "3156",
    "name": "Restavracija Vrtnica",
    "address": "Ljubljana, 1000 Ljubljana",
    "city": "Ljubljana",
    "latitude": 46.061,
    "longitude": 14.539,
    "subsidy_price": 4.55,
    "opening_hours": "Pon - Pet: 10:00 - 20:00",
    "avg_rating": 4.6,
    "review_count": 46,
    "daily_menu": {
      "id": "m-3156",
      "location_id": "3156",
      "menu_date": "2026-10-04",
      "dishes": [
        "Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko",
        "Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha",
        "Meni 3: Testenine v paradižnikovi omaki z baziliko, solata"
      ]
    },
    "reviews": [
      {
        "id": "r-3156",
        "location_id": "3156",
        "rating": 5,
        "comment": "Zelo dobra ponudba študentskih bonov!",
        "created_at": "2026-10-04T12:00:00Z",
        "author_name": "Študent"
      }
    ]
  },
  {
    "id": "3324",
    "name": "Restavracija Zadružnik Kozje",
    "address": "Ljubljana, 1000 Ljubljana",
    "city": "Ljubljana",
    "latitude": 46.074,
    "longitude": 14.516,
    "subsidy_price": 3.5,
    "opening_hours": "Pon - Pet: 10:00 - 20:00",
    "avg_rating": 4.4,
    "review_count": 14,
    "daily_menu": {
      "id": "m-3324",
      "location_id": "3324",
      "menu_date": "2026-10-04",
      "dishes": [
        "Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko",
        "Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha",
        "Meni 3: Testenine v paradižnikovi omaki z baziliko, solata"
      ]
    },
    "reviews": [
      {
        "id": "r-3324",
        "location_id": "3324",
        "rating": 5,
        "comment": "Zelo dobra ponudba študentskih bonov!",
        "created_at": "2026-10-04T12:00:00Z",
        "author_name": "Študent"
      }
    ]
  },
  {
    "id": "3323",
    "name": "Restavracija Zadružnik Šmarje",
    "address": "Ljubljana, 1000 Ljubljana",
    "city": "Ljubljana",
    "latitude": 46.087,
    "longitude": 14.533,
    "subsidy_price": 3.65,
    "opening_hours": "Pon - Pet: 10:00 - 20:00",
    "avg_rating": 4.3,
    "review_count": 13,
    "daily_menu": {
      "id": "m-3323",
      "location_id": "3323",
      "menu_date": "2026-10-04",
      "dishes": [
        "Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko",
        "Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha",
        "Meni 3: Testenine v paradižnikovi omaki z baziliko, solata"
      ]
    },
    "reviews": [
      {
        "id": "r-3323",
        "location_id": "3323",
        "rating": 5,
        "comment": "Zelo dobra ponudba študentskih bonov!",
        "created_at": "2026-10-04T12:00:00Z",
        "author_name": "Študent"
      }
    ]
  },
  {
    "id": "3336",
    "name": "Restavracija Zeleni Park",
    "address": "Ljubljana, 1000 Ljubljana",
    "city": "Ljubljana",
    "latitude": 46.06,
    "longitude": 14.51,
    "subsidy_price": 3.8,
    "opening_hours": "Pon - Pet: 10:00 - 20:00",
    "avg_rating": 4.6,
    "review_count": 26,
    "daily_menu": {
      "id": "m-3336",
      "location_id": "3336",
      "menu_date": "2026-10-04",
      "dishes": [
        "Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko",
        "Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha",
        "Meni 3: Testenine v paradižnikovi omaki z baziliko, solata"
      ]
    },
    "reviews": [
      {
        "id": "r-3336",
        "location_id": "3336",
        "rating": 5,
        "comment": "Zelo dobra ponudba študentskih bonov!",
        "created_at": "2026-10-04T12:00:00Z",
        "author_name": "Študent"
      }
    ]
  },
  {
    "id": "2698",
    "name": "Restavracija Zlata sreča",
    "address": "Ljubljana, 1000 Ljubljana",
    "city": "Ljubljana",
    "latitude": 46.073,
    "longitude": 14.527,
    "subsidy_price": 3.95,
    "opening_hours": "Pon - Pet: 10:00 - 20:00",
    "avg_rating": 4.8,
    "review_count": 28,
    "daily_menu": {
      "id": "m-2698",
      "location_id": "2698",
      "menu_date": "2026-10-04",
      "dishes": [
        "Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko",
        "Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha",
        "Meni 3: Testenine v paradižnikovi omaki z baziliko, solata"
      ]
    },
    "reviews": [
      {
        "id": "r-2698",
        "location_id": "2698",
        "rating": 5,
        "comment": "Zelo dobra ponudba študentskih bonov!",
        "created_at": "2026-10-04T12:00:00Z",
        "author_name": "Študent"
      }
    ]
  },
  {
    "id": "3289",
    "name": "Rex",
    "address": "Ljubljana, 1000 Ljubljana",
    "city": "Ljubljana",
    "latitude": 46.086,
    "longitude": 14.504,
    "subsidy_price": 4.1,
    "opening_hours": "Pon - Pet: 10:00 - 20:00",
    "avg_rating": 4.9,
    "review_count": 19,
    "daily_menu": {
      "id": "m-3289",
      "location_id": "3289",
      "menu_date": "2026-10-04",
      "dishes": [
        "Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko",
        "Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha",
        "Meni 3: Testenine v paradižnikovi omaki z baziliko, solata"
      ]
    },
    "reviews": [
      {
        "id": "r-3289",
        "location_id": "3289",
        "rating": 5,
        "comment": "Zelo dobra ponudba študentskih bonov!",
        "created_at": "2026-10-04T12:00:00Z",
        "author_name": "Študent"
      }
    ]
  },
  {
    "id": "3220",
    "name": "RIKŠA CURRY&amp;WOK",
    "address": "Ljubljana, 1000 Ljubljana",
    "city": "Ljubljana",
    "latitude": 46.059,
    "longitude": 14.521,
    "subsidy_price": 4.25,
    "opening_hours": "Pon - Pet: 10:00 - 20:00",
    "avg_rating": 4.0,
    "review_count": 30,
    "daily_menu": {
      "id": "m-3220",
      "location_id": "3220",
      "menu_date": "2026-10-04",
      "dishes": [
        "Meni 1: Hrustljavi piščanec v sladko-kisli omaki, pražen riž, zelenjavna juha",
        "Meni 2: Praženi rezanci z zelenjavo in tofujem, solata",
        "Meni 3: Pekinška raca z rižem, pomladni zavitki"
      ]
    },
    "reviews": [
      {
        "id": "r-3220",
        "location_id": "3220",
        "rating": 5,
        "comment": "Zelo dobra ponudba študentskih bonov!",
        "created_at": "2026-10-04T12:00:00Z",
        "author_name": "Študent"
      }
    ]
  },
  {
    "id": "2739",
    "name": "Roza slon",
    "address": "Ljubljana, 1000 Ljubljana",
    "city": "Ljubljana",
    "latitude": 46.072,
    "longitude": 14.538,
    "subsidy_price": 4.4,
    "opening_hours": "Pon - Pet: 10:00 - 20:00",
    "avg_rating": 4.9,
    "review_count": 29,
    "daily_menu": {
      "id": "m-2739",
      "location_id": "2739",
      "menu_date": "2026-10-04",
      "dishes": [
        "Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko",
        "Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha",
        "Meni 3: Testenine v paradižnikovi omaki z baziliko, solata"
      ]
    },
    "reviews": [
      {
        "id": "r-2739",
        "location_id": "2739",
        "rating": 5,
        "comment": "Zelo dobra ponudba študentskih bonov!",
        "created_at": "2026-10-04T12:00:00Z",
        "author_name": "Študent"
      }
    ]
  },
  {
    "id": "2859",
    "name": "Roza slon Bežigrad",
    "address": "Ljubljana, 1000 Ljubljana",
    "city": "Ljubljana",
    "latitude": 46.085,
    "longitude": 14.515,
    "subsidy_price": 4.55,
    "opening_hours": "Pon - Pet: 10:00 - 20:00",
    "avg_rating": 4.9,
    "review_count": 29,
    "daily_menu": {
      "id": "m-2859",
      "location_id": "2859",
      "menu_date": "2026-10-04",
      "dishes": [
        "Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko",
        "Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha",
        "Meni 3: Testenine v paradižnikovi omaki z baziliko, solata"
      ]
    },
    "reviews": [
      {
        "id": "r-2859",
        "location_id": "2859",
        "rating": 5,
        "comment": "Zelo dobra ponudba študentskih bonov!",
        "created_at": "2026-10-04T12:00:00Z",
        "author_name": "Študent"
      }
    ]
  },
  {
    "id": "3225",
    "name": "Roza slon BTC",
    "address": "Ljubljana, 1000 Ljubljana",
    "city": "Ljubljana",
    "latitude": 46.058,
    "longitude": 14.532,
    "subsidy_price": 3.5,
    "opening_hours": "Pon - Pet: 10:00 - 20:00",
    "avg_rating": 4.5,
    "review_count": 35,
    "daily_menu": {
      "id": "m-3225",
      "location_id": "3225",
      "menu_date": "2026-10-04",
      "dishes": [
        "Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko",
        "Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha",
        "Meni 3: Testenine v paradižnikovi omaki z baziliko, solata"
      ]
    },
    "reviews": [
      {
        "id": "r-3225",
        "location_id": "3225",
        "rating": 5,
        "comment": "Zelo dobra ponudba študentskih bonov!",
        "created_at": "2026-10-04T12:00:00Z",
        "author_name": "Študent"
      }
    ]
  },
  {
    "id": "3224",
    "name": "Roza slon Vič",
    "address": "Ljubljana, 1000 Ljubljana",
    "city": "Ljubljana",
    "latitude": 46.071,
    "longitude": 14.509,
    "subsidy_price": 3.65,
    "opening_hours": "Pon - Pet: 10:00 - 20:00",
    "avg_rating": 4.4,
    "review_count": 34,
    "daily_menu": {
      "id": "m-3224",
      "location_id": "3224",
      "menu_date": "2026-10-04",
      "dishes": [
        "Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko",
        "Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha",
        "Meni 3: Testenine v paradižnikovi omaki z baziliko, solata"
      ]
    },
    "reviews": [
      {
        "id": "r-3224",
        "location_id": "3224",
        "rating": 5,
        "comment": "Zelo dobra ponudba študentskih bonov!",
        "created_at": "2026-10-04T12:00:00Z",
        "author_name": "Študent"
      }
    ]
  },
  {
    "id": "3072",
    "name": "Ruby food",
    "address": "Ljubljana, 1000 Ljubljana",
    "city": "Ljubljana",
    "latitude": 46.084,
    "longitude": 14.526,
    "subsidy_price": 3.8,
    "opening_hours": "Pon - Pet: 10:00 - 20:00",
    "avg_rating": 4.2,
    "review_count": 42,
    "daily_menu": {
      "id": "m-3072",
      "location_id": "3072",
      "menu_date": "2026-10-04",
      "dishes": [
        "Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko",
        "Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha",
        "Meni 3: Testenine v paradižnikovi omaki z baziliko, solata"
      ]
    },
    "reviews": [
      {
        "id": "r-3072",
        "location_id": "3072",
        "rating": 5,
        "comment": "Zelo dobra ponudba študentskih bonov!",
        "created_at": "2026-10-04T12:00:00Z",
        "author_name": "Študent"
      }
    ]
  },
  {
    "id": "2781",
    "name": "Samopostrežna restavracija Stolpič",
    "address": "Ljubljana, 1000 Ljubljana",
    "city": "Ljubljana",
    "latitude": 46.057,
    "longitude": 14.503,
    "subsidy_price": 3.95,
    "opening_hours": "Pon - Pet: 10:00 - 20:00",
    "avg_rating": 4.1,
    "review_count": 31,
    "daily_menu": {
      "id": "m-2781",
      "location_id": "2781",
      "menu_date": "2026-10-04",
      "dishes": [
        "Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko",
        "Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha",
        "Meni 3: Testenine v paradižnikovi omaki z baziliko, solata"
      ]
    },
    "reviews": [
      {
        "id": "r-2781",
        "location_id": "2781",
        "rating": 5,
        "comment": "Zelo dobra ponudba študentskih bonov!",
        "created_at": "2026-10-04T12:00:00Z",
        "author_name": "Študent"
      }
    ]
  },
  {
    "id": "3340",
    "name": "SB Nova Gorica",
    "address": "Ljubljana, 1000 Ljubljana",
    "city": "Ljubljana",
    "latitude": 46.07,
    "longitude": 14.52,
    "subsidy_price": 4.1,
    "opening_hours": "Pon - Pet: 10:00 - 20:00",
    "avg_rating": 4.0,
    "review_count": 30,
    "daily_menu": {
      "id": "m-3340",
      "location_id": "3340",
      "menu_date": "2026-10-04",
      "dishes": [
        "Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko",
        "Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha",
        "Meni 3: Testenine v paradižnikovi omaki z baziliko, solata"
      ]
    },
    "reviews": [
      {
        "id": "r-3340",
        "location_id": "3340",
        "rating": 5,
        "comment": "Zelo dobra ponudba študentskih bonov!",
        "created_at": "2026-10-04T12:00:00Z",
        "author_name": "Študent"
      }
    ]
  },
  {
    "id": "3365",
    "name": "Shaolin",
    "address": "Ljubljana, 1000 Ljubljana",
    "city": "Ljubljana",
    "latitude": 46.083,
    "longitude": 14.537,
    "subsidy_price": 4.25,
    "opening_hours": "Pon - Pet: 10:00 - 20:00",
    "avg_rating": 4.5,
    "review_count": 15,
    "daily_menu": {
      "id": "m-3365",
      "location_id": "3365",
      "menu_date": "2026-10-04",
      "dishes": [
        "Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko",
        "Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha",
        "Meni 3: Testenine v paradižnikovi omaki z baziliko, solata"
      ]
    },
    "reviews": [
      {
        "id": "r-3365",
        "location_id": "3365",
        "rating": 5,
        "comment": "Zelo dobra ponudba študentskih bonov!",
        "created_at": "2026-10-04T12:00:00Z",
        "author_name": "Študent"
      }
    ]
  },
  {
    "id": "1367",
    "name": "Skriti kot - mestna gostilna",
    "address": "Ljubljana, 1000 Ljubljana",
    "city": "Ljubljana",
    "latitude": 46.056,
    "longitude": 14.514,
    "subsidy_price": 4.4,
    "opening_hours": "Pon - Pet: 10:00 - 20:00",
    "avg_rating": 4.7,
    "review_count": 17,
    "daily_menu": {
      "id": "m-1367",
      "location_id": "1367",
      "menu_date": "2026-10-04",
      "dishes": [
        "Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko",
        "Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha",
        "Meni 3: Testenine v paradižnikovi omaki z baziliko, solata"
      ]
    },
    "reviews": [
      {
        "id": "r-1367",
        "location_id": "1367",
        "rating": 5,
        "comment": "Zelo dobra ponudba študentskih bonov!",
        "created_at": "2026-10-04T12:00:00Z",
        "author_name": "Študent"
      }
    ]
  },
  {
    "id": "3069",
    "name": "Splošna bolnišnica Brežice",
    "address": "Ljubljana, 1000 Ljubljana",
    "city": "Ljubljana",
    "latitude": 46.069,
    "longitude": 14.531,
    "subsidy_price": 4.55,
    "opening_hours": "Pon - Pet: 10:00 - 20:00",
    "avg_rating": 4.9,
    "review_count": 39,
    "daily_menu": {
      "id": "m-3069",
      "location_id": "3069",
      "menu_date": "2026-10-04",
      "dishes": [
        "Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko",
        "Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha",
        "Meni 3: Testenine v paradižnikovi omaki z baziliko, solata"
      ]
    },
    "reviews": [
      {
        "id": "r-3069",
        "location_id": "3069",
        "rating": 5,
        "comment": "Zelo dobra ponudba študentskih bonov!",
        "created_at": "2026-10-04T12:00:00Z",
        "author_name": "Študent"
      }
    ]
  },
  {
    "id": "2641",
    "name": "Splošna bolnišnica Izola",
    "address": "Koper, 6000 Koper",
    "city": "Koper",
    "latitude": 45.544,
    "longitude": 13.742,
    "subsidy_price": 3.5,
    "opening_hours": "Pon - Pet: 10:00 - 20:00",
    "avg_rating": 4.1,
    "review_count": 11,
    "daily_menu": {
      "id": "m-2641",
      "location_id": "2641",
      "menu_date": "2026-10-04",
      "dishes": [
        "Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko",
        "Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha",
        "Meni 3: Testenine v paradižnikovi omaki z baziliko, solata"
      ]
    },
    "reviews": [
      {
        "id": "r-2641",
        "location_id": "2641",
        "rating": 5,
        "comment": "Zelo dobra ponudba študentskih bonov!",
        "created_at": "2026-10-04T12:00:00Z",
        "author_name": "Študent"
      }
    ]
  },
  {
    "id": "2263",
    "name": "Srednja šola Izola - Scuola media Isola",
    "address": "Koper, 6000 Koper",
    "city": "Koper",
    "latitude": 45.555,
    "longitude": 13.735,
    "subsidy_price": 3.65,
    "opening_hours": "Pon - Pet: 10:00 - 20:00",
    "avg_rating": 4.3,
    "review_count": 33,
    "daily_menu": {
      "id": "m-2263",
      "location_id": "2263",
      "menu_date": "2026-10-04",
      "dishes": [
        "Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko",
        "Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha",
        "Meni 3: Testenine v paradižnikovi omaki z baziliko, solata"
      ]
    },
    "reviews": [
      {
        "id": "r-2263",
        "location_id": "2263",
        "rating": 5,
        "comment": "Zelo dobra ponudba študentskih bonov!",
        "created_at": "2026-10-04T12:00:00Z",
        "author_name": "Študent"
      }
    ]
  },
  {
    "id": "2569",
    "name": "Stari Grill",
    "address": "Ljubljana, 1000 Ljubljana",
    "city": "Ljubljana",
    "latitude": 46.068,
    "longitude": 14.502,
    "subsidy_price": 3.8,
    "opening_hours": "Pon - Pet: 10:00 - 20:00",
    "avg_rating": 4.9,
    "review_count": 19,
    "daily_menu": {
      "id": "m-2569",
      "location_id": "2569",
      "menu_date": "2026-10-04",
      "dishes": [
        "Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko",
        "Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha",
        "Meni 3: Testenine v paradižnikovi omaki z baziliko, solata"
      ]
    },
    "reviews": [
      {
        "id": "r-2569",
        "location_id": "2569",
        "rating": 5,
        "comment": "Zelo dobra ponudba študentskih bonov!",
        "created_at": "2026-10-04T12:00:00Z",
        "author_name": "Študent"
      }
    ]
  },
  {
    "id": "3265",
    "name": "Subway - Bavarc",
    "address": "Ljubljana, 1000 Ljubljana",
    "city": "Ljubljana",
    "latitude": 46.081,
    "longitude": 14.519,
    "subsidy_price": 3.95,
    "opening_hours": "Pon - Pet: 10:00 - 20:00",
    "avg_rating": 4.5,
    "review_count": 35,
    "daily_menu": {
      "id": "m-3265",
      "location_id": "3265",
      "menu_date": "2026-10-04",
      "dishes": [
        "Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko",
        "Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha",
        "Meni 3: Testenine v paradižnikovi omaki z baziliko, solata"
      ]
    },
    "reviews": [
      {
        "id": "r-3265",
        "location_id": "3265",
        "rating": 5,
        "comment": "Zelo dobra ponudba študentskih bonov!",
        "created_at": "2026-10-04T12:00:00Z",
        "author_name": "Študent"
      }
    ]
  },
  {
    "id": "2714",
    "name": "Subway - Center",
    "address": "Ljubljana, 1000 Ljubljana",
    "city": "Ljubljana",
    "latitude": 46.054,
    "longitude": 14.536,
    "subsidy_price": 4.1,
    "opening_hours": "Pon - Pet: 10:00 - 20:00",
    "avg_rating": 4.4,
    "review_count": 44,
    "daily_menu": {
      "id": "m-2714",
      "location_id": "2714",
      "menu_date": "2026-10-04",
      "dishes": [
        "Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko",
        "Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha",
        "Meni 3: Testenine v paradižnikovi omaki z baziliko, solata"
      ]
    },
    "reviews": [
      {
        "id": "r-2714",
        "location_id": "2714",
        "rating": 5,
        "comment": "Zelo dobra ponudba študentskih bonov!",
        "created_at": "2026-10-04T12:00:00Z",
        "author_name": "Študent"
      }
    ]
  },
  {
    "id": "2389",
    "name": "Subway Bežigrad",
    "address": "Ljubljana, 1000 Ljubljana",
    "city": "Ljubljana",
    "latitude": 46.067,
    "longitude": 14.513,
    "subsidy_price": 4.25,
    "opening_hours": "Pon - Pet: 10:00 - 20:00",
    "avg_rating": 4.9,
    "review_count": 39,
    "daily_menu": {
      "id": "m-2389",
      "location_id": "2389",
      "menu_date": "2026-10-04",
      "dishes": [
        "Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko",
        "Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha",
        "Meni 3: Testenine v paradižnikovi omaki z baziliko, solata"
      ]
    },
    "reviews": [
      {
        "id": "r-2389",
        "location_id": "2389",
        "rating": 5,
        "comment": "Zelo dobra ponudba študentskih bonov!",
        "created_at": "2026-10-04T12:00:00Z",
        "author_name": "Študent"
      }
    ]
  },
  {
    "id": "2988",
    "name": "Subway BTC",
    "address": "Ljubljana, 1000 Ljubljana",
    "city": "Ljubljana",
    "latitude": 46.08,
    "longitude": 14.53,
    "subsidy_price": 4.4,
    "opening_hours": "Pon - Pet: 10:00 - 20:00",
    "avg_rating": 4.8,
    "review_count": 38,
    "daily_menu": {
      "id": "m-2988",
      "location_id": "2988",
      "menu_date": "2026-10-04",
      "dishes": [
        "Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko",
        "Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha",
        "Meni 3: Testenine v paradižnikovi omaki z baziliko, solata"
      ]
    },
    "reviews": [
      {
        "id": "r-2988",
        "location_id": "2988",
        "rating": 5,
        "comment": "Zelo dobra ponudba študentskih bonov!",
        "created_at": "2026-10-04T12:00:00Z",
        "author_name": "Študent"
      }
    ]
  },
  {
    "id": "3374",
    "name": "SUBWAY KOPER",
    "address": "Koper, 6000 Koper",
    "city": "Koper",
    "latitude": 45.541,
    "longitude": 13.733,
    "subsidy_price": 4.55,
    "opening_hours": "Pon - Pet: 10:00 - 20:00",
    "avg_rating": 4.4,
    "review_count": 24,
    "daily_menu": {
      "id": "m-3374",
      "location_id": "3374",
      "menu_date": "2026-10-04",
      "dishes": [
        "Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko",
        "Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha",
        "Meni 3: Testenine v paradižnikovi omaki z baziliko, solata"
      ]
    },
    "reviews": [
      {
        "id": "r-3374",
        "location_id": "3374",
        "rating": 5,
        "comment": "Zelo dobra ponudba študentskih bonov!",
        "created_at": "2026-10-04T12:00:00Z",
        "author_name": "Študent"
      }
    ]
  },
  {
    "id": "3363",
    "name": "Šavirma",
    "address": "Ljubljana, 1000 Ljubljana",
    "city": "Ljubljana",
    "latitude": 46.066,
    "longitude": 14.524,
    "subsidy_price": 3.5,
    "opening_hours": "Pon - Pet: 10:00 - 20:00",
    "avg_rating": 4.3,
    "review_count": 13,
    "daily_menu": {
      "id": "m-3363",
      "location_id": "3363",
      "menu_date": "2026-10-04",
      "dishes": [
        "Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko",
        "Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha",
        "Meni 3: Testenine v paradižnikovi omaki z baziliko, solata"
      ]
    },
    "reviews": [
      {
        "id": "r-3363",
        "location_id": "3363",
        "rating": 5,
        "comment": "Zelo dobra ponudba študentskih bonov!",
        "created_at": "2026-10-04T12:00:00Z",
        "author_name": "Študent"
      }
    ]
  },
  {
    "id": "2092",
    "name": "Šeherezada",
    "address": "Ljubljana, 1000 Ljubljana",
    "city": "Ljubljana",
    "latitude": 46.079,
    "longitude": 14.501,
    "subsidy_price": 3.65,
    "opening_hours": "Pon - Pet: 10:00 - 20:00",
    "avg_rating": 4.2,
    "review_count": 22,
    "daily_menu": {
      "id": "m-2092",
      "location_id": "2092",
      "menu_date": "2026-10-04",
      "dishes": [
        "Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko",
        "Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha",
        "Meni 3: Testenine v paradižnikovi omaki z baziliko, solata"
      ]
    },
    "reviews": [
      {
        "id": "r-2092",
        "location_id": "2092",
        "rating": 5,
        "comment": "Zelo dobra ponudba študentskih bonov!",
        "created_at": "2026-10-04T12:00:00Z",
        "author_name": "Študent"
      }
    ]
  },
  {
    "id": "3159",
    "name": "Šeherezada 2",
    "address": "Ljubljana, 1000 Ljubljana",
    "city": "Ljubljana",
    "latitude": 46.052,
    "longitude": 14.518,
    "subsidy_price": 3.8,
    "opening_hours": "Pon - Pet: 10:00 - 20:00",
    "avg_rating": 4.9,
    "review_count": 49,
    "daily_menu": {
      "id": "m-3159",
      "location_id": "3159",
      "menu_date": "2026-10-04",
      "dishes": [
        "Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko",
        "Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha",
        "Meni 3: Testenine v paradižnikovi omaki z baziliko, solata"
      ]
    },
    "reviews": [
      {
        "id": "r-3159",
        "location_id": "3159",
        "rating": 5,
        "comment": "Zelo dobra ponudba študentskih bonov!",
        "created_at": "2026-10-04T12:00:00Z",
        "author_name": "Študent"
      }
    ]
  },
  {
    "id": "1841",
    "name": "ŠENDTVIČ",
    "address": "Ljubljana, 1000 Ljubljana",
    "city": "Ljubljana",
    "latitude": 46.065,
    "longitude": 14.535,
    "subsidy_price": 3.95,
    "opening_hours": "Pon - Pet: 10:00 - 20:00",
    "avg_rating": 4.1,
    "review_count": 11,
    "daily_menu": {
      "id": "m-1841",
      "location_id": "1841",
      "menu_date": "2026-10-04",
      "dishes": [
        "Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko",
        "Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha",
        "Meni 3: Testenine v paradižnikovi omaki z baziliko, solata"
      ]
    },
    "reviews": [
      {
        "id": "r-1841",
        "location_id": "1841",
        "rating": 5,
        "comment": "Zelo dobra ponudba študentskih bonov!",
        "created_at": "2026-10-04T12:00:00Z",
        "author_name": "Študent"
      }
    ]
  },
  {
    "id": "3329",
    "name": "Šiš okrepčevalnica",
    "address": "Ljubljana, 1000 Ljubljana",
    "city": "Ljubljana",
    "latitude": 46.078,
    "longitude": 14.512,
    "subsidy_price": 4.1,
    "opening_hours": "Pon - Pet: 10:00 - 20:00",
    "avg_rating": 4.9,
    "review_count": 19,
    "daily_menu": {
      "id": "m-3329",
      "location_id": "3329",
      "menu_date": "2026-10-04",
      "dishes": [
        "Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko",
        "Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha",
        "Meni 3: Testenine v paradižnikovi omaki z baziliko, solata"
      ]
    },
    "reviews": [
      {
        "id": "r-3329",
        "location_id": "3329",
        "rating": 5,
        "comment": "Zelo dobra ponudba študentskih bonov!",
        "created_at": "2026-10-04T12:00:00Z",
        "author_name": "Študent"
      }
    ]
  },
  {
    "id": "2523",
    "name": "Športni bar SLOVAN",
    "address": "Ljubljana, 1000 Ljubljana",
    "city": "Ljubljana",
    "latitude": 46.051,
    "longitude": 14.529,
    "subsidy_price": 4.25,
    "opening_hours": "Pon - Pet: 10:00 - 20:00",
    "avg_rating": 4.3,
    "review_count": 13,
    "daily_menu": {
      "id": "m-2523",
      "location_id": "2523",
      "menu_date": "2026-10-04",
      "dishes": [
        "Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko",
        "Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha",
        "Meni 3: Testenine v paradižnikovi omaki z baziliko, solata"
      ]
    },
    "reviews": [
      {
        "id": "r-2523",
        "location_id": "2523",
        "rating": 5,
        "comment": "Zelo dobra ponudba študentskih bonov!",
        "created_at": "2026-10-04T12:00:00Z",
        "author_name": "Študent"
      }
    ]
  },
  {
    "id": "2213",
    "name": "Študentski dom Ljubljana - Restavracija",
    "address": "Ljubljana, 1000 Ljubljana",
    "city": "Ljubljana",
    "latitude": 46.064,
    "longitude": 14.506,
    "subsidy_price": 4.4,
    "opening_hours": "Pon - Pet: 10:00 - 20:00",
    "avg_rating": 4.3,
    "review_count": 23,
    "daily_menu": {
      "id": "m-2213",
      "location_id": "2213",
      "menu_date": "2026-10-04",
      "dishes": [
        "Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko",
        "Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha",
        "Meni 3: Testenine v paradižnikovi omaki z baziliko, solata"
      ]
    },
    "reviews": [
      {
        "id": "r-2213",
        "location_id": "2213",
        "rating": 5,
        "comment": "Zelo dobra ponudba študentskih bonov!",
        "created_at": "2026-10-04T12:00:00Z",
        "author_name": "Študent"
      }
    ]
  },
  {
    "id": "3202",
    "name": "Taverna Palermo",
    "address": "Ljubljana, 1000 Ljubljana",
    "city": "Ljubljana",
    "latitude": 46.077,
    "longitude": 14.523,
    "subsidy_price": 4.55,
    "opening_hours": "Pon - Pet: 10:00 - 20:00",
    "avg_rating": 4.2,
    "review_count": 12,
    "daily_menu": {
      "id": "m-3202",
      "location_id": "3202",
      "menu_date": "2026-10-04",
      "dishes": [
        "Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko",
        "Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha",
        "Meni 3: Testenine v paradižnikovi omaki z baziliko, solata"
      ]
    },
    "reviews": [
      {
        "id": "r-3202",
        "location_id": "3202",
        "rating": 5,
        "comment": "Zelo dobra ponudba študentskih bonov!",
        "created_at": "2026-10-04T12:00:00Z",
        "author_name": "Študent"
      }
    ]
  },
  {
    "id": "3203",
    "name": "Taverna Palermo - DOSTAVA",
    "address": "Ljubljana, 1000 Ljubljana",
    "city": "Ljubljana",
    "latitude": 46.05,
    "longitude": 14.5,
    "subsidy_price": 3.5,
    "opening_hours": "Pon - Pet: 10:00 - 20:00",
    "avg_rating": 4.3,
    "review_count": 13,
    "daily_menu": {
      "id": "m-3203",
      "location_id": "3203",
      "menu_date": "2026-10-04",
      "dishes": [
        "Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko",
        "Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha",
        "Meni 3: Testenine v paradižnikovi omaki z baziliko, solata"
      ]
    },
    "reviews": [
      {
        "id": "r-3203",
        "location_id": "3203",
        "rating": 5,
        "comment": "Zelo dobra ponudba študentskih bonov!",
        "created_at": "2026-10-04T12:00:00Z",
        "author_name": "Študent"
      }
    ]
  },
  {
    "id": "3288",
    "name": "The Place",
    "address": "Ljubljana, 1000 Ljubljana",
    "city": "Ljubljana",
    "latitude": 46.063,
    "longitude": 14.517,
    "subsidy_price": 3.65,
    "opening_hours": "Pon - Pet: 10:00 - 20:00",
    "avg_rating": 4.8,
    "review_count": 18,
    "daily_menu": {
      "id": "m-3288",
      "location_id": "3288",
      "menu_date": "2026-10-04",
      "dishes": [
        "Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko",
        "Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha",
        "Meni 3: Testenine v paradižnikovi omaki z baziliko, solata"
      ]
    },
    "reviews": [
      {
        "id": "r-3288",
        "location_id": "3288",
        "rating": 5,
        "comment": "Zelo dobra ponudba študentskih bonov!",
        "created_at": "2026-10-04T12:00:00Z",
        "author_name": "Študent"
      }
    ]
  },
  {
    "id": "3380",
    "name": "Top Pizza",
    "address": "Ljubljana, 1000 Ljubljana",
    "city": "Ljubljana",
    "latitude": 46.076,
    "longitude": 14.534,
    "subsidy_price": 3.8,
    "opening_hours": "Pon - Pet: 10:00 - 20:00",
    "avg_rating": 4.0,
    "review_count": 30,
    "daily_menu": {
      "id": "m-3380",
      "location_id": "3380",
      "menu_date": "2026-10-04",
      "dishes": [
        "Meni 1: Pizza Margherita (pelati, mocarela, bazilika), mešana solata, sadje",
        "Meni 2: Pizza Klasika (šunka, sir, gobe), mešana solata",
        "Meni 3: Veganska pizza s pečenimi jajčevci in bučkami, solata"
      ]
    },
    "reviews": [
      {
        "id": "r-3380",
        "location_id": "3380",
        "rating": 5,
        "comment": "Zelo dobra ponudba študentskih bonov!",
        "created_at": "2026-10-04T12:00:00Z",
        "author_name": "Študent"
      }
    ]
  },
  {
    "id": "3253",
    "name": "Tvoj Chef Restavracija",
    "address": "Ljubljana, 1000 Ljubljana",
    "city": "Ljubljana",
    "latitude": 46.089,
    "longitude": 14.511,
    "subsidy_price": 3.95,
    "opening_hours": "Pon - Pet: 10:00 - 20:00",
    "avg_rating": 4.3,
    "review_count": 23,
    "daily_menu": {
      "id": "m-3253",
      "location_id": "3253",
      "menu_date": "2026-10-04",
      "dishes": [
        "Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko",
        "Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha",
        "Meni 3: Testenine v paradižnikovi omaki z baziliko, solata"
      ]
    },
    "reviews": [
      {
        "id": "r-3253",
        "location_id": "3253",
        "rating": 5,
        "comment": "Zelo dobra ponudba študentskih bonov!",
        "created_at": "2026-10-04T12:00:00Z",
        "author_name": "Študent"
      }
    ]
  },
  {
    "id": "3398",
    "name": "U Sushi",
    "address": "Ljubljana, 1000 Ljubljana",
    "city": "Ljubljana",
    "latitude": 46.062,
    "longitude": 14.528,
    "subsidy_price": 4.1,
    "opening_hours": "Pon - Pet: 10:00 - 20:00",
    "avg_rating": 4.8,
    "review_count": 48,
    "daily_menu": {
      "id": "m-3398",
      "location_id": "3398",
      "menu_date": "2026-10-04",
      "dishes": [
        "Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko",
        "Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha",
        "Meni 3: Testenine v paradižnikovi omaki z baziliko, solata"
      ]
    },
    "reviews": [
      {
        "id": "r-3398",
        "location_id": "3398",
        "rating": 5,
        "comment": "Zelo dobra ponudba študentskih bonov!",
        "created_at": "2026-10-04T12:00:00Z",
        "author_name": "Študent"
      }
    ]
  },
  {
    "id": "1262",
    "name": "UFO",
    "address": "Ljubljana, 1000 Ljubljana",
    "city": "Ljubljana",
    "latitude": 46.075,
    "longitude": 14.505,
    "subsidy_price": 4.25,
    "opening_hours": "Pon - Pet: 10:00 - 20:00",
    "avg_rating": 4.2,
    "review_count": 32,
    "daily_menu": {
      "id": "m-1262",
      "location_id": "1262",
      "menu_date": "2026-10-04",
      "dishes": [
        "Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko",
        "Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha",
        "Meni 3: Testenine v paradižnikovi omaki z baziliko, solata"
      ]
    },
    "reviews": [
      {
        "id": "r-1262",
        "location_id": "1262",
        "rating": 5,
        "comment": "Zelo dobra ponudba študentskih bonov!",
        "created_at": "2026-10-04T12:00:00Z",
        "author_name": "Študent"
      }
    ]
  },
  {
    "id": "3328",
    "name": "URNEBES URBAN GRILL",
    "address": "Ljubljana, 1000 Ljubljana",
    "city": "Ljubljana",
    "latitude": 46.088,
    "longitude": 14.522,
    "subsidy_price": 4.4,
    "opening_hours": "Pon - Pet: 10:00 - 20:00",
    "avg_rating": 4.8,
    "review_count": 18,
    "daily_menu": {
      "id": "m-3328",
      "location_id": "3328",
      "menu_date": "2026-10-04",
      "dishes": [
        "Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko",
        "Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha",
        "Meni 3: Testenine v paradižnikovi omaki z baziliko, solata"
      ]
    },
    "reviews": [
      {
        "id": "r-3328",
        "location_id": "3328",
        "rating": 5,
        "comment": "Zelo dobra ponudba študentskih bonov!",
        "created_at": "2026-10-04T12:00:00Z",
        "author_name": "Študent"
      }
    ]
  },
  {
    "id": "3226",
    "name": "Uršin bistro",
    "address": "Ljubljana, 1000 Ljubljana",
    "city": "Ljubljana",
    "latitude": 46.061,
    "longitude": 14.539,
    "subsidy_price": 4.55,
    "opening_hours": "Pon - Pet: 10:00 - 20:00",
    "avg_rating": 4.6,
    "review_count": 36,
    "daily_menu": {
      "id": "m-3226",
      "location_id": "3226",
      "menu_date": "2026-10-04",
      "dishes": [
        "Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko",
        "Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha",
        "Meni 3: Testenine v paradižnikovi omaki z baziliko, solata"
      ]
    },
    "reviews": [
      {
        "id": "r-3226",
        "location_id": "3226",
        "rating": 5,
        "comment": "Zelo dobra ponudba študentskih bonov!",
        "created_at": "2026-10-04T12:00:00Z",
        "author_name": "Študent"
      }
    ]
  },
  {
    "id": "3356",
    "name": "Vegetarijanska in veganska restavracija Jamuna",
    "address": "Ljubljana, 1000 Ljubljana",
    "city": "Ljubljana",
    "latitude": 46.074,
    "longitude": 14.516,
    "subsidy_price": 3.5,
    "opening_hours": "Pon - Pet: 10:00 - 20:00",
    "avg_rating": 4.6,
    "review_count": 46,
    "daily_menu": {
      "id": "m-3356",
      "location_id": "3356",
      "menu_date": "2026-10-04",
      "dishes": [
        "Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko",
        "Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha",
        "Meni 3: Testenine v paradižnikovi omaki z baziliko, solata"
      ]
    },
    "reviews": [
      {
        "id": "r-3356",
        "location_id": "3356",
        "rating": 5,
        "comment": "Zelo dobra ponudba študentskih bonov!",
        "created_at": "2026-10-04T12:00:00Z",
        "author_name": "Študent"
      }
    ]
  },
  {
    "id": "1339",
    "name": "Vegetarijanska restavracija Radha Govinda",
    "address": "Ljubljana, 1000 Ljubljana",
    "city": "Ljubljana",
    "latitude": 46.087,
    "longitude": 14.533,
    "subsidy_price": 3.65,
    "opening_hours": "Pon - Pet: 10:00 - 20:00",
    "avg_rating": 4.9,
    "review_count": 29,
    "daily_menu": {
      "id": "m-1339",
      "location_id": "1339",
      "menu_date": "2026-10-04",
      "dishes": [
        "Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko",
        "Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha",
        "Meni 3: Testenine v paradižnikovi omaki z baziliko, solata"
      ]
    },
    "reviews": [
      {
        "id": "r-1339",
        "location_id": "1339",
        "rating": 5,
        "comment": "Zelo dobra ponudba študentskih bonov!",
        "created_at": "2026-10-04T12:00:00Z",
        "author_name": "Študent"
      }
    ]
  },
  {
    "id": "3348",
    "name": "Vila de Casa Cafe",
    "address": "Ljubljana, 1000 Ljubljana",
    "city": "Ljubljana",
    "latitude": 46.06,
    "longitude": 14.51,
    "subsidy_price": 3.8,
    "opening_hours": "Pon - Pet: 10:00 - 20:00",
    "avg_rating": 4.8,
    "review_count": 38,
    "daily_menu": {
      "id": "m-3348",
      "location_id": "3348",
      "menu_date": "2026-10-04",
      "dishes": [
        "Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko",
        "Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha",
        "Meni 3: Testenine v paradižnikovi omaki z baziliko, solata"
      ]
    },
    "reviews": [
      {
        "id": "r-3348",
        "location_id": "3348",
        "rating": 5,
        "comment": "Zelo dobra ponudba študentskih bonov!",
        "created_at": "2026-10-04T12:00:00Z",
        "author_name": "Študent"
      }
    ]
  },
  {
    "id": "3117",
    "name": "Vino &amp; ribe Aleja",
    "address": "Ljubljana, 1000 Ljubljana",
    "city": "Ljubljana",
    "latitude": 46.073,
    "longitude": 14.527,
    "subsidy_price": 3.95,
    "opening_hours": "Pon - Pet: 10:00 - 20:00",
    "avg_rating": 4.7,
    "review_count": 47,
    "daily_menu": {
      "id": "m-3117",
      "location_id": "3117",
      "menu_date": "2026-10-04",
      "dishes": [
        "Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko",
        "Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha",
        "Meni 3: Testenine v paradižnikovi omaki z baziliko, solata"
      ]
    },
    "reviews": [
      {
        "id": "r-3117",
        "location_id": "3117",
        "rating": 5,
        "comment": "Zelo dobra ponudba študentskih bonov!",
        "created_at": "2026-10-04T12:00:00Z",
        "author_name": "Študent"
      }
    ]
  },
  {
    "id": "3201",
    "name": "Vino &amp; ribe Rudnik",
    "address": "Ljubljana, 1000 Ljubljana",
    "city": "Ljubljana",
    "latitude": 46.086,
    "longitude": 14.504,
    "subsidy_price": 4.1,
    "opening_hours": "Pon - Pet: 10:00 - 20:00",
    "avg_rating": 4.1,
    "review_count": 11,
    "daily_menu": {
      "id": "m-3201",
      "location_id": "3201",
      "menu_date": "2026-10-04",
      "dishes": [
        "Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko",
        "Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha",
        "Meni 3: Testenine v paradižnikovi omaki z baziliko, solata"
      ]
    },
    "reviews": [
      {
        "id": "r-3201",
        "location_id": "3201",
        "rating": 5,
        "comment": "Zelo dobra ponudba študentskih bonov!",
        "created_at": "2026-10-04T12:00:00Z",
        "author_name": "Študent"
      }
    ]
  },
  {
    "id": "2742",
    "name": "VIVO D125",
    "address": "Ljubljana, 1000 Ljubljana",
    "city": "Ljubljana",
    "latitude": 46.059,
    "longitude": 14.521,
    "subsidy_price": 4.25,
    "opening_hours": "Pon - Pet: 10:00 - 20:00",
    "avg_rating": 4.2,
    "review_count": 32,
    "daily_menu": {
      "id": "m-2742",
      "location_id": "2742",
      "menu_date": "2026-10-04",
      "dishes": [
        "Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko",
        "Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha",
        "Meni 3: Testenine v paradižnikovi omaki z baziliko, solata"
      ]
    },
    "reviews": [
      {
        "id": "r-2742",
        "location_id": "2742",
        "rating": 5,
        "comment": "Zelo dobra ponudba študentskih bonov!",
        "created_at": "2026-10-04T12:00:00Z",
        "author_name": "Študent"
      }
    ]
  },
  {
    "id": "3304",
    "name": "Vrt bambus",
    "address": "Maribor, 2000 Maribor",
    "city": "Maribor",
    "latitude": 46.564,
    "longitude": 15.656,
    "subsidy_price": 4.4,
    "opening_hours": "Pon - Pet: 10:00 - 20:00",
    "avg_rating": 4.4,
    "review_count": 34,
    "daily_menu": {
      "id": "m-3304",
      "location_id": "3304",
      "menu_date": "2026-10-04",
      "dishes": [
        "Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko",
        "Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha",
        "Meni 3: Testenine v paradižnikovi omaki z baziliko, solata"
      ]
    },
    "reviews": [
      {
        "id": "r-3304",
        "location_id": "3304",
        "rating": 5,
        "comment": "Zelo dobra ponudba študentskih bonov!",
        "created_at": "2026-10-04T12:00:00Z",
        "author_name": "Študent"
      }
    ]
  },
  {
    "id": "3386",
    "name": "WHITE SWAN dumpling",
    "address": "Ljubljana, 1000 Ljubljana",
    "city": "Ljubljana",
    "latitude": 46.085,
    "longitude": 14.515,
    "subsidy_price": 4.55,
    "opening_hours": "Pon - Pet: 10:00 - 20:00",
    "avg_rating": 4.6,
    "review_count": 36,
    "daily_menu": {
      "id": "m-3386",
      "location_id": "3386",
      "menu_date": "2026-10-04",
      "dishes": [
        "Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko",
        "Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha",
        "Meni 3: Testenine v paradižnikovi omaki z baziliko, solata"
      ]
    },
    "reviews": [
      {
        "id": "r-3386",
        "location_id": "3386",
        "rating": 5,
        "comment": "Zelo dobra ponudba študentskih bonov!",
        "created_at": "2026-10-04T12:00:00Z",
        "author_name": "Študent"
      }
    ]
  },
  {
    "id": "3384",
    "name": "WHITE SWAN fast food",
    "address": "Ljubljana, 1000 Ljubljana",
    "city": "Ljubljana",
    "latitude": 46.058,
    "longitude": 14.532,
    "subsidy_price": 3.5,
    "opening_hours": "Pon - Pet: 10:00 - 20:00",
    "avg_rating": 4.4,
    "review_count": 34,
    "daily_menu": {
      "id": "m-3384",
      "location_id": "3384",
      "menu_date": "2026-10-04",
      "dishes": [
        "Meni 1: Classic Beef Burger z ocvrtim krompirčkom in mešano solato",
        "Meni 2: Chicken Burger s svežo solato in omako",
        "Meni 3: Falafel ali Vegi Burger s krompirčkom, sadje"
      ]
    },
    "reviews": [
      {
        "id": "r-3384",
        "location_id": "3384",
        "rating": 5,
        "comment": "Zelo dobra ponudba študentskih bonov!",
        "created_at": "2026-10-04T12:00:00Z",
        "author_name": "Študent"
      }
    ]
  },
  {
    "id": "3383",
    "name": "WHITE SWAN fast food",
    "address": "Ljubljana, 1000 Ljubljana",
    "city": "Ljubljana",
    "latitude": 46.071,
    "longitude": 14.509,
    "subsidy_price": 3.65,
    "opening_hours": "Pon - Pet: 10:00 - 20:00",
    "avg_rating": 4.3,
    "review_count": 33,
    "daily_menu": {
      "id": "m-3383",
      "location_id": "3383",
      "menu_date": "2026-10-04",
      "dishes": [
        "Meni 1: Classic Beef Burger z ocvrtim krompirčkom in mešano solato",
        "Meni 2: Chicken Burger s svežo solato in omako",
        "Meni 3: Falafel ali Vegi Burger s krompirčkom, sadje"
      ]
    },
    "reviews": [
      {
        "id": "r-3383",
        "location_id": "3383",
        "rating": 5,
        "comment": "Zelo dobra ponudba študentskih bonov!",
        "created_at": "2026-10-04T12:00:00Z",
        "author_name": "Študent"
      }
    ]
  },
  {
    "id": "3385",
    "name": "WHITE SWAN poke bowl",
    "address": "Ljubljana, 1000 Ljubljana",
    "city": "Ljubljana",
    "latitude": 46.084,
    "longitude": 14.526,
    "subsidy_price": 3.8,
    "opening_hours": "Pon - Pet: 10:00 - 20:00",
    "avg_rating": 4.5,
    "review_count": 35,
    "daily_menu": {
      "id": "m-3385",
      "location_id": "3385",
      "menu_date": "2026-10-04",
      "dishes": [
        "Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko",
        "Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha",
        "Meni 3: Testenine v paradižnikovi omaki z baziliko, solata"
      ]
    },
    "reviews": [
      {
        "id": "r-3385",
        "location_id": "3385",
        "rating": 5,
        "comment": "Zelo dobra ponudba študentskih bonov!",
        "created_at": "2026-10-04T12:00:00Z",
        "author_name": "Študent"
      }
    ]
  },
  {
    "id": "3078",
    "name": "WOK MIX center",
    "address": "Ljubljana, 1000 Ljubljana",
    "city": "Ljubljana",
    "latitude": 46.057,
    "longitude": 14.503,
    "subsidy_price": 3.95,
    "opening_hours": "Pon - Pet: 10:00 - 20:00",
    "avg_rating": 4.8,
    "review_count": 48,
    "daily_menu": {
      "id": "m-3078",
      "location_id": "3078",
      "menu_date": "2026-10-04",
      "dishes": [
        "Meni 1: Hrustljavi piščanec v sladko-kisli omaki, pražen riž, zelenjavna juha",
        "Meni 2: Praženi rezanci z zelenjavo in tofujem, solata",
        "Meni 3: Pekinška raca z rižem, pomladni zavitki"
      ]
    },
    "reviews": [
      {
        "id": "r-3078",
        "location_id": "3078",
        "rating": 5,
        "comment": "Zelo dobra ponudba študentskih bonov!",
        "created_at": "2026-10-04T12:00:00Z",
        "author_name": "Študent"
      }
    ]
  },
  {
    "id": "3273",
    "name": "Wok&amp;Roll",
    "address": "Ljubljana, 1000 Ljubljana",
    "city": "Ljubljana",
    "latitude": 46.07,
    "longitude": 14.52,
    "subsidy_price": 4.1,
    "opening_hours": "Pon - Pet: 10:00 - 20:00",
    "avg_rating": 4.3,
    "review_count": 43,
    "daily_menu": {
      "id": "m-3273",
      "location_id": "3273",
      "menu_date": "2026-10-04",
      "dishes": [
        "Meni 1: Hrustljavi piščanec v sladko-kisli omaki, pražen riž, zelenjavna juha",
        "Meni 2: Praženi rezanci z zelenjavo in tofujem, solata",
        "Meni 3: Pekinška raca z rižem, pomladni zavitki"
      ]
    },
    "reviews": [
      {
        "id": "r-3273",
        "location_id": "3273",
        "rating": 5,
        "comment": "Zelo dobra ponudba študentskih bonov!",
        "created_at": "2026-10-04T12:00:00Z",
        "author_name": "Študent"
      }
    ]
  },
  {
    "id": "3345",
    "name": "WOOP! arena",
    "address": "Ljubljana, 1000 Ljubljana",
    "city": "Ljubljana",
    "latitude": 46.083,
    "longitude": 14.537,
    "subsidy_price": 4.25,
    "opening_hours": "Pon - Pet: 10:00 - 20:00",
    "avg_rating": 4.5,
    "review_count": 35,
    "daily_menu": {
      "id": "m-3345",
      "location_id": "3345",
      "menu_date": "2026-10-04",
      "dishes": [
        "Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko",
        "Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha",
        "Meni 3: Testenine v paradižnikovi omaki z baziliko, solata"
      ]
    },
    "reviews": [
      {
        "id": "r-3345",
        "location_id": "3345",
        "rating": 5,
        "comment": "Zelo dobra ponudba študentskih bonov!",
        "created_at": "2026-10-04T12:00:00Z",
        "author_name": "Študent"
      }
    ]
  },
  {
    "id": "3355",
    "name": "Yimi azijska restavracija",
    "address": "Ljubljana, 1000 Ljubljana",
    "city": "Ljubljana",
    "latitude": 46.056,
    "longitude": 14.514,
    "subsidy_price": 4.4,
    "opening_hours": "Pon - Pet: 10:00 - 20:00",
    "avg_rating": 4.5,
    "review_count": 45,
    "daily_menu": {
      "id": "m-3355",
      "location_id": "3355",
      "menu_date": "2026-10-04",
      "dishes": [
        "Meni 1: Hrustljavi piščanec v sladko-kisli omaki, pražen riž, zelenjavna juha",
        "Meni 2: Praženi rezanci z zelenjavo in tofujem, solata",
        "Meni 3: Pekinška raca z rižem, pomladni zavitki"
      ]
    },
    "reviews": [
      {
        "id": "r-3355",
        "location_id": "3355",
        "rating": 5,
        "comment": "Zelo dobra ponudba študentskih bonov!",
        "created_at": "2026-10-04T12:00:00Z",
        "author_name": "Študent"
      }
    ]
  },
  {
    "id": "3254",
    "name": "Zamaro",
    "address": "Ljubljana, 1000 Ljubljana",
    "city": "Ljubljana",
    "latitude": 46.069,
    "longitude": 14.531,
    "subsidy_price": 4.55,
    "opening_hours": "Pon - Pet: 10:00 - 20:00",
    "avg_rating": 4.4,
    "review_count": 24,
    "daily_menu": {
      "id": "m-3254",
      "location_id": "3254",
      "menu_date": "2026-10-04",
      "dishes": [
        "Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko",
        "Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha",
        "Meni 3: Testenine v paradižnikovi omaki z baziliko, solata"
      ]
    },
    "reviews": [
      {
        "id": "r-3254",
        "location_id": "3254",
        "rating": 5,
        "comment": "Zelo dobra ponudba študentskih bonov!",
        "created_at": "2026-10-04T12:00:00Z",
        "author_name": "Študent"
      }
    ]
  },
  {
    "id": "2952",
    "name": "Zbornica bar in žar",
    "address": "Ljubljana, 1000 Ljubljana",
    "city": "Ljubljana",
    "latitude": 46.082,
    "longitude": 14.508,
    "subsidy_price": 3.5,
    "opening_hours": "Pon - Pet: 10:00 - 20:00",
    "avg_rating": 4.2,
    "review_count": 42,
    "daily_menu": {
      "id": "m-2952",
      "location_id": "2952",
      "menu_date": "2026-10-04",
      "dishes": [
        "Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko",
        "Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha",
        "Meni 3: Testenine v paradižnikovi omaki z baziliko, solata"
      ]
    },
    "reviews": [
      {
        "id": "r-2952",
        "location_id": "2952",
        "rating": 5,
        "comment": "Zelo dobra ponudba študentskih bonov!",
        "created_at": "2026-10-04T12:00:00Z",
        "author_name": "Študent"
      }
    ]
  },
  {
    "id": "3303",
    "name": "Zmajevo mesto",
    "address": "Ljubljana, 1000 Ljubljana",
    "city": "Ljubljana",
    "latitude": 46.055,
    "longitude": 14.525,
    "subsidy_price": 3.65,
    "opening_hours": "Pon - Pet: 10:00 - 20:00",
    "avg_rating": 4.3,
    "review_count": 33,
    "daily_menu": {
      "id": "m-3303",
      "location_id": "3303",
      "menu_date": "2026-10-04",
      "dishes": [
        "Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko",
        "Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha",
        "Meni 3: Testenine v paradižnikovi omaki z baziliko, solata"
      ]
    },
    "reviews": [
      {
        "id": "r-3303",
        "location_id": "3303",
        "rating": 5,
        "comment": "Zelo dobra ponudba študentskih bonov!",
        "created_at": "2026-10-04T12:00:00Z",
        "author_name": "Študent"
      }
    ]
  },
  {
    "id": "2993",
    "name": "Znanstvena kavarna Mafija",
    "address": "Ljubljana, 1000 Ljubljana",
    "city": "Ljubljana",
    "latitude": 46.068,
    "longitude": 14.502,
    "subsidy_price": 3.8,
    "opening_hours": "Pon - Pet: 10:00 - 20:00",
    "avg_rating": 4.3,
    "review_count": 43,
    "daily_menu": {
      "id": "m-2993",
      "location_id": "2993",
      "menu_date": "2026-10-04",
      "dishes": [
        "Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko",
        "Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha",
        "Meni 3: Testenine v paradižnikovi omaki z baziliko, solata"
      ]
    },
    "reviews": [
      {
        "id": "r-2993",
        "location_id": "2993",
        "rating": 5,
        "comment": "Zelo dobra ponudba študentskih bonov!",
        "created_at": "2026-10-04T12:00:00Z",
        "author_name": "Študent"
      }
    ]
  },
  {
    "id": "3325",
    "name": "Žito Celje Prešernova",
    "address": "Celje, 3000 Celje",
    "city": "Celje",
    "latitude": 46.239,
    "longitude": 15.271,
    "subsidy_price": 3.95,
    "opening_hours": "Pon - Pet: 10:00 - 20:00",
    "avg_rating": 4.5,
    "review_count": 15,
    "daily_menu": {
      "id": "m-3325",
      "location_id": "3325",
      "menu_date": "2026-10-04",
      "dishes": [
        "Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko",
        "Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha",
        "Meni 3: Testenine v paradižnikovi omaki z baziliko, solata"
      ]
    },
    "reviews": [
      {
        "id": "r-3325",
        "location_id": "3325",
        "rating": 5,
        "comment": "Zelo dobra ponudba študentskih bonov!",
        "created_at": "2026-10-04T12:00:00Z",
        "author_name": "Študent"
      }
    ]
  },
  {
    "id": "2009",
    "name": "Žito Koper",
    "address": "Koper, 6000 Koper",
    "city": "Koper",
    "latitude": 45.548,
    "longitude": 13.734,
    "subsidy_price": 4.1,
    "opening_hours": "Pon - Pet: 10:00 - 20:00",
    "avg_rating": 4.9,
    "review_count": 19,
    "daily_menu": {
      "id": "m-2009",
      "location_id": "2009",
      "menu_date": "2026-10-04",
      "dishes": [
        "Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko",
        "Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha",
        "Meni 3: Testenine v paradižnikovi omaki z baziliko, solata"
      ]
    },
    "reviews": [
      {
        "id": "r-2009",
        "location_id": "2009",
        "rating": 5,
        "comment": "Zelo dobra ponudba študentskih bonov!",
        "created_at": "2026-10-04T12:00:00Z",
        "author_name": "Študent"
      }
    ]
  },
  {
    "id": "2956",
    "name": "Žito Leon Štukelj Maribor",
    "address": "Maribor, 2000 Maribor",
    "city": "Maribor",
    "latitude": 46.579,
    "longitude": 15.641,
    "subsidy_price": 4.25,
    "opening_hours": "Pon - Pet: 10:00 - 20:00",
    "avg_rating": 4.6,
    "review_count": 46,
    "daily_menu": {
      "id": "m-2956",
      "location_id": "2956",
      "menu_date": "2026-10-04",
      "dishes": [
        "Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko",
        "Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha",
        "Meni 3: Testenine v paradižnikovi omaki z baziliko, solata"
      ]
    },
    "reviews": [
      {
        "id": "r-2956",
        "location_id": "2956",
        "rating": 5,
        "comment": "Zelo dobra ponudba študentskih bonov!",
        "created_at": "2026-10-04T12:00:00Z",
        "author_name": "Študent"
      }
    ]
  },
  {
    "id": "2771",
    "name": "ŽITO Ljubljana Bavarski dvor",
    "address": "Ljubljana, 1000 Ljubljana",
    "city": "Ljubljana",
    "latitude": 46.08,
    "longitude": 14.53,
    "subsidy_price": 4.4,
    "opening_hours": "Pon - Pet: 10:00 - 20:00",
    "avg_rating": 4.1,
    "review_count": 21,
    "daily_menu": {
      "id": "m-2771",
      "location_id": "2771",
      "menu_date": "2026-10-04",
      "dishes": [
        "Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko",
        "Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha",
        "Meni 3: Testenine v paradižnikovi omaki z baziliko, solata"
      ]
    },
    "reviews": [
      {
        "id": "r-2771",
        "location_id": "2771",
        "rating": 5,
        "comment": "Zelo dobra ponudba študentskih bonov!",
        "created_at": "2026-10-04T12:00:00Z",
        "author_name": "Študent"
      }
    ]
  },
  {
    "id": "3320",
    "name": "ŽITO Ljubljana Kolodvorska",
    "address": "Ljubljana, 1000 Ljubljana",
    "city": "Ljubljana",
    "latitude": 46.053,
    "longitude": 14.507,
    "subsidy_price": 4.55,
    "opening_hours": "Pon - Pet: 10:00 - 20:00",
    "avg_rating": 4.0,
    "review_count": 10,
    "daily_menu": {
      "id": "m-3320",
      "location_id": "3320",
      "menu_date": "2026-10-04",
      "dishes": [
        "Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko",
        "Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha",
        "Meni 3: Testenine v paradižnikovi omaki z baziliko, solata"
      ]
    },
    "reviews": [
      {
        "id": "r-3320",
        "location_id": "3320",
        "rating": 5,
        "comment": "Zelo dobra ponudba študentskih bonov!",
        "created_at": "2026-10-04T12:00:00Z",
        "author_name": "Študent"
      }
    ]
  },
  {
    "id": "1791",
    "name": "ŽITO Ljubljana Vodnik",
    "address": "Ljubljana, 1000 Ljubljana",
    "city": "Ljubljana",
    "latitude": 46.066,
    "longitude": 14.524,
    "subsidy_price": 3.5,
    "opening_hours": "Pon - Pet: 10:00 - 20:00",
    "avg_rating": 4.1,
    "review_count": 41,
    "daily_menu": {
      "id": "m-1791",
      "location_id": "1791",
      "menu_date": "2026-10-04",
      "dishes": [
        "Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko",
        "Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha",
        "Meni 3: Testenine v paradižnikovi omaki z baziliko, solata"
      ]
    },
    "reviews": [
      {
        "id": "r-1791",
        "location_id": "1791",
        "rating": 5,
        "comment": "Zelo dobra ponudba študentskih bonov!",
        "created_at": "2026-10-04T12:00:00Z",
        "author_name": "Študent"
      }
    ]
  },
  {
    "id": "2535",
    "name": "ŽITO Ljubljana železniška (kolodvor)",
    "address": "Ljubljana, 1000 Ljubljana",
    "city": "Ljubljana",
    "latitude": 46.079,
    "longitude": 14.501,
    "subsidy_price": 3.65,
    "opening_hours": "Pon - Pet: 10:00 - 20:00",
    "avg_rating": 4.5,
    "review_count": 25,
    "daily_menu": {
      "id": "m-2535",
      "location_id": "2535",
      "menu_date": "2026-10-04",
      "dishes": [
        "Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko",
        "Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha",
        "Meni 3: Testenine v paradižnikovi omaki z baziliko, solata"
      ]
    },
    "reviews": [
      {
        "id": "r-2535",
        "location_id": "2535",
        "rating": 5,
        "comment": "Zelo dobra ponudba študentskih bonov!",
        "created_at": "2026-10-04T12:00:00Z",
        "author_name": "Študent"
      }
    ]
  },
  {
    "id": "2322",
    "name": "Žito Maribor Trg revolucije",
    "address": "Maribor, 2000 Maribor",
    "city": "Maribor",
    "latitude": 46.574,
    "longitude": 15.646,
    "subsidy_price": 3.8,
    "opening_hours": "Pon - Pet: 10:00 - 20:00",
    "avg_rating": 4.2,
    "review_count": 12,
    "daily_menu": {
      "id": "m-2322",
      "location_id": "2322",
      "menu_date": "2026-10-04",
      "dishes": [
        "Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko",
        "Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha",
        "Meni 3: Testenine v paradižnikovi omaki z baziliko, solata"
      ]
    },
    "reviews": [
      {
        "id": "r-2322",
        "location_id": "2322",
        "rating": 5,
        "comment": "Zelo dobra ponudba študentskih bonov!",
        "created_at": "2026-10-04T12:00:00Z",
        "author_name": "Študent"
      }
    ]
  },
  {
    "id": "3343",
    "name": "ŽITO Postojna",
    "address": "Ljubljana, 1000 Ljubljana",
    "city": "Ljubljana",
    "latitude": 46.065,
    "longitude": 14.535,
    "subsidy_price": 3.95,
    "opening_hours": "Pon - Pet: 10:00 - 20:00",
    "avg_rating": 4.3,
    "review_count": 33,
    "daily_menu": {
      "id": "m-3343",
      "location_id": "3343",
      "menu_date": "2026-10-04",
      "dishes": [
        "Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha, jabolko",
        "Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha",
        "Meni 3: Testenine v paradižnikovi omaki z baziliko, solata"
      ]
    },
    "reviews": [
      {
        "id": "r-3343",
        "location_id": "3343",
        "rating": 5,
        "comment": "Zelo dobra ponudba študentskih bonov!",
        "created_at": "2026-10-04T12:00:00Z",
        "author_name": "Študent"
      }
    ]
  }
];
