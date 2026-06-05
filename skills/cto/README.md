# CTO Sparring Partner

En teknologiagnostisk CTO-sparringspartner der fungerer som benhård djævlens advokat. Kombinerer strategisk mentoring, arkitekturvejledning og systematisk validering.

## Brug

```
/cto [spørgsmål]     — generel CTO-rådgivning og strategisk sparring
/design [system]     — arkitekturdesign med trade-offs og modargumenter
/validate [plan]     — benhård stress-test med struktureret valideringsrapport
/decide [valg]       — beslutningsstøtte med one/two-way klassificering
```

---

## Credits

Denne skill er baseret på og kraftigt inspireret af **[claude-cto-team](https://github.com/alirezarezvani/claude-cto-team)** af [Alireza Rezvani](https://github.com/alirezarezvani), publiceret under MIT-licens.

Det originale repo implementerer et tre-agent-system (orchestrator, architect, strategic-cto-mentor) med 12 specialiserede skills.

---

## Hvad der er bevaret fra originalen

- **8-sektion valideringsrapport** — Verdict (GOOD/NEEDS MAJOR WORK/BAD), styrker, kritiske svagheder, blindspots, omformulering, success criteria, vej frem, åbne spørgsmål
- **Antagelsesanalyse** — fem kategorier (timeline, ressourcer, teknisk, business, eksternt) med konkrete challenge-mønstre og wishful-thinking-indikatorer
- **25 navngivne anti-mønstre** fordelt på arkitektur, timeline, team, teknologi og process
- **Clarification protocol** — challenge-mode frem for interview-mode, max 2-3 spørgsmål, eksempel-svar
- **Syv-dimensions evaluering** — forretning, teknik, operation, finans, timeline, team, marked
- **Arkitekturmønster-selector** med beslutningskriterier for monolith/microservices/serverless
- **Fire-fase skaleringsguide** — 0-10K / 10K-100K / 100K-1M / 1M+ brugere

---

## Hvad der er ændret og tilføjet

### Teknologiagnostisk tilgang
Originalen har eksplicit fokus på web/mobile/ML-stacks (React, Node.js, Kubernetes osv.). Denne version spørger altid om kontekst og nuværende stack inden den anbefaler noget — og undgår at anbefale specifikke teknologier uden at kende constraints.

### Djævlens advokat-grundholdning
Originalen er analytisk og systematisk. Denne version udfordrer aktivt hvad brugeren siger — inspireret af `/grill-me`-skillens tilgang. Den accepterer ikke præmisser uden videre og præsenterer modargumenter.

### One-Way vs Two-Way Doors som primært beslutningsprincip
Klassificeringen (fra Jeff Bezos-rammen) er løftet frem som det centrale skel. Konkret: brug tid på teknologivalg (one-way), men hack gerne features sammen med gaffatape når arkitekturen er sund (two-way).

### Kodekvalitet som princip (Uncle Bob / Dave Farley)
Tilføjet eksplicit forankring i Clean Code (Robert C. Martin) og Modern Software Engineering (Dave Farley): læsbarhed som vedligeholdelsesomkostning, løs kobling som pragmatisk princip (ikke corporate ritual), testbarhed som designsignal.

### Løs kobling — pragmatisk, ikke akademisk
Fokus på hvad løs kobling faktisk løser i hverdagen: kan du ændre A uden at bryde B? Kan du teste forretningslogik uden en rigtig database? Uden den enterprise-abstraktionssnak der ikke giver mening i et lille team.

### MVP og startup-tankegang
Eksplicit rum til at springe over hvor gærdet er lavest — men med konkrete grænser for hvad der aldrig er acceptabelt (sikkerhed, ulæselig kode, one-way doors taget forkert).

### Feature Creep som selvstændigt tema
Tilføjet som eksplicit fokusområde: hvad det ser ud som, prisen, og konkrete spørgsmål der udfordrer scope-udvidelse.

### Dansk sprogstøtte
Svarer automatisk på det sprog brugeren skriver på.

### Stage-awareness
Rådgivningen tilpasses eksplicit til Early / Growth / Scaling / Enterprise-fasen.
