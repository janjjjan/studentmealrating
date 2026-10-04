'use client';

import { useEffect, useRef } from 'react';
import L from 'leaflet';
import 'leaflet/dist/leaflet.css';
import 'leaflet.markercluster';
import 'leaflet.markercluster/dist/MarkerCluster.css';
import { LocationWithDetails } from '@/lib/supabase/types';
import { ratingTier, TIER_COLORS, formatEur } from '@/lib/data';

interface MapViewProps {
  locations: LocationWithDetails[];
  onSelectLocation: (loc: LocationWithDetails) => void;
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

/** Lokali na popolnoma isti točki: zaradi vidnosti jih na zemljevidu razmaknemo v krog (~25 m). */
function spreadPositions(locations: LocationWithDetails[]): Map<string, [number, number]> {
  const groups = new Map<string, LocationWithDetails[]>();
  for (const l of locations) {
    if (l.latitude == null || l.longitude == null) continue;
    const key = `${l.latitude.toFixed(5)},${l.longitude.toFixed(5)}`;
    groups.set(key, [...(groups.get(key) || []), l]);
  }
  const out = new Map<string, [number, number]>();
  for (const group of groups.values()) {
    group.forEach((l, i) => {
      if (group.length === 1) return out.set(l.id, [l.latitude!, l.longitude!]);
      const angle = (2 * Math.PI * i) / group.length;
      const dLat = 0.000225 * Math.sin(angle);
      const dLng = (0.000225 * Math.cos(angle)) / Math.cos((l.latitude! * Math.PI) / 180);
      out.set(l.id, [l.latitude! + dLat, l.longitude! + dLng]);
    });
  }
  return out;
}

export default function MapView({ locations, onSelectLocation }: MapViewProps) {
  const containerRef = useRef<HTMLDivElement>(null);
  const mapRef = useRef<L.Map | null>(null);
  const layerRef = useRef<L.MarkerClusterGroup | null>(null);
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
    layerRef.current = L.markerClusterGroup({
      maxClusterRadius: 45,
      disableClusteringAtZoom: 17, // dovolj blizu: skupine izginejo in vidimo vse lokale
      showCoverageOnHover: false,
      iconCreateFunction: (cluster) =>
        L.divIcon({
          className: 'custom-map-cluster',
          html: `<div class="map-cluster"><span>${cluster.getChildCount()}</span></div>`,
          iconSize: [40, 40],
        }),
    }).addTo(map);
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

    const positions = spreadPositions(locations);
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

      L.marker(positions.get(loc.id)!, { icon, title: loc.name }).bindPopup(popup).addTo(layer);
    }
  }, [locations]);

  return (
    <div style={{ position: 'relative', width: '100%' }}>
      <div ref={containerRef} className="map-container" />
    </div>
  );
}
