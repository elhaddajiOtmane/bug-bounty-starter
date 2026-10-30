# Starter Prompts — copy, paste, edit the [brackets]

## Landing page (the big one)
```
Use /landing-page. Build a landing page for [product] for [audience].
The one action: [sign up / buy / book a call]. Brand colors: [hex codes or "pick for me"].
Feel: [e.g. editorial and confident / dark and technical / warm and human].
Use the design system from the ui-ux-pro-max skill and GSAP motion from the motion-site skill.
Verify in the browser at mobile and desktop and show me screenshots.
```

## Any UI, high fidelity
```
Using the frontend-design and ui-ux-pro-max skills, build [screen/page].
First show me the design system you picked (colors, fonts, signature element), then build it.
No generic AI look. Fully responsive, keyboard accessible.
```

## Redesign an existing page
```
Run /design-review on [page]. Give me the top 5 fixes with exact values, then apply them and show before/after screenshots.
```

## Feature, done properly
```
Run /plan-feature for [feature]. I want the plan and the risks before any code.
Then build it test-first and verify it in the browser.
```

## Security pass
```
Run /security-audit. I want real findings only, grouped by severity, each with the fix. End with ship or don't ship.
```

## Red team — plan an authorized test
```
Run /attack-plan for my local lab (Juice Shop on 127.0.0.1:3000 — my own Docker target).
Scope: the app only. Build the attack tree, map each step to MITRE ATT&CK,
and give me the plan table before running anything.
```

## Web vulnerability hunt (lab)
```
Run /web-vuln-hunt on DVWA (127.0.0.1:8080, my own lab). Class: SQL injection.
Smallest proof that works, evidence for each finding, and the fix for each one.
```

## Blue team — would we catch it?
```
Run /blue-team-review on this project. For the top attack techniques against it,
tell me which log would show each one — and which ones we would miss completely.
```

## Learn it — walk me through a lab
```
Open labs/lab-03-sqli.md and walk me through it step by step.
Give me one step at a time and wait for my result before the next step.
End with the blue-team half: how to detect it and how to fix it.
```

## Motion only
```
Add motion to [page] using the motion-site skill. Every animation needs a job.
GSAP ScrollTrigger for scroll, no bounce, no particles, respect prefers-reduced-motion.
Show me a recording or screenshots of the result.
```

## Bug bounty prompts
- "Use bug-bounty-business: compare these 3 programs and tell me which one to hunt first, and why."
- "/bounty-hunt on [program] — scope first, then recon, then one deep surface."
- "/bounty-report — turn this validated finding into a HackerOne report: [paste finding + evidence]."
