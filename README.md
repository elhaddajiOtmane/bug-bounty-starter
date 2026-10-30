# Antigravity Pack — Design, Motion, Architecture, Security + Red/Blue Teams

A ready pack for Google Antigravity: **53 skills + 6 rule files + 9 workflows + a project constitution + 7 step-by-step labs**, picked for high-fidelity design, landing pages with real motion design, clean architecture, security — and now red teaming, blue teaming, web vulnerabilities, and attack architecture. Nothing extra — big skill dumps slow Antigravity down, so this pack stays lean.

**New in v2 — the security range:**
- **Red team skills** (from Claude-BugHunter): methodology (`bb-methodology`, `redteam-mindset`), recon (`web2-recon`, `recon-scope-triage`, `evidence-hygiene`, `report-writing`), and one `hunt-*` skill per web vulnerability class: SQLi, XSS, SSRF, IDOR, CSRF, CORS, LFI, SSTI, XXE, file upload, auth bypass, JWT, NoSQLi, open redirect.
- **Blue team skills** (from Trail of Bits + written for this pack): `blue-team-defense` (hardening, detection, hunting, PICERL incident response), `audit-context-building`, `differential-review`, `sharp-edges`, `semgrep`, `yara-rule-authoring`.
- **`attack-architecture`** (written for this pack): kill chain + MITRE ATT&CK, how architecture creates attack surface, attack trees, every attack step paired with its defense.
- **Rules**: `red-team.md` (authorization first — labs, own systems, CTFs, written-permission targets only) and `blue-team.md`.
- **Workflows**: `/attack-plan`, `/web-vuln-hunt`, `/blue-team-review`, `/incident-response`.
- **Labs** (`labs/` folder): 7 step-by-step labs on safe local targets (DVWA + OWASP Juice Shop in Docker) — setup, recon, SQLi, XSS, access control, log detection, and a full mini-engagement with report.

## Install (pick one)

**Option A — installer script**
- Mac/Linux: `./install-mac-linux.sh project /path/to/your-project` (one project) or `./install-mac-linux.sh global` (all projects)
- Windows: `.\install-windows.ps1 project C:\path\to\your-project` or `.\install-windows.ps1 global`

**Option B — by hand**
Copy `.agents/` and `.agent/` into your project root, plus `AGENTS.md` and `GEMINI.md`. For all projects, copy the folders inside `.agents/skills/` into `~/.gemini/config/skills/` (Windows: `%USERPROFILE%\.gemini\config\skills\`).

**Option C — let Antigravity do it**
Open Antigravity in your project and paste: "Copy the .agents and .agent folders from [where you unzipped this pack] into this project root, and put AGENTS.md and GEMINI.md in the root too. Then start a new conversation and confirm which skills you can see."

After installing: **start a new conversation** — skills load at conversation start. Call one by name (e.g. "use the motion-site skill") or run a workflow like `/landing-page`.

## What's inside

**Design skills**
- `frontend-design` — Anthropic's official design skill; kills the generic AI look
- `ui-ux-pro-max` — searchable design database: styles, palettes, font pairings, UX rules, GSAP presets. Note: its search script path mentions a Claude plugin root — in Antigravity, run `scripts/search.py` from inside the skill's own folder instead
- `frontend-design-director` — art direction for marketing sites and landing pages
- `design-constraints` — keeps designs inside a real system
- `theme-factory` — color and typography themes
- `web-design-guidelines` — 100+ rule accessibility/UX audit checklist

**Motion skills**
- `motion-site` — studio-grade GSAP landing pages with a self-review loop
- `awwwards-motion`, `kinetic-inflated-hero`, `scroll-blur-manifesto`, `thermal-finger-trail` — signature hero/scroll motion patterns

**Architecture & process skills** (from Superpowers)
- `brainstorming`, `writing-plans`, `executing-plans` — plan before building
- `test-driven-development`, `systematic-debugging`, `verification-before-completion` — prove it works
- `requesting-code-review`, `dispatching-parallel-agents` — review and parallel work

**Security & quality skills**
- `security-review` — OWASP-style audit with severity report (written for this pack)
- `contracts-audit`, `evidence-and-inference`, `scope-and-direction-guardrails` — audit discipline
- `react-best-practices` — React/Next.js performance and quality rules
- `webapp-testing` — verify in a real browser
- `skill-creator` — make your own skills

**Rules** (`.agents/rules/`, always on): design, motion, architecture, security — short versions of the constitution.
**Constitution**: `AGENTS.md` / `GEMINI.md` in the root — the same text, so Claude Code and Codex follow it too.
**Workflows** (`.agent/workflows/`): `/landing-page`, `/plan-feature`, `/security-audit`, `/design-review`, `/ship-check`, `/attack-plan`, `/web-vuln-hunt`, `/blue-team-review`, `/incident-response`.
**Prompts**: `prompts/STARTER-PROMPTS.md` — copy-paste prompts that combine the skills.

## The stack these skills expect
GSAP (free, incl. ScrollTrigger) for scroll motion, Motion (Framer Motion) for React animation, Lenis for smooth scroll, Tailwind + shadcn/ui-style components as the foundation, Magic UI / Aceternity-style components for flair. The skills will set this up when you ask.

## Safety note
Skills are instructions an agent follows, and some include scripts (ui-ux-pro-max runs a Python search script). This pack was assembled from the public repos listed in SOURCES.md — read any skill before using it on a project with real credentials, the same way you'd read a new dependency.

## Credits
All upstream skills belong to their authors under their licenses — see SOURCES.md for every repo and what was taken from it. The rules, workflows, constitution, prompts, and the `security-review` skill were written for this pack.
