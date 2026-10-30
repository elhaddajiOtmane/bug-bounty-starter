# Lab 07 — Mini engagement, end to end (Red + Blue + Report)

Goal: run the full professional cycle on your lab, the way real engagements work. Uses `/attack-plan`, `/web-vuln-hunt`, `/blue-team-review`, `/incident-response`.

## Phase 0 — Paper first (15 min)
1. Write the scope document: target = Juice Shop container on this machine; objective = "find and prove 3 findings, including 1 access-control"; out of scope = the host machine, the network, everything else. Rules: proof only, no damage, stop conditions. This document is what makes testing "authorized" in the real world — practice writing it now.

## Phase 1 — Red (60–90 min)
2. Run `/attack-plan`: recon, attack tree, tests ordered cheapest-first.
3. Execute with the `hunt-*` skills. Keep the evidence log as you go (timestamp, request, response, screenshot) — `evidence-hygiene` format.
4. Stop at 3 proven findings. For each: the ATT&CK technique it maps to, severity with reasoning, and the fix.

## Phase 2 — Blue (45 min)
5. Run `/blue-team-review` on the same target. For each red finding: was it in the logs? Would any control have stopped it? Write the detection that should exist.
6. Run `/incident-response` as a drill: pretend finding #1 was discovered in production by a real attacker at 2 a.m. Walk PICERL with your lab as the patient: contain (what do you isolate?), eradicate (where's the door?), recover, lessons learned.

## Phase 3 — Report (30 min)
7. Use `report-writing`: one document — scope, methodology, findings table (severity, evidence, ATT&CK, fix), detection gaps, top-3 fixes by risk removed per hour.
8. Reset the lab (`docker rm -f juice-shop` + Lab 01 step 3) and file the report next to these labs.

## Done when
You hold one report that a manager could act on and an engineer could fix from — and you personally ran every phase. That's the red/blue loop professionals are paid for. Repeat monthly with a new target class (APIs next: `hunt-graphql`, `hunt-api-misconfig` in the full BugHunter set).
