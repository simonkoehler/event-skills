---
name: event-orchestrator
description: >
  Coordinate multi-skill workflows for complex B2B event projects. Analyzes the user's
  request, determines the optimal skill execution order, and manages context passing
  between skills. Use this skill when a user's request spans multiple event domains
  (e.g., "plan a full conference" requires planner + budget + speakers + content + logistics),
  when the user is unsure which skill to start with, or when outputs from one skill need
  to feed into another. Acts as the intelligent router and workflow manager for the
  event-management-skills collection.
version: 1
version_date: 2026-03-28
io_schema: references/io-schema.json
---

# Event Orchestrator

Route complex event requests to the right skills in the right order. This is the meta-skill that coordinates multi-skill workflows — it does not generate event deliverables itself.

## When This Skill Activates

- User request spans multiple event domains ("plan a full conference")
- User is unsure which skill to use ("help me with my event")
- A completed skill output needs to feed into another skill
- User wants a multi-skill workflow plan before starting
- User asks to "plan everything" or "handle the full event lifecycle"

**This skill does NOT:** Generate event deliverables directly (each specialist skill does that). Does not replace event-planner as the strategic planning skill. Orchestrates the workflow — specialist skills do the work.

## Step 1: Analyze Request Scope

Determine which skills are needed by mapping the user's request to skill domains:

| User mentions... | Skill needed |
|---|---|
| Plan, timeline, checklist, brief, strategy | event-planner |
| Budget, costs, revenue, pricing, ROI forecast | event-budget |
| Speakers, CFP, agenda, sessions, panels | event-speakers |
| Content, emails, social posts, copy, bios | event-content |
| Venue, vendors, run-of-show, on-site | event-logistics |
| Registration, tickets, check-in, forms | event-registration |
| Sponsorship packages, prospectus, tiers | event-sponsors |
| Marketing, promotion, funnel, campaigns | event-marketing |
| KPIs, survey, post-event report, ROI analysis | event-analytics |
| Trade show booth, exhibition, lead capture | event-exhibition |

## Step 2: Determine Execution Order

For event-type-specific skill routing (which skills to skip/include), load `references/event-type-routing.md`.

Use these composition patterns:

### Pattern 1: Full Conference Planning (most common)
```
Phase 1: event-planner → event brief + timeline + checklist
   └─ Gate 1: event-reviewer (Check 1 Numbers, Check 2 Timeline) before continuing
Phase 2 (parallel): event-budget + event-speakers + event-sponsors
   └─ Gate 2: event-reviewer (Check 1 Numbers, Check 3 Budget) before continuing
Phase 3 (parallel): event-content + event-marketing + event-registration
   └─ Gate 3: event-reviewer (Check 2 Timeline, Check 5 GDPR, Check 6 Content)
Phase 4: event-logistics → venue + vendors + run-of-show
   └─ Gate 4: event-reviewer (Check 4 Capacity)
Phase 5: event-analytics → KPIs + survey + post-event report
   └─ Final: event-reviewer (all checks re-run for cross-skill consistency)
```

**Intermediate review gates** catch cascading inconsistencies early. Without them, an attendee-count mismatch from Phase 2 (budget assumes 800, sponsors assume 1000) would propagate through Phases 3-4 and only surface at the end — by which point fixing it requires re-running half the workflow. Each gate is fast (single reviewer pass on 2-3 outputs) and may be skipped only with explicit user confirmation.

### Pattern 2: Trade Show Participation
```
Phase 1: event-exhibition → booth brief + staffing + lead strategy
Phase 2 (parallel): event-content + event-budget
Phase 3: event-analytics → post-show ROI
```

### Pattern 3: Quick Webinar
```
Phase 1: event-planner → compressed plan (webinar workflow)
Phase 2 (parallel): event-content + event-registration + event-marketing
Phase 3: event-analytics → attendance analysis + survey
```

### Pattern 4: Custom (user-defined subset)
Determine which skills are needed, establish dependencies, and sequence accordingly.

**Multi-city events (roadshow, tour):** Execute as master plan + N per-city instances. Phase 1: event-planner creates master brief with city list. Phase 2+: invoke each specialist skill once per city, inheriting master brief context. event-reviewer runs cross-city consistency check after all cities are planned. Shared costs (content, speaker prep) modeled once; per-city costs (venue, catering, local marketing) modeled per stop.

### Conditional Routing Rules

Apply these rules to modify any pattern above based on constraints:

**Timeline-based routing:**

| Time Available | Modification |
|---|---|
| ≥6 months | Full pattern — all phases |
| 3-6 months | Compress Phase 2+3 into one parallel phase. Skip CFP (direct speaker outreach only). |
| 6-12 weeks | Skip event-sponsors (no time to sell). Combine content + marketing. Reduce event-analytics to KPIs only. |
| <6 weeks | Emergency mode: event-planner (compressed) → event-registration + event-content (parallel) → event-logistics. Skip speakers (use internal only), sponsors, and analytics. Flag risk to user. |

**Budget-based routing:**

| Budget Level | Modification |
|---|---|
| Full budget (cost index ≥1.5× for event type) | All skills available |
| Moderate (cost index 0.8-1.5× for event type) | Skip event-exhibition (if organizing). Reduce speaker budget to unpaid + travel. |
| Minimal (cost index <0.8× for event type) | Skip event-sponsors, event-exhibition. Internal speakers only. Minimal marketing (email + organic social). Focus: planner → registration → content → logistics. |
| No budget specified | Ask. Never assume. Delegate to the event-budget skill for cost calibration, then apply budget-based routing. |

**Format-based routing:**

| Format | Skip | Add |
|---|---|---|
| Virtual | event-logistics (physical), event-exhibition | Platform logistics in event-planner |
| Hybrid | Nothing skipped | Add 15-20% contingency. Flag dual-logistics complexity. |
| In-person | Virtual platform considerations | Standard pattern |

**Adaptive deviation:** If during execution a skill produces output that changes assumptions (e.g., venue capacity forces attendee reduction), pause and re-evaluate downstream skills. Notify user of the change and its cascading impact before continuing.

## Step 3: Present Workflow Plan

Before executing, present the plan to the user:

1. **Skills involved:** List each skill and what it will produce
2. **Execution order:** Show phases with dependencies (including intermediate review gates)
3. **Context passing:** Explain what data flows between skills
4. **Estimated outputs:** List all deliverables the user will receive
5. **Starting point:** Confirm which skill to begin with
6. **Session count expectation:** For "everything" requests (5+ skills, full conference orchestration), explicitly tell the user this typically takes 3-5 sessions, not one. Running 9 skills + reviewer in a single session can exceed practical token budgets and produce shallow outputs. Recommended cadence: one phase per session, with user review between phases.

## Step 3.4: Gated-Output Handling (MVA + Unlock Matrix)

When a specialist skill defers most artifacts behind clarifying questions, two rules apply across the orchestrator:

### Rule A — Minimal Viable Artifact (MVA)

**Always produce at least one concrete artifact alongside the clarifying questions.** Pick the single highest-leverage artifact for the request type, fill it with the most likely assumptions, and label every assumption inline so the user can react to a draft instead of answering questions cold.

| Request type | MVA to produce on turn 1 |
|---|---|
| Full conference brief | A 1-page indicative timeline with T-minus milestones (assumptions labeled) |
| Webinar / lead-gen | One registration email draft + form spec |
| Trade show booth (exhibitor) | Booth brief skeleton (12 sections) with the most-likely assumptions per section |
| C-level dinner | Invitation draft (paper variant) + venue evaluation criteria one-pager |
| Roadshow | **One filled first-city pack** (invitation copy + ICP + venue criteria + run-sheet for the chronologically earliest city). Not a master sequence table with empty slots — a filled pack. |
| Internal event (SKO / town hall) | Agenda skeleton from `internal-events.md` building blocks |
| Executive roundtable | Framing document template + discussion guide skeleton |

The MVA is **not** the final artifact. It is a draft a senior planner can mark up in 5 minutes — which is faster than answering 6 clarifying questions cold.

### MVA Quality Bar — content-filled, not structure-only

**The MVA must be content-filled, not structure-only.** A structural outline ("Section 1: invitation copy [TBD], Section 2: ICP [TBD]") is **not** an MVA — it is a deferral wearing an MVA hat. The artifact passes the bar only if:

- Every section has placeholder text or assumed content the user can mark up — not the literal string "TBD" or "[pending Q1]"
- A senior planner can react to the draft in 5 minutes (revise / approve / reject)
- Assumptions are labeled inline with the question that would change them, e.g.:
  - ✅ Good: "Audience: CTOs and VPs of Engineering at €100M+ SaaS companies in DACH `[assumed — change with Q1: target persona]`"
  - ❌ Bad: "Audience: TBD pending Q1"
  - ❌ Bad: "Audience: [to be filled in after stakeholder alignment]"

**If you cannot fill the artifact with reasonable assumptions, pick a different artifact you can fill.** A senior planner who cannot guess what reasonable customer-conference comp pool looks like would not be calling themselves a senior planner. Make the call, label the assumption, ship the draft.

**Self-check before submitting:** Skim the MVA for the strings `TBD`, `[pending]`, `[to be determined]`, `[fill in]`, `[depends on Q`, or sections containing only headers without content. Any of these means the MVA failed the bar — rewrite with assumed content or swap to a different artifact.

### Rule B — Unlock Matrix

When clarifying questions gate multiple artifacts, emit an explicit "unlock matrix" so users can work the questions in parallel with their team:

```
| Question | Unlocks deliverable(s) |
|---|---|
| Q1: <text> | <one or more named artifacts> |
| Q2: <text> | <named artifacts> |
| ... | ... |
```

Users who can answer Q1 + Q3 immediately know they unlock the booth brief + scorecard, even if Q2/Q4/Q5/Q6 are still pending. Forces the skill to commit to which artifact depends on which input.

**Combine MVA + Unlock Matrix.** The MVA covers the "no-input-yet" case. The unlock matrix covers the "partial-input" case. Together they replace the unsatisfying "answer everything to get anything" pattern.

Example:
"For your 500-person tech conference, I recommend this workflow:
1. **event-planner** first → produces the event brief, timeline, and checklist
2. **event-budget** + **event-speakers** (can run in parallel) → budget breakdown and CFP
3. **event-content** → email sequence and social posts using the brief and speaker data
4. **event-logistics** → venue evaluation and run-of-show
Shall I start with the event brief?"

## Step 3.5: Verification Gate

1. **No skill gaps:** Every aspect of the user's request maps to at least one skill
2. **Dependency order correct:** No skill runs before its input dependencies are met
3. **No redundant work:** Each deliverable is produced by exactly one skill
4. **Context passing defined:** Clear what data flows from each skill to the next

## Step 3.6: Failure Recovery & Execution Semantics

### Execution Modes

| Mode | Behavior | Use when |
|---|---|---|
| Sequential (default) | Skills run in strict phase order, one at a time | First-time event planning, complex dependencies |
| Parallel | Independent skills in same phase run concurrently; next phase waits for all to complete | Experienced planner, time pressure |
| Async | Skills emit outputs as ready; downstream skills pull when needed | Multi-agent systems, API-driven workflows |

### Failure Handling

When a skill in Phase N fails:

1. **Isolate** — Mark the failed skill's outputs as unavailable
2. **Assess dependencies** — Check which Phase N+1 skills depend on the failed skill
3. **Route**:
   - Dependent skills can proceed with partial data → continue with warning
   - Dependent skills cannot proceed → pause that branch only
   - Never halt the entire workflow for a single skill failure unless it's event-planner (Phase 1)
4. **Retry** — Offer to re-run the failed skill with adjusted parameters
5. **Skip** — If the user confirms, skip the failed skill and note gaps in the final output

### Idempotency

| Skill | Idempotent? | Notes |
|---|---|---|
| event-planner | Yes | Same inputs → same brief |
| event-budget | Yes | Same inputs → same budget |
| event-content | No | Creative output varies between runs |
| event-speakers | Partially | CFP structure is stable; invitation copy varies |
| event-logistics | Yes | Venue evaluation is deterministic |
| event-registration | Yes | Form design is deterministic |
| event-sponsors | Yes | Tier structure is deterministic |
| event-analytics | Yes | Calculations are deterministic |
| event-marketing | Partially | Strategy is stable; tactical details vary |
| event-exhibition | Partially | Evaluation is stable; outreach varies |

### Context Passing Format

Skills pass context as structured data:
- **Required format**: Key-value pairs matching the receiving skill's input schema (see `references/io-schema.json`)
- **Fallback**: If structured data unavailable, pass the full text output and let the receiving skill extract what it needs
- **Never pass**: Raw attendee data between skills without GDPR check (see `/gdpr-policy.md`)

## Step 4: Cross-Skill References

- **Strategic planning:** "For the event brief and timeline, use the event-planner skill"
- **All specialist skills:** Route to the appropriate skill based on the workflow plan
- **Post-workflow review:** "For cross-skill consistency checking, use the event-reviewer skill"

## Output Format

- Workflow plan: phased structure (Phase 1 → 2 → 3 → ... → Final review) with skills, deliverables, dependencies, and intermediate review gates
- Skill sequence: ordered list with parallel-execution markers and idempotency notes per skill
- Context map: which structured fields flow from each skill's output to the next skill's input
- Session-count expectation: explicit statement of how many sessions the full plan will take (rarely "one")
- No deliverables generated directly — orchestrator routes, specialist skills produce content

## Examples

### Example 1: Full conference
**User says:** "I need to plan a 500-person developer conference in Berlin. Everything from scratch."
**Response:** Present 5-phase workflow plan covering all 9 relevant skills (exhibition not needed). Start with event-planner for the event brief. Estimated 15-20 deliverables across all skills.

### Example 2: Unclear starting point
**User says:** "I have a conference coming up and I need help with the speakers and the marketing."
**Response:** Identify event-speakers + event-marketing as primary. Check if event brief exists. If not, recommend quick event-planner pass first for context. Present 3-phase plan.

### Example 3: Trade show participation
**User says:** "We're attending 3 trade shows next quarter. Help us prepare."
**Response:** event-exhibition as primary for all 3, with event-budget for cost comparison across shows. Present per-show workflow + portfolio view from event-analytics.

## Edge Cases

- **Single-skill request:** If the request maps to exactly one skill, route directly — do not orchestrate.
- **Conflicting requirements:** If budget and scope conflict, flag before starting and recommend event-budget first to establish constraints.
- **Iterative workflow:** If the user wants to refine outputs across skills (e.g., budget feedback changes speaker plans), manage the iteration loop.
- **Partial completion:** If some skills are already done (user has a brief), skip those phases and start from the next dependency.
- **All 10 skills needed:** Common for large conferences ("plan everything end-to-end"). Present full 5-phase plan with clear milestones AND explicit session-count expectation: full orchestration is 3-5 sessions, not one — token budget for loading 9 skill bodies plus generating 15-20 deliverables exceeds a single session's practical context window. Recommended cadence: Phase 1 in session 1 (user review), Phase 2 in session 2 (user review), etc. Build iteration loops into the plan: if budget feedback in Phase 2 changes speaker assumptions, pause and re-run event-speakers with new constraints before continuing to Phase 3.
- **Partial workflow restart:** User completed Phases 1-3 yesterday, wants to continue from Phase 4. Accept existing outputs as input — do not re-run completed phases. Validate existing outputs are still consistent before continuing.
