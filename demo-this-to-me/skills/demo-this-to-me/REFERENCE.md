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
`ngrok` and `qrencode` must be installed (`brew install ngrok qrencode`). If missing, say so and stop — don't fall back to a worse tunnel silently.

Take the `https://...ngrok...` URL, append the relevant path from step 3.

**Before generating the QR — check the dev server won't block the tunnel host.** Some dev servers reject requests whose `Host` header isn't localhost/an allowlisted name (Vite: "Blocked request... add to `server.allowedHosts`"; similar guards exist in webpack-dev-server, Next, etc.), which would 403 the phone's first load. Don't wait for that error — check the config before showing the QR:
- If the project's dev-server config (`vite.config.*`, `next.config.*`, etc.) already sets `allowedHosts`/an equivalent allowlist and doesn't include `.ngrok` wildcards, patch it now — project-agnostic, at the framework's own mechanism (Vite: `server.allowedHosts: true` or the specific ngrok host). Mark the edit clearly as demo-only.
- If no such config exists, most frameworks default to permissive (don't add config speculatively) — but do a quick real check anyway: `curl -sI <tunnel-url>` and confirm you get a real response, not a host-blocked 403, before handing the QR to the user.
- Revert the patch once the demo's done (see Cleanup).

```bash
"${CLAUDE_PLUGIN_ROOT}/scripts/qr.sh" "<tunnel-url>/<path>" /tmp/demo-qr.png
```
Print the ANSI QR straight into the chat reply (terminal renders it), and send the PNG with `SendUserFile` (`display: "render"`) so it also shows as an image.

## Cleanup

Tell user the dev server / ngrok tunnel is still running and how to stop it (`kill %1` or the PID) — don't kill it automatically, they're demoing. If you patched a host-allow config for the tunnel, remind them (or revert it yourself) once they're done.
