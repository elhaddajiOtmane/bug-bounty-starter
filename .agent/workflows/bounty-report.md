---
description: Turn a validated finding into a paid-quality HackerOne / Bugcrowd report
---

# /bounty-report — Write the report that gets paid

Input: one validated finding with evidence. Use `report-writing` (HackerOne style) or `bugcrowd-reporting` (Bugcrowd VRT style) depending on the platform.

1. **Title:** asset + flaw + proven impact, one line. ("IDOR in /api/invoices/{id} lets any logged-in user read other customers' invoices.")
2. **Summary:** 3–5 lines — what it is, where, who is affected.
3. **Steps to reproduce:** numbered, exact — account setup, the request as sent, the response that proves it. A triager must reproduce it in under 5 minutes. Include the two-account proof for access-control issues.
4. **Proof:** screenshots or short video, real user data redacted (usernames, tokens, IDs of strangers blurred — yours can stay).
5. **Impact:** one paragraph starting "An attacker can…" — concrete harm in business terms, severity matched to the program's table.
6. **Suggested fix:** 2–4 lines, the real fix (server-side authorization check, parameterization, etc.), not "validate input."
7. Final check against `.agents/rules/bug-bounty.md` before submitting: in scope? one bug? proof minimal? nothing public?
