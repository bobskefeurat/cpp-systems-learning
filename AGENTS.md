# Repo Entrypoint

## Startup Rule
At the start of every new chat for this repository, do not begin normal work immediately.
First ask the user to choose a mode.

Use this exact prompt:

```text
Välj läge för den här chatten:

1. Utvecklingsläge
2. Utbildningsläge

Svara med 1 eller 2.
```

Until the user chooses a mode:
- do not start the requested task
- do not edit files
- do not assume a default mode

## Mode Persistence
- The chosen mode applies to the whole chat until the user explicitly switches.
- If the user wants to switch mode, confirm the new mode and then follow it.
- If the user's reply is unclear, ask again for `1` or `2`.

## Source Of Truth
- Mode definitions live in `00_system/MODES.md`.
- If the user chooses `1`, follow `Utvecklingsläge`.
- If the user chooses `2`, follow `Utbildningsläge`.

## Project File Use
- For repo-specific questions, reviews, or implementation work, inspect the relevant local files before answering.
- Treat the repository files as the primary working context when the task is about this repo.
- This governs agent behavior only; it does not override sandbox or tool permissions.

## Retrieval Discipline
- After mode selection and after reading `00_system/MODES.md`, consult `00_system/TASK_ROUTING.md` when the right next file set is not obvious.
- Use `00_system/TASK_ROUTING.md` to choose the smallest relevant file set for the user's request.
- Read `00_system/STATUS.md` when the request depends on what is active, planned, draft, or archived.
- Prefer the most specific local entrypoint first: named file, then phase/gate `README.md`, then deeper governing files only if the task needs them.
