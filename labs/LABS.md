# Labs — Red Team + Blue Team, step by step

Seven hands-on labs. All targets are **intentionally vulnerable apps running on your own machine** (Docker). Nothing here is pointed at the internet or anyone else's system — that's the rule that makes this legal and safe.

**Do them in order.** Each lab ends with the blue-team half: how the attack looks in logs and how to fix it. That pairing is the whole point.

| Lab | What you learn | Side |
|---|---|---|
| 01 | Build the safe lab (Docker, DVWA, Juice Shop, Kali tools) | Setup |
| 02 | Recon and mapping a target like an attacker | Red |
| 03 | SQL injection on DVWA (low → medium) | Red + Blue |
| 04 | XSS (reflected + stored) on DVWA | Red + Blue |
| 05 | Access control: IDOR and auth flaws in Juice Shop | Red + Blue |
| 06 | Blue team: read the logs, detect Labs 03–05 happening | Blue |
| 07 | Mini engagement: plan, attack, detect, report — end to end | Both |

**How to run a lab with your agent:** open the lab file, paste its steps into Antigravity (or any agent) and say "Walk me through this lab step by step. After each step, wait for my result before giving the next one." The pack's `hunt-*` skills and `blue-team-defense` skill give the agent the depth behind each step.

**Safety rules (same as `.agents/rules/red-team.md`)**
1. Targets are only the containers on your machine. Never scan or test an IP or site that isn't yours.
2. Keep the lab network isolated (the Docker setup below does this).
3. When a lab container is not in use, stop it: `docker stop dvwa juice-shop`.
4. Findings are proven with the smallest test that works. No damage, even to the lab — reset it instead (each lab shows how).
8. **lab-08-first-bounty-program.md** — pick a program, read scope like a lawyer, set up test accounts + tracker.
9. **lab-09-report-writing.md** — turn an old lab finding into a paid-format report with `/bounty-report`.
10. **lab-10-first-90-days.md** — the weekly routine and milestones that lead to a first payout.
11. **lab-11-watch-system.md** — set up the first-mover watch: baselines, fresh list, daily routine.
