---
name: contracts-audit
description: Checklist for auditing architecture contracts in a develop-by-contract environment. Covers the failure modes most commonly found during contract review: status drift, AI-invented decisions, cross-contract fact drift, stale feature references, missing state specs, and business policy gaps.
---

# Contracts Audit

Use this skill when reviewing, locking, or cross-checking architecture contracts. Work through each category below. Flag every finding before making any edits — do not silently fix and move on.

---

## 1. Status & index integrity

- [ ] Does the file's status header (`✅ Live`, `⚠ Unreviewed`, `🔴 Stub`) match the README status table entry?
- [ ] If the contract is marked `✅ Live`, was it reviewed and approved by the human owner — or did an AI session mark it Live on its own?
- [ ] If corrections are made to an already-Live contract, is the locked date updated?

**Red flag:** A contract marked Live whose locked date predates the current owner's involvement, or whose content contains decisions the owner has no memory of making.

---

## 2. AI-invented decisions

- [ ] Are specific values (prices, tier names, trial lengths, feature flags, plan IDs) presented as decided facts? If so, verify the owner actually decided them.
- [ ] Are "illustrative" or "TBD" disclaimers placed **above** the data they describe, not below?
- [ ] Does any section describe a feature or tier that was never actually decided (e.g., a Free tier, a marketplace flow, a team-approval chain)?

**Rule:** If a value or policy hasn't been explicitly decided by the product owner, the contract must say so and mark it open — not invent a plausible answer.

---

## 3. Cross-contract fact drift

- [ ] Is the same fact stated consistently across all contracts that reference it (e.g., a retention window, a state name, a file path)?
- [ ] When one contract is corrected, are all sibling contracts that restate the same fact updated in the same pass?
- [ ] Does a lifecycle defined in one contract have its routing/access consequences specified in the companion contract?

**Pattern to catch:** Contract A says "30 days"; Contract B says "6 months." One is stale. Fix both in the same commit.

---

## 4. Stale content from removed features

- [ ] Do any state-transition tables reference states, tiers, or flows that no longer exist?
- [ ] Do any code samples return types or import symbols from a prior model?
- [ ] Do any seed files, example objects, or entitlement lists include keys for a removed tier or feature?
- [ ] Do forbidden-patterns tables list something as wrong that the contract itself does elsewhere?

**Common example:** After removing a Free tier, contracts still say "downgrade to Free on cancellation," return `'free'` from state functions, or include Free-tier seeds.

---

## 5. Contradictions within a single contract

- [ ] Do any two sections of the same contract describe the same thing differently? (e.g., §3 says local mirror; §10 says live API calls for the same data)
- [ ] Does the forbidden-patterns section list an anti-pattern that the contract's own code samples demonstrate?

---

## 6. Missing state specifications

- [ ] Does every state in the state machine have a corresponding routing/access spec (what routes are accessible, what is blocked, what the UI shows)?
- [ ] Is every state in the `effectiveOrgState` / equivalent function also described in the states table?
- [ ] When a new state is introduced in one section, is it added to the canonical states table in the same pass?

**States need two things:** type coverage (it exists in the type system) AND behavior coverage (what happens when you're in it).

---

## 7. File path correctness

- [ ] Do all file paths in the contract resolve to actual files in the current repo structure?
- [ ] Have generic `{product}` or `{name}` placeholders been resolved to actual paths where the product is known?
- [ ] Have directory names been updated after any repo renames (e.g., `apps/old-product-name/` → `apps/web-tenant/`)?

---

## 8. Business policy gaps (omission-as-decision)

- [ ] Are important negative rules stated explicitly, not implied by omission?
  - "Tenants can export data without re-subscribing"
  - "There is no Free tier"
  - "Attribution link does not use `rel='nofollow'`"
  - "Asset IDs are immutable; never reused"
- [ ] When something intentionally does NOT exist, does the contract say so?

**Rule:** A future implementer will not know what was decided by omission. Explicit "there is no X" and "X is not gated by Y" statements are as important as positive specs.

---

## 9. Missing UI surface specs

- [ ] Is every platform UI mentioned in prose (e.g., "Platform Plans UI," "danger zone") also described as a proper UI spec with fields, actors, and access rules?
- [ ] Does every state in the system (restricted, expired, pending_deletion) have its admin routing rules documented?

---

## 10. Module / entitlement naming

- [ ] Are all entitlement keys named after modules or capability flags — not products?
  - ✅ `announcement-server-module`, `customDomains`, `aiAltText`
  - ❌ `product-a-module`, `flagship-module`, `acme-module` (named after products, not capabilities)
- [ ] Does any module code assume or hardcode a specific product context?

---

## 11. Numeric values — data-driven vs. hardcoded

- [ ] Are numeric tier values (page caps, storage, rate limits, video minutes) referenced as `Plan.limits` JSONB keys — not as fixed numbers in the contract?
- [ ] If the contract says "these values are set via the Platform Plans UI," are those values consistently tagged as illustrative in all other contracts that repeat them?

---

## 12. Code sample correctness

- [ ] Do TypeScript snippets use types consistent with the current model (return types, union members, import paths)?
- [ ] Do `import` statements in snippets reference current package names (no renamed or removed packages)?
- [ ] Do SQL snippets reference current table names (no renamed tables)?

---

## 13. SEO / link policy

- [ ] Do outbound links from product-generated content use `rel="nofollow"` where link equity should NOT pass, and omit it where it should?
- [ ] Is the attribution link policy explicitly stated (pass equity vs. suppress)?

---

## General principles

- **Contracts describe decisions, not aspirations.** Undecided values must be marked open — not filled with plausible guesses.
- **Every state in a state machine needs a routing spec.** Type coverage ≠ behavior coverage.
- **Cross-contract facts must be synced in the same pass.** Don't update one file and defer the sibling.
- **Negative decisions are decisions.** "There is no X" is as important to document as "there is X."
- **AI sessions that mark contracts Live require human sign-off.** An AI reviewing its own output is not a reviewer.
- **Illustrative tables need their disclaimer above the table**, not below — readers scan top-down.
