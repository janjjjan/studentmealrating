'use client';

import { useState } from 'react';
import { Database, Copy, Check, ChevronDown, ChevronUp, Sparkles } from 'lucide-react';

export function SqlSeedBanner() {
  const [expanded, setExpanded] = useState(false);
  const [copied, setCopied] = useState(false);

  const seedSql = `-- Copy & Paste this into your Supabase SQL Editor to populate test locations & menus:

-- 1. Insert Sample Student Meal Locations
INSERT INTO locations (id, name, address, latitude, longitude, subsidy_price, opening_hours)
VALUES 
  ('11111111-1111-1111-1111-111111111111', 'Restavracija Interspar Vič', 'Jamova cesta 105, 1000 Ljubljana', 46.0421, 14.4789, 3.80, 'Pon - Sob: 10:00 - 20:00'),
  ('22222222-2222-2222-2222-222222222222', 'Cantina Maria Mexican', 'Slovenska cesta 28, 1000 Ljubljana', 46.0533, 14.5058, 4.20, 'Pon - Pet: 11:00 - 21:00'),
  ('33333333-3333-3333-3333-333333333333', 'Bistro Astoria Maribor', 'Prešernova ulica 8, 2000 Maribor', 46.5583, 15.6467, 3.50, 'Pon - Pet: 10:30 - 18:00'),
  ('44444444-4444-4444-4444-444444444444', 'Pizzerija Verace', 'Streliška ulica 22, 1000 Ljubljana', 46.0485, 14.5122, 4.50, 'Pon - Ned: 11:30 - 22:00')
ON CONFLICT (id) DO NOTHING;

-- 2. Insert Sample Daily Menus
INSERT INTO daily_menus (location_id, menu_date, dishes)
VALUES
  ('11111111-1111-1111-1111-111111111111', CURRENT_DATE, ARRAY[
    'Meni 1: Dunajski piščančji zrezek, pražen krompir, sezonska solata, juha',
    'Meni 2: Gobov rižot z parmezanom, mešana solata, zelenjavna juha',
    'Meni 3: Veganski pusto testenine z pestom in pečenimi paradižniki'
  ]),
  ('22222222-2222-2222-2222-222222222222', CURRENT_DATE, ARRAY[
    'Meni 1: Burrito z govedino, rižem, fižolom in nacho čipsom',
    'Meni 2: Chimichanga s piščancem, guacamole, solata'
  ]),
  ('33333333-3333-3333-3333-333333333333', CURRENT_DATE, ARRAY[
    'Meni 1: Štajerska kisla juha, svinjska pečenka, tenstan krompir',
    'Meni 2: Špinačni lazanja, paradižnikova solata'
  ]);
`;

  const copyToClipboard = () => {
    navigator.clipboard.writeText(seedSql);
    setCopied(true);
    setTimeout(() => setCopied(false), 2000);
  };

  return (
    <div
      style={{
        maxWidth: '1280px',
        margin: '0 auto 24px auto',
        padding: '0 24px',
      }}
    >
      <div
        style={{
          background: 'rgba(16, 185, 129, 0.08)',
          border: '1px solid rgba(16, 185, 129, 0.25)',
          borderRadius: '14px',
          padding: '16px 20px',
        }}
      >
        <div style={{ display: 'flex', alignItems: 'center', justifyContent: 'space-between' }}>
          <div style={{ display: 'flex', alignItems: 'center', gap: '12px' }}>
            <Database color="#10b981" size={20} />
            <div>
              <span style={{ fontWeight: 700, fontSize: '0.95rem', color: 'white' }}>
                Supabase SQL Vzorčni Podatki & Google Auth Povezava
              </span>
              <p style={{ fontSize: '0.82rem', color: '#9ca3af', marginTop: '2px' }}>
                Kliknite za pridobitev SQL skripte za hitro vstavljanje lokacij in testiranje baze v Supabase SQL Editorju.
              </p>
            </div>
          </div>

          <button
            onClick={() => setExpanded(!expanded)}
            style={{
              padding: '6px 14px',
              borderRadius: '8px',
              background: 'rgba(255, 255, 255, 0.06)',
              color: '#10b981',
              fontWeight: 600,
              fontSize: '0.85rem',
              display: 'flex',
              alignItems: 'center',
              gap: '6px'
            }}
          >
            <span>{expanded ? 'Skrij SQL Skripto' : 'Prikaži SQL Skripto'}</span>
            {expanded ? <ChevronUp size={16} /> : <ChevronDown size={16} />}
          </button>
        </div>

        {expanded && (
          <div style={{ marginTop: '16px', paddingTop: '16px', borderTop: '1px dashed rgba(255,255,255,0.1)' }}>
            <div style={{ display: 'flex', justifyContent: 'space-between', alignItems: 'center', marginBottom: '8px' }}>
              <span style={{ fontSize: '0.8rem', color: '#10b981', fontWeight: 600 }}>
                Zagon v Supabase Dashboard &rarr; SQL Editor:
              </span>
              <button
                onClick={copyToClipboard}
                style={{
                  display: 'flex',
                  alignItems: 'center',
                  gap: '6px',
                  padding: '6px 12px',
                  background: copied ? '#10b981' : '#1f2937',
                  color: copied ? 'white' : '#9ca3af',
                  borderRadius: '6px',
                  fontSize: '0.8rem',
                  fontWeight: 600,
                  transition: 'all 0.2s ease'
                }}
              >
                {copied ? <Check size={14} /> : <Copy size={14} />}
                <span>{copied ? 'Kopirano!' : 'Kopiraj SQL'}</span>
              </button>
            </div>
            <pre
              style={{
                background: '#0d1117',
                padding: '14px',
                borderRadius: '8px',
                color: '#34d399',
                fontSize: '0.82rem',
                overflowX: 'auto',
                border: '1px solid rgba(255,255,255,0.05)',
                fontFamily: 'monospace'
              }}
            >
              {seedSql}
            </pre>
          </div>
        )}
      </div>
    </div>
  );
}
