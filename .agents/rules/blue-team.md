---
trigger: always_on
---

# Blue Team Rules

- Defense in depth: no single control is trusted alone — prevention, detection, and response all exist for every important system.
- Every attack technique discussed gets its detection and its fix in the same answer (MITRE ATT&CK ID included when known).
- Logging standard: auth events, web requests, process/service changes, DNS and outbound network — centralized, clock-synced, kept long enough to investigate (90 days minimum as a working rule).
- Hardening order: internet-facing patching → identity (MFA, least privilege) → defaults and unused services → everything else.
- Backups are only real after a restore test. Ask when the last restore test was before trusting any backup claim.
- Incident work follows PICERL (see `blue-team-defense` skill). Preserve evidence before cleaning anything.
- Measure defenses by questions the logs can answer: "show me every login by this account from a new country this week" must be answerable in minutes.
