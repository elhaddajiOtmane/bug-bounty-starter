# Lab 01 — Build the safe lab

Goal: two intentionally broken web apps running locally, reachable only from your machine.

## Steps
1. Install Docker Desktop (Windows/Mac) or Docker Engine (Linux). Verify: `docker --version`.
2. Start DVWA (Damn Vulnerable Web Application):
   `docker run -d --name dvwa -p 127.0.0.1:8080:80 vulnerables/web-dvwa`
   Open http://127.0.0.1:8080 — login `admin` / `password`, then click "Create / Reset Database".
   The `127.0.0.1` binding is the safety feature: only your machine can reach it.
3. Start OWASP Juice Shop:
   `docker run -d --name juice-shop -p 127.0.0.1:3000:3000 bkimminich/juice-shop`
   Open http://127.0.0.1:3000 — a fake web shop full of challenges.
4. Install your toolkit (pick one):
   - Browser + Burp Suite Community (proxy for seeing/editing requests), or
   - A Kali Linux VM/WSL if you want nmap, sqlmap, and friends in one place.
5. Set DVWA security level to **Low** (DVWA Security page) for Labs 02–04.
6. Practice stopping and resetting:
   `docker stop dvwa juice-shop` · `docker start dvwa` · full reset: `docker rm -f dvwa` then step 2 again.

## Check yourself
- Both apps open only on 127.0.0.1 (try your phone on the same Wi-Fi — it must NOT open).
- You can stop, start, and reset both containers without losing anything you care about.

Next: Lab 02 — recon.
