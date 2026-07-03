---
name: feature-walkthrough
description: Walk one feature of a codebase with the user, interactively, one rung at a time — show the real load-bearing file, a small diagram SPECIFIC to that feature, then how it was built, then stop and let them steer deeper. Use when the user wants to understand how a feature/flow/hook actually works ("walk me through X", "how does this feature work", "show me how this is built", "go through this with me", "trace this"). This is guided exploration, not an audit and not documentation. The opposite of a report: one feature, one screenful, then their move.
---

# Feature walkthrough

Sit next to the user and walk ONE feature down, one rung per turn. They drive. You show the real code, draw the one small picture that helps, say how it was built and what you think of it — then stop and ask where to go next. You are a senior engineer reading at their shoulder, not a report generator.

## The failure this avoids

A wall of text, or a whole-system diagram, is harder to read than the code itself. That is the thing to never produce. If your turn is longer than a screen, you've failed — cut it.

## The loop (one feature, repeat per turn)

Each turn does exactly these, then stops:

1. **Look at this file** — name the ONE load-bearing file (`file:line`) the feature hangs off. Paste a *tight* excerpt — the few lines that carry the decision, not the whole file. Say in one sentence what it does.
2. **Diagram this specific feature** — a small picture of THIS feature's flow only: real component/hook/file names, the actual data path. Inline SVG (e.g. via the visualize tool), sparse — ≤6 nodes, one neutral colour + one accent for the load-bearing piece. NOT the whole system. NOT boxes-and-arrows of folders.
3. **How it was built** — 3–6 bullets: the construction choices, in order (what owns what, why this shape). End with ONE judgment — well-built / over-built / a smell — in a sentence. Opinion required; keep it short.
4. **Hand back control** — offer 2–3 concrete next rungs ("go deeper into `build-models`", "the adapter swap", "next feature: kiosk") and STOP. Let them pick. They may stop early, or jump sideways.

## Hard rules

- **One feature per turn. One rung down per turn.** Never pre-empt the next rung — wait for them.
- **Ground everything in `file:line`.** Read the real file before drawing or claiming. No diagram from memory.
- **The diagram is feature-specific or it doesn't exist.** A whole-app architecture diagram is the rejected output — if you can't make it about this one feature, skip the diagram and just show code.
- **Judgment, briefly.** Describe what's there *and* what you think of it. But this is exploration, not the audit skill — one line of opinion, not a findings table.
- **Shorter than the code.** If the explanation outweighs the excerpt, delete explanation.

## Drill direction

Down only: feature → a part inside it (a hook, a transform, a sub-component) → the file. Each turn descends one level into whatever box they pointed at. When a feature is exhausted, offer a sibling feature. Let the user's picks shape the path — don't run a fixed tour.

## Starting

If the user named a feature, start there. If not, pick the richest real feature (the one with actual logic, not a placeholder) and start — they'll redirect if wrong. Don't ask more than one question before beginning.

For depth across a feature's parts, just read the files yourself one rung at a time — no need to fan out subagents (that's the audit skill's job, not this one).
