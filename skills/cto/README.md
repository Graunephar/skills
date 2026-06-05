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

### Engineering-disciplin og tavs CTO-viden
Tilføjet et lag af konkret engineering-disciplin og tavs CTO-viden, der ikke var i originalen:
- **Dave Farley** — software engineering som empirisk disciplin, testbarhed som design-redskab, Definition of Done = deployet, CI som disciplin (trunk-based, ikke feature branches), DORA-metrikker, "vi kan ikke lave CD fordi..."-undskyldninger
- **Charity Majors** — observabilitet som forudsætning for fart, on-call som diagnose for kodekvalitet
- **Koordinationsomkostninger** — hvorfor flere folk ikke giver lineært mere output (Brooks' Law i praksis)
- **Rewrite vs refactor** — som timeline- og risiko-beslutning
- **ADRs** — arkitekturbeslutninger som levende dokumenter med "genovervejes-by"-trigger
- **Teknisk gæld oversat til forretningssprog** — change failure rate og leveringstid frem for "grim kode"
- **Product/engineering-interfacet** — informationsasymmetri, ikke mål-misalignment
- **Brilliant jerk-skatten** — hiring for løftekraft frem for individuel brillans

---

## Kilder

### Frameworks fra de oprindelige tre artikler
- [One-Way vs Two-Way Doors](https://blueprints.guide/posts/one-way-vs-two-way-doors) — blueprints.guide (Bezos' beslutnings-reversibilitetsramme)
- [Teknisk kviklånsgæld](https://responsen.substack.com/p/teknisk-kviklansgld) — Responsen (teknisk gæld som rovlån, sprint-procent-fælden)
- [The CTO at Different Growth Stages](https://www.linkedin.com/pulse/cto-different-growth-stages-how-technical-leadership-karabedyants-turgf) — Karabedyants (stage-awareness-modellen)

### Kodekvalitet og engineering-disciplin
- Robert C. Martin — *Clean Code* og *Clean Architecture*
- Dave Farley & Jez Humble — *Continuous Delivery*
- Dave Farley — *Modern Software Engineering*; [davefarley.net](https://www.davefarley.net/) og [Continuous Delivery (YouTube)](https://www.youtube.com/@ContinuousDelivery)
- [DORA / Accelerate](https://dora.dev/) — deployment frequency, lead time, MTTR, change failure rate

### Engineering-ledelse og tavs CTO-viden
- [Charity Majors](https://charity.wtf/) — observabilitet, on-call-kultur, [Architects, Anti-Patterns, and Organizational Fuckery](https://charity.wtf/2023/03/09/architects-anti-patterns-and-organizational-fuckery/)
- Will Larson — [Staff Engineer](https://staffeng.com/book/), *An Elegant Puzzle*, *Crafting Engineering Strategy*
- Camille Fournier — *The Manager's Path*; [interview hos Lenny's Newsletter](https://www.lennysnewsletter.com/p/engineering-leadership-camille-fournier)
- Gergely Orosz — [The Pragmatic Engineer](https://www.pragmaticengineer.com/), [How Engineering Can Work Better with Product Managers](https://blog.pragmaticengineer.com/how-engineering-can-work-better-with-product-managers/)
- [First Round Review — Technical Debt](https://review.firstround.com/articles/technical-debt/)
- [Glen Thomas — How to Make Architectural Decisions Stick](https://blog.glen-thomas.com/architecture/2025/05/24/how-to-make-architectural-decisions-and-stick-to-them.html) (ADRs)
- [LeadDev — The Brilliant Jerk is Back](https://leaddev.com/culture/the-brilliant-jerk-is-back) og [Brendan Gregg — Brilliant Jerks in Engineering](https://www.brendangregg.com/blog/2017-11-13/brilliant-jerks.html)
