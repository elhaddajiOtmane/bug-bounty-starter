---
name: attack-architecture
description: How attacks are architected and how system architecture creates or removes attack surface. Use when planning an authorized assessment, threat modeling, mapping a target or a defense to the Cyber Kill Chain or MITRE ATT&CK, drawing an attack tree, or explaining how an attack works end to end. Always paired with a defense for every attack step.
---

# Attack Architecture

Understand the attack as a structure, then break the structure. Every attack step gets a matching defense — never present one without the other.

## The two maps

**Cyber Kill Chain** (attacker's path): Recon → Weaponization → Delivery → Exploitation → Installation → Command & Control → Actions on Objectives.
**MITRE ATT&CK** (the catalog): tactics (Recon, Initial Access, Execution, Persistence, Privilege Escalation, Defense Evasion, Credential Access, Discovery, Lateral Movement, Collection, C2, Exfiltration, Impact) each with named techniques. Use ATT&CK IDs when writing plans and reports (e.g. T1190 Exploit Public-Facing Application, T1071 C2 over web protocols).

## How architecture creates the surface

For any system, draw it and mark the trust boundaries — attacks live on boundaries:
1. **Entry points**: public endpoints, uploads, webhooks, email, APIs, third-party integrations. Each one is a door; list what an unauthenticated user can reach.
2. **Identity layer**: how login, sessions, tokens, and roles work. Most real breaches are identity failures (weak auth, IDOR, token flaws), not exotic exploits.
3. **Data flow**: where sensitive data is stored, how it moves, what can read it. Follow one piece of data from browser to database and back.
4. **Privilege**: what the app/OS/database accounts can do if hijacked. Over-privileged service accounts turn small bugs into full compromises.
5. **Dependencies & supply chain**: libraries, CI/CD, containers, cloud config. The soft underbelly — check versions, defaults, and exposed admin panels.

## Building an attack plan (authorized targets only)

1. Confirm scope and rules of engagement in writing (see `red-team` rule: no authorization, no attack work).
2. Map the surface (step above) and build an **attack tree**: root = the objective (e.g. "read another user's data"), branches = the ways in (IDOR, SQLi, stolen token…), leaves = concrete tests. Cheapest, quietest branch first.
3. For each branch, write: technique + ATT&CK ID, the tool/test, what success looks like, the evidence to capture, and **the detection** — what log or alert this should create on the blue side.
4. Execute in order: recon → weakest entry → escalate only as far as the scope allows → stop at proof, never at damage.

## Deliverable

A table: Step | ATT&CK | Test | Evidence | Detection/Defense. If a row has no defense, that is the finding.
