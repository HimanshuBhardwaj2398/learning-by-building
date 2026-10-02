# Arc: HTTP API for grounded answers

Status: framing
Started: 2026-10-02
Journal entry: not written yet
Next: put the learner's demo-script answer into the demo script below, then choose concepts and steps from it and ask for an OK on the steps table.

Status is one of: framing, in progress, writing up, done.

## What the project has already decided

Decisions in the project's own docs that bear on this feature, each with where
it is written. Frame from these instead of deciding again.

- **Timing.** The eval strategy design
  (`docs/plans/2026-07-13-retrieval-eval-strategy-design.md`) lists "FastAPI
  service now" under what it is not doing, and puts a thin FastAPI at Phase 4 of
  its ladder. The learner has chosen to build it now as a learning track; the
  eval gate still decides what becomes the default.
- **Where it sits.** The hardening design
  (`docs/plans/2026-07-10-architecture-hardening-retrieval-foundations-design.md`)
  draws a future API beside `views/` as one more thin consumer, with wiring done
  once in a composition root, and rules out a DI framework or container.
- **What it takes in.** The agentic seam design
  (`docs/plans/2026-07-16-retrieval-observability-agentic-seam-design.md`) keeps
  "user message" and "retrieval query" as distinct concepts: no API may conflate
  the two.
- **What answers.** The agentic RAG v1 design
  (`docs/plans/2026-07-16-agentic-rag-v1-design.md`): the agent does not replace
  plain RAG as the default until it beats the Phase-2/3 winner on the end-to-end
  eval sets.

## Demo script

Written before any design. This is what "working" means for the arc.

- Who uses this, and to do what:
- How they use it (the exact commands or clicks):
- What they see when it works:
- One way it fails, and what they see then:

## Concepts

Two to four. One resource each.

| Concept | Lens | Where it already shows up in this repo | Resource | Read it to answer |
|---|---|---|---|---|
| | software / agents / usability | | | |

## Steps

Each step ends with something new that can be run by hand.

| # | What you can run when it is done | Concept | Kind | Status |
|---|---|---|---|---|
| 1 | | | core | todo |

- Kind: `core` means the learner writes the lines that carry the concept.
  `delegated` means the learner writes the brief and reviews the diff.
- Status: `todo`, `in progress`, `done`, or `given` (Claude wrote the core; the
  learner still owes an explanation of it).

## Notes

One block per step, filled in as the step happens. The learner's words, not
Claude's. No solution code.

### Step 1: <what you can run>

- Predicted:
- Turned out:
- In my words:
- Another way it could have been built:
- As a user:
- Ideas:

## Ideas

Things that using the app made the learner want. Candidates for the next arc.
