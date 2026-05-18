# Event Management Skills

**The first comprehensive event management skill collection for Claude and compatible AI agents.**

![Skills: 12](https://img.shields.io/badge/skills-12-blue)
![Files: 75+](https://img.shields.io/badge/files-75%2B-green)
![Standard: agentskills.io](https://img.shields.io/badge/standard-agentskills.io-purple)
![License: Apache 2.0](https://img.shields.io/badge/license-Apache%202.0-orange)

## What This Is

Twelve AI agent skills (10 specialist + 2 meta) covering the complete B2B event lifecycle — from initial concept through post-event analytics. Each skill is a self-contained module with structured prompts, reference data, and quality gates. Together they handle conferences, trade shows, product launches, sales kickoffs, developer conferences, industry summits, roadshows, VIP events, webinars, and community meetups.

Built for event managers, marketing teams, and operations professionals who plan and execute B2B events. Event management has been underserved in the AI skills ecosystem. This collection changes that.

## Skills

| Skill | Role | What it does | Refs |
|-------|------|-------------|------|
| [event-planner](./event-planner/) | Gateway | Strategic planning, timelines, checklists, RACI matrices, risk registers | 12 |
| [event-content](./event-content/) | Specialist | Emails, social posts, website copy, MC scripts, anti-AI writing standards | 10 |
| [event-budget](./event-budget/) | Specialist | Budget breakdowns, calibration-based benchmarks, scenario modeling, ROI forecasts | 4 |
| [event-speakers](./event-speakers/) | Specialist | CFP creation, speaker outreach, agenda building, diversity framework | 4 |
| [event-logistics](./event-logistics/) | Specialist | Venue evaluation, vendor RFPs, run-of-show, emergency procedures | 7 |
| [event-registration](./event-registration/) | Specialist | Registration forms, ticket tiers, check-in operations, GDPR compliance | 5 |
| [event-sponsors](./event-sponsors/) | Specialist | Sponsorship packages, prospectus documents, exhibitor guides, fulfillment | 3 |
| [event-analytics](./event-analytics/) | Specialist | KPI frameworks, post-event surveys, ROI calculations, lessons learned | 7 |
| [event-marketing](./event-marketing/) | Specialist | Promotion strategy, channel playbooks, registration funnels, campaign briefs | 4 |
| [event-exhibition](./event-exhibition/) | Specialist | Trade show booth planning, sponsorship evaluation, lead capture, post-show ROI | 4 |
| [event-orchestrator](./event-orchestrator/) | Meta | Multi-skill workflow coordination, conditional routing, failure recovery | 2 |
| [event-reviewer](./event-reviewer/) | Meta | Cross-skill consistency checks, prescriptive remediation | 1 |

## Installation

### Claude Code (recommended)

```bash
git clone https://github.com/simonkoehler/event-skills.git
```

Then either:
- Use `--add-dir /path/to/event-skills` when launching Claude Code
- Or copy the skill folders into your project's `.claude/skills/` directory

### Manual installation

Copy the skill folders you need into `~/.claude/skills/`:

```bash
cp -r event-skills/event-planner ~/.claude/skills/
cp -r event-skills/event-content ~/.claude/skills/
# ... repeat for each skill you want
```

### Single skill

Each skill is fully standalone. Copy just the folder you need — no dependencies on other skills required.

## Quick Start

Once installed, just ask naturally:

> "Plan a 300-person tech conference in Munich for October"

> "Create sponsorship packages for our annual summit"

> "Write the email sequence for our developer conference registration"

The right skill activates based on your request. For complex events, multiple skills work together — start with `event-planner` for the strategic foundation, then use specialized skills for execution details.

## Architecture

This collection uses **progressive disclosure** to stay token-efficient:

- **Level 1 — Name + Description** (~100 tokens): Always loaded. The YAML frontmatter tells the agent when to activate the skill.
- **Level 2 — SKILL.md body** (<500 lines): Loaded when the skill triggers. Contains the full workflow, output templates, verification gates, and examples.
- **Level 3 — Reference files** (on-demand): Loaded only when a specific output needs them. Detailed templates, benchmarks, checklists, and frameworks that would waste context if loaded upfront.

This means a single skill activation costs roughly 500-2,000 tokens for the workflow, plus only the reference data actually needed for the user's request.

## Cross-Platform Compatibility

These skills follow the [Agent Skills Open Standard](https://agentskills.io) and work with:

- **Claude Code** and **Claude Cowork**
- **OpenAI Codex CLI**
- **Cursor**
- **Gemini CLI**
- Any tool that supports the `SKILL.md` format

## Skill Interaction

See [COLLECTION.md](./COLLECTION.md) for a detailed map of how the 12 skills connect, dependency relationships, and routing guidance by event type.

## Contributing

PRs welcome. Every skill must pass this quality checklist before merging:

- SKILL.md under 500 lines
- YAML description under 1,024 characters
- All referenced files exist locally in the skill directory
- No cross-skill file references
- Verification gate with skill-specific checks
- 3+ examples with realistic numbers
- 5+ edge cases with concrete handling instructions

## License

[Apache 2.0](./LICENSE)
