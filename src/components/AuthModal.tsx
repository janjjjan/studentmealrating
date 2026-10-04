'use client';

import { useState } from 'react';
import { X, ShieldCheck, ExternalLink, Key, CheckCircle, HelpCircle } from 'lucide-react';
import { createClient } from '@/lib/supabase/client';

interface AuthModalProps {
  isOpen: boolean;
  onClose: () => void;
}

export function AuthModal({ isOpen, onClose }: AuthModalProps) {
  const [loading, setLoading] = useState(false);
  const [showGuide, setShowGuide] = useState(false);

  if (!isOpen) return null;

  const handleGoogleSignIn = async () => {
    try {
      setLoading(true);
      const supabase = createClient();
      const origin = typeof window !== 'undefined' ? window.location.origin : '';
      
      const { error } = await supabase.auth.signInWithOAuth({
        provider: 'google',
        options: {
          redirectTo: `${origin}/auth/callback`,
        },
      });

      if (error) {
        console.error('Google Sign-in Error:', error.message);
        alert(`Napaka pri Google prijavi: ${error.message}\n\nPreverite, ali je v Supabase omogočen Google Auth Provider.`);
      }
    } catch (err: any) {
      console.error(err);
      alert('Preverite Supabase povezavo v .env.local datoteki.');
    } finally {
      setLoading(false);
    }
  };

  return (
    <div className="modal-overlay" onClick={onClose}>
      <div className="modal-content" onClick={(e) => e.stopPropagation()}>
        <button className="modal-close" onClick={onClose}>
          <X size={20} />
        </button>

        <div style={{ textAlign: 'center', marginBottom: '24px' }}>
          <div
            style={{
              width: '56px',
              height: '56px',
              borderRadius: '16px',
              background: 'rgba(16, 185, 129, 0.15)',
              color: '#10b981',
              display: 'flex',
              alignItems: 'center',
              justifyContent: 'center',
              margin: '0 auto 16px auto'
            }}
          >
            <ShieldCheck size={28} />
          </div>
          <h2 style={{ fontSize: '1.5rem', fontWeight: 800, color: 'white', marginBottom: '8px' }}>
            Prijava v Študentska Prehrana
          </h2>
          <p style={{ color: '#9ca3af', fontSize: '0.92rem', lineHeight: '1.5' }}>
            Prijavite se z vašim Google računom za ocenjevanje bonov, pisanje mnenj in shranjevanje priljubljenih lokacij.
          </p>
        </div>

        {/* Primary Google Login Button */}
        <button
          onClick={handleGoogleSignIn}
          disabled={loading}
          style={{
            width: '100%',
            padding: '14px',
            background: '#ffffff',
            color: '#111827',
            fontWeight: 700,
            fontSize: '1rem',
            borderRadius: '12px',
            display: 'flex',
            alignItems: 'center',
            justifyContent: 'center',
            gap: '12px',
            boxShadow: '0 4px 14px rgba(255, 255, 255, 0.15)',
            marginBottom: '20px',
            transition: 'all 0.2s ease',
            opacity: loading ? 0.7 : 1
          }}
        >
          <svg width="20" height="20" viewBox="0 0 24 24">
            <path
              fill="#4285F4"
              d="M22.56 12.25c0-.78-.07-1.53-.2-2.25H12v4.26h5.92c-.26 1.37-1.04 2.53-2.21 3.31v2.77h3.57c2.08-1.92 3.28-4.74 3.28-8.09z"
            />
            <path
              fill="#34A853"
              d="M12 23c2.97 0 5.46-.98 7.28-2.66l-3.57-2.77c-.98.66-2.23 1.06-3.71 1.06-2.86 0-5.29-1.93-6.16-4.53H2.18v2.84C3.99 20.53 7.7 23 12 23z"
            />
            <path
              fill="#FBBC05"
              d="M5.84 14.09c-.22-.66-.35-1.36-.35-2.09s.13-1.43.35-2.09V7.06H2.18C1.43 8.55 1 10.22 1 12s.43 3.45 1.18 4.94l2.85-2.22.81-.63z"
            />
            <path
              fill="#EA4335"
              d="M12 5.38c1.62 0 3.06.56 4.21 1.64l3.15-3.15C17.45 2.09 14.97 1 12 1 7.7 1 3.99 3.47 2.18 7.06l3.66 2.84c.87-2.6 3.3-4.52 6.16-4.52z"
            />
          </svg>
          <span>{loading ? 'Nalaganje prijave...' : 'Nadaljuj z Google računom'}</span>
        </button>

        {/* Toggle setup instructions */}
        <div style={{ textAlign: 'center' }}>
          <button
            onClick={() => setShowGuide(!showGuide)}
            style={{
              fontSize: '0.85rem',
              color: '#10b981',
              display: 'inline-flex',
              alignItems: 'center',
              gap: '6px',
              fontWeight: 600
            }}
          >
            <HelpCircle size={15} />
            {showGuide ? 'Skrij navodila za Supabase Google Auth' : 'Kako nastaviti Google Auth v Supabase?'}
          </button>
        </div>

        {/* Setup guide details */}
        {showGuide && (
          <div
            style={{
              marginTop: '20px',
              padding: '16px',
              background: 'rgba(0, 0, 0, 0.4)',
              border: '1px solid rgba(255, 255, 255, 0.08)',
              borderRadius: '12px',
              fontSize: '0.85rem',
              color: '#d1d5db',
              lineHeight: '1.6'
            }}
          >
            <div style={{ fontWeight: 700, color: 'white', marginBottom: '8px', display: 'flex', alignItems: 'center', gap: '6px' }}>
              <Key size={16} color="#10b981" /> Navodila za nastavitev v 3 korakih:
            </div>
            <ol style={{ paddingLeft: '18px', display: 'flex', flexDirection: 'column', gap: '8px' }}>
              <li>
                Pojdite v <a href="https://console.cloud.google.com/" target="_blank" rel="noreferrer" style={{ color: '#3b82f6', textDecoration: 'underline' }}>Google Cloud Console <ExternalLink size={12} style={{ display: 'inline' }} /></a> in ustvarite nov Project oz. OAuth Client ID.
              </li>
              <li>
                Dodajte <b>Authorized Redirect URI</b>: <br />
                <code style={{ background: '#1f2937', padding: '2px 6px', borderRadius: '4px', color: '#10b981' }}>
                  https://&lt;your-supabase-id&gt;.supabase.co/auth/v1/callback
                </code>
              </li>
              <li>
                Pojdite v v vaš <a href="https://supabase.com/dashboard" target="_blank" rel="noreferrer" style={{ color: '#3b82f6', textDecoration: 'underline' }}>Supabase Dashboard <ExternalLink size={12} style={{ display: 'inline' }} /></a> &rarr; <b>Authentication</b> &rarr; <b>Providers</b> &rarr; <b>Google</b>. Vnesite Client ID in Client Secret ter omogočite stikalo.
              </li>
            </ol>
          </div>
        )}
      </div>
    </div>
  );
}
