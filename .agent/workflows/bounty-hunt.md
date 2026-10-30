---
description: Run a full bug bounty hunting session on one program — scope, recon, deep hunt, validation
---

# /bounty-hunt — One hunting session, run properly

Program: [name + platform]. Time box: [e.g. 2 hours]. This workflow assumes the program's rules allow the testing you plan.

1. **Scope & rules (10 min).** Use `bug-bounty-business` + `recon-scope-triage`: write down in-scope assets, excluded classes, testing rules, bounty table. Create/confirm your two test accounts.
2. **Recon (25%).** `web2-recon` + `osint-methodology` + `hunt-subdomain`: asset list, tech stack, new/changed surface first (new features and fresh subdomains are the low-duplicate zones).
3. **Pick ONE surface, go deep (50%).** Choose by your strengths: APIs → `hunt-api-misconfig` / `hunt-shadow-api`; access control → `hunt-idor`; logic → `hunt-business-logic`; leaks → `hunt-source-leak`. Map the feature as a user first, then test it as an attacker (`attack-architecture`).
4. **Validate (15%).** For each candidate: smallest proof, two-account evidence where relevant, honest severity against the program's scale (`triage-validation`). Kill anything you can't prove — signal is money.
5. **Log the session** in your tracker even if the result is zero: program, surface, hours, notes for next time. Zero sessions with good notes are how the paid ones happen.
