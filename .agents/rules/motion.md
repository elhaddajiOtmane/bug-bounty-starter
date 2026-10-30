---
trigger: always_on
---

# Motion Rules

- Every animation must have a job: guide the eye, show what changed, or tell the story. Decoration-only motion gets deleted.
- Tool choice: GSAP + ScrollTrigger for scroll sequences and timelines; Motion (Framer Motion) for React component animation; Lenis only when the page is scroll-driven; Lottie/Rive for designer-made assets; Three.js only when 3D is the idea, never as wallpaper.
- Surgical, not everywhere: one or two tuned reveals per section. Stagger text by words or lines (about 0.08–0.1s apart), numbers roll, objects morph into the next scene instead of fading to black.
- Never: bounce easing on UI, neon glow, particle confetti, scroll hijacking, custom cursor blobs, animating width/height (use transform and opacity).
- Performance: animate transform/opacity only, lazy-load animation libraries and 3D, provide a low-fidelity mobile fallback, keep INP and CLS green.
- Always honor `prefers-reduced-motion`: reduce to instant or near-instant transitions.
