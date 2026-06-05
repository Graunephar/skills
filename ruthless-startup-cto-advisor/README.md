# Ruthless Startup CTO Advisor

A technology-agnostic, ruthless startup CTO advisor and sparring partner that acts as a hard-nosed devil's advocate. Grills you - one question at a time - before it concludes. Combines startup strategy, architectural guidance, and systematic validation.

## Usage

```
/ruthless-startup-cto-advisor [question]  - general CTO advice; grills you before it concludes
/design [system]                          - architecture design with trade-offs and counterarguments
/validate [plan]                          - full interrogation followed by a hard-nosed validation report
/decide [choice]                          - decision support with one/two-way classification
```

---

## Credits

This skill is based on and heavily inspired by **[claude-cto-team](https://github.com/alirezarezvani/claude-cto-team)** by [Alireza Rezvani](https://github.com/alirezarezvani), published under the MIT license.

The original repo implements a three-agent system (orchestrator, architect, strategic-cto-mentor) with 12 specialized skills.

---

## What's kept from the original

- **8-section validation report** - Verdict (GOOD/NEEDS MAJOR WORK/BAD), strengths, critical weaknesses, blindspots, reframing, success criteria, path forward, open questions
- **Assumption analysis** - five categories (timeline, resources, technical, business, external) with concrete challenge patterns and wishful-thinking indicators
- **25 named anti-patterns** across architecture, timeline, team, technology, and process
- **Clarification protocol** - challenge-mode over interview-mode (rewritten into the grill-me mechanic, see below)
- **Seven-dimension evaluation** - business, technical, operational, financial, timeline, team, market
- **Architecture-pattern selector** with decision criteria for monolith/microservices/serverless
- **Four-stage scaling guide** - 0-10K / 10K-100K / 100K-1M / 1M+ users

---

## What's changed and added

### Grill-me mechanic as default (most important change)
Where the original delivers analysis/reports in one shot, this version is rewritten to *interrogate* - inspired by the `grill-me` skill. The default behavior is: one question at a time, never accepting vague answers, digging into the same point until the assumption is resolved, walking every branch of the decision tree, and concluding only once the interrogation is done. The tone is hard-nosed but fair - attacks the argument, not the person, and clearly acknowledges when something is strong. The validation report is now the *end product* of an interrogation, not a first response.

### Technology-agnostic approach
The original explicitly focuses on web/mobile/ML stacks (React, Node.js, Kubernetes, etc.). This version always asks about context and the current stack before recommending anything - and avoids recommending specific technologies without knowing the constraints.

### Devil's advocate core stance
The original is analytical and systematic. This version actively challenges what the user says - inspired by the `/grill-me` skill's approach. It doesn't accept premises at face value and presents counterarguments.

### One-Way vs Two-Way Doors as the primary decision principle
The classification (from the Jeff Bezos framework) is elevated as the central distinction. Concretely: spend time on technology choices (one-way), but feel free to duct-tape features together when the architecture is sound (two-way).

### Code quality as a principle (Uncle Bob / Dave Farley)
Added explicit grounding in Clean Code (Robert C. Martin) and Modern Software Engineering (Dave Farley): readability as a maintenance cost, loose coupling as a pragmatic principle (not corporate ritual), testability as a design signal.

### Loose coupling - pragmatic, not academic
Focus on what loose coupling actually solves day to day: can you change A without breaking B? Can you test business logic without a real database? Without the enterprise-abstraction talk that makes no sense in a small team.

### MVP and startup mindset
Explicit room to cut corners where the fence is lowest - but with concrete limits on what's never acceptable (security, unreadable code, one-way doors taken wrong).

### Feature Creep as a standalone theme
Added as an explicit focus area: what it looks like, the cost, and concrete questions that challenge scope expansion.

### Language support
Responds automatically in the language the user writes in (Danish or English).

### Stage awareness
Advice is explicitly adapted to the Early / Growth / Scaling / Enterprise stage.

### Engineering discipline (pre-startup focus)
Added a layer of concrete engineering discipline that wasn't in the original - kept to what has value for a 1-5 person team, not corporate:
- **Dave Farley** - software engineering as an empirical discipline, testability as a design tool, Definition of Done = deployed, CI as a discipline (trunk-based, not feature branches), DORA metrics, "we can't do CD because..." excuses
- **Martin Fowler** - Monolith First (start simple, extract services when the pain is real), Evolutionary Architecture (incremental change, fitness functions, last responsible moment), ADRs as lightweight documents in version control
- **Paul Graham** - Make Something People Want, Startup = Growth (startup as a search for a business model, not a building project), Do Things That Don't Scale (manual work and non-scalable user delight over premature automation)
- **Eric Ries** - Build → Measure → Learn and validated learning as output; the central heuristic "which solution yields the most learning per development hour?" (deliberately not the MVP concept, which is already covered)
- **Amazon / Jeff Bezos - Disagree and Commit** - make a decision and move on rather than chasing the perfect one; breaks analysis paralysis, allows progress without consensus (applies to two-way doors, not one-way)
- **ADRs** - architecture decisions as living documents with a "revisit-by" trigger
- **GDPR / data residency** - don't put the database in the US; a one-way door that's cheap to get right from the start and expensive to fix later

Deliberately left out as corporate (no value in a pre-startup): cross-team coordination overhead, observability/on-call culture, rewrite-vs-refactor frameworks, technical debt translated for executives, the product/engineering org interface, and hiring frameworks.

---

## Sources

### Frameworks from the original three articles
- [One-Way vs Two-Way Doors](https://blueprints.guide/posts/one-way-vs-two-way-doors) - blueprints.guide (Bezos' decision-reversibility framework)
- [Teknisk kviklånsgæld](https://responsen.substack.com/p/teknisk-kviklansgld) - Responsen (technical debt as a payday loan, the sprint-percentage trap)
- [The CTO at Different Growth Stages](https://www.linkedin.com/pulse/cto-different-growth-stages-how-technical-leadership-karabedyants-turgf) - Karabedyants (the stage-awareness model)

### Code quality and engineering discipline
- Robert C. Martin - *Clean Code* and *Clean Architecture*
- Dave Farley & Jez Humble - *Continuous Delivery*
- Dave Farley - *Modern Software Engineering*; [davefarley.net](https://www.davefarley.net/) and [Continuous Delivery (YouTube)](https://www.youtube.com/@ContinuousDelivery)
- [DORA / Accelerate](https://dora.dev/) - deployment frequency, lead time, MTTR, change failure rate

### Architecture, evolution, and decisions
- [Jeff Bezos - 2016 Letter to Shareholders](https://www.aboutamazon.com/news/company-news/2016-letter-to-shareholders) (Disagree and Commit, two-way vs one-way doors, high-velocity decisions)
- [Amazon Leadership Principles - Have Backbone; Disagree and Commit](https://www.amazon.jobs/content/en/our-workplace/leadership-principles)
- [Martin Fowler - MonolithFirst](https://martinfowler.com/bliki/MonolithFirst.html)
- [Martin Fowler - Microservice Trade-Offs](https://martinfowler.com/articles/microservice-trade-offs.html)
- [Martin Fowler - Scaling the Practice of Architecture, Conversationally](https://martinfowler.com/articles/scaling-architecture-conversationally.html) (ADR structure)
- [Building Evolutionary Architectures (Ford, Parsons, Kua) - via martinfowler.com/tags/evolutionary design](https://martinfowler.com/tags/evolutionary%20design.html) (fitness functions, incremental change)
- [Michael Nygard - Documenting Architecture Decisions](https://cognitect.com/blog/2011/11/15/documenting-architecture-decisions) (the original ADR article)
- [Glen Thomas - How to Make Architectural Decisions Stick](https://blog.glen-thomas.com/architecture/2025/05/24/how-to-make-architectural-decisions-and-stick-to-them.html)

### Startup strategy and product
- [Paul Graham - Do Things That Don't Scale](https://paulgraham.com/ds.html)
- [Paul Graham - Startup = Growth](https://paulgraham.com/growth.html)
- [Paul Graham - essays (all)](https://paulgraham.com/articles.html)
- [Eric Ries - The Lean Startup](http://theleanstartup.com/principles) (Build → Measure → Learn, validated learning, pivot or persevere)

### Compliance
- [GDPR - transfers of data to third countries (European Commission)](https://commission.europa.eu/law/law-topic/data-protection/international-dimension-data-protection_en)
