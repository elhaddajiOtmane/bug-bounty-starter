---
description: Blue team review — hardening, logging, detection coverage, and response readiness
---

# /blue-team-review — Defense review

1. Use the `blue-team-defense` skill. Inventory: what's internet-facing, how identity works, where logs go.
2. Hardening pass: patch level, default credentials/configs, unused services, MFA, least privilege, backup + last restore test date.
3. Detection pass: for the top ATT&CK techniques against this kind of system (password spraying T1110, public-app exploit T1190, web shell T1505.003, beaconing T1071, exfil T1041), ask "would we see it, and in which log?" Any "no" is a gap.
4. Use `audit-context-building` and `differential-review` for code-level defense on the riskiest components.
5. Output the control table (Control | Stops | Status | Gap | Fix) and the top 3 fixes by risk removed per hour.
