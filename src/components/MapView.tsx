'use client';

import { useEffect, useRef, useState, useCallback } from 'react';
import L from 'leaflet';
import 'leaflet/dist/leaflet.css';
import 'leaflet.markercluster';
import 'leaflet.markercluster/dist/MarkerCluster.css';
import { Locate, LocateFixed, Loader2 } from 'lucide-react';
import { LocationWithDetails } from '@/lib/supabase/types';
import {
  ratingTier,
  TIER_COLORS,
  formatEur,
  UserLocation,
  calculateDistanceKm,
  formatDistance,
} from '@/lib/data';

interface MapViewProps {
  locations: LocationWithDetails[];
  onSelectLocation: (loc: LocationWithDetails) => void;
  userLocation?: UserLocation | null;
  onUserLocationChange?: (loc: UserLocation | null) => void;
}

const SLOVENIA: L.LatLngBoundsExpression = [
  [45.42, 13.38],
  [46.88, 16.6],
];

function isInsideSlovenia(lat: number, lon: number): boolean {
  return lat >= 45.3 && lat <= 46.95 && lon >= 13.3 && lon <= 16.7;
}

function esc(s: string | null | undefined): string {
  return (s ?? '').replace(
    /[&<>"']/g,
    (c) => ({ '&': '&amp;', '<': '&lt;', '>': '&gt;', '"': '&quot;', "'": '&#39;' })[c]!
  );
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

const userIcon = L.divIcon({
  className: 'custom-user-location-marker',
  html: `<div class="user-location-pulse"></div><div class="user-location-dot"></div>`,
  iconSize: [20, 20],
  iconAnchor: [10, 10],
  popupAnchor: [0, -12],
});

export default function MapView({
  locations,
  onSelectLocation,
  userLocation: externalLocation,
  onUserLocationChange,
}: MapViewProps) {
  const containerRef = useRef<HTMLDivElement>(null);
  const mapRef = useRef<L.Map | null>(null);
  const layerRef = useRef<L.MarkerClusterGroup | null>(null);
  const userMarkerRef = useRef<L.Marker | null>(null);
  const accuracyCircleRef = useRef<L.Circle | null>(null);
  const watchIdRef = useRef<number | null>(null);

  const [mapReady, setMapReady] = useState(false);
  const [internalLocation, setInternalLocation] = useState<UserLocation | null>(externalLocation || null);
  const [isLocating, setIsLocating] = useState(false);
  const [locationError, setLocationError] = useState<string | null>(null);

  const currentLocation = externalLocation !== undefined ? externalLocation : internalLocation;

  const onSelectRef = useRef(onSelectLocation);
  onSelectRef.current = onSelectLocation;

  const onUserLocationChangeRef = useRef(onUserLocationChange);
  onUserLocationChangeRef.current = onUserLocationChange;

  // Samodejni izbris napake po 6 sekundah
  useEffect(() => {
    if (!locationError) return;
    const timer = setTimeout(() => setLocationError(null), 6000);
    return () => clearTimeout(timer);
  }, [locationError]);

  // Sinhronizacija zunanje lokacije z interno
  useEffect(() => {
    if (externalLocation !== undefined) {
      setInternalLocation(externalLocation);
    }
  }, [externalLocation]);

  // Inicializacija Leaflet zemljevida
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
      disableClusteringAtZoom: 17,
      showCoverageOnHover: false,
      iconCreateFunction: (cluster) =>
        L.divIcon({
          className: 'custom-map-cluster',
          html: `<div class="map-cluster"><span>${cluster.getChildCount()}</span></div>`,
          iconSize: [40, 40],
        }),
    }).addTo(map);

    mapRef.current = map;
    setMapReady(true);

    return () => {
      if (watchIdRef.current != null && typeof navigator !== 'undefined' && navigator.geolocation) {
        navigator.geolocation.clearWatch(watchIdRef.current);
        watchIdRef.current = null;
      }
      map.remove();
      mapRef.current = null;
      layerRef.current = null;
      userMarkerRef.current = null;
      accuracyCircleRef.current = null;
      setMapReady(false);
    };
  }, []);

  // Zahteva za pridobitev trenutne lokacije naprave
  const requestLocation = useCallback((flyTo = true) => {
    if (typeof window === 'undefined' || !navigator.geolocation) {
      setLocationError('Vaš brskalnik ne podpira določanja lokacije.');
      return;
    }

    setIsLocating(true);
    setLocationError(null);

    navigator.geolocation.getCurrentPosition(
      (pos) => {
        setIsLocating(false);
        const newLoc: UserLocation = {
          latitude: pos.coords.latitude,
          longitude: pos.coords.longitude,
          accuracy: pos.coords.accuracy,
        };
        setInternalLocation(newLoc);
        onUserLocationChangeRef.current?.(newLoc);

        const shouldFly = flyTo || (mapRef.current && isInsideSlovenia(newLoc.latitude, newLoc.longitude));
        if (shouldFly && mapRef.current) {
          const targetZoom = Math.max(mapRef.current.getZoom(), 15);
          mapRef.current.flyTo([newLoc.latitude, newLoc.longitude], targetZoom, {
            duration: 1.2,
          });
          if (flyTo) {
            setTimeout(() => {
              userMarkerRef.current?.openPopup();
            }, 1200);
          }
        }

        // Vklopi watchPosition za sprotno posodabljanje ob premikanju naprave
        if (watchIdRef.current == null && navigator.geolocation) {
          watchIdRef.current = navigator.geolocation.watchPosition(
            (watchPos) => {
              const updatedLoc: UserLocation = {
                latitude: watchPos.coords.latitude,
                longitude: watchPos.coords.longitude,
                accuracy: watchPos.coords.accuracy,
              };
              setInternalLocation(updatedLoc);
              onUserLocationChangeRef.current?.(updatedLoc);
            },
            () => {},
            { enableHighAccuracy: true, maximumAge: 10000, timeout: 20000 }
          );
        }
      },
      (err) => {
        setIsLocating(false);
        switch (err.code) {
          case err.PERMISSION_DENIED:
            setLocationError('Dostop do lokacije je bil zavrnjen v nastavitvah brskalnika.');
            break;
          case err.POSITION_UNAVAILABLE:
            setLocationError('Lokacije vaše naprave ni bilo mogoče določiti.');
            break;
          case err.TIMEOUT:
            setLocationError('Čas za določitev lokacije je potekel.');
            break;
          default:
            setLocationError('Prišlo je do napake pri določanju lokacije.');
        }
      },
      { enableHighAccuracy: true, timeout: 15000, maximumAge: 30000 }
    );
  }, []);

  // Samodejna preverba, če je bilo dovoljenje za lokacijo že dano
  useEffect(() => {
    if (typeof window === 'undefined' || !navigator.geolocation) return;
    if ('permissions' in navigator && navigator.permissions?.query) {
      navigator.permissions
        .query({ name: 'geolocation' })
        .then((status) => {
          if (status.state === 'granted') {
            requestLocation(false);
          }
        })
        .catch(() => {});
    }
  }, [requestLocation]);

  // Izris in posodobitev oznake trenutne lokacije uporabnika ter kroga natančnosti
  useEffect(() => {
    if (!mapReady || !mapRef.current) return;
    const map = mapRef.current;

    if (!currentLocation) {
      if (userMarkerRef.current) {
        userMarkerRef.current.remove();
        userMarkerRef.current = null;
      }
      if (accuracyCircleRef.current) {
        accuracyCircleRef.current.remove();
        accuracyCircleRef.current = null;
      }
      return;
    }

    const latlng: L.LatLngExpression = [currentLocation.latitude, currentLocation.longitude];
    const accText = currentLocation.accuracy
      ? `<br/><span style="font-size:0.75rem;color:#6b7280">Natančnost: ±${Math.round(currentLocation.accuracy)} m</span>`
      : '';

    const popupHtml = `
      <div class="map-popup user-popup">
        <h4 style="color:#2563eb;margin-bottom:3px">📍 Vaša lokacija</h4>
        <p style="margin:0;font-size:0.82rem;color:#4b5563">Tukaj se trenutno nahajate.${accText}</p>
      </div>
    `;

    if (!userMarkerRef.current) {
      const marker = L.marker(latlng, {
        icon: userIcon,
        zIndexOffset: 1000,
        title: 'Vaša trenutna lokacija',
      });
      marker.bindPopup(popupHtml);
      marker.addTo(map);
      userMarkerRef.current = marker;
    } else {
      userMarkerRef.current.setLatLng(latlng);
      userMarkerRef.current.setPopupContent(popupHtml);
    }

    if (currentLocation.accuracy && currentLocation.accuracy > 5) {
      if (!accuracyCircleRef.current) {
        accuracyCircleRef.current = L.circle(latlng, {
          radius: currentLocation.accuracy,
          color: '#2563eb',
          weight: 1.5,
          opacity: 0.45,
          fillColor: '#3b82f6',
          fillOpacity: 0.1,
          interactive: false,
        }).addTo(map);
      } else {
        accuracyCircleRef.current.setLatLng(latlng);
        accuracyCircleRef.current.setRadius(currentLocation.accuracy);
      }
    } else if (accuracyCircleRef.current) {
      accuracyCircleRef.current.remove();
      accuracyCircleRef.current = null;
    }
  }, [mapReady, currentLocation]);

  // Klik na gumb za lokacijo: če jo že imamo, se približamo, sicer jo ponovno pridobimo
  const handleLocateClick = () => {
    if (currentLocation && mapRef.current) {
      const targetZoom = Math.max(mapRef.current.getZoom(), 15);
      mapRef.current.flyTo([currentLocation.latitude, currentLocation.longitude], targetZoom, {
        duration: 1,
      });
      userMarkerRef.current?.openPopup();
      // V ozadju osvežimo natančnost
      requestLocation(false);
    } else {
      requestLocation(true);
    }
  };

  // Izris pinov lokalov s prikazom razdalje, če je lokacija znana
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

      let distanceBadge = '';
      if (currentLocation && loc.latitude != null && loc.longitude != null) {
        const dist = calculateDistanceKm(
          currentLocation.latitude,
          currentLocation.longitude,
          loc.latitude,
          loc.longitude
        );
        distanceBadge = `<span class="map-popup-distance" title="Oddaljenost od vaše lokacije">📍 ${esc(formatDistance(dist))}</span>`;
      }

      const popup = document.createElement('div');
      popup.className = 'map-popup';
      popup.innerHTML = `
        <h4>${esc(loc.name)}</h4>
        <p>📍 ${esc(loc.address)}</p>
        <div class="map-popup-row">
          <span class="map-popup-price">Doplačilo: ${esc(formatEur(loc.subsidy_price))}</span>
          <span class="map-popup-rating">${esc(ratingText)}</span>
          ${distanceBadge}
        </div>
        <button type="button">Prikaži meni &amp; oceni</button>`;
      popup.querySelector('button')!.addEventListener('click', () => onSelectRef.current(loc));

      L.marker(positions.get(loc.id)!, { icon, title: loc.name }).bindPopup(popup).addTo(layer);
    }
  }, [locations, currentLocation]);

  return (
    <div style={{ position: 'relative', width: '100%' }}>
      <div ref={containerRef} className="map-container" />

      {/* Plavajoči gumb za trenutno lokacijo naprave */}
      <div className="map-locate-control">
        <button
          type="button"
          className={`map-locate-btn ${isLocating ? 'is-locating' : ''} ${currentLocation ? 'has-location' : ''}`}
          onClick={handleLocateClick}
          disabled={isLocating}
          title={currentLocation ? 'Približaj mojo lokacijo' : 'Pokaži mojo lokacijo na zemljevidu'}
          aria-label="Moja lokacija"
        >
          {isLocating ? (
            <Loader2 size={16} className="spin" />
          ) : currentLocation ? (
            <LocateFixed size={16} />
          ) : (
            <Locate size={16} />
          )}
          <span className="map-locate-btn-text">
            {isLocating ? 'Iščem...' : currentLocation ? 'Moja lokacija' : 'Kje sem?'}
          </span>
        </button>

        {locationError && (
          <div className="map-location-error" role="alert">
            <span>{locationError}</span>
            <button
              type="button"
              onClick={() => setLocationError(null)}
              className="map-location-error-close"
              aria-label="Zapri obvestilo"
            >
              ×
            </button>
          </div>
        )}
      </div>
    </div>
  );
}
