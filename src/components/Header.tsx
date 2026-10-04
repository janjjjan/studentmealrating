'use client';

import { useState, useEffect } from 'react';
import { Utensils, User as UserIcon, Edit3 } from 'lucide-react';
import { User } from '@supabase/supabase-js';

interface HeaderProps {
  user: User | null;
  onOpenAuthModal: () => void;
  onLogout: () => void;
}

export function Header({ user, onOpenAuthModal, onLogout }: HeaderProps) {
  const [nickname, setNickname] = useState('');

  useEffect(() => {
    const stored = localStorage.getItem('student_reviewer_name');
    if (stored) {
      setNickname(stored);
    }
  }, []);

  const handlePromptNickname = () => {
    const newName = prompt('Vnesite vaše ime oz. vzdevek za pisanje ocen:', nickname || 'Študent');
    if (newName && newName.trim()) {
      setNickname(newName.trim());
      localStorage.setItem('student_reviewer_name', newName.trim());
    }
  };

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

        {/* User Profile / Nickname Badge */}
        <div style={{ display: 'flex', alignItems: 'center', gap: '12px' }}>
          <button
            onClick={handlePromptNickname}
            className="user-profile-badge"
            style={{ cursor: 'pointer' }}
            title="Spremenci svoj vzdevek za ocenjevanje"
          >
            <div className="user-avatar">
              <UserIcon size={16} />
            </div>
            <span style={{ fontSize: '0.88rem', fontWeight: 600, color: '#f3f4f6' }}>
              {nickname ? nickname : 'Nastavi Ime'}
            </span>
            <Edit3 size={14} color="#10b981" />
          </button>
        </div>
      </div>
    </header>
  );
}
