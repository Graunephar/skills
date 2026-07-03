---
name: explore-api-with-postman
description: A workflow for probing an unfamiliar REST API by authoring requests in a Postman cloud collection via the Postman MCP while the user runs them — an author/execute/report loop with battle-tested rules for auth, secrets, variables, and multi-step hand-offs. Use when exploring or reverse-engineering an API's auth and endpoints with Postman, building a Postman collection iteratively, validating a multi-step API flow (e.g. init-upload → reference asset → publish), or when the user mentions Postman, the Postman MCP, "help me test/explore this API", or wants a reusable collection as the artifact. Triggers: "explore this API", "test the API in Postman", "build a Postman collection", "Postman MCP", "probe the auth/endpoints", "run it one by one".
---

# Explore an API with Postman (MCP-driven)

Quickly probe an unfamiliar REST API: **you author requests, the user runs them, results feed the next step.** Works for any REST API. The Postman MCP can create/edit collection requests but **cannot send them** — so the division of labour is fixed.

## Roles
- **You (agent):** build and edit requests in a Postman **cloud** collection via the Postman MCP.
- **User:** pulls into the Postman desktop app and clicks **Send**, pastes back status + body (+ headers when relevant).

> You author, the user executes, the user reports. Don't pretend you can read live responses — you only see what the user pastes.

## The loop
1. Create/update one request in the cloud collection (MCP).
2. User: **Pull from Cloud** in Postman desktop.
3. User: **Send**, pastes the result.
4. Read it, fix or build the next request. Repeat.

Go **one request at a time** while learning — each result informs the next. Batch only once a flow is understood.

## Iron rules (these prevent the pain we actually hit)

- **Sync: pull, never push.** The cloud collection is the source of truth for request *definitions*. After you edit it, the user **only pulls**. A local push will silently overwrite your changes. Tell the user this explicitly.
- **Secrets: Postman Vault only.** Put API keys / tokens / client secrets in the **Vault** and reference `{{vault:my_secret}}`. The user adds the secret once; you only ever reference the name. Never ask the user to paste a secret into chat.
- **Auth: prefer a plain token over the OAuth helper.** Postman's collection-level OAuth "current token" can silently fail to attach on synced collections (symptom: persistent `401 / empty token` despite a valid token). More reliable: obtain the token once, then set **per-request auth** (e.g. Bearer) pointing at a vault var. Watch provider quirks — some want client credentials in the request **body**, not the Basic-Auth header.
- **Variables: don't trust collection variables after a pull.** Synced collections have an initial-vs-current value split, so `{{collectionVar}}` may resolve empty (symptom: literal `{{var}}` sent, or `INVALID_X` errors). Either **hardcode** stable values in the request, or set them at runtime with **globals** (always resolve, no environment selection).
- **Multi-step flows: hand off values via globals + a test script** (below). No copy-pasting URNs/URLs between requests.
- **Binary uploads stay manual.** You can set up `PUT {{uploadUrl}}` with a binary body, but the user selects the local file (Body → binary → Select File). Generate a throwaway test file for them if useful.

## Multi-step hand-off pattern

For chained calls (e.g. *init upload → returns uploadUrl + asset id → use them next*), attach a **test script** to step 1 that saves response fields to globals:

```js
const v = pm.response.json().value;          // adapt to the response shape
pm.globals.set('uploadUrl', v.uploadUrl);
pm.globals.set('asset_id', v.id);
pm.test('hand-off vars saved', () => {        // visible pass/fail
  pm.expect(v.uploadUrl).to.be.a('string');
});
```

Later requests reference `{{uploadUrl}}` / `{{asset_id}}`. Globals resolve reliably where collection variables don't.

## The pattern in one line
> Per-request auth → vault secret · hardcode stable values · globals for cross-request hand-offs · pull-never-push · agent builds via MCP, user Sends.

## Ground findings in the API's own docs
Before asserting how an endpoint behaves, fetch the official docs. When a result contradicts an assumption, re-read the spec rather than guessing — most "weird" errors are an unresolved variable, wrong auth placement, or a version/header requirement, not a real API limitation.

## Capture the learnings
The collection is one artifact; a short findings doc is the other. As flows get validated, record what works vs. what's assumed vs. what's blocked (tag each claim), so the exploration hands off cleanly to whoever builds the integration.
