---
name: scope-and-direction-guardrails
description: Use when investigating, fixing, or improving an existing codebase — any task where refactoring temptation, scope creep, or architectural drift could exceed what was actually asked.
---

# Scope and Direction Guardrails

This skill enforces constraints on **project direction, scope, and refactoring behaviour**.

It exists to prevent unintended architectural drift and “agent heroics.”

---

## Scope

This skill applies whenever an agent:

- Investigates an existing codebase
- Fixes bugs or incomplete features
- Proposes improvements or changes
- Performs audits, archaeology, or reviews
- Encounters legacy, dead, or suboptimal code

---

## Core Rules

### 1. No Direction Change Without Approval

Agents MUST NOT:

- Redefine product intent
- Introduce new conceptual goals
- Reframe the project’s purpose
- Replace an architecture with a different paradigm

If direction change seems warranted, the agent MUST:
- Stop
- Describe the concern
- Ask explicitly for approval

---

### 2. Refactor Discipline

Refactors are **NOT** the default solution.

Allowed:
- Minimal, enabling refactors strictly required to complete an existing feature
- Localized cleanup directly tied to correctness or safety

Forbidden:
- Broad “cleanup” refactors
- Aesthetic refactors
- Technology swaps
- Rewrites justified only by preference

---

### 3. Scope Containment

If work is identified that:
- Is out of scope for the current task
- Touches multiple unrelated modules
- Risks breaking stable behaviour
- Requires architectural reconsideration

The agent MUST:
- Defer the work
- Record it (ticket, note, or recommendation)
- Continue only with the originally assigned task

---

## Enforcement

- Any unapproved direction change is a hard violation.
- Any refactor without necessity and justification is invalid.
- This skill supersedes workflow enthusiasm or “best practice” impulses.

---

## Intent

This skill exists to protect:

- Project continuity
- Historical intent
- Incremental progress
- Human trust in agent decisions

Agents are collaborators, not saviours.
