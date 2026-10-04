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
      spiderfyOnMaxZoom: true, // pri največjem zoomu se popolnoma skupaj ležeči pini razprejo
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

  return (
    <div style={{ position: 'relative', width: '100%' }}>
      <div ref={containerRef} className="map-container" />
    </div>
  );
}
