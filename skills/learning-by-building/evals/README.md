# Evals for learning-by-building

`evals.json` holds three scenarios in the format Anthropic's skill-creator
reads. All three are written against the
[meditation-assistant](https://github.com/HimanshuBhardwaj2398/meditation-assistant)
repository, because that is where the skill was developed.

| Eval | What it checks | Run so far |
|---|---|---|
| 1 | First turn of a new arc: one question, an arc file, no syllabus | Once, on the first version of `SKILL.md` |
| 2 | Second turn: concepts and runnable slices from the demo script | Once in that same run, on a revised `SKILL.md`. Not re-run since the delegated-step sentence and the template sections were added |
| 3 | A plain shipping request is not turned into a lesson | Never |

The results of that run are summarised in the repository's README.

## Running one

Run each eval in a throwaway worktree of the repository, so nothing lands in the
real checkout. For eval 2, first copy `files/arc-framing.md` to
`docs/learning/arcs/2026-10-02-grounded-answer-api.md` in that worktree.

Give the run these limits, since a real checkout's `.env` points at a database
and paid APIs:

- no dependency installs (`poetry add`, `poetry install`, `pip install`);
- no commits or pushes;
- no calls to the project's database or to any LLM or embedding provider.

## Cost

On Claude Opus, eval 1 used about 300k tokens and eval 2 about 100k more. The
skill has only been run on Opus. A run on a smaller model would be cheaper and
would also show whether the skill gives that model enough guidance.
