# Source Integration Records

## Purpose
Store the actual normalized records produced by source integration work.

These records are the stable local input for:
- course planning
- future phase planning
- gate-cluster planning
- task-generation support
- gap analysis across sources

## Structure
- `extractions/`
  One `source_extraction` YAML file per source.
- `mappings/`
  One or more `pedagogical_mapping` YAML files per source or planning pass.

## Naming Convention
- Extraction records:
  `S-###-<slug>.yaml`
- Mapping records:
  `M-###-<slug>.yaml`

Recommended rule:
- keep one primary extraction file per source
- allow multiple mapping files when different planning passes or target curricula need different interpretations

## Operational Rule
- Update extraction records when the upstream source changes materially.
- Update mapping records when repo goals, phase boundaries, or generation rules change materially.
- Prefer editing existing records over creating near-duplicates with overlapping scope.
