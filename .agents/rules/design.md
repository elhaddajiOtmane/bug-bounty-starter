---
trigger: always_on
---

# Design Rules

- Before writing UI code, lock a design system: 4–6 named colors, one display font + one body font, spacing scale, radius style. Write it at the top of the plan.
- Use the `ui-ux-pro-max` skill to look up styles, palettes, and font pairings instead of choosing from memory.
- No generic AI look: no default purple-to-blue gradients, no identical card grids as the whole idea, no system-font-only pages.
- Spend boldness in one place per page (the signature element); keep everything around it quiet.
- Dark mode is the default for SaaS/AI products unless the brief says otherwise.
- Accessibility floor: contrast 4.5:1 for body text, visible focus rings, aria labels on icon buttons, alt text on images, 44px minimum touch targets.
- Typography does heavy lifting: oversized display type for heroes, tight tracking on headlines, generous line-height (1.5) on body text.
- Mobile first, then tablet, then desktop. Verify 360px / 768px / 1440px before calling it done.
