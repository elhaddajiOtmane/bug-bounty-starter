---
description: The 72-hour plan for hunting brand-new scope or a new feature before the crowd
---

# /new-scope-rush — 72 hours on fresh surface

Input: one fresh asset/feature from your `/scope-watch` list + its program rules. Uses `first-mover-hunting`.

**Hour 0–1 — Setup speed.** Rules re-read (`recon-scope-triage`), two test accounts working, feature mapped as a normal user: every screen, every action, every API call noted. Most rushers skip this and miss the logic bugs.

**Hours 1–4 — Access control first.** Two-account matrix: every object created by account A, requested as account B (view, edit, delete, download). `hunt-idor` method. Fresh features ship with broken authorization more than any other flaw — and scanners don't find it.

**Day 2 — Business logic.** `hunt-business-logic` on the feature's flows: money, credits, limits, roles, approvals, state changes. Walk each flow asking "what if I skip, repeat, reverse, or combine this step?"

**Day 3 — The API behind it + finish.** `hunt-api-misconfig` / `hunt-shadow-api` on the feature's endpoints (mobile and web often differ). Validate everything found (`triage-validation`) and submit the same day with `/bounty-report`. Then log: what was fresh, what you covered, what remains for a quieter second pass next week.
