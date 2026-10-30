---
name: security-review
description: Security review of the current project or pending changes before shipping. Use when the user asks for a security audit, a vulnerability check, or a pre-release review. Checks the OWASP Top 10, secrets handling, auth, input validation, and dependency risk, and reports findings by severity with a concrete fix for each.
---

# Security Review

Review the code like an attacker first and an engineer second. Report only real, reachable problems — no generic warnings.

## Steps

1. **Map the surface.** List entry points (routes, forms, uploads, webhooks, CLI args), where user data enters, and where it is stored.
2. **Secrets.** Search the repo for keys, tokens, passwords, and connection strings in code, config, and history. Secrets belong in environment variables, never in the repo. Flag any committed secret as critical and say it must be rotated, not just deleted.
3. **Injection.** Check every place user input reaches a database query, shell command, HTML output, or template. Queries must be parameterized; HTML output must be escaped; never build commands by string concatenation.
4. **Auth and access control.** Every protected route must check authentication *and* authorization (the user may only touch their own data). Check for missing checks on new endpoints especially.
5. **Input validation.** Validate type, length, and range on the server, not only in the browser. File uploads: check type and size, store outside the web root, never trust the filename.
6. **Data protection.** Passwords hashed with a modern algorithm (bcrypt/argon2), sensitive traffic over HTTPS, cookies marked Secure + HttpOnly (+ SameSite where it fits), no sensitive data in URLs or logs.
7. **Dependencies.** Run the ecosystem's audit tool (`npm audit`, `pip-audit`, etc.) and report only high/critical findings with a fix path.
8. **Headers and config.** Note missing security headers (CSP, X-Content-Type-Options) and debug modes left on.

## Report format

Group findings as **Critical / High / Medium / Low**. For each: file and line, what an attacker can do with it, and the exact fix. End with a short "ship / don't ship" call. If a category is clean, say so in one line — do not pad the report.
