# Common steps (shared by demo-this-to-me / -desktop / -mobile)

1. **Find the dev command.** Look in the CURRENT project dir (or nearest one up) for, in order:
   - a project skill that already launches this app (check `.claude/skills/`) — prefer it, skip to step 2 with its URL
   - `package.json` → `scripts.dev` (run with the project's package manager: pnpm/npm/yarn — check lockfile)
   - `justfile` → a `dev`/`dev-svc <name>`/`run` recipe
   - `Makefile` → `run`/`dev`/`serve`
   Grep for the port it binds (vite default 5173, next 3000, etc.) — confirm from actual server startup log, don't guess.

2. **Start it** in the background (Bash `run_in_background: true`, or `mcp__Claude_Browser__preview_start`). Wait for the real "ready"/"listening" line in logs — no sleep-guessing. Reuse an already-running dev server instead of starting a duplicate (check the port first).

3. **Summarize what was just built**, 1-3 lines, from this session's conversation — what feature/page/fix, and where to look on the page. This goes in the chat reply, not the QR.

## Desktop target

Give the local URL (`http://localhost:<port>/<relevant-path>`) as a clickable link. Done.

## Mobile target

```bash
ngrok http <port> --log=stdout > /tmp/demo-ngrok.log 2>&1 &
sleep 2
curl -s http://127.0.0.1:4040/api/tunnels | grep -o 'https://[a-z0-9.-]*ngrok[a-z0-9.-]*'
```
Take the `https://...ngrok...` URL, append the relevant path from step 3.
```bash
"${CLAUDE_PLUGIN_ROOT}/scripts/qr.sh" "<tunnel-url>/<path>" /tmp/demo-qr.png
```
Print the ANSI QR straight into the chat reply (terminal renders it), and send the PNG with `SendUserFile` (`display: "render"`) so it also shows as an image.

`ngrok` and `qrencode` must be installed (`brew install ngrok qrencode`). If missing, say so and stop — don't fall back to a worse tunnel silently.

## Cleanup

Tell user the dev server / ngrok tunnel is still running and how to stop it (`kill %1` or the PID) — don't kill it automatically, they're demoing.
