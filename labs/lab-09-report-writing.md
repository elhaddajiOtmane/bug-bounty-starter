# Lab 09 — Report writing practice (turn lab findings into paid format)

**Goal:** a real bounty report is a writing product. Practice it on findings you already own — your Lab 03–05 results — using `/bounty-report`.

## Steps
1. Pick your best finding from Lab 03 (SQLi), Lab 04 (XSS), or Lab 05 (IDOR/JWT).
2. Run `/bounty-report` on it: title (asset + flaw + impact), summary, numbered steps a stranger could replay in 5 minutes, proof screenshots (from your local lab — no real user data exists here, which is why we practice on labs).
3. Write the impact paragraph: start with "An attacker can…" and finish the sentence in business terms (read whose data, do what action, at what scale).
4. Write the 3-line suggested fix. Then play triager: read your report cold and mark anything unclear. Rewrite once.
5. Rate it against a real program's bounty table from your Lab 08 pick — what would this class + impact pay there? Write the number down. That number is why report quality matters.

**Done when:** you have one complete, triager-proof report saved. This exact format is what you submit for real findings.
