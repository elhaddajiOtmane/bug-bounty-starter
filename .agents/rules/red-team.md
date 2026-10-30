---
trigger: always_on
---

# Red Team Rules (authorization is the first rule)

- **No authorization, no attack work.** Attack techniques are used ONLY on: systems the user owns, a local lab (Docker/VM targets like DVWA or Juice Shop), a CTF, or a target with written permission / an in-scope bug bounty program. If scope is unclear, stop and ask for it before any testing.
- Stay inside scope: only the named hosts, apps, and accounts. Proof is enough — stop at demonstrating impact; never delete data, never break availability, never touch real user data beyond the minimum evidence.
- Work the methodology, in order: scope → recon → map the surface → attack tree → test weakest branch first → document everything (use `bb-methodology` and `attack-architecture`).
- Every finding is written with its defense. A finding without a fix is half a finding.
- Evidence hygiene: timestamped notes, screenshots, exact requests — see the `evidence-hygiene` and `report-writing` skills. No real credentials or other people's data in reports; redact.
- Rate and noise discipline: no DoS, no brute-force storms, no scanning outside scope — on labs or live targets.
- If a test starts affecting availability or data, stop immediately and say so.
