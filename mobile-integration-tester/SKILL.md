---
name: mobile-integration-tester
description: End-to-end integration testing skill for iOS and Android apps running simultaneously. Drives two emulators/simulators as two distinct users, executes a structured test script step by step, verifies UI state via screenshots and database state via Firestore/Realtime DB, reports pass/fail per step, and invokes systematic-debugging to fix failures before retrying. Use when testing cross-user flows (send request, receive request, accept, verify), multi-platform parity, or any feature that requires two accounts interacting.
---

# Mobile Integration Tester

You are running a two-device integration test. You control both an iOS simulator and an Android emulator simultaneously, acting as two distinct users. You execute a structured test script, verify each step, fix failures, and retry.

---

## Setup

### Step 1 — Start both platforms
- Launch Android emulator: `emulator -avd <avd_name> &` or use Android Studio
- Launch iOS simulator: `xcrun simctl boot <device_udid>` then `open -a Simulator`
- Install builds: Android emulator flavor, iOS simulator build
- Confirm both apps are on the home screen before proceeding

### Step 2 — Create two test accounts
Create **User A** on one platform and **User B** on the other. Use unique emails:
- User A: `test-a-<timestamp>@overlap-test.com`
- User B: `test-b-<timestamp>@overlap-test.com`

Document both emails and UIDs at the start. You will need them for database verification.

### Step 3 — Assign platforms
Decide which platform plays which role for the first pass. You will swap roles in a second pass.

---

## Test execution loop

For every step in the test script:

1. **Read the step** — note: platform, action, expected result
2. **Take a screenshot** of the relevant platform before acting
3. **Perform the action** using computer-use tools
4. **Take a screenshot** after acting
5. **Verify the expected result** — UI state AND database state if specified
6. **Report:** `✓ PASS — [step name]` or `✗ FAIL — [step name]: [what went wrong]`
7. **On FAIL:** invoke `Skill("superpowers:systematic-debugging")`, fix the issue, then retry the step from the top. Do not continue until the step passes.

---

## Database verification

After key steps, verify Firestore / Realtime DB state directly:

**Firestore (via Firebase console or emulator UI at localhost:4000):**
- Trips: `db.collection("trips").where("userId", "==", uid).get()`
- Meeting requests: `db.collection("meetingRequests").where("fromUserId", "==", uid).get()`
- Events: `db.collection("events").where("hostUserId", "==", uid).get()`
- Event RSVPs: `db.collection("eventRsvps").where("userId", "==", uid).get()`

**Realtime DB:**
- User profile: `db.ref("users/<uid>").once("value")`

Use the Firebase emulator UI or the `firebase` CLI to query these directly.

---

## Pass/fail reporting

After completing the full script, report a summary table:

```
STEP                              PLATFORM   RESULT
────────────────────────────────────────────────────
Register User A                   Android    ✓ PASS
Register User B                   iOS        ✓ PASS
Add overlapping trips             Both       ✓ PASS
User A finds User B in discovery  Android    ✗ FAIL → fixed → ✓ PASS
User A sends request to User B    Android    ✓ PASS
...

TOTAL: N passed, N failed (N fixed inline)
```

If any step fails and cannot be fixed: document the failure clearly and stop. Do not report a pass for a broken step.

---

## Role reversal

After completing the full script with User A as initiator and User B as receiver — **swap roles**:
- User B (on iOS) now initiates
- User A (on Android) now receives

Re-run the identical script from the action step onwards (no need to re-register or re-add trips). Verify each step passes on both platforms in both role configurations.

---

## Fixing failures

When a step fails:
1. Invoke `Skill("superpowers:systematic-debugging")` — identify root cause before touching code
2. Write a failing test that reproduces the issue
3. Fix the code
4. Re-run the failing step
5. Confirm it passes before continuing

Never skip a failing step. Never mark a step as passing when it failed.
