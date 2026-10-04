import Link from 'next/link';
import { AlertTriangle, ArrowLeft } from 'lucide-react';

export default function AuthErrorPage() {
  return (
    <div style={{
      minHeight: '100vh',
      display: 'flex',
      alignItems: 'center',
      justifyContent: 'center',
      background: 'linear-gradient(135deg, #0d1117 0%, #161b22 100%)',
      color: '#f0f6fc',
      fontFamily: 'system-ui, -apple-system, sans-serif',
      padding: '20px'
    }}>
      <div style={{
        maxWidth: '480px',
        width: '100%',
        background: 'rgba(22, 27, 34, 0.8)',
        border: '1px solid rgba(255, 255, 255, 0.1)',
        borderRadius: '16px',
        padding: '32px',
        textAlign: 'center',
        boxShadow: '0 20px 40px rgba(0,0,0,0.5)',
        backdropFilter: 'blur(10px)'
      }}>
        <div style={{
          width: '64px',
          height: '64px',
          borderRadius: '50%',
          background: 'rgba(239, 68, 68, 0.15)',
          color: '#ef4444',
          display: 'flex',
          alignItems: 'center',
          justifyContent: 'center',
          margin: '0 auto 20px auto'
        }}>
          <AlertTriangle size={32} />
        </div>

        <h1 style={{ fontSize: '1.5rem', fontWeight: 700, marginBottom: '12px', color: '#ffffff' }}>
          Napaka pri Google Prijavi
        </h1>
        <p style={{ color: '#8b949e', fontSize: '0.95rem', lineHeight: '1.5', marginBottom: '24px' }}>
          Prišlo je do težave pri avtentikaciji z vašim Google računom. Prepričajte se, da so v vašem Supabase projektu nastavljene veljavne Google Client ID in Client Secret vrednosti.
        </p>

        <Link href="/" style={{
          display: 'inline-flex',
          alignItems: 'center',
          gap: '8px',
          padding: '12px 24px',
          background: '#10b981',
          color: '#ffffff',
          fontWeight: 600,
          borderRadius: '8px',
          textDecoration: 'none',
          transition: 'all 0.2s ease'
        }}>
          <ArrowLeft size={18} /> Nazaj na osnovno stran
        </Link>
      </div>
    </div>
  );
}
