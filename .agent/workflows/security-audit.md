---
description: Full security audit of the project using the security-review skill
---

# /security-audit — Security audit

1. Run the `security-review` skill over the whole project (not just recent changes).
2. Search the repo and its git history for committed secrets. Any found = critical, must be rotated.
3. Run the dependency audit for the project's ecosystem (`npm audit`, `pip-audit`, etc.).
4. Check every route/endpoint: authentication present? authorization (ownership) checked? input validated on the server?
5. Deliver the report grouped Critical / High / Medium / Low, each finding with file, impact, and the exact fix. End with ship / don't ship.
