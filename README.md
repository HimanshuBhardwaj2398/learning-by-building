# learning-by-building

A [Claude Code](https://code.claude.com/docs/en/overview) skill for building a
real feature while learning the ideas behind it. You write the few lines that
carry the concept. Claude writes the tests and the plumbing, then stops and
waits for you.

## Why

When Claude builds a feature for you, the feature works and you have learned
nothing new. Anthropic measured this in a
[controlled trial](https://www.anthropic.com/research/AI-assistance-coding-skills)
of developers learning a new library: the group with AI assistance scored 50% on
a comprehension quiz, against 67% for those who coded by hand, and the gap was
largest on debugging. The people who used AI and still learned were the ones who
asked conceptual questions and had the code explained to them.

This skill changes who does what, so that the feature still gets built and you
come out able to explain it.

## How a feature goes

One feature, taken from idea to written-up, is called an arc.

1. **Frame.** Claude searches your project's docs for what has already been
   decided about the feature, then asks you one question: how will someone use
   this when it is done? Your answer becomes the demo script. From it, Claude
   proposes two to four concepts to learn and three to seven steps, each of
   which ends with something new you can run by hand.
2. **Steps**, one per sitting. Each follows the four moves of George Pólya's
   *How to Solve It*:
   - **Understand.** One resource, where to start in it, one question to answer
     while reading, 20 minutes at most.
   - **Plan.** You answer one design question about your own codebase before any
     code exists. Claude records your answer and does not correct it.
   - **Carry out.** Claude writes a failing test and the plumbing, and marks the
     core with `TODO(human)`. You write the core a line or two at a time,
     running each piece. Then Claude reviews what you wrote.
   - **Look back.** You run the feature by hand, try to break it, and explain it
     in your own words, including one other way it could have been built.
3. **Write-up.** A journal entry assembled from your own predictions and
   explanations. Claude drafts it and adds no lesson you did not voice.

Some steps are pure plumbing. For those the roles flip: you write the brief,
Claude builds it, and you review the diff. That is practice at the other half of
working with a coding agent.

If you are stuck, Claude asks what you think the error is saying before it
explains anything. If you ask it to just write a piece, it does, and notes that
you owe an explanation at the start of the next sitting.

This is the hand-off from a test run, shortened, for a step that adds a
question-answering endpoint to an existing project:

> **Your task.** In `api/main.py`, at `TODO(human)`: the request model and the
> `POST /ask` route. About 10 to 15 lines.
>
> **First experiment.** Before you write the route, make its two calls by hand
> in a REPL and look at what comes back.
>
> **Guidance.** `def` or `async def`? Both calls block. Write it a line or two
> at a time; the dev server reloads on save, so you can try each piece before
> writing the next.

## Install

**As a personal skill.** The command is `/learning-by-building`.

```bash
git clone https://github.com/HimanshuBhardwaj2398/learning-by-building.git
mkdir -p ~/.claude/skills
cp -r learning-by-building/skills/learning-by-building ~/.claude/skills/
```

**As a plugin.** The command is `/learning-by-building:learning-by-building`.

```bash
claude plugin marketplace add HimanshuBhardwaj2398/learning-by-building
claude plugin install learning-by-building@learning-by-building
```

## Use

```text
/learning-by-building an HTTP API for search    start a new arc
/learning-by-building                           resume the arc in progress
```

You can also just tell Claude you want to learn while building something. If you
only want a change shipped, say so, and the skill stays out of the way.

Each sitting is best started in a fresh session. Everything that matters is in
the arc file.

## What it writes into your project

One markdown file per arc, in `docs/learning/arcs/` or wherever your project
already keeps a journal. It holds the demo script, the concepts, the steps with
their status, and your notes for each step in your own words. It never holds
solution code. At the end of an arc, one journal entry is added.

Commits are offered, never made without your say.

## What is in this repository

| Path | What it is |
|---|---|
| `skills/learning-by-building/SKILL.md` | The instructions Claude follows |
| `skills/learning-by-building/resources.md` | About 135 links to free material on software design, API development, agents and LLM applications, working with coding agents, usability, shipping, and writing |
| `skills/learning-by-building/arc-template.md` | The file each arc starts from |
| `skills/learning-by-building/scripts/check_links.sh` | Re-checks every link in `resources.md` |
| `skills/learning-by-building/evals/` | Three test scenarios in the format Anthropic's skill-creator reads |
| `.claude-plugin/` | The plugin and marketplace manifests |

## How it was tested, and what was not

The skill was compared against Claude Code without it: the same request, in the
same real project, run on Claude Opus.

| | Without the skill | With the skill |
|---|---|---|
| First message | Nine steps, 24 links, about 900 words | One question: how will someone use this? |
| Memory between sessions | None | The arc file |
| Step order | By topic; the first real answer came at step 5 | Four slices; step 1 already returned a real answer |
| Who types | "You'll type every line" | The learner writes the route; Claude writes the test and plumbing |
| "I'm tired, just write it" | Not tested | Wrote it, marked the step as given, explanation owed next time |

No test has yet exercised these:

- the review of the learner's code, the look-back, a delegated step, resuming in
  a new session, and the write-up;
- any model other than Claude Opus;
- whether Claude loads the skill on its own for the right requests.

Framing a new arc in a repository with many design docs cost about 300,000
tokens in the test. The instructions were changed afterwards to search the docs
for the feature instead of reading all of them, and that change has not been
re-measured.

If something goes wrong in a real arc, an issue describing what Claude did is
the most useful thing you can send.

## Credits

- George Pólya's *How to Solve It*, and the way Answer.AI's SolveIt applies it to
  code: [Launching Solveit](https://www.answer.ai/posts/2025-10-01-solveit-full.html)
  by Johno Whitaker and
  [How To Solve It With Code](https://www.answer.ai/posts/2024-11-07-solveit.html)
  by Jeremy Howard. Small pieces, a first experiment, and looking back all come
  from there.
- Anthropic's study,
  [How AI assistance impacts the formation of coding skills](https://www.anthropic.com/research/AI-assistance-coding-skills).
- Claude Code's built-in
  [Learning output style](https://code.claude.com/docs/en/output-styles), whose
  `TODO(human)` marker this skill reuses.

## Licence

MIT. See [LICENSE](LICENSE).
