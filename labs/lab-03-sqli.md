# Lab 03 — SQL injection (Red + Blue)

Goal: understand SQLi by doing it on DVWA, then kill it. Skill: `hunt-sqli`. DVWA security level: **Low**, then repeat key steps on **Medium**.

## Red steps (DVWA → SQL Injection page)
1. Normal use first: enter ID `1`, Submit. Note exactly what comes back (one user).
2. Test for injection: enter `1'` (a quote). An error or broken page = the input is reaching SQL unsanitized. This is the detection test — string input should never change the query's grammar.
3. Confirm control: enter `1 OR 1=1 #` — if ALL users come back, you changed the query's logic. Explain to yourself *why* it worked: your text became SQL code because the app glued strings together.
4. Enumerate with UNION (the classic second step): use the technique from the `hunt-sqli` skill to first find the column count with `ORDER BY`, then `UNION SELECT` the user and password columns from the users table. On Low, the passwords are MD5 hashes — note how a hashing choice becomes part of the damage.
5. Automate it once: point sqlmap at the same request (copy the URL + cookie from your browser) and compare its output with your manual result. Tools verify; understanding explains.

## Blue steps
6. Read the fix: the correct defense is **parameterized queries** (prepared statements) — input can then never become code. Escaping/blacklists are the wrong answers; say why.
7. Raise DVWA to **Medium** and redo step 3. Note what changed and why the simple payload fails — then check the `hunt-sqli` skill for how testers adapt, and why parameterization still holds.
8. Detection: find your attack requests in the web server log (Lab 06 shows where). What pattern would you alert on? (Quotes/UNION keywords in parameters + error spikes.)

Reset if needed: DVWA → Setup → Create / Reset Database.
Next: Lab 04 — XSS.
