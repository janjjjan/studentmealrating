import type { Metadata, Viewport } from 'next';
import './globals.css';

export const metadata: Metadata = {
  title: 'Študentska prehrana – zemljevid, meniji in ocene bonov',
  description:
    'Vsi lokali s študentskimi boni v Sloveniji na enem zemljevidu: doplačila, današnji meniji in ocene študentov.',
};

export const viewport: Viewport = {
  themeColor: '#090d16',
};

export default function RootLayout({ children }: LayoutProps<'/'>) {
  return (
    <html lang="sl">
      <body>{children}</body>
    </html>
  );
}
