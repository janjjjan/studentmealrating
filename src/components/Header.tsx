'use client';

import { useState } from 'react';
import { Utensils, User as UserIcon, Edit3, Check } from 'lucide-react';
import { useNickname } from '@/lib/nickname';

export function Header() {
  const [nickname, setNickname] = useNickname();
  const [editing, setEditing] = useState(false);
  const [draft, setDraft] = useState('');

  const startEdit = () => {
    setDraft(nickname);
    setEditing(true);
  };

  const save = () => {
    setNickname(draft);
    setEditing(false);
  };

  return (
    <header className="site-header">
      <div className="header-container">
        <div className="logo-group">
          <div className="logo-icon">
            <Utensils size={22} />
          </div>
          <div className="logo-text">
            <h1>Študentska Prehrana</h1>
            <span>Ocene bonov &amp; meniji</span>
          </div>
        </div>

        {editing ? (
          <form
            className="user-profile-badge"
            onSubmit={(e) => {
              e.preventDefault();
              save();
            }}
          >
            <div className="user-avatar">
              <UserIcon size={16} />
            </div>
            <input
              autoFocus
              className="nickname-input"
              value={draft}
              maxLength={40}
              placeholder="Vaš vzdevek"
              onChange={(e) => setDraft(e.target.value)}
              onBlur={save}
              onKeyDown={(e) => e.key === 'Escape' && setEditing(false)}
              aria-label="Vzdevek za ocenjevanje"
            />
            <button type="submit" aria-label="Shrani vzdevek" style={{ color: '#10b981', display: 'flex' }}>
              <Check size={16} />
            </button>
          </form>
        ) : (
          <button onClick={startEdit} className="user-profile-badge" title="Spremeni svoj vzdevek za ocenjevanje">
            <div className="user-avatar">
              <UserIcon size={16} />
            </div>
            <span className="nickname-label">{nickname || 'Nastavi vzdevek'}</span>
            <Edit3 size={14} color="#10b981" />
          </button>
        )}
      </div>
    </header>
  );
}
