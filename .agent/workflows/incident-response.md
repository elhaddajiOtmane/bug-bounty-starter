---
description: Run an incident response using PICERL — contain first, preserve evidence, eradicate the root cause
---

# /incident-response — Incident response (PICERL)

1. **Identify**: what is the alert/evidence, is it real, what systems and data are in scope, since when? Start a timestamped incident log now.
2. **Contain (short-term)**: isolate the host/account, block the source, disable compromised credentials. Preserve evidence first or in parallel — capture logs and an image before wiping anything.
3. **Eradicate**: find the entry point and the persistence mechanism using the `attack-architecture` skill (walk the kill chain backwards from what you found). Remove the cause, patch the door.
4. **Contain (long-term) / Recover**: rebuild or restore from clean backups, rotate all credentials the attacker could have reached, restore service in stages with extra monitoring.
5. **Lessons learned**: timeline, root cause, which detection fired (or should have), and the fixes fed back into hardening — use the `blue-team-defense` skill to structure the report.
Keep communication factual and timestamped. Never speculate about attribution in the incident log.
