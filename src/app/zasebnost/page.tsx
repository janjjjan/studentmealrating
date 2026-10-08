import type { Metadata } from 'next';
import Link from 'next/link';

export const metadata: Metadata = {
  title: 'Zasebnost in piškotki – Študentska prehrana',
  description: 'Katere podatke obdeluje aplikacija, zakaj in kako uveljavljaš svoje pravice (GDPR).',
};

const CONTACT = process.env.NEXT_PUBLIC_CONTACT_EMAIL;

export default function PrivacyPage() {
  return (
    <main className="legal-page">
      <Link href="/" className="legal-back">
        ← Nazaj na zemljevid
      </Link>
      <h1>Zasebnost in piškotki</h1>
      <p className="legal-updated">Zadnja posodobitev: 8. 10. 2026</p>

      <h2>Upravljavec</h2>
      <p>
        Aplikacijo upravlja njen avtor kot posameznik (neprofitni študentski projekt). Vprašanja in zahteve glede
        osebnih podatkov:{' '}
        {CONTACT ? <a href={`mailto:${CONTACT}`}>{CONTACT}</a> : <b>kontaktni e-naslov še ni nastavljen</b>}.
      </p>

      <h2>Katere podatke obdelujemo</h2>
      <ul>
        <li>
          <b>Ocene in mnenja</b> – ko oddaš oceno, shranimo vzdevek, ki si ga izbereš, ocene (količina, cena,
          kvaliteta), neobvezen komentar, lokal in čas objave. Vse to je <b>javno vidno</b> vsem obiskovalcem. Ne
          zahtevamo prijave, imena ali e-naslova – <b>ne vpisuj pravega imena ali drugih osebnih podatkov</b>, če tega
          ne želiš objaviti. Pravna podlaga je tvoja privolitev (6. člen (1)(a) GDPR), ki jo potrdiš pri oddaji
          ocene.
        </li>
        <li>
          <b>Tehnični podatki</b> – gostovanje (Vercel) in baza (Supabase) lahko začasno beležita IP-naslov in
          tehnične podatke zahtevka za varnost in delovanje storitve (zakoniti interes, 6. člen (1)(f)).
        </li>
        <li>
          <b>Zemljevid</b> – ploščice zemljevida se nalagajo z OpenStreetMap, ki zato prejme tvoj IP-naslov
          (<a href="https://osmfoundation.org/wiki/Privacy_Policy">njihova politika zasebnosti</a>).
        </li>
      </ul>
      <p>
        Ne uporabljamo analitike, oglaševanja, sledilnikov ali profiliranja. Podatkov ne prodajamo.
      </p>

      <h2>Piškotki in lokalni pomnilnik</h2>
      <p>
        Aplikacija <b>ne nastavlja piškotkov</b>. V pomnilnik brskalnika (localStorage) shrani samo vzdevek, ki ga
        vpišeš, da ti ga ni treba vpisovati ob vsaki oceni, in – če baza ni povezana – ocene na tvoji napravi. To je
        potrebno za storitev, ki jo izrecno uporabljaš, zato po predpisih (ZEKom-2) <b>privolitev v piškotke ni
        potrebna</b> in zato ne prikazujemo pasice za piškotke. Če bi v prihodnje dodali analitiko ali
        oglase, bomo pred tem zahtevali tvojo privolitev. Pomnilnik lahko kadar koli izbrišeš v nastavitvah
        brskalnika.
      </p>

      <h2>Kako dolgo hranimo podatke</h2>
      <p>Ocene hranimo, dokler jih ne zahtevaš izbrisati ali dokler aplikacija deluje.</p>

      <h2>Prejemniki</h2>
      <p>
        Podatke obdelujeta ponudnika infrastrukture: Supabase (baza) in Vercel (gostovanje). Ponudnika lahko podatke
        obdelujeta tudi zunaj EU/EGP na podlagi standardnih pogodbenih klavzul. Ocene so javno dostopne.
      </p>

      <h2>Tvoje pravice</h2>
      <p>
        Imaš pravico do dostopa, popravka in izbrisa podatkov, omejitve obdelave, ugovora ter preklica privolitve
        (preklic ne vpliva na zakonitost obdelave pred njim). Ker ocene ne vežemo na račun, za izbris navedi lokal, vzdevek
        in približen čas objave, ocena pa bo odstranjena. Pritožbo lahko vložiš pri{' '}
        <a href="https://www.ip-rs.si">Informacijskem pooblaščencu</a>.
      </p>

      <h2>Podatki o lokalih</h2>
      <p>
        Lokali, naslovi, doplačila in meniji so povzeti s{' '}
        <a href="https://www.studentska-prehrana.si">studentska-prehrana.si</a>. Aplikacija ni uradna aplikacija
        Študentske prehrane.
      </p>
    </main>
  );
}
