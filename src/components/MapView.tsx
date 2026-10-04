'use client';

import { useEffect, useRef } from 'react';
import L from 'leaflet';
import 'leaflet/dist/leaflet.css';
import { LocationWithDetails } from '@/lib/supabase/types';
import { ratingTier, TIER_COLORS, formatEur } from '@/lib/data';

interface MapViewProps {
  locations: LocationWithDetails[];
  onSelectLocation: (loc: LocationWithDetails) => void;
  selectedCity: string;
}

const SLOVENIA: L.LatLngBoundsExpression = [
  [45.42, 13.38],
  [46.88, 16.6],
];

function esc(s: string | null | undefined): string {
  return (s ?? '').replace(/[&<>"']/g, (c) => ({ '&': '&amp;', '<': '&lt;', '>': '&gt;', '"': '&quot;', "'": '&#39;' })[c]!);
}

/** Ocena za barvo pina: samo povprečje ocen uporabnikov. */
function pinRating(loc: LocationWithDetails): number | null {
  return loc.avg_rating ?? null;
}

export default function MapView({ locations, onSelectLocation, selectedCity }: MapViewProps) {
  const containerRef = useRef<HTMLDivElement>(null);
  const mapRef = useRef<L.Map | null>(null);
  const layerRef = useRef<L.LayerGroup | null>(null);
  const onSelectRef = useRef(onSelectLocation);
  onSelectRef.current = onSelectLocation;

  useEffect(() => {
    if (!containerRef.current || mapRef.current) return;
    const map = L.map(containerRef.current, { zoomControl: true });
    map.fitBounds(SLOVENIA);
    L.tileLayer('https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png', {
      attribution: '&copy; <a href="https://www.openstreetmap.org/copyright">OpenStreetMap</a> contributors',
      maxZoom: 19,
    }).addTo(map);
    layerRef.current = L.layerGroup().addTo(map);
    mapRef.current = map;
    return () => {
      map.remove();
      mapRef.current = null;
    };
  }, []);

  // pini
  useEffect(() => {
    const layer = layerRef.current;
    if (!layer) return;
    layer.clearLayers();

    for (const loc of locations) {
      if (loc.latitude == null || loc.longitude == null) continue;
      const rating = pinRating(loc);
      const color = TIER_COLORS[ratingTier(rating)];
      const label = rating == null ? '–' : rating.toFixed(1);

      const icon = L.divIcon({
        className: 'custom-map-pin',
        html: `<div class="map-pin" style="background:${color};box-shadow:0 4px 12px ${color}66"><span>${label}</span></div>`,
        iconSize: [32, 32],
        iconAnchor: [16, 32],
        popupAnchor: [0, -32],
      });

      const ratingText =
        loc.review_count > 0
          ? `★ ${loc.avg_rating!.toFixed(1)} (${loc.review_count} ${loc.review_count === 1 ? 'ocena' : 'ocen'})`
          : 'Še brez ocen';

      const popup = document.createElement('div');
      popup.className = 'map-popup';
      popup.innerHTML = `
        <h4>${esc(loc.name)}</h4>
        <p>📍 ${esc(loc.address)}</p>
        <div class="map-popup-row">
          <span class="map-popup-price">Doplačilo: ${esc(formatEur(loc.subsidy_price))}</span>
          <span class="map-popup-rating">${esc(ratingText)}</span>
        </div>
        <button type="button">Prikaži meni &amp; oceni</button>`;
      popup.querySelector('button')!.addEventListener('click', () => onSelectRef.current(loc));

      L.marker([loc.latitude, loc.longitude], { icon, title: loc.name }).bindPopup(popup).addTo(layer);
    }
  }, [locations]);

  // ob spremembi kraja prilagodi pogled na lokale v tem kraju
  useEffect(() => {
    const map = mapRef.current;
    if (!map) return;
    if (selectedCity === 'Vsi') {
      map.flyToBounds(SLOVENIA, { duration: 0.8 });
      return;
    }
    const pts = locations
      .filter((l) => l.latitude != null && l.longitude != null)
      .map((l) => [l.latitude!, l.longitude!] as [number, number]);
    if (pts.length) map.flyToBounds(L.latLngBounds(pts), { padding: [40, 40], maxZoom: 15, duration: 0.8 });
    // samo ob menjavi kraja, ne ob vsakem tipkanju v iskalnik
    // eslint-disable-next-line react-hooks/exhaustive-deps
  }, [selectedCity]);

  return (
    <div style={{ position: 'relative', width: '100%' }}>
      <div ref={containerRef} className="map-container" />

      <div className="map-legend">
        <div style={{ fontWeight: 700, marginBottom: '6px', fontSize: '0.82rem', color: '#9ca3af' }}>Legenda ocen</div>
        {(
          [
            ['top', '★ ≥ 4.7', 'Vrhunsko'],
            ['good', '★ 4.3 – 4.6', 'Zelo dobro'],
            ['avg', '★ < 4.3', 'Povprečno'],
            ['none', 'brez ocene', ''],
          ] as const
        ).map(([tier, range, text]) => (
          <div key={tier} style={{ display: 'flex', alignItems: 'center', gap: '8px', marginTop: 4 }}>
            <span style={{ width: 10, height: 10, borderRadius: '50%', background: TIER_COLORS[tier], display: 'inline-block' }} />
            <span>
              <b>{range}</b> {text && `(${text})`}
            </span>
          </div>
        ))}
        <div style={{ marginTop: 6, fontSize: '0.72rem', color: '#6b7280', maxWidth: 190 }}>
          Ocene uporabnikov; kjer jih še ni, ocena s studentska-prehrana.si.
        </div>
      </div>
    </div>
  );
}
