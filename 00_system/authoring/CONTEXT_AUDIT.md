# CONTEXT AUDIT

## Purpose
Defines a repeatable way to test whether the repo's mode split and document layout improve context loading efficiency without weakening answer quality.

This file exists because a cleaner folder structure is only useful if it changes actual retrieval behavior in a good way.

## Use This File When
- changing the default context in `../MODES.md`
- moving documents between `foundation/`, `authoring/`, `resources/`, `research/`, or `archive/`
- splitting a large governing file into smaller files
- deciding whether a new document should be default-loaded or on-demand
- validating that a reorganization reduced unnecessary context use

## Audit Outcomes
An audit run should end in one of these states:
- improved
- neutral but acceptable
- regressed
- inconclusive; more prompt coverage is needed

## What Counts As Better
A context split is better when most of the following are true:
- fewer default files need to be loaded before useful work can begin
- fewer total default lines need to be loaded per mode
- each mode reaches mainly for files in the subfolder that matches its task
- `Utbildningsläge` avoids `authoring/` unless the user explicitly asks about repo structure or validation mechanics
- `Utvecklingsläge` avoids pulling in large parts of `foundation/` unless the task is actually about learner-facing behavior
- answer quality stays correct, specific, and actionable
- fewer cross-mode rule leaks appear

## Standard Audit Sequence (v0)
Run these checks in order.

1. Static footprint check
   - List the default-loaded files for each mode from `../MODES.md`.
   - Count:
     - number of default files
     - total line count of those files
     - number of files moved to on-demand status
   - Compare against the previous known baseline if one exists.

2. Mode-boundary check
   - Confirm that each default file really belongs to that mode.
   - For each default-loaded file, ask:
     - Is this needed in most chats for that mode?
     - Could it be safely moved to on-demand?
     - Would moving it create hidden prerequisites?

3. Prompt audit in fresh chats
   - Run the audit in separate fresh chats so earlier context does not contaminate the result.
   - Use at least:
     - 2 prompts in `Utvecklingsläge`
     - 2 prompts in `Utbildningsläge`
   - Prefer representative prompts, not edge cases.

4. Retrieval-discipline check
   - For each prompt, record which repo files the agent actually needed to inspect before giving a solid first answer.
   - Check whether the files pulled in match the intended mode boundaries.
   - Unnecessary retrieval from the wrong subfolder counts as a finding, especially when it becomes the default pattern.

5. Quality check
   - Confirm that the first useful answer is still correct and appropriately scoped.
   - A smaller context footprint is not an improvement if it causes:
     - incorrect policy use
     - missed gate requirements
     - bad resource references
     - failure to switch mode when required

6. Cross-mode leakage check
   - In `Utbildningsläge`, verify that the agent does not drift into repo-maintenance behavior.
   - In `Utvecklingsläge`, verify that the agent does not over-apply learner-facing restrictions unless the task is actually about the course runtime contract.

7. Record the result
   - Write down:
     - static footprint numbers
     - representative prompts used
     - unnecessary file retrievals, if any
     - quality regressions, if any
     - final outcome: improved / neutral / regressed / inconclusive

## Suggested Prompt Set (v0)
Use prompts like these unless the repo changes enough that a different set becomes more representative.

### `Utvecklingsläge`
- "Skapa nästa gate i Phase 0."
- "Validera Gate 2 mot reglerna."
- "Refaktorera hur resources indexeras."

### `Utbildningsläge`
- "Jag vill börja Gate 1. Vad ska jag läsa först?"
- "Jag är redo för evaluation i Gate 2."
- "Jag förstår inte stack vs heap. Hjälp mig enligt reglerna."

## Expected Audit Record (v0)
When reporting an audit run, include at minimum:
- mode audited
- default files
- default file count
- default line count
- prompts used
- files actually consulted
- unnecessary retrieval findings
- quality findings
- leakage findings
- final outcome

## Notes
- Static line count is only a proxy. It is useful, but it does not replace prompt-driven checks.
- Prefer comparing against a known earlier commit when you want to claim that a reorganization improved context efficiency.
- If the mode definitions change materially, rerun the audit instead of assuming earlier results still hold.
