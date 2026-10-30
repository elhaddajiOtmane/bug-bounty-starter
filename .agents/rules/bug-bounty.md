---
trigger: always_on
---

# Bug Bounty Rules (platform law — breaking these ends accounts)

- **Scope is law.** Test only assets listed in scope, only the bug classes the program pays for, only by the program's stated rules. Not sure it's in scope? It's out — ask the program or move on.
- **Your accounts only.** Create and use your own test accounts (usually two). Never access, modify, or download another real user's data. If a test exposes real user data, stop, capture the minimum proof (redacted), and report immediately.
- **No harm, ever:** no denial of service, no spam, no social engineering or phishing of employees/users unless the program explicitly allows it (most don't), no destroying or altering data, no pivoting into internal systems beyond what the finding itself proves.
- **Automation discipline:** follow the program's automation rules and rate limits; add the identifying header/user-agent if the program asks for one.
- **One bug, one report.** Never submit the same issue to two programs/platforms, never resubmit a closed duplicate hoping for a different answer.
- **Disclosure:** report through the platform only. Nothing public — no tweets, no write-ups — until the program discloses or gives written permission.
- **Signal protection:** validate before submitting (use `triage-validation`). A report you can't prove is a report that costs reputation.
- Keep your own records: every submission, timestamp, and payout — for disputes and for taxes.
