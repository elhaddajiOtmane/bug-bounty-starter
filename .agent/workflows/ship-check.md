---
description: Pre-release checklist — tests, browser verification, security, performance
---

# /ship-check — Before anything ships

1. **Tests.** Run the full test suite. Use the `test-driven-development` discipline for gaps: any behavior changed without a test gets one now.
2. **Browser verification.** Use the `webapp-testing` skill: load the app, click the main flows end to end, screenshot key screens at 360px and 1440px.
3. **Security.** Run the `security-review` skill on the pending changes and the dependency audit. High/critical = stop.
4. **Performance.** Check bundle size growth, image weights, and that animations stay on transform/opacity.
5. **Diff hygiene.** No secrets, no debug logging, no commented-out code blocks, no unrelated changes.
6. Use the `verification-before-completion` skill: only claim "ready" with the evidence from steps 1–5 in hand. Report what was checked and what was not.
