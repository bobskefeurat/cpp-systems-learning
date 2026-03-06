# Source Integration Schema

## Purpose
Define the normalized schema used by source integration records.

The schema is designed for deterministic authoring support:
- external content is normalized once
- repo-specific usage is mapped explicitly
- generators consume stable local records instead of live links

## Design Rules
- Keep source extraction and pedagogical mapping as separate documents.
- Use stable IDs for sources, units, concepts, mappings, phases, and gate clusters.
- Store metadata and short paraphrases only.
- Preserve provenance for every meaningful unit of extracted data.
- Make uncertainty explicit with confidence fields and risk flags.
- Keep the schema general enough for repos, docs sites, PDFs, slide decks, and tutorial sites.

## Record Type 1: `source_extraction`

### Required Top-Level Fields
| Field | Type | Notes |
| --- | --- | --- |
| `schema_version` | string | Schema version, for example `v0`. |
| `record_kind` | string | Must be `source_extraction`. |
| `source` | object | Source metadata. |
| `extraction` | object | How the extraction was produced. |
| `units` | list | Ordered list of normalized source units. |

### `source` Object
| Field | Type | Notes |
| --- | --- | --- |
| `source_id` | string | Usually matches the candidate source ID, for example `S-001`. |
| `title` | string | Display title of the source. |
| `provider` | string | Author or organization. |
| `source_kind` | string | One of: `course_repo`, `docs_site`, `tutorial_site`, `book`, `slides`, `pdf`, `mixed`. |
| `delivery_formats` | list | One or more of: `html`, `markdown`, `pdf`, `slides`, `repo_files`, `video`, `mixed`. |
| `entry_url` | string | Main URL or canonical local path for the source. |
| `license_status` | string | One of: `clear-reusable`, `clear-link-only`, `unclear-link-only`, `restricted`. |
| `review_status` | string | One of: `candidate`, `approved-for-extraction`, `deprecated`. |
| `last_reviewed` | string | `YYYY-MM-DD`. |
| `notes` | string | Short source-level note. |

### `extraction` Object
| Field | Type | Notes |
| --- | --- | --- |
| `method` | string | One of: `manual`, `scripted`, `hybrid`. |
| `run_date` | string | `YYYY-MM-DD`. |
| `confidence_summary` | string | One of: `high`, `medium`, `low`, `mixed`. |
| `change_notes` | string | What changed in this extraction revision. |

### `units` List
Each item in `units` represents a normalized structural unit from the source.

### Unit Fields
| Field | Type | Notes |
| --- | --- | --- |
| `unit_id` | string | Stable local ID. |
| `parent_unit_id` | string or null | Use when a unit belongs under a larger one. |
| `kind` | string | One of: `chapter`, `module`, `lesson`, `section`, `topic_cluster`. |
| `sequence` | integer | Source order. |
| `title` | string | Unit title. |
| `source_url` | string | Direct URL or local path for the unit. |
| `summary` | string | Short paraphrase only. |
| `learner_fit` | string | One of: `beginner`, `intermediate`, `advanced`, `mixed`. |
| `reading_role` | string | One of: `primary`, `secondary`, `reference`, `not-suitable`. |
| `task_authoring_role` | string | One of: `primary`, `supporting`, `reference-only`, `exclude`. |
| `prerequisites` | list | Free-form prerequisite labels or IDs known at extraction time. |
| `candidate_phase_tags` | list | Repo-agnostic phase tags such as `foundations` or `concurrency`. |
| `candidate_gate_tags` | list | Repo-agnostic gate clusters such as `compile-basics` or `ownership-intro`. |
| `integration_candidate` | boolean | Whether this unit looks useful for integration-task design. |
| `needs_companion_source` | boolean | Whether the source is insufficient on its own for this unit. |
| `companion_resource_ids` | list | Optional `R-###` IDs when companion sources are already known. |
| `risk_flags` | list | Examples: `assumes-prior-knowledge`, `license-unclear`, `too-advanced-early`, `thin-examples`. |
| `concepts` | list | Concept records nested under the unit. |
| `provenance` | object | Where the extracted understanding came from. |
| `confidence` | string | One of: `high`, `medium`, `low`. |
| `notes` | string | Short local note. |

### Concept Fields
| Field | Type | Notes |
| --- | --- | --- |
| `concept_id` | string | Stable local ID. |
| `label` | string | Human-readable concept label. |
| `tags` | list | Concept tags used by generators and mappings. |
| `difficulty` | string | One of: `beginner`, `intermediate`, `advanced`. |
| `prerequisite_concept_ids` | list | Stable concept IDs when known. |
| `task_patterns` | list | Examples: `explain-and-demonstrate`, `debug-small-build`, `compare-tradeoffs`, `implement-bounded-class`. |
| `misconceptions` | list | Short misconception statements. |
| `reading_role` | string | Concept-level override when needed. |
| `task_authoring_role` | string | Concept-level override when needed. |
| `needs_companion_source` | boolean | Concept-level override when needed. |
| `companion_resource_ids` | list | Concept-level companion sources. |
| `risk_flags` | list | Concept-level risks. |
| `confidence` | string | One of: `high`, `medium`, `low`. |
| `notes` | string | Short concept note. |

### `provenance` Object
| Field | Type | Notes |
| --- | --- | --- |
| `extracted_from` | list | List of source locations used to derive the unit. |
| `extractor_notes` | string | Short note about ambiguity or interpretation. |

Each `extracted_from` item should include:
- `title`
- `url`

## Record Type 2: `pedagogical_mapping`

### Required Top-Level Fields
| Field | Type | Notes |
| --- | --- | --- |
| `schema_version` | string | Schema version, for example `v0`. |
| `record_kind` | string | Must be `pedagogical_mapping`. |
| `mapping_id` | string | Stable local mapping ID. |
| `target_program` | string | Repo or curriculum target. |
| `source_ids` | list | One or more `S-###` IDs. |
| `assumptions` | list | Important mapping assumptions. |
| `phase_mappings` | list | Repo-specific phase interpretations. |
| `global_gaps` | list | Missing material or known weak spots. |
| `generator_rules` | list | Hard rules generators must respect. |

### Phase Mapping Fields
| Field | Type | Notes |
| --- | --- | --- |
| `phase_id` | string | Stable phase ID. |
| `title` | string | Phase display title. |
| `goal` | string | Short phase goal. |
| `included_units` | list | `unit_id` values included in the phase. |
| `excluded_units` | list | `unit_id` values explicitly excluded from this phase. |
| `entry_requirements` | list | What should already be stable before this phase starts. |
| `reading_policy` | string | Short statement about how the source should be used for reading in this phase. |
| `companion_resource_ids` | list | `R-###` IDs needed for this phase. |
| `gate_clusters` | list | Gate candidates for the phase. |
| `gaps` | list | Phase-local gaps or risks. |
| `notes` | string | Short phase note. |

### Gate Cluster Fields
| Field | Type | Notes |
| --- | --- | --- |
| `cluster_id` | string | Stable gate-cluster ID. |
| `title` | string | Gate-cluster title. |
| `gate_kind` | string | One of: `micro`, `integration`. |
| `source_units` | list | `unit_id` values used by this cluster. |
| `concept_ids` | list | `concept_id` values used by this cluster. |
| `task_patterns` | list | Allowed task patterns for generation. |
| `required_prerequisites` | list | Concept or capability prerequisites. |
| `disallowed_topics` | list | Topics that must not leak into this cluster. |
| `requires_companion_sources` | list | `R-###` IDs or notes for required support material. |
| `readiness_focus` | list | What readiness should test before task work. |
| `notes` | string | Short cluster note. |

## Validation Rules
- `record_kind` must match the document type.
- All referenced `unit_id` and `concept_id` values must exist.
- `sequence` values should be unique within siblings.
- `task_authoring_role: exclude` must not be used as task-generation input.
- `reading_role: primary` should be used sparingly unless the source is genuinely suitable as the learner's main reading path.
- If `license_status` is `unclear-link-only` or `restricted`, the record must not contain copied long passages from the source.
- If learner-facing reading is planned, the relevant source segment should eventually map to curated `R-###` resources before runtime use.

## Practical Split
Use `source_extraction` to answer:
- what the source contains
- how the source is structured
- what concepts appear and how trustworthy the extraction is

Use `pedagogical_mapping` to answer:
- which phase should use which source units
- which gate clusters can be generated from those units
- where companion sources are required
- what a generator may or may not use
