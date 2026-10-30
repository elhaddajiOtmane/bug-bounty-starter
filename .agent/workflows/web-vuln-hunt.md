---
description: Hunt web vulnerabilities (OWASP Top 10 classes) on a lab or authorized target, one class at a time
---

# /web-vuln-hunt — Web vulnerability hunt (lab / authorized only)

Target must be a local lab app (DVWA, Juice Shop), own system, CTF, or in-scope program — confirm which before starting.

For the chosen class, load the matching skill and follow it end to end:
- SQL injection → `hunt-sqli` · NoSQL injection → `hunt-nosqli`
- XSS → `hunt-xss` · SSRF → `hunt-ssrf` · IDOR / broken access control → `hunt-idor`
- CSRF → `hunt-csrf` · CORS → `hunt-cors` · LFI/path traversal → `hunt-lfi`
- SSTI → `hunt-ssti` · XXE → `hunt-xxe` · File upload → `hunt-file-upload`
- Auth bypass → `hunt-auth-bypass` · JWT flaws → `hunt-jwt-crypto` · Open redirect → `hunt-open-redirect`

For each candidate finding: prove it with the smallest possible test, capture the request/response as evidence, rate severity honestly, and write the fix (what the `security-review` skill would check for). End with a table of findings + fixes, worst first.
