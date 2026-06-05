# KRITIKER — 5-filter tragt

Kør alle 5 filtre sekventielt på bruttolisten.
Skriv overlevelsesantal efter hvert filter.
Hvis mere end 50% overlever et filter — kør det igen hårdere.

---

## Filter 0: Karantæne-tjek — kør FØRST

Kassér øjeblikkeligt alle navne der:
- Er identiske med et navn brugeren nævnte i briefen
- Er en åbenlys variant (BumpBob hvis brugeren nævnte WelcomeBob)
- Kopierer konstruktionen fra et eksempelnavn

At præsentere brugerens egne eksempler som nye fund er en fejl, ikke et forslag.

`Filter 0: [X] kasseret som karantæne-navne`

---

## Filter 1: Startup-realitetstjek
*Kan en startup eje dette navn uden stort marketingbudget?*

Kassér: for generisk (Meet, Connect, Join, Social, Hub, Link), mere end 3 stavelser, ligner eksisterende stort produkt.

`Filter 1: [X] overlever af [Y]`

## Filter 2: Kategoribrud-test
*Ville ingen i kategorien nogensinde have kaldt noget dette?*

Kassér: lyder som møde/networking-app (-Link, -Connect, Sync, Align), lyder som rejseprodukt (TravelMate, JetSet), generisk suffix (-ly, -ify, -hub uden energi).

`Filter 2: [X] overlever af [Y]`

## Filter 3: Ikke-forklaring-test
*Kan en fremmed forstå at det er en social app — ikke logistiksoftware, nyhedsbrev eller konference?*

Test hvert navn:
- "Jeg bruger [navn] til at..." → giver mening?
- "Er du på [navn]?" → lyder naturligt?
- "Vi mødte hinanden på [navn]" → virker det?

Kassér hvis det fejler alle tre eller lyder som noget andet.

`Filter 3: [X] overlever af [Y]`

## Filter 4: WelcomeBob-testen
*Har dette navn en grund til at eksistere der ikke er logisk?*

WelcomeBob virker ikke fordi det er logisk — det virker fordi Welcome er varmt og Bob er menneskelig og kombinationen er overraskende. Der er ingen rationel grund til Bob — det er styrken.

Kassér hvis: valgt af åbenlys logisk grund, kunne have været et hvilket som helst ord i kategorien, kræver forklaring for at sidde fast.

Behold hvis: konkret men uventet, har menneskelig/sanselig element der ikke er "nødvendigt", ville huskes uden at vide hvad det er.

`Filter 4: [X] overlever af [Y]`

## Filter 5: Oase-testen
*Er dette et eksisterende ord stjålet fra sin normale kontekst?*

Oase virker: velkendt ord (oase i ørkenen) plantet i digital kontekst, skaber øjeblikkeligt billede. Intown virker: hverdagssprog ingen har taget som brand.

Kassér hvis: opfundet uden ladede bestanddele, for nyt til kulturel resonans, billedet er irrelevant for produktet.

Behold hvis: eksisterer allerede i anden kontekst, billedet er relevant, overraskende som app-navn.

`Filter 5: [X] overlever af [Y]`

---

## Kritiker-rapport
```
=== KRITIKER-RAPPORT ===
Start: [N] råkandidater
Efter filter 1: [N] (kasseret fx: ...)
Efter filter 2: [N] (kasseret fx: ...)
Efter filter 3: [N] (kasseret fx: ...)
Efter filter 4: [N] (kasseret fx: ...)
Efter filter 5: [N] (kasseret fx: ...)
Overlever til OUTPUT: [liste]
```
