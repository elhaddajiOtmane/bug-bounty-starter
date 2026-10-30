# Lab 06 — Blue team: see the attacks in the logs

Goal: everything you did in Labs 02–05 left traces. Find them. Skill: `blue-team-defense`.

## Steps
1. Get the logs: `docker logs dvwa` and your web server's access log inside the container (`docker exec dvwa sh -c 'ls /var/log/apache2/'` then read access.log). For Juice Shop: `docker logs juice-shop`.
2. **Find Lab 02:** locate your nmap scan and page walk. What does a scan look like vs a human? (Many paths, fast, odd order, no assets loaded.)
3. **Find Lab 03:** search the log for `UNION` and `%27` (URL-encoded quote). Count how many requests your sqlmap run made vs your manual one — automation is loud.
4. **Find Labs 04–05:** the `<script` string in a query; one session pulling many object IDs in order.
5. **Write 4 detections** in plain language, one per lab: the log source, the pattern, the threshold, and what you'd do when it fires. (Format: "IF access log shows ≥10 requests with SQL keywords from one IP in 1 minute THEN alert + block review.")
6. **Blind spots:** what did you do that is NOT in any log? (Example: reading a page you were allowed to read.) Name one extra log source that would close each gap — that's how logging requirements are born.
7. **Hardening checklist run:** go through DVWA/Juice Shop like a defender: version banners, default credentials still in place, error detail, cookie flags, what's listening (`docker ps`). Score each: fixed / accepted / open.

## Check yourself
You can point at the exact log line for each of your own attacks. If a defender can't see it, it effectively didn't happen — and neither would a real attack. That sentence is the blue team job.

Next: Lab 07 — put it all together.
