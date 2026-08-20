---
name: session-shutdown
description: End-of-session cleanup — kill dev servers/background processes started this session, verify no uncommitted work is left behind, remove the git worktree if this session used one, sign off warmly. Use when user says "get ready for session shutdown", "wrap up", "close the worktree", "PR accepted, clean up", or a goodbye like "bye until next time".
---

# Session shutdown

Daniel's end-of-session ritual: PR's accepted, he's about to close/archive the session. Leave nothing running, nothing uncommitted, nothing dangling. Reply in kind — warm, brief, matches his tone (he often signs off with 👋).

## Steps

1. **Kill what this session started.** Any dev server / ngrok tunnel / preview_start server / background Bash job (`run_in_background`) launched during this conversation — stop it. Check for a still-running process before declaring done (`jobs`, or the PID/port you started it on). Don't touch unrelated processes on the machine.

2. **Check for unfinished work.** `git status` in the worktree — check it regardless of what this conversation remembers doing; work can land there from another session too. If clean, skip to step 3.
   If NOT clean, **ask** (don't assume, don't discard, don't auto-commit):
   - Commit it now (get a message from him, or draft one from the diff and confirm)
   - Stash it
   - Leave the worktree as-is, uncleaned, for later
   Whatever he picks, don't remove the worktree until it reflects his answer (committed/stashed, or "leave it" → skip step 3 entirely).

3. **Close the worktree, if this session is in one.**
   - Confirm it actually IS a worktree (`git rev-parse --git-common-dir` differs from `--git-dir`, or check the path for a `worktrees/` segment / `.claude/worktrees/`).
   - `git worktree remove <path>` — safe to do unprompted here specifically because the user just said the session is ending and the PR is accepted, and step 2 has already resolved anything uncommitted (this is the standing exception: worktree cleanup needs no extra ask once the session is finished, the tree is clean, and the path is a claude-managed worktree).

4. **Never merge the PR, never push, never touch main.** "Accepted" means the human merges it. Your job here is purely local cleanup.

5. **Sign off.** Short, warm, no summary essay — the work's already done and reviewed. Match his energy back (👋 is fine).

## Notes

- If nothing was actually running and no worktree exists (plain repo, no background jobs), say so plainly — don't invent cleanup steps.
- If you can't tell whether a process is safe to kill (not started by this session), ask rather than guess.
