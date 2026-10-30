---
name: evidence-and-inference
description: Use when analyzing, auditing, reviewing, or explaining a codebase, system, or project state — whenever written claims could mix observed fact with interpretation.
---

# Evidence and Inference

This skill defines mandatory standards for distinguishing **evidence** from **inference** when reasoning about a codebase, system state, or project intent.

This skill is **authoritative** and applies across all repositories and workflows where claims are made.

---

## Scope

This skill applies whenever an agent:

- Describes what a system does or is intended to do
- Assesses completeness, correctness, or progress
- Performs audits, reviews, investigations, or analyses
- Explains behaviour, architecture, or system state
- Draws conclusions from code, configuration, or documentation

---

## Core Rules

### 1. Evidence vs Inference Separation (MANDATORY)

All claims MUST be clearly categorized as one of:

**Evidence**
- Directly observable facts
- File paths, symbols, configs, schemas, outputs
- Explicit documentation statements

**Inference**
- Interpretation or implication derived from evidence
- Hypotheses about intent or future direction
- Reasoned conclusions not explicitly stated

Agents MUST label these categories explicitly when producing written analysis.

---

### 2. No Guessing

- Agents MUST NOT invent behaviour, intent, or system state.
- If evidence is insufficient:
  - State uncertainty clearly
  - Describe what additional evidence would be required
- “Likely”, “appears”, or “suggests” language MUST be tied to cited evidence.

---

### 3. Citation Standard

When presenting evidence, include at least one of:

- File path(s)
- Symbol or function names
- Route or endpoint identifiers
- Configuration keys
- Test or fixture references
- Logged output (where applicable)

Vague references such as “the code seems to…” are not acceptable.

---

### 4. Inference Discipline

Inference MUST:

- Be logically connected to stated evidence
- Avoid overstating certainty
- Be reversible if new evidence contradicts it

If multiple interpretations are plausible, list them explicitly.

---

## Output Shape

Make the split structural — don't weave labels into prose. Per claim or per section:

```markdown
**Evidence:** `src/auth/session.ts:42` sets `maxAge: 86400` — sessions expire after 24h.
**Inference:** the logout bug is probably unrelated to expiry — the timing in the report doesn't match.
```

For short answers, a single "Observed / My read" split is enough. The form matters less than the invariant: a reader can always tell which claims were seen and which were concluded.

---

## When NOT to Apply

- Trivial factual lookups with no interpretive step ("what port does the dev server use?")
- Creative or generative work where nothing is asserted about an existing system
- Restating the user's own claims — attribute those instead ("per your description…")

---

## Rationalizations

| Excuse | Reality |
|---|---|
| "Labeling would clutter a quick answer" | One "Observed / My read" split costs a line. A wrong conclusion costs a debugging session. |
| "It's obviously inference from context" | Readers skim. A week later, unlabeled inference reads as fact. |
| "I'm confident, so it's basically evidence" | Confidence is not observation. If it wasn't seen in a file or output, it's inference. |

---

## Enforcement

- If an agent cannot clearly separate evidence from inference, it MUST stop and revise.
- Violations invalidate the analysis output.
- User instructions and project docs take precedence; within agent-initiated analysis, these rules are not optional.

---

## Intent

This skill exists to prevent:

- False confidence
- Narrative drift
- “Smart-sounding” but ungrounded conclusions
- Silent hallucination in analytical work

Accuracy and traceability take precedence over speed.
