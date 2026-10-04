'use client';

import { useEffect, useState, useCallback } from 'react';

const KEY = 'student_reviewer_name';
const EVENT = 'nickname-change';

function read(): string {
  try {
    return localStorage.getItem(KEY) || '';
  } catch {
    return '';
  }
}

/** Vzdevek ocenjevalca, shranjen v localStorage in sinhroniziran med komponentami/zavihki. */
export function useNickname(): [string, (name: string) => void] {
  const [nickname, setState] = useState('');

  useEffect(() => {
    setState(read());
    const sync = () => setState(read());
    window.addEventListener(EVENT, sync);
    window.addEventListener('storage', sync);
    return () => {
      window.removeEventListener(EVENT, sync);
      window.removeEventListener('storage', sync);
    };
  }, []);

  const setNickname = useCallback((name: string) => {
    const clean = name.trim().slice(0, 40);
    try {
      if (clean) localStorage.setItem(KEY, clean);
      else localStorage.removeItem(KEY);
    } catch {
      /* zasebni način brskalnika */
    }
    setState(clean);
    window.dispatchEvent(new Event(EVENT));
  }, []);

  return [nickname, setNickname];
}
