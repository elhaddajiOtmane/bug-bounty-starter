---
description: Plan a feature before building it — brainstorm, spec, and a step-by-step implementation plan
---

# /plan-feature — Plan before building

1. Use the `brainstorming` skill: clarify what is being built, who for, and what "done" looks like. Surface the design/architecture choices and their trade-offs.
2. Check the codebase first: how do similar features work here? Follow the existing patterns unless there is a stated reason not to.
3. Use the `writing-plans` skill to produce the plan: files to create or change, order of steps, tests per step, and the risks (auth, data model, migrations, performance).
4. Security check on the plan: new inputs, new endpoints, new stored data — note what validation and access control each one needs.
5. Stop and present the plan. Build only after the user approves it (or after they said to proceed without review).
