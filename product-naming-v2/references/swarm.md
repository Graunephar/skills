# B: SWARM — Multi-agent generering og evaluering

SWARM kører **hele denne proces internt** før noget præsenteres for brugeren.
Målet: 15 navne der alle har bestået et hårdt filter — ikke 30 ord fra en thesaurus.

Processen kører med **tre samtidige roller**:

- 🧠 **GENERATOR** — genererer ukritisk, aldrig evaluerer
- ⚔️ **KRITIKER** — kasserer med SMILE/SCRATCH, aldrig genererer
- 🔀 **KOMBINATOR** — krydser outputs fra Generator, skaber nye kombinationer

Kør alle øvelser. Lad Generator køre dem alle. Lad Kritiker filtrere løbende.
Lad Kombinator arbejde på det der overlever. Præsentér de 15 stærkeste.

---

## GENERATOR — Kør alle 11 øvelser — ingen må springes over

Generator skriver råkandidater fra hver øvelse og **viser sit arbejde trin for trin**.
Ingen evaluering. Kvantitet først. Mål: 80–100 råkandidater i alt.

**OBLIGATORISK AFKRYDSNING — marker hver øvelse internt når den er kørt:**
```
[ ] Øvelse 1: Iterativ Udvidelse         (kerneord → synonymer → kombinationer)
[ ] Øvelse 2: Morphological Matrix       (min. 20 kombinationer fra tabel)
[ ] Øvelse 3: Provocation / PO           (5 PO'er, min. 2 kandidater hver)
[ ] Øvelse 4: Conceptual Spelunking      (3 sidelæns-verdener, 3-4 kandidater hver)
[ ] Øvelse 5: Semantisk Overlap          (min. 15 kandidater med dobbeltbund)
[ ] Øvelse 6: Handling + Menneskelig     (min. 15 kombinationer)
[ ] Øvelse 7: Kontrakonventionen         (min. 10 brud med kategorinormen)
[ ] Øvelse 8: Random Stimulus            (3 stimulus-ord, min. 2 kandidater hver)
[ ] Øvelse 9: Etymologi / fremmedsprog   (min. 8 kandidater)
[ ] Øvelse 10: Five Whys → Rod           (5 why's, min. 5 kandidater fra roden)
[ ] Øvelse 11: Neologismer / Portmanteau  (min. 15 konstruerede ord fra ladede dele)
```

Gå ikke videre til KRITIKER før alle 10 er kørt.
Fristelsen er at stoppe tidligt når der er "nok". Modstå den.

---

### Øvelse 1: Iterativ Udvidelse ← START HER

Dette er den vigtigste øvelse. Sådan blev Intown, Enroute og Whenhere fundet.

**Processen kører i fire lag:**

**Lag 1 — Kerneord fra produktet**
Identificér 5–8 kerneord direkte fra briefen.
Skriv dem ud:
```
Kerneord: [ord1], [ord2], [ord3]...
```

**Lag 2 — Udvid hvert kerneord til synonymer og nabobegreber**
For hvert kerneord: find 6–8 synonymer, omskrivninger, hverdagsudtryk.
Skriv dem ud:
```
[kerneord] →
  synonymer: [syn1], [syn2], [syn3]...
  hverdagsudtryk: [udtryk1], [udtryk2]...
  nabobegreber: [nabo1], [nabo2]...
```

**Lag 3 — Find kombinationspartnere**
For hvert udvidet ord: hvad kan det kombineres med?
Tænk: steder, tidspunkter, handlinger, mennesker, præpositioner, retningsord.
Skriv dem ud:
```
[udvidet ord] + ?
  + sted: [kombination]
  + tid: [kombination]
  + handling: [kombination]
  + præposition: [kombination]
  + person: [kombination]
```

**Lag 4 — Smelt kombinationerne**
Tag de kombinationer der har energi. Smelt dem til ét ord eller en kort sammensætning.
```
[ord A] + [ord B] → [smeltet form]
```

Eksempel på hele kæden:
```
Kerneord: mødes, by, tid, sted

mødes →
  synonymer: meet, greet, connect, gather, catch up, run into
  hverdagsudtryk: "i'm in town", "passing through", "stopping by"
  nabobegreber: crossing paths, overlap, collision

"in town" + hvornår → "intown thursday" → Intown ✓
"stopping by" smeltet → Stopby ✓
"passing through" forkortet → Passing, Passthrough ✓

greet + sted → GreetHere?
greet + person → GreetHugo? → eller bare: Hugo
meet + her → Meethere? → MeetHere?
welcome + person → WelcomeBob ✓ (handling + menneskelig placeholder)
```

Kør alle kerneord igennem alle fire lag.
Mål: mindst 25 kandidater fra denne øvelse alene.

---

### Øvelse 2: Morphological Matrix

Byg tabellen eksplicit. Udfyld alle celler fra briefen. Kombinér systematisk.

```
| Akse              | Ord fra briefen (udfyld)                              |
|-------------------|-------------------------------------------------------|
| Kernehandling     | [hvad produktet gør bogstaveligt]                     |
| Menneskelig       | Bob, Finn, Otto, Hugo, Vera, Arlo, Milo, Rex, Cleo    |
| Sanselig kvalitet | tick, hum, drift, grain, pulse, spark, flint, hatch   |
| Kategori-modsætning | [hvad kategorien ALDRIG ville kalde sig]             |
```

Skriv kombinationerne ud:
```
[Handling] × [Menneskelig]: ...
[Handling] × [Sanselig]: ...
[Sanselig] × [Modsætning]: ...
[Sanselig] × 2 (TickTick-metoden): ...
```

WelcomeBob = [Welcome] × [Bob]. TickTick = [Tick] × [Tick].
Generér mindst 20 kombinationer. Tving dem der virker underlige.

**Valg-kriterium:** En kombination videreføres kun hvis **begge led er ladede i sig selv**.
Ladet = ordet har varme, energi eller præcis mening alene.
- Welcome er ladet. Bob er ladet. Grab er ladet. Drift er ladet.
- Join er ikke ladet. Sit er ikke ladet. Find er ikke ladet.
Kombinationer med uladede led kasseres allerede her.

---

### Øvelse 3: Provocation (PO) — De Bono

Skriv 5 bevidst absurde provokationer. Ekstraher reelle kandidater fra hver.

```
PO: [absurd påstand]
→ Hvad antyder det? → [kandidat1], [kandidat2]
```

Eksempler for en rejse-møde-app:
```
PO: Appen hedder noget der slet ikke har med møder at gøre
→ Hvad fra naturen? → Shore, Glade, Flint, Eddy

PO: Produktet er to kalendere der tilfældigvis kolliderer
→ Window, Slot, Gap, Span, Hatch

PO: Appen hedder som en person der møder dig i lufthavnen
→ GreetHugo, WaitOtto, MeetArlo

PO: Mødet eksisterer kun mens du er i bevægelse
→ Passing, Whilst, Brief, Transit, Enroute

PO: Appen er egentlig bare en præposition
→ Nearby, Intown, Alongside, Within, Amongst
```

Kør 5 PO'er relevante for det aktuelle produkt.

**Ekstra trin per PO:** Efter at have listet de åbenlyse kandidater, stil dette spørgsmål:
*"Hvad er det mest uventede reelle navn der kunne udledes af denne provokation?"*
Det overraskende svar er næsten altid bedre end det åbenlyse.

---

### Øvelse 4: Conceptual Spelunking (Anthony Shore)

Tag kernekonceptet. Bevæg dig i tre retninger og skriv hvert trin ud:

```
Kernekoncept: [fra briefen]

Op (overkategori): [hvad er dette et eksempel på?]
→ kandidater: ...

Ned (underbegreber): [hvad er det mindste konkrete element?]
→ kandidater: ...

Sidelæns verden 1 — [vælg en fremmed verden]:
→ kandidater: ...

Sidelæns verden 2 — [vælg en anden fremmed verden]:
→ kandidater: ...

Sidelæns verden 3 — [vælg endnu en]:
→ kandidater: ...
```

Find mindst 3 sidelæns-verdener (havne, geologi, teater, musik, arkitektur, sport...).
Generér 3–4 kandidater fra hver.

---

### Øvelse 5: Semantisk Overlap

Find ord der lever meningsfuldt i **to** af produktets verdener samtidig.

```
Verden 1: [fra briefen]
Verden 2: [fra briefen]

Ord der lever i begge:
[ord] = [betydning i verden 1] + [betydning i verden 2]
[ord] = ...
```

Eksempler:
- "Land" = ankomme til en by (rejse) + lande et møde/deal (forretning)
- "Window" = tidslomme (forretning) + udsigt fra hotelværelse (rejse)
- "Ground" = fundamentet under en ide (forretning) + at være på stedet (rejse)
- "Pitch" = sælge en ide (forretning) + telte (rejse)

Generér mindst 15 kandidater med reel dobbeltbund.

---

### Øvelse 6: Handling + Menneskelig Placeholder

Skriv processen ud trin for trin:

```
Kernehandlinger fra produktet: [list dem]
Udvidede handlingsord: [synonymer + hverdagsudtryk]

Menneskelige placeholders: Bob, Finn, Otto, Hugo, Vera, Arlo, Milo, Rex, Cleo, Kai

Kombinationer:
[handling] + [navn]: ...
[handling] + [navn]: ...
[handling] + [navn]: ...
[osv. til mindst 15]

Test hvert navn:
1. Virker handlingsordet alene?
2. Virker personnavnet alene?
3. Virker kombinationen bedre end de to dele?
```

WelcomeBob kom fra: welcome (handling) + Bob (menneskelig placeholder).
Prøv handlingsord der er overraskende i konteksten — ikke kun de åbenlyse.

---

### Øvelse 7: Kontrakonventionen

```
Typiske navne i kategorien:
[list 8-10 konkurrenter og kategori-navne]

Dominante mønstre:
- [mønster 1: fx aktive verber]
- [mønster 2: fx -ly suffix]
- [mønster 3: fx teknisk tone]

Navne der bryder hvert mønster:
Bryder mønster 1: ...
Bryder mønster 2: ...
Bryder mønster 3: ...
```

Generér 10 navne der er maksimalt anderledes end normen.

---

### Øvelse 8: Random Stimulus (De Bono)

```
Stimulus-ord 1 (naturord): [vælg tilfældigt]
Egenskaber: [5 egenskaber]
Forbindelser til produktet: ...
Kandidater: ...

Stimulus-ord 2 (håndværksord): [vælg tilfældigt]
Egenskaber: [5 egenskaber]
Forbindelser til produktet: ...
Kandidater: ...

Stimulus-ord 3 (madord): [vælg tilfældigt]
Egenskaber: [5 egenskaber]
Forbindelser til produktet: ...
Kandidater: ...
```

Generér mindst 2 kandidater fra hvert stimulus-ord.

---

### Øvelse 9: Etymologi og fremmedsprog

```
Nøgleord fra briefen: [list 3-5]

[nøgleord 1]:
  Latin/græsk rod: ... → kandidat?
  Skandinavisk variant: ... → kandidat?
  Uventet fremmedsprog: ... → kandidat?

[nøgleord 2]:
  [samme struktur]
```

Leder efter ord der er korte, lyder godt, og har lading der matcher.
Generér mindst 8 kandidater.

---

### Øvelse 10: Five Whys → Navngiv roden

```
Overfladen: [hvad produktet gør]
Hvorfor er det værdifuldt? → ...
Hvorfor er det et problem at det ikke eksisterer? → ...
Hvorfor opstår problemet? → ...
Hvorfor er det ikke løst allerede? → ...
Hvad er den dybeste sandhed? → [roden]

Navngiv roden:
[rod-konceptet] → kandidater: ...
```

Generér 5–8 navne fra rodkonceptet — ikke overfladen.

---

### Øvelse 11: Neologismer og Portmanteau ← konstruér nye ord

Kombinér bestanddele fra briefen til ord der ikke eksisterer men burde.
Disse navne er ikke tilfældige — de er konstruerede fra **ladede dele**.

**Tre metoder:**

**Portmanteau** — smelt to ord til ét ved at overlappe lydene:
```
[ord A] + [ord B] → find overlap i lyd/stavning → smeltet ord
welcome + via → Welvio
travel + fellow → Trellov
overlap + app → Overlapp? → Ovlap?
```

**Rodkombination** — tag latinske/græske rødder der er relevante og kombinér:
```
com- (sammen) + via (vej) → Comvia
syn- (samme) + loc (sted) → Synloc → Synlo
trans- (igennem) + ire (gå) → Transire → Transir
pro- (frem) + ximum (nær) → Proxim
```

**Suffiksering** — tag et ladet ord og tilføj et suffix der giver det liv:
```
[ladet ord] + -io, -ly, -er, -al, -en, -o
layover → Layovio? → nej
cross → Crossio? → Crossal?
greet + -io → Greetio? → Greeto?
welcome + -io → Welvio ✓
```

**Vigtigt:** hvert konstrueret ord skal kunne udtales flydende og have mindst ét ladet led.
Tilfældige bogstavkombinationer er ikke målet — konstruerede ord fra meningsfulde dele er.

Mål: mindst 15 neologismer/portmanteau-kandidater.

---

## KRITIKER — Multi-model tragt

Kritikeren kører **fem uafhængige filtre** sekventielt.
Hvert filter eliminerer navne af en forskellig grund.
Det der overlever alle fem er ægte kandidater.

**Forventet overlevelsesrate:**
- Efter filter 1: ~60 navne tilbage
- Efter filter 2: ~40 navne tilbage
- Efter filter 3: ~25 navne tilbage
- Efter filter 4: ~15 navne tilbage
- Efter filter 5: ~8-12 navne tilbage

Skriv antallet der overlever efter hvert filter.
Hvis mere end 50% overlever et filter — kør det igen hårdere.

---

### Filter 0: Karantæne-tjek — kør FØRST

Kassér øjeblikkeligt alle navne der:
- Er identiske med et navn brugeren nævnte i briefen
- Er en åbenlys variant af et navn brugeren nævnte (BumpBob hvis brugeren nævnte WelcomeBob)
- Kopierer konstruktionen fra et eksempelnavn (handling+personnavn hvis brugeren nævnte WelcomeBob)

Dette filter er ikke til diskussion. Brugeren kender allerede disse navne.
At præsentere dem som nye fund er en fejl — ikke et forslag.

`Filter 0: [X] kasseret som karantæne-navne`

### Filter 1: Startup-realitetstjek

Spørgsmål: *Kan en startup eje dette navn uden et stort marketingbudget?*

Kassér hvis:
- For generisk til varemærke: Meet, Connect, Join, Social, Network, Together, Open
- Kræver at brandet bygger al mening selv (ingen egenenergi i ordet)
- Ligner et eksisterende stort produkt (Meetup, Eventbrite, Bumble Bizz)
- Mere end 3 stavelser (svært at sige, svært at skrive)

Skriv: `Filter 1: [X] navne overlever af [Y]`

---

### Filter 2: Kategoribrud-test

Spørgsmål: *Ville en person der arbejder i samme kategori aldrig have kaldt noget dette?*

Kassér hvis:
- Det lyder som en møde/networking-app (Meet-, -Link, -Connect, Sync, Align)
- Det lyder som et rejseprodukt (TravelMate, TripBuddy, JetSetter)
- Det bruger -ly, -ify, -hub, -io suffix uden at det tilfører noget
- Det er et åbenlyst synonymsøg (Gather = meet, Convene = meet)

Skriv: `Filter 2: [X] navne overlever af [Y]`

---

### Filter 3: Ikke-forklaring-test

Spørgsmål: *Kan en fremmed forstå at det er en social app — ikke logistiksoftware, ikke et nyhedsbrev, ikke en konference?*

Test hvert navn i tre kontekster:
```
"Jeg bruger [navn] til at..."  → giver det mening?
"Er du på [navn]?"             → lyder det naturligt?
"Vi mødte hinanden på [navn]"  → virker det?
```

Kassér hvis navnet fejler alle tre eller lyder som noget andet end det er.
Dispatch, Per Diem, Adjourn — alle tre fejler denne test.

Skriv: `Filter 3: [X] navne overlever af [Y]`

---

### Filter 4: WelcomeBob-testen

Spørgsmål: *Har dette navn en grund til at eksistere der ikke er logisk?*

WelcomeBob virker ikke fordi det er logisk. Det virker fordi Welcome er varmt og Bob er menneskelig og kombinationen er overraskende. Der er ingen rationel grund til at vælge Bob — og det er præcis styrken.

Kassér hvis:
- Navnet er valgt af åbenlys logisk grund (beskriver hvad det gør)
- Det kunne have været et hvilket som helst andet ord i samme kategori
- Det kræver en forklaring for at sidde fast

Behold hvis:
- Navnet er konkret men uventet i konteksten
- Det har et menneskelig eller sanselig element der ikke er "nødvendigt"
- Man ville huske det uden at vide hvad det er

Skriv: `Filter 4: [X] navne overlever af [Y]`

---

### Filter 5: Oase-testen

Spørgsmål: *Er dette et almindeligt ord stjålet fra sin normale kontekst og plantet et nyt sted?*

Oase virker fordi det er et velkendt ord (en oase i ørkenen) brugt i en digital kontekst. Det skaber et øjeblikkeligt billede uden forklaring. Intown virker af samme grund — "in town" er hverdagssprog, men ingen har brugt det som brand.

Kassér hvis:
- Ordet er opfundet uden ladede bestanddele (Riivas, Welvio hvis -vio ikke bærer)
- Ordet er for nyt til at have kulturel resonans
- Billedet det skaber ikke er relevant for produktet

Behold hvis:
- Ordet allerede eksisterer i en anden kontekst
- Det billede det normalt skaber er relevant for produktet
- Det er overraskende at se det som app-navn

Skriv: `Filter 5: [X] navne overlever af [Y]`

---

### Kritiker-rapportering

Skriv til sidst:
```
=== KRITIKER-RAPPORT ===
Start: [N] råkandidater
Efter filter 1: [N] (kasseret: eksempler)
Efter filter 2: [N] (kasseret: eksempler)
Efter filter 3: [N] (kasseret: eksempler)
Efter filter 4: [N] (kasseret: eksempler)
Efter filter 5: [N] (kasseret: eksempler)
Overlever: [liste over alle godkendte navne]
```

---

## OUTPUT — Præsentér alle der overlever, fremhæv 3

Output-fasen er **ikke** Generator eller Kritiker. Den er en kurator.

**Trin 1 — Vis alle overlevende som bullets:**
Præsentér alle navne der bestod alle 5 filtre som en bullet-liste:
```
- **[Navn]** — [én linje: hvorfra + hvad der gør det interessant]
- **[Navn]** — [én linje: hvorfra + hvad der gør det interessant]
```

**Trin 2 — Fremhæv 3 favoritter:**
Vælg præcis 3 — maksimalt forskellige fra hinanden.
- Ikke tre fra samme navnetype
- Ikke tre med samme tone
- Ikke tre der alle er enkeltord eller alle sammensætninger

For hvert af de 3, skriv:
```
⭐ **[Navn]**
Hvorfra: [øvelse + logik]
Styrke: [hvad gør det stærkt — specifikt, ikke generelt]
Svaghed: [hvad er den reelle risiko]
I en sætning: "[sætning der viser det i brug]"
```

Afslut med ét spørgsmål — se `references/feedback.md`.
