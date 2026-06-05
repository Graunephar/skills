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

### Engineering-disciplin (pre-startup-fokus)
Tilføjet et lag af konkret engineering-disciplin, der ikke var i originalen — holdt på det der har værdi for et 1-5-mands team, ikke corporate:
- **Dave Farley** — software engineering som empirisk disciplin, testbarhed som design-redskab, Definition of Done = deployet, CI som disciplin (trunk-based, ikke feature branches), DORA-metrikker, "vi kan ikke lave CD fordi..."-undskyldninger
- **Martin Fowler** — Monolith First (start simpelt, ekstrahér services når smerten er reel), Evolutionary Architecture (inkrementel ændring, fitness functions, last responsible moment), ADRs som lightweight dokumenter i version control
- **ADRs** — arkitekturbeslutninger som levende dokumenter med "genovervejes-by"-trigger
- **GDPR / data-residency** — læg ikke databasen i USA; one-way door der er billig at gøre rigtigt fra start og dyr at rette senere

Bevidst udeladt som corporate (ingen værdi i pre-startup): koordinationsomkostninger på tværs af mange teams, observability/on-call-kultur, rewrite-vs-refactor-rammer, teknisk gæld oversat til executives, product/engineering-org-interface, og hiring-frameworks.

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

### Arkitektur, evolution og beslutninger
- [Martin Fowler — MonolithFirst](https://martinfowler.com/bliki/MonolithFirst.html)
- [Martin Fowler — Microservice Trade-Offs](https://martinfowler.com/articles/microservice-trade-offs.html)
- [Martin Fowler — Scaling the Practice of Architecture, Conversationally](https://martinfowler.com/articles/scaling-architecture-conversationally.html) (ADR-struktur)
- [Building Evolutionary Architectures (Ford, Parsons, Kua) — via martinfowler.com/tags/evolutionary design](https://martinfowler.com/tags/evolutionary%20design.html) (fitness functions, inkrementel ændring)
- [Michael Nygard — Documenting Architecture Decisions](https://cognitect.com/blog/2011/11/15/documenting-architecture-decisions) (oprindelig ADR-artikel)
- [Glen Thomas — How to Make Architectural Decisions Stick](https://blog.glen-thomas.com/architecture/2025/05/24/how-to-make-architectural-decisions-and-stick-to-them.html)

### Compliance
- [GDPR — data-overførsler til tredjelande (EU-Kommissionen)](https://commission.europa.eu/law/law-topic/data-protection/international-dimension-data-protection_en)
