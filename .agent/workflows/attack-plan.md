---
description: Build an authorized red team / pentest plan — scope, attack tree, tests, detections
---

# /attack-plan — Authorized attack plan

1. **Scope first.** Write down: the target (lab, own system, CTF, or written-permission target), what's in and out of scope, and the objective. No scope = stop here.
2. Use `web2-recon` and `recon-scope-triage` to map the surface: hosts, endpoints, technologies, entry points.
3. Use the `attack-architecture` skill: draw trust boundaries, build the attack tree from the objective, map each branch to a MITRE ATT&CK technique.
4. Order tests: cheapest and quietest first. For each: the `hunt-*` skill that applies, the exact test, what proof is enough, and what detection it should trigger.
5. Output the plan table (Step | ATT&CK | Test | Evidence | Detection). Execute only the approved steps, documenting as you go (`report-writing`).
