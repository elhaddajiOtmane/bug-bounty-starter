# Lab 05 — Broken access control: IDOR and auth flaws (Red + Blue)

Goal: the #1 real-world web flaw class — the app checks *who you are* but not *what you're allowed to touch*. Skill: `hunt-idor`. Target: Juice Shop (127.0.0.1:3000).

## Red steps
1. Register two accounts, A and B. Log in as A, do normal things: view your basket, your orders. In dev tools → Network, note the IDs in the API URLs (basket/6, orders, user IDs).
2. The IDOR test: change only the ID in a request (browser or Burp) to B's ID. If B's data comes back while you're logged in as A, the server trusted the ID instead of checking ownership. This one test — *swap the ID, keep the session* — is the heart of access-control testing.
3. Map the blast radius: which other endpoints take an ID? Profile, addresses, feedback, files? Test each the same way and log results in a table: endpoint | ID of A | ID of B | result.
4. Auth angle: look at how the session token works (Juice Shop uses a JWT). Decode yours at jwt.io (it's your own token, in your own lab) and read the claims. Use `hunt-jwt-crypto` to list what you'd test: algorithm confusion, weak secrets, missing expiry — as a checklist, and note which Juice Shop challenges match.
5. Juice Shop tracks solved challenges (Score Board — find its hidden URL like a user would). Solve the access-control challenges it lists and compare with your table.

## Blue steps
6. The fix, said precisely: on every request, the server loads the object AND checks `object.owner == currentUser` (or role allows it). Hiding IDs (UUIDs) slows guessing but is not the fix — authorization is.
7. Detection: logs showing one session requesting many sequential object IDs = classic IDOR probing. Write that alert in plain words.
8. Design lesson: put the ownership check in one shared layer (middleware/policy), not in each endpoint by memory — that's the architecture fix.

Next: Lab 06 — blue team, reading the logs of everything you did.
