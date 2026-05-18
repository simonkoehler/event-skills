# Changelog

All notable changes to the event-management-skills collection are documented in this file.

Format follows [Keep a Changelog](https://keepachangelog.com/en/1.1.0/). Skills use integer versioning (v1, v2, v3). A version bump means a breaking change to the skill's input/output contract.

---

## [v1] — 2026-03-28

### Collection
- **Added** manifest.yaml — machine-readable skill registry with dependencies and routing tables
- **Added** gdpr-policy.md — unified GDPR policy as single source of truth across all skills
- **Added** CHANGELOG.md — versioning and change tracking

### Skills (all 12)
- **Added** `io_schema: references/io-schema.json` — machine-readable JSON Schema for input/output contracts
- **Added** `version: 1` and `version_date: 2026-03-28` to all YAML frontmatter
- **Added** Skill Interface sections with I/O contracts to all 10 specialist skills
- **Added** Format-specific routing (in-person / virtual / hybrid) to all specialist skills

### New Skills
- **Added** event-orchestrator — meta-skill for multi-skill workflow coordination with failure recovery and execution semantics
- **Added** event-reviewer — meta-skill for cross-skill consistency validation with formal pass/warn/fail rules

### GDPR
- **Added** event-speakers/references/gdpr-speakers.md
- **Added** event-logistics/references/gdpr-logistics.md
- **Added** event-exhibition/references/gdpr-exhibition.md
- **Added** event-content/references/gdpr-content.md

### Cross-Cutting Themes
- **Added** Accessibility edge cases to event-content, event-registration, event-marketing, event-speakers
- **Added** Sustainability edge cases to event-planner, event-budget, event-content
- **Added** Crisis management edge cases to event-planner, event-logistics

### Data Consistency
- **Fixed** CPL benchmarks aligned between event-budget and event-analytics (Average/Good/Excellent tiers)
- **Fixed** Email open rates split into general B2B (20-35%) vs event-specific (36-42%)
- **Fixed** Venue benchmark consistency (25-30% → 25-35%)

### Descriptions
- **Changed** event-sponsors: clarified organizer perspective in description
- **Changed** event-exhibition: clarified participant/buyer perspective
- **Changed** event-content: "Generate Outputs" consistency
- **Changed** event-planner: "virtual event strategy" (avoids logistics collision)
- **Changed** event-budget: "overall sponsorship revenue target forecasting"
- **Changed** event-analytics: added "actual" and "post-event data" qualifiers

---

## Versioning Policy

### When to bump the version

| Change type | Version bump? | Example |
|---|---|---|
| New edge case or example | No | Adding a "roadshow" edge case |
| New reference file | No | Adding gdpr-speakers.md |
| Fix typo or benchmark | No | Correcting CPL range |
| Change required input fields | **Yes — v2** | Adding "event_format" as required |
| Change output structure | **Yes — v2** | Restructuring budget categories |
| Remove an output | **Yes — v2** | Dropping "exhibitor guide" from sponsors |
| Rename skill | **Yes — v2** | event-sponsors → event-partnerships |

### Breaking change protocol

1. Bump `version` in the changed skill's YAML frontmatter
2. Update `version_date` to the change date
3. Update `manifest.yaml` version fields
4. Update `io-schema.json` if input/output contracts changed
5. Run event-reviewer to check downstream skills are still compatible
6. Add entry to this CHANGELOG
7. Notify users of breaking changes in the commit message (prefix: `BREAKING:`)
