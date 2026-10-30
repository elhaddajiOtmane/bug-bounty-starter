---
name: bug-bounty-business
description: The money side of bug bounty hunting — choosing programs on HackerOne, Bugcrowd, Intigriti and similar platforms, reading scope like a lawyer, payout math, avoiding duplicates, time strategy, and building a steady routine. Use when the user asks how to earn from bug bounty, pick a program, plan hunting time, price a finding, or turn hunting into income.
---

# Bug Bounty Business

Hunting skill finds bugs. This skill turns bugs into paid reports. Most hunters fail on the business side, not the technical side.

## 1. Pick programs like an investor
Good beginner programs share traits:
- **Wide scope** (wildcard domains `*.target.com`) — more surface, fewer duplicates.
- **Recently launched or recently expanded scope** — fresh surface is unhunted surface. Old, famous programs are picked clean at the easy levels.
- **Pays for your classes**: start where your skills are (web: access control/IDOR, business logic, API flaws pay well and are found by thinking, not by scanners).
- **Responsive program** (fast first response, clear bounty table). Slow triage = slow money.
- Public programs to build reputation → private invites follow reputation. Every platform rewards signal (valid-report rate) more than volume.

## 2. Read the scope like a lawyer
Before any testing: in-scope assets, out-of-scope assets, excluded bug classes (most programs exclude things like missing headers, self-XSS, or rate-limit noise), testing rules (own accounts only? test headers required? automation allowed?), and the safe-harbor text that protects you legally. Write the rules into your engagement notes (`recon-scope-triage`). Testing outside them can end accounts and, worse, legal protection.

## 3. The payout math
- A finding's value = **impact proven**, not bug class named. "IDOR" is a word; "IDOR that reads any user's invoices, shown with two test accounts" is a payment. Always prove impact with your own test accounts, with the smallest data access possible.
- Know the program's bounty table and rate your finding against *their* severity scale before submitting (use `triage-validation`).
- Duplicates are the tax on slowness and on hunting what everyone hunts. Defense: hunt the new feature, the mobile API behind the web app, the forgotten subdomain — not the login page everyone starts at.

## 4. Reports that get paid
Title = asset + flaw + impact in one line. Then: summary, steps to reproduce (numbered, exact requests), proof (screenshots/video, redacted), impact paragraph ("an attacker can…"), and a suggested fix. Use the `report-writing`, `bugcrowd-reporting`, and `redteam-report-template` skills for format. One bug per report. Submit, then answer triage questions fast and politely — triagers are your customers.

## 5. Run it like a job
- **Routine beats marathons**: e.g. 5 sessions/week — 1 recon, 3 deep hunts, 1 reporting/learning. Track every session: program, surface, time, result (use a simple spreadsheet: date, program, asset, class, status, payout).
- **One program deep** beats five programs shallow for the first month on it. Depth is where the non-duplicate bugs live.
- **Skill compounding**: after every hunt, one hour turning what you found (or missed — read disclosed reports on the platform) into notes. Disclosed reports are free training from people who got paid.
- Money hygiene: keep records of payouts for taxes from day one; treat platform reputation (signal, percentile) as an asset that unlocks private programs, which is where the reliable money is.

## Realistic expectations to state plainly
First payout usually takes weeks to a few months of consistent work. Income is spiky — bounties land in lumps. The hunters who earn steadily specialize (one class, one stack, one surface type) and protect their signal rate ruthlessly: never submit a report you wouldn't bet on.
