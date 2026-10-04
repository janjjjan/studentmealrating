'use client';

import { Utensils, LogOut, Sparkles, User as UserIcon } from 'lucide-react';
import { User } from '@supabase/supabase-js';

interface HeaderProps {
  user: User | null;
  onOpenAuthModal: () => void;
  onLogout: () => void;
}

export function Header({ user, onOpenAuthModal, onLogout }: HeaderProps) {
  return (
    <header className="site-header">
      <div className="header-container">
        {/* Logo & Branding */}
        <div className="logo-group">
          <div className="logo-icon">
            <Utensils size={22} />
          </div>
          <div className="logo-text">
            <h1>Študentska Prehrana</h1>
            <span>Ocene Boni & Meniji</span>
          </div>
        </div>

        {/* User Auth Section */}
        <div style={{ display: 'flex', alignItems: 'center', gap: '14px' }}>
          {user ? (
            <div className="user-profile-badge">
              <div className="user-avatar">
                {user.user_metadata?.avatar_url ? (
                  // eslint-disable-next-next/no-img-element
                  <img src={user.user_metadata.avatar_url} alt={user.email || 'Uporabnik'} />
                ) : (
                  user.email?.charAt(0).toUpperCase() || <UserIcon size={16} />
                )}
              </div>
              <span style={{ fontSize: '0.88rem', fontWeight: 600, color: '#f3f4f6' }}>
                {user.user_metadata?.full_name || user.email?.split('@')[0]}
              </span>
              <button
                onClick={onLogout}
                className="btn-logout"
                title="Odjava"
              >
                <LogOut size={16} />
              </button>
            </div>
          ) : (
            <button
              onClick={onOpenAuthModal}
              className="btn-google-login"
            >
              <svg width="18" height="18" viewBox="0 0 24 24">
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
              <span>Prijava z Google</span>
            </button>
          )}
        </div>
      </div>
    </header>
  );
}
