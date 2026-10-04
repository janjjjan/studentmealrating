import { LocationWithDetails } from './supabase/types';

export const INITIAL_LOCATIONS: LocationWithDetails[] = [
  {
    id: 'loc-1',
    name: 'Restavracija Interspar Vič',
    address: 'Jamova cesta 105, 1000 Ljubljana',
    city: 'Ljubljana',
    latitude: 46.0421,
    longitude: 14.4789,
    subsidy_price: 3.80,
    opening_hours: 'Pon - Sob: 10:00 - 20:00',
    avg_rating: 4.6,
    review_count: 28,
    daily_menu: {
      id: 'menu-1',
      location_id: 'loc-1',
      menu_date: new Date().toISOString().split('T')[0],
      dishes: [
        'Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, dnevna juha, jabolko',
        'Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha, puding',
        'Meni 3: Veganski pusto testenine z pestom in pečenimi paradižniki, sadje',
        'Meni 4: Svinjski zrezek v naravni omaki, njoki, špinačna solata'
      ]
    },
    reviews: [
      {
        id: 'rev-1',
        location_id: 'loc-1',
        user_id: 'u-1',
        rating: 5,
        comment: 'Odlične porcije in vedno sveža solata! Najboljši bon v Ljubljani.',
        created_at: '2026-10-02T12:30:00Z',
        user_email: 'zan.student@uni-lj.si'
      },
      {
        id: 'rev-2',
        location_id: 'loc-1',
        user_id: 'u-2',
        rating: 4,
        comment: 'Zelo prijazno osebje, včasih je malo daljša vrsta ob 13h.',
        created_at: '2026-10-01T14:15:00Z',
        user_email: 'anja.novak@gmail.com'
      }
    ]
  },
  {
    id: 'loc-2',
    name: 'Cantina Maria Mexican',
    address: 'Slovenska cesta 28, 1000 Ljubljana',
    city: 'Ljubljana',
    latitude: 46.0533,
    longitude: 14.5058,
    subsidy_price: 4.20,
    opening_hours: 'Pon - Pet: 11:00 - 21:00',
    avg_rating: 4.8,
    review_count: 42,
    daily_menu: {
      id: 'menu-2',
      location_id: 'loc-2',
      menu_date: new Date().toISOString().split('T')[0],
      dishes: [
        'Meni 1: Burrito z mletim govejim mesom, rižem, fižolom in salsa omako, nacho čips, limonada',
        'Meni 2: Chimichanga s piščancem, guacamole, zelena solata',
        'Meni 3: Veganski Taco Plate z avokadom in pečenim koruzom'
      ]
    },
    reviews: [
      {
        id: 'rev-3',
        location_id: 'loc-2',
        user_id: 'u-3',
        rating: 5,
        comment: 'Okusi so fantastični. Za 4.20€ dobiš res vrhunsko mehiško hrano.',
        created_at: '2026-10-03T18:00:00Z',
        user_email: 'matej.k@gmail.com'
      }
    ]
  },
  {
    id: 'loc-3',
    name: 'Bistro Astoria Maribor',
    address: 'Prešernova ulica 8, 2000 Maribor',
    city: 'Maribor',
    latitude: 46.5583,
    longitude: 15.6467,
    subsidy_price: 3.50,
    opening_hours: 'Pon - Pet: 10:30 - 18:00',
    avg_rating: 4.3,
    review_count: 19,
    daily_menu: {
      id: 'menu-3',
      location_id: 'loc-3',
      menu_date: new Date().toISOString().split('T')[0],
      dishes: [
        'Meni 1: Štajerska kisla juha, svinjska pečenka, tenstan krompir, rdeče zelje',
        'Meni 2: Špinačni lazanja, paradižnikova solata, sadni jogurt'
      ]
    },
    reviews: [
      {
        id: 'rev-4',
        location_id: 'loc-3',
        user_id: 'u-4',
        rating: 4,
        comment: 'Pravi domači okus in ugodna doplačilna cena.',
        created_at: '2026-09-29T13:40:00Z',
        user_email: 'nejc.mb@gmail.com'
      }
    ]
  },
  {
    id: 'loc-4',
    name: 'Pizzerija in Špageterija Verace',
    address: 'Streliška ulica 22, 1000 Ljubljana',
    city: 'Ljubljana',
    latitude: 46.0485,
    longitude: 14.5122,
    subsidy_price: 4.50,
    opening_hours: 'Pon - Ned: 11:30 - 22:00',
    avg_rating: 4.9,
    review_count: 56,
    daily_menu: {
      id: 'menu-4',
      location_id: 'loc-4',
      menu_date: new Date().toISOString().split('T')[0],
      dishes: [
        'Meni 1: Napolitanska Margherita pizza (pelati, sveža mocarela, bazilika), rukola solata, pijača',
        'Meni 2: Pasta Bolognese z naribanim parmezanom, mešana solata',
        'Meni 3: Veganska pizza z pečenimi jajčevci in bučkami'
      ]
    },
    reviews: [
      {
        id: 'rev-5',
        location_id: 'loc-4',
        user_id: 'u-5',
        rating: 5,
        comment: 'Pica iz krušne peči na bon! Ne moreš verjeti dokler ne poskusiš.',
        created_at: '2026-10-03T19:20:00Z',
        user_email: 'eva.ljubljana@gmail.com'
      }
    ]
  },
  {
    id: 'loc-5',
    name: 'Študentska Menza Primorska',
    address: 'Titov trg 4, 6000 Koper',
    city: 'Koper',
    latitude: 45.5481,
    longitude: 13.7301,
    subsidy_price: 3.20,
    opening_hours: 'Pon - Pet: 11:00 - 17:00',
    avg_rating: 4.1,
    review_count: 14,
    daily_menu: {
      id: 'menu-5',
      location_id: 'loc-5',
      menu_date: new Date().toISOString().split('T')[0],
      dishes: [
        'Meni 1: Oslji file na žaru, blitva s krompirjem, tržaška omaka, solata',
        'Meni 2: Pašta z morskimi sadeži, paradižnikova solata, breskev'
      ]
    },
    reviews: [
      {
        id: 'rev-6',
        location_id: 'loc-5',
        user_id: 'u-6',
        rating: 4,
        comment: 'Lepo ob morju, sveže ribe na bon.',
        created_at: '2026-10-01T11:00:00Z',
        user_email: 'luka.koper@gmail.com'
      }
    ]
  }
];
