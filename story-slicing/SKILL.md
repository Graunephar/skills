---
name: story-slicing
description: Story slicing practitioner framework grounded in Gary Straughan's "Development That Pays" perspective. Use when refining a backlog, debating estimation, planning sprints, or evaluating whether a story is small enough to work. Aligns with #NoEstimates via ticket-count forcing function. Triggers on: "is this story too big?", "we spent two hours estimating", "how do we slice this?", "planning poker is broken", "how small should a story be?"
---

# Story Slicing — Development That Pays

## The lens

This framework comes from Gary Straughan's **"Development That Pays"** platform — tagline: *"Software Development As If Profit Mattered."*

The framing question for every slice is not *"how do we make this story smaller?"* but *"what is the smallest thing that delivers utility to a paying customer?"*

> "I'm not interested in creating art. I'm interested in providing utility."
> — Gary Straughan, developmentthatpays.com/about

Good code is not the goal. Profitable software — software that delivers utility and generates outcomes — is the goal. Story slicing is a tool for getting there faster, not a process ritual.

---

## Why slicing replaces estimation

**The problem with estimation:** The number is almost always wrong. But the *discussion* that produces the number is valuable — it surfaces misunderstanding, hidden complexity, and scope ambiguity.

**The insight:** Story slicing is the same conversation — but it produces something better than a number. It produces *smaller, clearer stories*.

> "Story Slicing is the better conversation that I'd been seeking."
> — Gary Straughan, developmentthatpays.com/posts/150-best-part-of-agile-estimating

When you master slicing, stories become small enough that estimation becomes unnecessary. You don't abolish estimation by policy — it becomes irrelevant because nothing is big enough to need it.

---

## The car analogy — direction + power

A story needs two things before it's ready to work:

**🎯 Steering wheel — direction**
What value does this story deliver? To whom? If you can't answer this in one sentence, the story isn't clear enough to slice correctly. You might be solving the wrong problem entirely.

**⚡ Pedal — power / effort**
Can the team move on this without it stalling the sprint? If a story requires three weeks of work, the engine stalls before it delivers anything.

**The diagnostic:**
- Fuzzy on direction → don't slice yet, clarify the value first
- Clear direction but too large → slice on the pedal axis: what's the smallest move in this direction that delivers something?
- Fuzzy on both → this is a spike or a discovery task, not a story

Estimation only addresses the pedal. Slicing forces you to address both.

---

## Ticket count as the forcing function (#NoEstimates)

Straughan aligns with Vasco Duarte's #NoEstimates direction but arrives via a concrete mechanism:

**Use ticket count — not story points — as your velocity metric.**

If velocity = *number of tickets completed per sprint* (instead of story points), teams are structurally incentivized to keep stories small. A large story punishes your velocity count the same way an un-closed ticket does. You stop estimating because you start slicing.

**How it works in practice:**
1. Drop story points from the board
2. Measure: how many tickets does the team close per sprint?
3. Forecast: divide total tickets by average weekly throughput
4. The metric creates its own pressure — teams start slicing without being told to

This is a two-way door change. Try it for three sprints before judging.

**Note:** The first three sprints are calibration — ignore velocity during that window.

---

## How to slice a story

### The slicing test
A slice is valid if it passes at least one:
1. A stakeholder could choose to *not* build the rest of it after seeing this slice
2. It's independently deployable and produces observable value

If neither applies, you haven't sliced — you've just split technical tasks.

### Common slice cuts

| Cut | Question to ask | Example |
|-----|----------------|---------|
| **Happy path first** | What does the flow look like with zero edge cases? | Login without "forgot password" |
| **One user type** | Which user gets value first? | Admin before end user |
| **One data variant** | What's the simplest data case? | Single currency before multi-currency |
| **Read before write** | Can you show data before you let users change it? | View report before edit report |
| **Manual before automated** | What would the non-scalable, human-powered version be? | Send email manually before automating it |

### The "parking lot" move
When slicing reveals a valuable-but-deferred piece, **park it explicitly**. Don't lose it. Don't build it now. A parking lot item is a slice you've chosen to defer — not scope creep, not abandonment.

---

## Slicing in practice — the questions

When presented with a story, work through these in order:

1. **"Who pays for this, and what do they get?"** — forces direction clarity
2. **"What's the simplest version that a customer would notice?"** — finds the happy path slice
3. **"What can we park?"** — makes deferral explicit and intentional
4. **"Could we ship this slice independently and learn something?"** — validates the slice is real

If the team can't answer question 1, stop slicing. Fix the story first.

---

## When you're done slicing

A story is small enough when:
- The team can describe it in one sentence without qualifiers
- No one feels the need to estimate it — the scope is obvious
- It can be completed and deployed in one sprint without heroics
- It delivers something a real user can interact with (not just internal plumbing)

---

## Sources

- [Gary Straughan — About](https://www.developmentthatpays.com/about)
- [Post 150: The Best Part of Agile Estimating](https://www.developmentthatpays.com/posts/150-best-part-of-agile-estimating)
- [Post 152: Agile Forecasting With and Without Story Points](https://www.developmentthatpays.com/posts/152-agile-forecasting-with-and-without-story-points)
- [Gary Straughan — LinkedIn](https://www.linkedin.com/in/garystraughan/)
