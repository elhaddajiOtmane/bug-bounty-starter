---
trigger: always_on
---

# Security Rules (hard rules — these override convenience)

- Secrets never appear in code, commits, logs, screenshots, or chat. Environment variables only. If a secret is ever committed, treat it as leaked: it must be rotated.
- Database queries are always parameterized. Never build queries, shell commands, or HTML from raw user input.
- Validate all input on the server (type, length, range, format). Browser validation is UX, not security.
- Escape all user-generated content when rendering. Treat file uploads as hostile: verify type and size, randomize stored names, keep them outside executable paths.
- Every protected endpoint checks authentication AND that the user owns the resource they are touching.
- Passwords: bcrypt or argon2, never plain or MD5/SHA1. Sessions/tokens: Secure + HttpOnly cookies, sensible expiry.
- Before release: run the `security-review` skill and the dependency audit. High/critical findings block release.
- Least privilege: API keys, database users, and agent tools get only the access the task needs.
