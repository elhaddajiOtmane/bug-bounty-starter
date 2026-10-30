# Project Constitution — Design, Architecture, Security

Shared rules for every AI agent working in this project (Antigravity, Claude Code, Codex, Cursor). Antigravity-specific rules live in `.agents/rules/` and win on conflict.

## How to work
- Plan before building: for anything bigger than a small fix, state the goal, the files you will touch, and the risks — then build in small steps and verify each step.
- Never claim something works until you ran it, opened it, or tested it. Show the evidence (screenshot, test output).
- Keep diffs small and focused. Do not refactor unrelated code.
- Ask when a choice changes the product (design direction, data model, auth). Pick the obvious option yourself for everything else.

## Design
- Every page gets a deliberate design direction first: named palette (4–6 colors), a display font + a body font, one signature element. No default purple gradients, no generic card grids as the idea.
- Use the `frontend-design`, `ui-ux-pro-max`, and `frontend-design-director` skills for UI work. Use `theme-factory` for color/type systems.
- Foundation components: shadcn/ui style (accessible, owned code). Marketing flair: Magic UI / Aceternity-style components, used sparingly.
- Accessibility is not optional: contrast 4.5:1, visible focus states, keyboard navigation, alt text, touch targets at least 44px.
- Mobile first. No horizontal scroll. Test at 360px, 768px, and 1440px.

## Motion
- Motion must answer "where do I look, and what just changed?" — if it doesn't, delete it.
- Landing pages: use the `motion-site` skill and GSAP (ScrollTrigger) for scroll sequences; Motion (Framer Motion) for component animation. Lenis for smooth scroll when the page is scroll-driven.
- 2026 style: surgical motion — one or two tuned reveals per section, measured easing, no bounce, no particles-for-decoration, no scroll hijacking.
- Always respect `prefers-reduced-motion`. Lazy-load heavy animation and 3D; keep Core Web Vitals green.

## Architecture
- Modular by feature, not by file type. Shared logic goes in a lib/services layer; UI components stay dumb and receive data via props.
- One source of truth for state and configuration. No duplicated constants — define once, import everywhere.
- Every external call (API, database) goes through one wrapper with error handling and timeouts. No silent failures: log errors with context.
- New dependency? Justify it in one line (what it replaces, size, maintenance). Prefer the standard library and what's already installed.

## Security (hard rules)
- Never print, commit, or log secrets. Secrets live in environment variables only.
- All database access parameterized. All user input validated on the server. All rendered user content escaped.
- Every protected route checks authentication AND authorization.
- Run the `security-review` skill before any release. High or critical findings block the release.
- Dependencies: run the audit tool before release; no known high/critical vulnerabilities ship.

## Red team / blue team work
- Attack techniques are used only on authorized targets: own systems, local labs (DVWA, Juice Shop), CTFs, or written-permission scope. No authorization = no testing, no exceptions. Full rules in `.agents/rules/red-team.md`.
- Think in attack architecture: kill chain / MITRE ATT&CK, trust boundaries, attack trees (`attack-architecture` skill). Every attack step is documented with the detection and defense that answer it (`blue-team-defense` skill).
- Defense work is defense in depth: harden, log, detect, respond (PICERL). A defense claim without a log that can prove it is a hope, not a control.

## Definition of done
- It runs, it was verified in a browser or by tests, the design matches the chosen direction on mobile and desktop, no secrets in the diff, and the summary says what changed and what was checked.

## Bug bounty
For paid platform work (HackerOne, Bugcrowd, Intigriti): the program's scope and rules are law — see `.agents/rules/bug-bounty.md`. Choose programs and price impact with `bug-bounty-business`; hunt with `/bounty-hunt`; report with `/bounty-report`. Your own test accounts only; prove impact minimally; one bug per report; nothing public without the program's permission. Signal (valid-report rate) is an asset — never submit an unproven finding. Hunt fresh surface first: run `/scope-watch` daily and `/new-scope-rush` on new scope (`first-mover-hunting` skill) — fresh surface and thinking bugs, not scanner noise, are the edge against the AI crowd.
