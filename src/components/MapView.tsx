'use client';

import { useEffect, useRef } from 'react';
import { LocationWithDetails } from '@/lib/supabase/types';
import L from 'leaflet';
import 'leaflet/dist/leaflet.css';

interface MapViewProps {
  locations: LocationWithDetails[];
  onSelectLocation: (loc: LocationWithDetails) => void;
  selectedCity: string;
}

export default function MapView({ locations, onSelectLocation, selectedCity }: MapViewProps) {
  const mapContainerRef = useRef<HTMLDivElement>(null);
  const mapInstanceRef = useRef<L.Map | null>(null);
  const markersRef = useRef<L.Marker[]>([]);

  // Default city center coordinates
  const cityCenterMap: Record<string, [number, number, number]> = {
    Vsi: [46.12, 14.8, 8],
    Ljubljana: [46.0569, 14.5058, 13],
    Maribor: [46.5547, 15.6459, 13],
    Koper: [45.5481, 13.7301, 13],
    Celje: [46.2360, 15.2677, 13],
    Kranj: [46.2389, 14.3556, 13],
    'Novo mesto': [45.8011, 15.1710, 13],
  };

  useEffect(() => {
    if (!mapContainerRef.current) return;

    // Fix leaflet marker icon paths
    delete (L.Icon.Default.prototype as any)._getIconUrl;
    L.Icon.Default.mergeOptions({
      iconUrl: 'https://unpkg.com/leaflet@1.9.4/dist/images/marker-icon.png',
      iconRetinaUrl: 'https://unpkg.com/leaflet@1.9.4/dist/images/marker-icon-2x.png',
      shadowUrl: 'https://unpkg.com/leaflet@1.9.4/dist/images/marker-shadow.png',
    });

    if (!mapInstanceRef.current) {
      const [centerLat, centerLng, zoom] = cityCenterMap[selectedCity] || cityCenterMap['Vsi'];
      
      const map = L.map(mapContainerRef.current, {
        center: [centerLat, centerLng],
        zoom: zoom,
        zoomControl: true,
      });

      // Dark Mode Map tiles from CartoDB / OpenStreetMap
      L.tileLayer('https://{s}.basemaps.cartocdn.com/dark_all/{z}/{x}/{y}{r}.png', {
        attribution: '&copy; <a href="https://www.openstreetmap.org/copyright">OpenStreetMap</a> contributors &copy; <a href="https://carto.com/attributions">CARTO</a>',
        subdomains: 'abcd',
        maxZoom: 19,
      }).addTo(map);

      mapInstanceRef.current = map;
    }

    return () => {
      if (mapInstanceRef.current) {
        mapInstanceRef.current.remove();
        mapInstanceRef.current = null;
      }
    };
  }, []);

  // Update map center & markers on location or city change
  useEffect(() => {
    const map = mapInstanceRef.current;
    if (!map) return;

    // Clear previous markers
    markersRef.current.forEach((m) => m.remove());
    markersRef.current = [];

    // Recenter map if city filter changes
    const [cLat, cLng, zoom] = cityCenterMap[selectedCity] || cityCenterMap['Vsi'];
    map.flyTo([cLat, cLng], zoom, { duration: 1 });

    // Custom Emerald Marker Icon
    const customIcon = L.divIcon({
      className: 'custom-map-pin',
      html: `<div style="
        background: linear-gradient(135deg, #10b981 0%, #059669 100%);
        width: 32px;
        height: 32px;
        border-radius: 50% 50% 50% 0;
        transform: rotate(-45deg);
        display: flex;
        align-items: center;
        justify-content: center;
        box-shadow: 0 4px 14px rgba(16, 185, 129, 0.4);
        border: 2px solid #ffffff;
      ">
        <span style="transform: rotate(45deg); color: white; font-weight: 800; font-size: 13px;">🍱</span>
      </div>`,
      iconSize: [32, 32],
      iconAnchor: [16, 32],
      popupAnchor: [0, -32],
    });

    locations.forEach((loc) => {
      if (!loc.latitude || !loc.longitude) return;

      const marker = L.marker([loc.latitude, loc.longitude], { icon: customIcon }).addTo(map);

      const popupHtml = `
        <div style="font-family: system-ui, sans-serif; padding: 4px; color: #1f2937; min-width: 200px;">
          <h4 style="margin: 0 0 4px 0; font-size: 1rem; color: #111827; font-weight: 700;">${loc.name}</h4>
          <p style="margin: 0 0 6px 0; font-size: 0.8rem; color: #4b5563;">📍 ${loc.address || ''}</p>
          <div style="display: flex; align-items: center; justify-content: space-between; margin-bottom: 8px;">
            <span style="background: #ecfdf5; color: #059669; font-weight: 700; font-size: 0.8rem; padding: 2px 8px; border-radius: 99px;">
              Doplačilo: €${loc.subsidy_price?.toFixed(2) || '3.80'}
            </span>
            <span style="color: #d97706; font-weight: 700; font-size: 0.85rem;">★ ${loc.avg_rating?.toFixed(1) || '4.8'}</span>
          </div>
          <button id="btn-map-menu-${loc.id}" style="
            width: 100%;
            padding: 6px 12px;
            background: #10b981;
            color: white;
            border: none;
            border-radius: 6px;
            font-weight: 600;
            font-size: 0.82rem;
            cursor: pointer;
          ">Prikaži Meni & Oceni</button>
        </div>
      `;

      marker.bindPopup(popupHtml);

      marker.on('popupopen', () => {
        const btn = document.getElementById(`btn-map-menu-${loc.id}`);
        if (btn) {
          btn.onclick = () => onSelectLocation(loc);
        }
      });

      markersRef.current.push(marker);
    });
  }, [locations, selectedCity]);

  return (
    <div
      ref={mapContainerRef}
      style={{
        width: '100%',
        height: '480px',
        borderRadius: '16px',
        border: '1px solid rgba(255, 255, 255, 0.1)',
        boxShadow: '0 20px 40px rgba(0,0,0,0.5)',
        zIndex: 1,
      }}
    />
  );
}
