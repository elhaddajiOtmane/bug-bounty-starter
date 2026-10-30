# Lab 02 — Recon and mapping (Red)

Goal: learn a target the way an attacker does — before touching anything. Skills: `web2-recon`, `attack-architecture`.

Target: your local DVWA at 127.0.0.1:8080.

## Steps
1. **Port/service scan (your lab only):** `nmap -sV 127.0.0.1 -p 8080,3000` — note the server and version banners. Version numbers are how attackers match known exploits.
2. **Walk the app as a user.** Log in to DVWA. List every page/feature in a file: name, URL, inputs it takes, whether it needs login.
3. **Look at the plumbing:** browser dev tools → Network tab. Reload a page. Note cookies (names, flags like HttpOnly), headers (any security headers missing?), and how parameters travel (GET vs POST).
4. **Fingerprint:** check page source and error pages for framework/version hints. Try a wrong URL — the 404 page often leaks the stack.
5. **Draw the map:** one page — boxes for browser, app, database; arrows for data flow; mark the trust boundary (where unauthenticated becomes authenticated). Mark every input that crosses it — those are your attack surface.
6. **Attack tree:** pick the objective "read data I shouldn't". Branch it: SQLi on a form, stolen session cookie, direct object reference (guessing IDs), upload a file. Next labs walk the first branches.

## Blue half
- Which of your recon actions would appear in a server log? (All of them — remember this in Lab 06.)
- Defenses that shrink this phase: no version banners, generic error pages, minimal exposed features.

Next: Lab 03 — SQL injection.
