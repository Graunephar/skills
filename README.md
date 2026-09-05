Just a collection of skills I've picked up through building products, working with AI, and solving problems.

Nothing fancy. Just things I know how to do, that I have put into skills for AI agents.

Mostly focused on startups, product development, technical leadership, AI, and making good decisions with limited time and information.

---

## My skills

| Skill | What it does |
|-------|--------------|
| [poll-claws](poll-claws/) | Polls Claws' Telegram chat in a self-scheduling loop, acting only on messages addressed to "local Claude" within strict host-safety rails, until a named stop condition is actually met |
| [product-concept-architect](product-concept-architect/) | Strategic sparring partner for product decisions — gives concrete directions and real pushback |
| [product-naming-parallel](product-naming-parallel/) | Spawns 11 naming exercises in parallel and filters to the 3 strongest candidates |
| [product-naming-v2](product-naming-v2/) | Structured help naming products, services, or companies |
| [ruthless-startup-cto-advisor](ruthless-startup-cto-advisor/) | Ruthless startup CTO advisor — grills you one question at a time as devil's advocate |

---

## External skills

| Skill | What it does | Install |
|-------|--------------|---------|
| [cto-team](https://github.com/alirezarezvani/claude-cto-team) | Strategic CTO team with agents for architecture, plan validation, and technology decisions — commands: `/cto` `/validate` `/design` `/decide` | `claude plugins marketplace add https://github.com/alirezarezvani/claude-cto-team` → `claude plugins install alirezarezvani/claude-cto-team` |
| [superpowers](https://github.com/obra/superpowers) | Structured workflows for coding: TDD, debugging, planning, code review, parallel agents, and branch completion | `claude plugins install superpowers` |
| [academic-research-skills](https://github.com/Imbad0202/academic-research-skills) | Complete academic research pipeline: research, paper writing, peer review, revision, and finalization — commands: `/ars-full` `/ars-reviewer` `/ars-lit-review` `/ars-citation-check` | `claude plugins marketplace add https://github.com/Imbad0202/academic-research-skills` → `claude plugins install academic-research-skills` |
| [caveman](https://github.com/JuliusBrussee/caveman) | Makes Claude speak like a caveman — drops filler words, keeps technical precision. ~65% fewer output tokens, ~3× faster responses. Commands: `/caveman [lite\|full\|ultra\|wenyan]` `/caveman-review` `/caveman-commit` `/caveman-stats` `/caveman-compress` | `curl -fsSL https://raw.githubusercontent.com/JuliusBrussee/caveman/main/install.sh \| bash` |
| [ponytail](https://github.com/DietrichGebert/ponytail) | Makes the AI agent the laziest senior dev in the room — enforces a 7-step YAGNI ladder (does it exist? already available? stdlib? native? dependency? one liner? else minimum that works) before any code is written. ~54% less code, ~20% cheaper, ~27% faster. Commands: `/ponytail [lite\|full\|ultra\|off]` `/ponytail-review` `/ponytail-audit` | `/plugin marketplace add DietrichGebert/ponytail` → `/plugin install ponytail@ponytail` |
| [geo-seo-claude](https://github.com/zubair-trabzada/geo-seo-claude) | GEO-first SEO analysis for AI search (ChatGPT, Claude, Perplexity, Gemini, Google AI Overviews) — full audits, citability scoring, crawler access checks, llms.txt, brand-mention scanning, schema markup, technical SEO, E-E-A-T content review, client-ready GEO reports/proposals, prospect CRM. Own isolated Python venv. Commands: `/geo audit\|quick\|citability\|crawlers\|report <url>` + 14 more sub-skills | `git clone https://github.com/zubair-trabzada/geo-seo-claude && bash geo-seo-claude/install.sh` |
| [walkthrough](https://github.com/alexanderop/walkthrough) | Generates interactive HTML walkthroughs with clickable Mermaid diagrams (flowcharts or ER diagrams) — explains codebase features, flows, architecture, and schemas. Fast onboarding: visual mental model in under 2 minutes. Commands: `walkthrough how does X work` `walk me through X` `database schema` | `npx skills add https://github.com/alexanderop/walkthrough --skill walkthrough` |
| [codebase-onboarding](https://github.com/affaan-m/everything-claude-code/blob/main/skills/codebase-onboarding/SKILL.md) | Analyzes an unfamiliar codebase without reading every file — reconnaissance → architecture mapping → convention detection — and generates a scannable onboarding guide plus a starter `CLAUDE.md`. Commands: `onboard me to this codebase` `generate a CLAUDE.md for this project` | `curl -sL https://raw.githubusercontent.com/affaan-m/everything-claude-code/main/skills/codebase-onboarding/SKILL.md -o /tmp/skill.md && mkdir -p ~/.claude/skills/codebase-onboarding && mv /tmp/skill.md ~/.claude/skills/codebase-onboarding/SKILL.md` |

---

## UX

| Skill | What it does | Source / Install |
|-------|--------------|-----------------|
| [frontend-design](https://claude.com/plugins/frontend-design) | Design guide for production-grade frontends with a distinct aesthetic — picks a clear direction (brutalist, editorial, luxury, etc.) and avoids generic AI slop | Official Claude plugin: `claude plugins install frontend-design` |
| [awesome-ux-skills](https://github.com/Graunephar/awesome-ux-skills) *(forked from [tommyjepsen/awesome-ux-skills](https://github.com/tommyjepsen/awesome-ux-skills))* | 19 UX skills: empathy mapping, journey mapping, personas, heuristics, ux-research, persuasive UX and more | `git clone git@github.com:Graunephar/awesome-ux-skills.git && bash awesome-ux-skills/install.sh` |
| [web-design-guidelines](https://github.com/vercel-labs/agent-skills/tree/main/skills/web-design-guidelines) | Reviews UI **code** against Vercel's Web Interface Guidelines — accessibility, focus states, layout, forms, performance | `git clone --depth 1 https://github.com/vercel-labs/agent-skills /tmp/vercel-skills && cp -R /tmp/vercel-skills/skills/web-design-guidelines ~/.claude/skills/` |
| [emil-design-eng](https://github.com/emilkowalski/skills/tree/main/skills/emil-design-eng) | Emil Kowalski's design-engineering taste: UI polish, component design, animation decisions, the invisible details. Repo has 10 more (animate, apple-design, review-animations, pick-ui-library…) | `git clone --depth 1 https://github.com/emilkowalski/skills /tmp/emil-skills && cp -R /tmp/emil-skills/skills/emil-design-eng ~/.claude/skills/` |
| [ux-designer](https://github.com/szilu/ux-designer-skill) | Broad UX/UI reference with 24 bundled docs — WCAG 2.2 / EAA, forms, information architecture, i18n and RTL, AI and voice UX, data tables, canvas apps | `git clone --depth 1 https://github.com/szilu/ux-designer-skill ~/.claude/skills/ux-designer` |
| [extract-design-system](https://github.com/arvindrk/extract-design-system) | Measures a **public** site's palette, type scale and spacing and writes starter `design-system/tokens.{json,css}`. Tokens only — no components, no semantic inference. Needs `npx playwright install chromium` first | `git clone --depth 1 https://github.com/arvindrk/extract-design-system /tmp/eds && cp -R /tmp/eds/skills/extract-design-system ~/.claude/skills/` |
| [tailwind-design-system](https://github.com/wshobson/agents/tree/main/plugins/frontend-mobile-development/skills/tailwind-design-system) | Tailwind **v4 only** component-library patterns: CSS-first tokens in `app.css`, brand vs semantic tokens, base → variants → sizes → states → overrides ordering | `git clone --depth 1 https://github.com/wshobson/agents /tmp/wshobson && cp -R /tmp/wshobson/plugins/frontend-mobile-development/skills/tailwind-design-system ~/.claude/skills/` |
| [onboarding](https://github.com/coreyhaines31/marketingskills/tree/main/skills/onboarding) | Post-signup activation: one goal per session, Signup → Step 1 → Step 2 → Activation → Retention, empty states and guided tours as designed surfaces | `git clone --depth 1 https://github.com/coreyhaines31/marketingskills /tmp/mkt && cp -R /tmp/mkt/skills/onboarding ~/.claude/skills/` |
