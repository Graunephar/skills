---
name: single-source-rebase
description: Rebase a diverged local branch onto its origin counterpart to produce a single, clean, linear source of truth, resolving conflicts at the feature/intent level while preserving every commit's authorship — never pushing, force-pushing, or committing on the user's behalf. Use when local main (or any branch) has diverged from origin because the user has local commits and collaborators have pushed theirs, and the user wants a single, linear source of truth before they push manually. Triggers: "rebase", "diverged from origin", "compare my changes to origin/main", "clean/linear history", "fix conflicts without losing changes", "single source of truth".
---

# Clean Rebase

Encodes the user's opinionated workflow: *compare local branch to origin, rebase to a clean linear history, fix conflicts without losing anyone's work, ask when in doubt.*

## Iron rules (never violate)

- **NEVER push, force-push, or commit on the user's behalf.** This skill stops before any push. The user pushes manually, always.
- **NEVER squash or drop a collaborator's commits.** Authorship stays intact — their commits appear in the rebased history as theirs.
- **Resolve conflicts at the FEATURE/INTENT level, not line by line.** Ask "keep yours, keep theirs, or combine — and how?" The user applies the actual line-level resolution with their own tools. You set the intent; they execute it.
- **When history has genuinely diverged or intent is unclear → STOP and ask what to keep.** Never guess.

## Workflow

### 1. Preflight — establish the branch and its upstream
This skill is **not** main-only. Always resolve the current branch and the origin branch it rebases onto — never assume `main`.
```bash
git status                                          # working tree must be clean
BRANCH=$(git rev-parse --abbrev-ref HEAD)           # the branch you're on
UPSTREAM=$(git rev-parse --abbrev-ref --symbolic-full-name @{u} 2>/dev/null)  # its tracking branch
git fetch origin                                    # get the real upstream tip
```
- If `@{u}` resolves, that's your `<upstream>` (e.g. `origin/feature-x`).
- If it does NOT (no tracking branch set), **ask** which origin branch to rebase onto — default to `origin/$BRANCH` if it exists, else `origin/main`. Never guess silently.
- If the tree is dirty, ask whether to stash or commit first. Do neither without an answer.

Use `<upstream>` in every step below in place of any literal branch name.

### 2. Compare (show the divergence before changing anything)
```bash
git log --oneline --left-right --graph <upstream>...HEAD
```
Report plainly: which commits are **yours** (local, unpushed), which are the **collaborator's** (now on the upstream), and where they touch the same files. This is the "compare my changes to origin" step.

### 3. Backup ref (safety net — do this every time)
```bash
git branch backup/pre-rebase-$(git rev-parse --short HEAD)
```
Tell the user the backup name. This is the undo button if resolution goes wrong.

### 4. Rebase onto the upstream
```bash
git rebase <upstream>
```
This replays your local commits on top of the collaborator's. Their commits come straight from the upstream (authorship preserved); yours keep their authorship too.

### 5. Resolve conflicts — feature level only
On each conflict, do NOT edit hunks. Instead:
- Read both sides and state the **intent** of each: "Yours adds X. Theirs adds Y. They overlap in `<file>`."
- Ask: **"Keep yours, keep theirs, or combine? If combine, what's the desired end state?"**
- The user resolves the lines with their own tooling. Then:
```bash
git add <files>
git rebase --continue
```
If at any point the divergence is too tangled to map to a clear intent → **`git rebase --abort`** back to safety and ask the user how they want to proceed (offer cherry-picking specific commits as an alternative).

### 6. Verify nothing was lost
```bash
git range-diff <upstream>...backup/pre-rebase-<sha> <upstream>...HEAD
git log --format='%an  %s' <upstream>..HEAD
```
Confirm every original commit maps to a rebased one, and that collaborator authorship is intact. Surface anything that range-diff flags as dropped or unexpectedly changed.

### 7. Validate the rebased result actually works
A clean merge of conflicts can still produce code that doesn't compile or run. Before handing off, prove the rebased tip is sound. **Detect the project's commands — don't assume.** Look at what the repo actually uses:
- **Node:** `package.json` scripts — prefer `build`, `typecheck`/`check`, `lint`, `test` (e.g. `npm run build`, `pnpm check`, `npm test`). SvelteKit: `svelte-check`.
- **Rust:** `cargo build` / `cargo test`. **Go:** `go build ./...` / `go test ./...`. **Python:** `ruff`/`mypy`/`pytest` per config. **Make:** a `build`/`test`/`check` target.
- If you genuinely can't tell what to run, **ask** — don't skip silently.

Run the cheapest sound check first (typecheck/build), then tests if quick. Report pass/fail with the actual error output. If the build breaks, it's almost always a conflict resolved against intent — go back to the relevant commit, don't paper over it.

**Migrations — validate, never apply.** Per the standing rule, never run DB migrations automatically. Detect drift only (e.g. `drizzle-kit check`, `prisma migrate status`, `alembic check`) and report it. If the rebase pulled in a collaborator's migration that conflicts with yours, surface it and **ask** how to reconcile — do not run `migrate`/`push`.

### 8. Hand off (do not push)
Report:
- History is now linear; `git log --oneline --graph` is clean.
- Build/test/migration validation results (or what couldn't be checked and why).
- **The push will be a fast-forward — no force needed.** State this explicitly.
- Stop here. The user pushes when ready.

## The force-push tripwire

If you ever determine that pushing would require `--force` / `--force-with-lease`, **that is not a step to take — it is a signal.** It means history diverged beyond a clean rebase-onto-origin (e.g. your branch was already pushed and rewritten). STOP, explain what diverged, and ask the user what they want to keep. Never run, suggest, or imply a force-push.

## Cleanup

After the user confirms their manual push succeeded, offer to delete the backup ref:
```bash
git branch -D backup/pre-rebase-<sha>
```
Leave it in place until they confirm.
