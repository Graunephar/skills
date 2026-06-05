---
name: product-naming-parallel
description: Parallel multi-agent produktnavngivning til Claude Code. Spawner 11 navngivningsøvelser simultant via bash, samler output i en fælles bruttoliste, kører en 5-filter kritiker-tragt, og præsenterer de 3 stærkeste kandidater. Brug når brugeren vil navngive et produkt, en virksomhed, en feature eller en service — særligt i startup-kontekst. Trigger på: "find et navn", "navngivning", "hvad skal det hedde", "product naming".
compatibility: claude-code
---

# Product Naming — Parallel

Tre faser:
- **A: BRIEF** — forstå kontekst, ét spørgsmål ad gangen
- **B: PARALLEL SWARM** — kør alle 11 øvelser simultant via script
- **C: KRITIKER + OUTPUT** — 5-filter tragt, præsentér de 3 stærkeste

---

## A: BRIEF

Læs `references/brief.md`. Stil spørgsmål ét ad gangen.
Minimum 8 spørgsmål besvaret før du går videre.

Når brief er komplet: gem den til `/tmp/naming-brief.txt`:
```bash
cat > /tmp/naming-brief.txt << 'EOF'
[indsæt komplet brief her — alle svar fra brugeren]
EOF
```

Sig derefter: "Godt — spawner 11 navneagenter parallelt nu."

---

## B: PARALLEL SWARM

Kør scriptet der launcher alle 11 øvelser som baggrundsjobs simultant:

```bash
bash ~/.claude/skills/product-naming-parallel/scripts/run_parallel.sh
```

Scriptet:
1. Launcher alle 11 agenter som parallelle baggrundsjobs (`&`)
2. Venter på alle med `wait`
3. Samler og deduplikerer til `/tmp/naming-candidates/bruttoliste.txt`
4. Rapporterer antal kandidater per øvelse

Når scriptet er færdigt, vis antallet og gå til KRITIKER.

---

## C: KRITIKER

Læs `references/kritiker.md`.
Kør alle 5 filtre på bruttolisten fra `/tmp/naming-candidates/bruttoliste.txt`.
Skriv overlevelsesantal efter hvert filter.

---

## OUTPUT

Læs `references/output.md`.
Præsentér præcis 3 navne — maksimalt forskellige fra hinanden.

---

## FEEDBACK-LOOP

Læs `references/feedback.md`.
Kør ny fuld SWARM + KRITIKER + OUTPUT ved hver feedback.
Loopet stopper aldrig af sig selv — kør altid en ny runde.
