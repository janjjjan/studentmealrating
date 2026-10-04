import { LocationWithDetails } from './supabase/types';

export const INITIAL_LOCATIONS: LocationWithDetails[] = [
  {
    id: '1441',
    name: 'Pizzeria FoculuS',
    address: 'Gregorčičeva ulica 3, 1000 Ljubljana',
    city: 'Ljubljana',
    latitude: 46.0468,
    longitude: 14.5036,
    subsidy_price: 3.80,
    opening_hours: 'Pon - Pet: 10:00 - 22:00',
    avg_rating: 4.9,
    review_count: 58,
    daily_menu: {
      id: 'm-1441',
      location_id: '1441',
      menu_date: new Date().toISOString().split('T')[0],
      dishes: [
        'Meni 1: Pizza 4 letni časi, zelenjavna juha, mešana solata, ekološko jabolko',
        'Meni 2: Pizza Formaggia (štirje siri), dnevna juha, mešana solata, jabolko',
        'Meni 3: Pizza Margherita z mocarelo in baziliko, mešana solata',
        'Meni 4: Solata Caesar s pečenim piščancem, juha, jabolko'
      ]
    },
    reviews: [
      {
        id: 'r-1',
        location_id: '1441',
        rating: 5,
        comment: 'Najboljša pizza na študentski bon v celi Ljubljani! Ambient je vrhunski.',
        created_at: '2026-10-03T18:00:00Z',
        author_name: 'Matej Študent'
      }
    ]
  },
  {
    id: '1478',
    name: 'ABI FALAFEL',
    address: 'Trubarjeva cesta 40, 1000 Ljubljana',
    city: 'Ljubljana',
    latitude: 46.0526,
    longitude: 14.5108,
    subsidy_price: 3.80,
    opening_hours: 'Pon - Sob: 10:00 - 21:00',
    avg_rating: 4.8,
    review_count: 44,
    daily_menu: {
      id: 'm-1478',
      location_id: '1478',
      menu_date: new Date().toISOString().split('T')[0],
      dishes: [
        'Meni 1: Falafel sendvič z humusom in svežo zelenjavo, jabolko',
        'Meni 2: Sirovi zavitki s prilogo in omako, mešana solata, jabolko',
        'Meni 3: Šiškebab (goveji in jagnječji), priloga riž, mešana solata'
      ]
    },
    reviews: [
      {
        id: 'r-2',
        location_id: '1478',
        rating: 5,
        comment: 'Zelo okusna in nasitna arabska hrana na bon.',
        created_at: '2026-10-02T14:30:00Z',
        author_name: 'Anja N.'
      }
    ]
  },
  {
    id: '3259',
    name: 'Baščaršija Ljubljana',
    address: 'Trubarjeva cesta 52, 1000 Ljubljana',
    city: 'Ljubljana',
    latitude: 46.0531,
    longitude: 14.5124,
    subsidy_price: 3.80,
    opening_hours: 'Pon - Ned: 11:00 - 22:00',
    avg_rating: 4.7,
    review_count: 62,
    daily_menu: {
      id: 'm-3259',
      location_id: '3259',
      menu_date: new Date().toISOString().split('T')[0],
      dishes: [
        'Meni 1: Veliki čevapi (10x), lepinja, čebula, zeljnata solata, jabolko',
        'Meni 2: Srednji čevapi s kajmakom, 1/2 lepinje, zeljnata solata',
        'Meni 3: Pleskavica v lepinji s čebulo in šopsko solato',
        'Meni 4: Begova čorba (piščančja kremna juha), lepinja'
      ]
    },
    reviews: [
      {
        id: 'r-3',
        location_id: '3259',
        rating: 5,
        comment: 'Pravi sarajevski čevapi in vroča lepinja. Porcije so ogromne!',
        created_at: '2026-10-01T12:00:00Z',
        author_name: 'Jan K.'
      }
    ]
  },
  {
    id: '3349',
    name: 'Dodo Pizza Ljubljana Center',
    address: 'Ilirska ulica 4, 1000 Ljubljana',
    city: 'Ljubljana',
    latitude: 46.0542,
    longitude: 14.5151,
    subsidy_price: 3.80,
    opening_hours: 'Pon - Ned: 10:00 - 22:00',
    avg_rating: 4.6,
    review_count: 31,
    daily_menu: {
      id: 'm-3349',
      location_id: '3349',
      menu_date: new Date().toISOString().split('T')[0],
      dishes: [
        'Meni 1: Pepperoni Pizza + mešana solata + sadje',
        'Meni 2: Cheese & Garlic Pizza + solata',
        'Meni 3: Testenine Carbonara + solata + jabolko',
        'Meni 4: BBQ Dodster prigrizek + solata'
      ]
    },
    reviews: [
      {
        id: 'r-4',
        location_id: '3349',
        rating: 4,
        comment: 'Super hitro in hrustljavo testo!',
        created_at: '2026-09-28T19:10:00Z',
        author_name: 'Luka P.'
      }
    ]
  },
  {
    id: '3189',
    name: "McDonald's Cankarjeva",
    address: 'Cankarjeva cesta 4, 1000 Ljubljana',
    city: 'Ljubljana',
    latitude: 46.0525,
    longitude: 14.5038,
    subsidy_price: 3.80,
    opening_hours: 'Pon - Ned: 08:00 - 24:00',
    avg_rating: 4.4,
    review_count: 85,
    daily_menu: {
      id: 'm-3189',
      location_id: '3189',
      menu_date: new Date().toISOString().split('T')[0],
      dishes: [
        'Meni 1: Big Mac + mali krompirček + mešana solata + sadje',
        'Meni 2: McChicken + mali krompirček + mešana solata',
        'Meni 3: McNuggets 6 kosov + omaka + mali krompirček + solata',
        'Meni 4: Fresh Crispy Tortilja + mali krompirček + solata'
      ]
    },
    reviews: [
      {
        id: 'r-5',
        location_id: '3189',
        rating: 4,
        comment: 'Klasika za hitro kosilo med predavanji.',
        created_at: '2026-10-04T11:00:00Z',
        author_name: 'Ema B.'
      }
    ]
  },
  {
    id: '3237',
    name: 'Baščaršija Maribor',
    address: 'Gosposvetska cesta 43c, 2000 Maribor',
    city: 'Maribor',
    latitude: 46.5621,
    longitude: 15.6389,
    subsidy_price: 3.80,
    opening_hours: 'Pon - Sob: 10:30 - 22:00',
    avg_rating: 4.8,
    review_count: 39,
    daily_menu: {
      id: 'm-3237',
      location_id: '3237',
      menu_date: new Date().toISOString().split('T')[0],
      dishes: [
        'Meni 1: Veliki čevapi (10x), 1 lepinja, čebula, zeljnata solata, jabolko',
        'Meni 2: Pleskavica z dušeno zelenjavo in lepinjo',
        'Meni 3: Prebranec s sudžukico in lepinjo'
      ]
    },
    reviews: [
      {
        id: 'r-6',
        location_id: '3237',
        rating: 5,
        comment: 'Najboljši čevapi v Mariboru!',
        created_at: '2026-10-02T13:00:00Z',
        author_name: 'Nejc MB'
      }
    ]
  },
  {
    id: '1161',
    name: 'Cantante Cafe Tabor',
    address: 'Ulica Pariške komune 37, 2000 Maribor',
    city: 'Maribor',
    latitude: 46.5512,
    longitude: 15.6421,
    subsidy_price: 3.80,
    opening_hours: 'Pon - Pet: 10:00 - 21:00',
    avg_rating: 4.5,
    review_count: 27,
    daily_menu: {
      id: 'm-1161',
      location_id: '1161',
      menu_date: new Date().toISOString().split('T')[0],
      dishes: [
        'Meni 1: Piščančji trakci s smetanovo omako in rižem, mešana solata, jabolko',
        'Meni 2: Mehiška lazanja z mletim mesom, solata, sadje',
        'Meni 3: Pizza po izbiri iz študentskega cenika, solata'
      ]
    },
    reviews: [
      {
        id: 'r-7',
        location_id: '1161',
        rating: 4,
        comment: 'Odlično vzdušje in mehiške specialitete.',
        created_at: '2026-09-30T16:20:00Z',
        author_name: 'Tjaša'
      }
    ]
  },
  {
    id: '3207',
    name: 'Baščaršija Koper',
    address: 'Carpacciov trg 6, 6000 Koper',
    city: 'Koper',
    latitude: 45.5485,
    longitude: 13.7268,
    subsidy_price: 3.80,
    opening_hours: 'Pon - Ned: 11:00 - 22:00',
    avg_rating: 4.7,
    review_count: 36,
    daily_menu: {
      id: 'm-3207',
      location_id: '3207',
      menu_date: new Date().toISOString().split('T')[0],
      dishes: [
        'Meni 1: Čevapčiči v lepinji s kajmakom, zeljnata solata, jabolko',
        'Meni 2: Piščančji zrezek na žaru s krompirčkom in lepinjo',
        'Meni 3: Begova čorba z domačim kruhom'
      ]
    },
    reviews: [
      {
        id: 'r-8',
        location_id: '3207',
        rating: 5,
        comment: 'Lepa lokacija tik ob morju in vrhunska hrana na bon!',
        created_at: '2026-10-01T15:40:00Z',
        author_name: 'Rok Koper'
      }
    ]
  },
  {
    id: '3370',
    name: 'Dodo Pizza Koper',
    address: 'Ljubljanska cesta 2a, 6000 Koper',
    city: 'Koper',
    latitude: 45.5462,
    longitude: 13.7335,
    subsidy_price: 3.80,
    opening_hours: 'Pon - Ned: 10:00 - 22:00',
    avg_rating: 4.6,
    review_count: 22,
    daily_menu: {
      id: 'm-3370',
      location_id: '3370',
      menu_date: new Date().toISOString().split('T')[0],
      dishes: [
        'Meni 1: Pizza Pepperoni ali Cheese, mešana solata, sadje',
        'Meni 2: Dodster hrustljavi zavežljaj, solata, jabolko',
        'Meni 3: Mozzarella palčke s krompirčkom in solato'
      ]
    },
    reviews: []
  },
  {
    id: '2326',
    name: 'Das Ist Valter Kranj',
    address: 'Cesta 1. maja 1a, 4000 Kranj',
    city: 'Kranj',
    latitude: 46.2412,
    longitude: 14.3562,
    subsidy_price: 3.80,
    opening_hours: 'Pon - Sob: 10:00 - 22:00',
    avg_rating: 4.6,
    review_count: 18,
    daily_menu: {
      id: 'm-2326',
      location_id: '2326',
      menu_date: new Date().toISOString().split('T')[0],
      dishes: [
        'Meni 1: Čevapčiči petka, lepinja, krompirček, tarhana juha, solata',
        'Meni 2: Pleskavica v lepinji s krompirčkom, juha, solata',
        'Meni 3: Sirova ali špinačna pita, jogurt, juha'
      ]
    },
    reviews: []
  },
  {
    id: '3035',
    name: 'Oštarija Citycenter Celje',
    address: 'Mariborska cesta 100, 3000 Celje',
    city: 'Celje',
    latitude: 46.2418,
    longitude: 15.2755,
    subsidy_price: 3.80,
    opening_hours: 'Pon - Sob: 09:00 - 20:00',
    avg_rating: 4.3,
    review_count: 15,
    daily_menu: {
      id: 'm-3035',
      location_id: '3035',
      menu_date: new Date().toISOString().split('T')[0],
      dishes: [
        'Meni 1: Dunajski piščančji zrezek, pražen krompir, solata, juha',
        'Meni 2: Testenine Bolognese z naribanim parmezanom, solata',
        'Meni 3: Zelenjavna rižota s paradižnikovo solato'
      ]
    },
    reviews: []
  },
  {
    id: '1501',
    name: 'Dijaški in Študentski Dom Novo Mesto',
    address: 'Šegova ulica 115, 8000 Novo mesto',
    city: 'Novo mesto',
    latitude: 45.7985,
    longitude: 15.1685,
    subsidy_price: 3.50,
    opening_hours: 'Pon - Pet: 11:00 - 17:00',
    avg_rating: 4.2,
    review_count: 12,
    daily_menu: {
      id: 'm-1501',
      location_id: '1501',
      menu_date: new Date().toISOString().split('T')[0],
      dishes: [
        'Meni 1: Goveji golaž s polento, rdeče zelje, sadje',
        'Meni 2: Ocvrt ribji file, krompirjeva solata, juha',
        'Meni 3: Špinačni njoki v smetanovi omaki, solata'
      ]
    },
    reviews: []
  }
];
