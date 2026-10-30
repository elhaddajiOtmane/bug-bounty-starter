---
name: blue-team-defense
description: Blue team defense work — hardening, logging and detection, threat hunting, and incident response. Use when hardening a system, reviewing defenses, writing detection rules, planning monitoring, responding to an incident, or checking what an attack would look like in logs. Maps defenses to MITRE ATT&CK and pairs every defense with the attack it stops.
---

# Blue Team Defense

Defense is a system, not a product: prevent what you can, detect what you can't, respond fast when it happens.

## 1. Harden (prevention)
- Patch order: internet-facing first, then identity systems, then everything else. Unpatched known-vulnerable software is the top real-world entry point.
- Kill defaults: default passwords, sample apps, debug endpoints, directory listing, unused services and ports — close every one.
- Least privilege everywhere: users, service accounts, API keys, database users. No shared admin accounts.
- MFA on all remote/admin access. Passwords hashed (bcrypt/argon2). Secrets in a vault/env, never in code.
- Config baselines: security headers, TLS everywhere, backups that are tested by restoring, not just by existing.

## 2. See (detection)
You cannot detect what you do not log. Minimum log set, shipped to one place (SIEM or log store) with synchronized clocks:
- Auth events: logins (success + failure), password resets, MFA changes, privilege grants.
- Web: full request logs with status codes and user IDs; error spikes are attack smoke.
- System: process starts, service installs, scheduled tasks, new accounts.
- Network: DNS queries, outbound connections, firewall denies.
Detection ideas, mapped to ATT&CK: password spraying (T1110 — many failures, many accounts, one source), web shell upload (T1505 — file write then first request to it), beaconing (T1071 — regular-interval outbound calls), data staging/exfil (T1041/T1567 — unusual outbound volume).
For Sigma/YARA-style detection rules, use the `yara-rule-authoring` and `semgrep` skills.

## 3. Hunt (proactive)
Pick one ATT&CK technique, write the question ("which hosts made DNS requests to domains younger than 30 days?"), query the logs, document what normal looks like. A hunt that finds nothing still pays: it proves the logs can answer the question.

## 4. Respond (incident response — PICERL)
1. **Preparation** — contacts, tools, backups, authority to act (done before the incident).
2. **Identification** — confirm it is real, scope it: what systems, what data, since when.
3. **Containment** — isolate affected hosts/accounts; short-term (block, disable) then long-term (rebuild). Do not wipe evidence before imaging/logs are captured.
4. **Eradication** — remove the root cause (the entry point, the persistence), not just the symptom.
5. **Recovery** — restore from clean backups, monitor closely, return in stages.
6. **Lessons learned** — blameless write-up: timeline, what failed, the one fix that prevents the sequel. Feed it back into hardening and detections.

## Deliverable
For any defense review: a table of Control | Stops (ATT&CK) | Status | Gap | Fix, plus the top 3 fixes ranked by risk removed per hour of work.
