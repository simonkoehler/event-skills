# Event Management Skills — Collection Guide

How the 12 skills in this collection (10 specialist + 2 meta) connect, when to use which, and how to combine them for maximum impact.

## Skill Map: Event Lifecycle

Each skill maps to one or more phases of the event lifecycle. `event-planner` spans the entire process as the gateway skill; specialized skills activate within their phase.

```
CONCEPT          PLANNING            EXECUTION          POST-EVENT
──────────────────────────────────────────────────────────────────────
event-planner ─────────────────────────────────────→  (Gateway)
                 event-budget ──────────────→
                 event-speakers ────────────→
                 event-content ─────────────────────────────────→
                 event-marketing ───────────→
                 event-registration ────────→
                 event-sponsors ────────────→
                 event-logistics ───────────────────→
                                            event-exhibition ───→
                                                       event-analytics →

META SKILLS (operate across lifecycle):
event-orchestrator ────────────────────────────────────────────────→
event-reviewer ────────────────────────────────────────────────────→
```

**Reading the map:**
- `event-planner` is where most journeys start — it produces the strategic plan that feeds all other skills.
- `event-content` spans the widest range because content is needed at every phase (save-the-date emails through post-event recaps).
- `event-analytics` sits at the end because it measures outcomes after the event — but KPI frameworks should be defined during planning.
- `event-exhibition` is the participant perspective (attending someone else's event), which is why it sits in the execution and post-event phases.

## Dependency Map

Which skill references which? Every cross-reference uses the pattern: *"For X, use the event-Y skill."*

| Skill | References these skills |
|-------|----------------------|
| event-planner | event-budget, event-content, event-speakers, event-logistics, event-registration, event-sponsors, event-analytics, event-marketing |
| event-content | event-planner, event-speakers, event-marketing, event-registration, event-sponsors, event-analytics |
| event-budget | event-planner, event-sponsors, event-registration, event-analytics, event-logistics |
| event-speakers | event-content, event-budget, event-logistics, event-planner |
| event-logistics | event-planner, event-budget, event-speakers |
| event-registration | event-content, event-budget, event-logistics, event-marketing |
| event-sponsors | event-content, event-budget, event-logistics |
| event-analytics | event-planner, event-content, event-budget, event-sponsors |
| event-marketing | event-content, event-registration, event-budget, event-analytics, event-planner |
| event-exhibition | event-sponsors, event-logistics, event-analytics, event-marketing, event-content, event-budget |

**Key observation:** `event-planner` is the most-referenced skill (it's the gateway). `event-content` and `event-budget` are the most frequently cross-referenced by other skills — words and money touch everything.

## Event-Type Routing

"Which skill do I start with?" depends on what you're doing:

### Organizing an event

| Scenario | Start with | Then use |
|----------|-----------|----------|
| Plan a conference or summit | event-planner | All others as needed |
| Plan a webinar | event-planner (loads webinar-workflow.md) | event-content, event-registration, event-marketing |
| Plan a sales kickoff (SKO) | event-planner (loads internal-events.md) | event-content, event-budget, event-logistics |
| Plan a VIP dinner or executive roundtable | event-planner (loads executive-events.md) | event-content, event-logistics |
| Plan a hybrid event | event-planner (loads hybrid-event-requirements.md) | All others, with hybrid-specific outputs |
| Create event content | event-content | — (standalone) |
| Build an event budget | event-budget | — (standalone) |
| Design a registration flow | event-registration | event-content (for page copy) |
| Create a speaker program | event-speakers | event-content (for bios/descriptions) |
| Build sponsorship packages | event-sponsors | event-content (for prospectus copy) |
| Plan event marketing | event-marketing | event-content (for campaign copy) |

### Participating in someone else's event

| Scenario | Start with | Then use |
|----------|-----------|----------|
| Plan a trade show booth | event-exhibition | event-budget, event-content |
| Evaluate a sponsorship package | event-exhibition | event-budget |
| Submit a CFP abstract | event-exhibition | — (standalone) |
| Post-show follow-up and ROI | event-exhibition | event-analytics |

### After the event

| Scenario | Start with | Then use |
|----------|-----------|----------|
| Create a post-event report | event-analytics | — (standalone) |
| Build a survey | event-analytics | event-content (for survey email copy) |
| Calculate ROI | event-analytics | event-budget (for financial reconciliation) |
| Compare events in a portfolio | event-analytics (loads portfolio-analysis.md) | — (standalone) |

## Standalone vs. Composition

**Every skill works alone.** You don't need event-planner to use event-content. You don't need event-budget to use event-sponsors. Each skill gathers its own context and produces complete outputs.

**But the strongest results come from composition.** Here are three common multi-skill flows:

### Flow 1: Full conference planning

```
event-planner  →  event brief + timeline + checklist
      ↓
event-budget   →  detailed budget with scenarios
event-speakers →  CFP + agenda + speaker briefs
event-sponsors →  sponsorship packages + prospectus
      ↓
event-content  →  email sequence + social posts + website copy
event-marketing → promotion plan + channel strategy
event-registration → form spec + ticket tiers + check-in plan
      ↓
event-logistics → venue evaluation + vendor RFPs + run-of-show
      ↓
event-analytics → KPIs + survey + post-event report
```

### Flow 2: Trade show participation

```
event-exhibition → booth brief + staffing guide + lead strategy
      ↓
event-content    → pre-show outreach emails + social posts
event-budget     → booth cost breakdown
      ↓
event-analytics  → post-show ROI report
```

### Flow 3: Quick webinar

```
event-planner      → compressed plan (webinar workflow)
      ↓
event-content      → email sequence + landing page copy
event-registration → simple form + reminder triggers
event-marketing    → promotion plan (organic-heavy)
      ↓
event-analytics    → attendance analysis + survey
```

## File Structure Convention

Every skill follows the same directory structure:

```
event-{domain}/
├── SKILL.md              # Main skill file (workflow, outputs, examples)
├── references/           # On-demand reference data
│   ├── {topic}.md        # Loaded when specific outputs need them
│   └── ...
└── assets/               # Templates and reusable artifacts (optional)
    └── {template}.md
```

- `SKILL.md` is always loaded when the skill activates
- Files in `references/` are loaded on-demand via explicit instructions in SKILL.md
- Files in `assets/` contain templates that outputs are built from
- No skill references files from another skill's directory

## Namespace and Naming Notes

This collection uses the `event-{domain}` naming pattern. If your host system also exposes a third-party `event-planner` skill (e.g., from a separately published collection), invoke skills via their fully qualified path or rename in your local manifest to avoid trigger collisions.

For Claude Code and similar plugin-aware hosts: prefer `simonkoehler/event-skills:event-planner` (or your chosen namespace prefix) when ambiguity is possible. The unqualified `event-planner` will still trigger if no conflict exists.
