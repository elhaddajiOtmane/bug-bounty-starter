# Lab 04 — Cross-site scripting (Red + Blue)

Goal: reflected vs stored XSS, and why output encoding — not input filtering — is the real fix. Skill: `hunt-xss`. DVWA level: **Low**.

## Red steps
1. **Reflected** (XSS (Reflected) page): submit your name normally. Then submit a script payload (the standard proof is a harmless `alert(document.domain)` — proof, not theft). If the box pops, your input was written into the page as code.
2. Trace it: view the page source and find your payload sitting inside the HTML. The bug is *where* it landed — the app treated data as markup.
3. **Stored** (XSS (Stored) page): sign the guestbook with the same proof payload in the message. Reload — it fires for every visitor, no crafted link needed. Explain the difference in impact: reflected needs a victim to click; stored waits for victims.
4. Try bypass thinking: on **Medium**, the naive filter removes one pattern — use the `hunt-xss` skill's approach (case variation, alternate events/tags) and note how filters play catch-up forever.

## Blue steps
5. The fix: **context-aware output encoding** (the framework escaping values when they're printed), plus Content-Security-Policy as a seatbelt, plus HttpOnly cookies so a successful XSS can't read the session cookie.
6. Check DVWA's cookies from Lab 02 — is the session cookie HttpOnly? Connect the dots: XSS + readable cookie = session theft.
7. Detection: stored payloads are visible in the database/content; reflected ones hide in logs — search the access log for `<script` in query strings.

Reset the guestbook via Setup → Create / Reset Database.
Next: Lab 05 — access control in Juice Shop.
