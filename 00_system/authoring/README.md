# Authoring

## Purpose
This folder holds the development-side rules and tools for creating, restructuring, and validating phases and gates.

## Contents
- `GATE_STRUCTURE.md`
  Standard folder structure, file responsibilities, and naming rules for phases and gates.
- `GATE_VALIDATION.md`
  Repeatable validation workflow for new or materially changed gates.
- `validate-structure.ps1`
  Structural validation script.
- `templates/`
  Reusable templates for phases and gates.

## Read Order
1. Start with `GATE_STRUCTURE.md`.
2. Read `GATE_VALIDATION.md` when a new or heavily revised gate needs quality checks.
3. Use `templates/` before drafting new gate content.
4. Run `validate-structure.ps1` before calling a generated gate structurally complete.
