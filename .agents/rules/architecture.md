---
trigger: always_on
---

# Architecture Rules

- Structure by feature (each feature owns its components, logic, and tests), with a shared lib layer for services used by more than one feature.
- Single source of truth: constants, config, and types are defined once and imported — never copy-pasted between files.
- All external calls (HTTP, database, files) go through one wrapper per service with timeouts and error handling. Errors are logged with context; nothing fails silently.
- Data flow one way: fetch at the boundary, pass down as props/params. Components do not fetch from deep in the tree unless that is the project's established pattern.
- Before adding a dependency, state in one line what it replaces and why the built-in option is not enough. Prefer installed packages.
- Keep functions small and named by what they do. A file that needs a table of contents is two files.
- For any change touching auth, payments, or data models: write the plan first (files, risks, migration) and get it reviewed before editing.
