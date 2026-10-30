---
name: first-mover-hunting
description: Beat the crowd — including AI-assisted hunters — to fresh bug bounty surface: watching new program launches and scope changes, the 72-hour rush on new features, subdomain-diff monitoring, and using AI for speed (recon, mapping, reporting) while hunting the thinking bugs (business logic, access control, chains) that scanners and AI miss. Use when the user worries about competition/duplicates, asks how to be first, or plans what to hunt today.
---

# First-Mover Hunting

In the AI era, the easy bugs on old surface go to whoever's scanner runs first — and thousands run at once. The durable edge is not a better scanner. It is **fresh surface + thinking bugs + speed of setup**. This skill is that system.

## The three fresh surfaces (in order of value)
1. **Scope changes on programs you already know.** A new domain, a new feature, an expanded wildcard. You already have accounts, context, and the rules — you can hunt in minutes while strangers are still reading the policy page. Highest value per hour.
2. **New program launches.** First 48–72 hours: the surface is unhunted, but the whole world rushes. Win by setup speed, not scanning speed: scope read, accounts created, app mapped in the first session.
3. **New features on any program.** Product changelogs, "what's new" posts, app-store release notes, new JS bundles. A feature shipped last week has had almost no hunter attention, even inside old programs.

## The watch system (15 minutes a day — see `/scope-watch`)
- Platform new-launch and scope-change listings (HackerOne directory, Bugcrowd programs page, Intigriti/YesWeHack equivalents).
- Your 3–5 home programs: re-diff their subdomains weekly (`hunt-subdomain` + `web2-recon`) and note every new host in your tracker. New host = private fresh surface.
- Product signals for your programs: changelog pages, status blogs, mobile app updates.
- Keep a "fresh list" note: surface, program, date seen, hunted? The list is your daily menu — hunt from it before anything else.

## The 72-hour rush (see `/new-scope-rush`)
Hour 0–1: rules + accounts + full feature map as a normal user. Hours 1–4: access-control matrix with two accounts (every object ID, every role) — IDOR-class bugs are the most common fresh-surface payouts. Day 2: business logic on the new feature's money/data flows. Day 3: API endpoints behind the feature (`hunt-api-misconfig`, `hunt-shadow-api`), then validate and report fast — a proven report today beats a perfect one after the duplicate lands.

## Where AI helps YOU (and where it loses to you)
- Use the agent for: recon volume, reading minified JS, building the endpoint/parameter inventory, drafting reports (`/bounty-report`), turning changelogs into checklists. This is setup speed.
- Do NOT rely on the agent (or any scanner) for: business logic, cross-account authorization reasoning, chained bugs, "what would break if I combine these two features" thinking. That is precisely the work the crowd's AI is worst at and the work that pays — spend your human hours there.
- Scanner-found classes (reflected XSS, missing headers, generic misconfigs) on public programs: assume duplicate unless the surface is fresh.

## Anti-duplicate discipline
- Hunt from the fresh list; if the surface is older than a month and public, expect competition and go deep or go elsewhere.
- Check the program's disclosed reports before investing hours — if your target class was paid out last week on this asset, that hole is patched and its twins probably are too.
- Speed is a habit: validate and submit the same day you find it. A held report is a duplicate waiting to happen.
