---
description: Build a high-fidelity landing page with motion design, using the pack's design and motion skills
---

# /landing-page — High-fidelity landing page with motion

Input: the product, who it is for, and the one action the page must drive (sign up, buy, book).

1. **Design system first.** Use the `ui-ux-pro-max` skill to pick a style, palette, and font pairing that fit the product type. Write down: 4–6 named colors, display font, body font, radius style, and one signature element for the hero.
2. **Direction check.** Use the `frontend-design-director` skill to set the page narrative: hero as a thesis (the most characteristic thing about the product, not a big number on a gradient), then proof, features, pricing (if any), FAQ, final CTA.
3. **Structure.** Build with semantic HTML and the project's stack. Foundation components in shadcn/ui style; at most 2–3 flair components (Magic UI / Aceternity style) for the hero and one section.
4. **Motion.** Use the `motion-site` skill. GSAP ScrollTrigger for section reveals and any scroll story; Motion for component-level animation. One or two tuned reveals per section, word-by-word headline rise, no bounce, no particles. Add `prefers-reduced-motion` handling.
5. **Copy discipline.** Real copy for this product. Never invent testimonials, client logos, or numbers.
6. **Verify in the browser.** Open the page, screenshot at 360px, 768px, and 1440px. Check: no horizontal scroll, hero reads in 3 seconds, CTA visible, animations smooth (scroll slowly through the whole page), reduced-motion mode works.
7. **Performance pass.** Lazy-load images and heavy animation code, compress media, confirm no layout shift on load.
8. Report: the design system chosen, the signature element, what was verified, with screenshots.
