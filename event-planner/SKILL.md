---
name: event-planner
description: >
  Plan and organize B2B events end-to-end: conferences, trade shows, expos, product
  launches, sales kickoffs, developer conferences, industry summits, roadshows, team
  offsites, company retreats, and community meetups. Generates event briefs, master
  timelines with T-minus milestones, phase-based checklists, stakeholder RACI matrices,
  risk registers, and post-event action plans. Use this skill whenever someone asks to
  plan an event, create an event timeline or checklist, write an event brief, organize
  a conference or offsite, coordinate a summit or retreat, assess event risks, structure
  event workstreams, or asks how far in advance to plan. Creates comprehensive event
  plans that connect to specialized skills for budgets, logistics, speakers, and content.
  Also triggers for hybrid event format selection, virtual event strategy and timeline,
  event RACI, post-event follow-up, or GDPR compliance for events. Gateway skill for
  the event-management-skills collection.
version: 1
version_date: 2026-03-28
io_schema: references/io-schema.json
---

# Event Planner

Core planning skill for B2B events. Produces actionable plans — not frameworks to fill in later.

## When This Skill Activates

Use this skill when the user wants to:

- Plan a new event from scratch (any type, any scale, any format)
- Generate a planning timeline with milestones and dependencies
- Create a master checklist for an event
- Write an event brief or planning canvas
- Define roles and responsibilities for an event team
- Assess risks and create contingency plans
- Plan hybrid or virtual event strategy
- Determine how far in advance to start planning
- Structure parallel workstreams for complex events
- Create a post-event follow-up plan

**This skill does NOT:** Generate detailed budgets (use the event-budget skill), write event copy or emails (use the event-content skill), manage speaker programs (use the event-speakers skill), or create run-of-show production documents (use the event-logistics skill). Creates the strategic plan that specialized skills then execute.

## Step 1: Gather Context

Before generating any output, establish these parameters. Ask the user directly — do not assume defaults for critical fields.

**Required context (ask if not provided):**

| Parameter | Why it matters |
|---|---|
| Event type | Determines workflow shape, vendor mix, and content model |
| Event format | In-person / virtual / hybrid — determines deliverable set and timeline shape |
| Expected attendees | Drives venue size, catering, staffing, and budget range |
| Date or target month | Sets the T-minus clock and determines available lead time |
| Location or region | Affects vendor options, regulations (GDPR in EU), travel logistics. For non-DACH regions, load `references/regional-localization.md` |
| Primary objective | Shapes KPIs, content strategy, and success criteria |

**Optional context (use if available, otherwise apply sensible defaults):**

| Parameter | Default if not stated |
|---|---|
| Budget | Use benchmarks from `references/planning-defaults.md` |
| Team size | Assume 1-2 planners for <200 attendees, 3-5 for 200-1000, 5+ for >1000 |
| Repeat event or first edition | Assume first edition |
| Industry/sector | Keep outputs sector-neutral |

## Step 2: Select the Right Event Profile

Different event types have fundamentally different planning needs. Use this matrix to calibrate outputs:

| Event Type | Typical Lead Time | Key Planning Differentiators | Workflow Deviations |
|---|---|---|---|
| Trade show / Expo | 9-18 months | Booth design, exhibitor management, floor plan, lead capture | Skip CFP if all speakers invited. Add exhibitor onboarding workflow. |
| Partner conference | 6-12 months | Relationship focus, exclusive content, networking facilitation | Invite-only registration (no public page). NDA-aware content. Skip mass marketing — use personal outreach. |
| Customer / User conference (e.g., SaaS user conf) | 9-14 months | Customer retention + upsell, executive presence, product roadmap reveals, hands-on demos and 1:1 customer meetings | Mix of paid (small) + comp tickets — comp pool often 30-50% (one-time annual benefit for existing customers) + 5-10% prospect comps. Sponsor-light. Heavy investment in product demos. Dual KPI: retention metrics (NPS, repeat-attendance, expansion pipeline) + acquisition metrics (NN leads). |
| Product launch | 3-6 months | Media coordination, demo logistics, embargo management, tight messaging | Add media event workflow. Embargo timeline replaces standard promotion. Demo rehearsals in run-of-show. If delivered as a single-session webinar (<120 min), also load `references/webinar-workflow.md` for compressed timeline and attendance planning. |
| Sales kickoff (SKO) | 4-8 months (10-14 for popular resort destinations) | Internal audience, training sessions, awards, motivation arc | NO public registration — calendar invite via HR. NO external marketing — internal comms cascade. Add awards ceremony and training session formats. Always include Pre-Work (enablement modules) and Post-Work (knowledge check + comp plan acknowledgment in HRIS). |
| Developer conference | 6-12 months | Technical content, CFP process, hackathons, community building | Full CFP workflow. Add hackathon logistics. Community-driven content curation. |
| Industry summit | 6-9 months | Thought leadership, panels, executive networking, intimate scale | Speaker-heavy — mostly invited, few CFP slots. VIP networking facilitation critical. |
| Roadshow | 3-6 months | Multi-city logistics, consistent branding, local adaptation per stop | Master plan + per-stop adaptation. Equipment transport. Consolidated cross-stop analytics. For per-city handover to country managers, load `references/country-manager-pack.md` — provides invitation copy in 4 languages, ICP one-pager, venue criteria, VAT/GDPR per-country card, day-of run-sheet, and post-event handover template. **MVA for roadshow briefs: produce one filled first-city pack** — not a structural outline. Pick the most-likely first city (chronologically earliest or country with most local context provided), localize invitation copy + ICP + venue criteria with the most-likely assumptions, and tag every `[assumed]` field with the unlock-matrix question that would change it. "Outline only" is not an MVA; it is a deferral. |
| Team Retreat / Company Offsite | 2-4 months | Internal-only, mix of work sessions and social/team-building, accommodation-heavy | Loads `references/internal-events.md`. Travel + accommodation 50-60% of budget. No CFP, no public registration, no sponsors. Calendar invite from leadership. |
| Community meetup | 1-3 months | Low budget, informal, community-driven content, simple logistics | Minimal registration (name + email). No sponsorship tiers. Overbook 130-150% for no-shows. |
| Micro event (VIP) | 2-6 weeks (8-12 weeks for C-suite audiences) | VIP dinner, executive roundtable, workshop — intimate, curated | Personal invitation, not mass email. Guestlist, not registration. Build a 1.5-3× invitation pipeline (20-35% cold acceptance rate). Load `references/executive-events.md`. |
| Town Hall / All-Hands | 2-8 weeks | Internal, hybrid-dominant, leadership messaging | NO registration — mandatory attendance via calendar. Internal comms only. Load `references/internal-events.md`. |
| Webinar | 2-4 weeks | Platform-driven, high no-show rate (40-60%), on-demand afterlife | Compressed timeline. Platform setup replaces venue. Load `references/webinar-workflow.md`. |

**Tier-1 EU venue lead-time note:** For events of 300+ attendees in Tier-1 EU cities (Berlin, Munich, Frankfurt, Hamburg, London, Paris, Amsterdam, Zurich, Dublin) — use the **upper end** of the lead-time range above. Tier-1 venues book 10-14 months ahead for mid-week 300+ events; the lower bound assumes Tier-2 markets with more available inventory.

**Audience-aware lead-time risk (in addition to event-type lead time):**
| Audience seniority | Minimum invitation lead time |
|---|---|
| C-suite (CxO, EVP) | 8-12 weeks |
| VP / Senior Director | 6-8 weeks |
| Director and below | 4-6 weeks |

If the user's invitation lead time is below the audience-tier minimum, flag the risk explicitly — even when the event-type's typical lead time would allow shorter. CxO calendars lock 8-12 weeks out regardless of how small the event is.

**Supported event types:** All B2B formats listed above.

**Out of scope — decline politely:** This skill is built exclusively for B2B events. For personal, family, or private events (weddings, birthday parties, baptisms, funerals, anniversaries, baby showers, school reunions, private celebrations), this skill is NOT appropriate. Decline politely and suggest the user look for a personal event / wedding planner. Do not "adapt" B2B profiles for these — the budget models, KPIs, RACI roles, and sponsor structures assume business objectives (pipeline, leads, brand awareness) and produce misleading output for private events.

**Borderline cases — confirm B2B objectives before proceeding:** Charity galas, fundraisers, public festivals, sports tournaments, and concert-style events often have B2B characteristics (corporate sponsorship, ticketed admission, lead generation for the host organization). Before generating outputs, confirm with the user that the event has business objectives. If purely personal/private, decline as above.

If the user's available lead time is shorter than typical, flag this as a risk and adjust the timeline accordingly — compress phases but never skip them entirely.

**Compliance note:** For events in the EU, EEA, UK, or Switzerland, load `references/gdpr-compliance.md` and include a compliance checklist in the event brief. Privacy notice and consent mechanisms must be ready before registration opens — flag this as a planning dependency.

## Step 3: Generate Outputs

Based on the context gathered, produce **one or more** of the following deliverables. Default to producing the Event Brief and Master Timeline together, because they are the foundation everything else builds on.

**Gated-output handling — apply when clarifying questions block full outputs.** When the user's brief is underspecified and you cannot responsibly produce all six standard deliverables, do two things alongside the clarifying questions:

1. **Minimal Viable Artifact (MVA):** Produce one concrete draft — usually a 1-page indicative timeline with T-minus milestones — with all assumptions labeled inline. The user gets something to mark up in turn 1, not a scoping document. Pick the artifact most useful for their stated request (CEO meeting → timeline + risk summary; first-time event → planning canvas; sprint event → checklist).
2. **Unlock matrix:** Show explicitly which question unlocks which artifact. Format:
   ```
   | Question | Unlocks deliverable(s) |
   |---|---|
   | Q1: budget envelope | Full budget breakdown, scenario modeling, contingency reserve |
   | Q2: 2025 reg-to-show ratio | Registration target, capacity planning, no-show buffer |
   | Q3: agenda format locked? | Run-of-show, speaker count, room assignments |
   ```
   Users can then return partial answers and still unlock specific artifacts. Do not require all questions answered to produce anything.

**Format-specific deliverable routing:**

- **In-person events:** Generate all six standard outputs (Brief, Timeline, Checklist, RACI, Risk Register, Post-Event Action Plan)
- **Virtual events:** Generate all six outputs but replace venue/logistics tasks with platform selection, tech rehearsal, and digital engagement tasks. Reduce timeline by 30-40%.
- **Hybrid events:** Generate all six standard outputs PLUS these additional deliverables:
  1. Dual-audience run-of-show (separate cues for in-room and remote production)
  2. Technical requirements document (streaming, second-screen, platform specs)
  3. Speaker preparation guide for hybrid delivery (camera setup, dual-audience engagement)
  4. Virtual attendee experience guide
  5. Content repurposing plan (which sessions become on-demand assets)
  Load hybrid-specific templates from `references/hybrid-event-requirements.md`.

### Output A: Event Brief (Planning Canvas)

A one-page strategic document that aligns all stakeholders. Load and populate the template from `assets/planning-canvas.md`.

The brief must include:
- **Event identity**: name, type, format, tagline, dates, location
- **Objectives**: 2-4 specific, measurable goals (not vague aspirations)
- **Target audience**: who, how many, why they should attend
- **Format**: in-person / hybrid / virtual, single-day / multi-day, tracks
- **Key milestones**: 5-7 top-level dates that matter most
- **Success metrics**: how you will measure each objective
- **Budget envelope**: total budget or per-attendee target with format-adjusted allocation
- **Stakeholders**: who owns what (executive sponsor, event lead, marketing, ops)
- **Compliance requirements**: GDPR items if EU/DACH event (load from `references/gdpr-compliance.md`)
- **Open questions**: decisions that still need to be made
- **Attendee experience**: for events focused on engagement or VIP experience, load `references/attendee-experience.md` and include journey map and networking design

Write objectives as outcomes, not activities. Bad: "Host a keynote." Good: "Generate 200 qualified leads from enterprise accounts."

### Output B: Master Timeline

A phase-based timeline using T-minus notation, working backward from the event date. Load detailed phase templates from `references/timeline-templates.md`.

**Timeline structure — five phases:**

**Phase 1: Concept (T-12 to T-9 months)**
Strategic foundation. Define objectives, set budget envelope, shortlist dates and venues, identify executive sponsor, assemble core team.

**Phase 2: Planning (T-9 to T-3 months)**
Major decisions and commitments. Finalize venue and key vendors, open registration, launch speaker program, develop content strategy, begin marketing, secure sponsors.

**Phase 3: Execution Prep (T-3 to T-1 month)**
Finalize and brief. Lock agenda and run-of-show, brief all vendors and speakers, prepare on-site materials, conduct rehearsals, send final attendee communications.

**Phase 4: Event Day(s) (T-0)**
Execute. On-site registration, session management, real-time problem solving, social media coverage, networking facilitation.

**Phase 5: Post-Event (T+1 day to T+4 weeks)**
Capture value. Thank-you communications within 24h, survey distribution within 48h, content repurposing, lead handoff to sales, financial reconciliation, ROI report, lessons learned.

**Timeline calibration rules:**
- Scale phases proportionally to available lead time
- For lead times under 6 months, merge Concept and Planning into a single phase
- For lead times under 3 months, flag compressed timeline risk and identify tasks that need parallel execution
- Always keep Post-Event at full duration — rushing follow-up destroys ROI
- Mark critical-path tasks with [CP] and note which downstream tasks they gate
- When compressed timelines force tasks to overlap, flag critical-path tasks — these cannot be delayed without moving the event date
- If a user's lead time forces a critical-path task to start before its dependency is resolved, flag this as a timeline conflict requiring resolution

### Output C: Master Checklist

A comprehensive, phase-based task list. Load the full checklist library from `references/checklist-library.md`.

**Checklist principles:**
- Group by phase (Concept → Planning → Execution Prep → Event Day → Post-Event)
- Within each phase, group by workstream (venue, content, marketing, logistics, registration, speakers)
- Each item should be a concrete action, not a category ("Send venue RFP to 3 shortlisted locations" not "Handle venue")
- Include responsible role and target completion date
- Flag items that depend on other items completing first
- Distinguish between items the AI can help draft (emails, briefs, checklists) and items requiring human action (site visits, contract signing, on-site decisions)

### Output D: Stakeholder RACI Matrix

Maps responsibilities across the event team:

- **R** (Responsible): does the work
- **A** (Accountable): owns the outcome, one person per task
- **C** (Consulted): provides input before decisions
- **I** (Informed): kept in the loop after decisions

**Standard event roles to map in the RACI (aligned with MBECS competency domains):**
- Event Director / Event Lead — strategic owner, accountable for overall success
- Project Manager — timeline, dependencies, workstream coordination
- Content & Program Lead — speakers, agenda, session content
- Marketing & Communications Lead — promotion, email, social, PR
- Operations & Logistics Lead — venue, vendors, on-site, AV
- Registration & Data Lead — attendee management, check-in, reporting
- Sponsor & Partner Lead — sponsorship sales, fulfillment, exhibitor management
- Finance Lead — budget tracking, vendor payments, reconciliation

For small teams (1-3 people): combine roles. One person can be Event Lead + Operations + Finance.
For large teams (8+): split roles further. Add AV/Tech Lead, Volunteer Coordinator, Speaker Liaison.
Always map at least these workstreams: Venue, Content, Marketing, Registration, Sponsors, Budget, On-site Ops.

### Output E: Risk Register

Identify 8-12 risks based on event type, format, and context. Load the event-specific risk taxonomy from `references/risk-taxonomy.md`. For each risk:

- **Risk**: what could go wrong
- **Likelihood**: low / medium / high
- **Impact**: low / medium / high
- **Mitigation**: preventive action to reduce likelihood
- **Contingency**: response plan if the risk materializes
- **Owner**: who monitors this risk

Select risks most relevant to the user's event:
- Trade shows: operational + financial risks dominate
- Product launches: content + technology + reputational risks dominate
- Virtual events: technology risks become critical-path
- Hybrid events: include technology risks for both in-room and remote audiences
- Events with attendee data collection in the EU: compliance risks must be included

### Output F: Post-Event Action Plan

A structured follow-up plan covering the 48-hour, 1-week, 2-week, and 4-week windows. Effective post-event follow-up is the area planners most want to improve (Forrester 2024: 92% of respondents).

The plan must include:
- **48-hour actions:** Thank-you email drafts (attendees, speakers, sponsors — each personalized), survey distribution with 5-7 key questions, lead handoff package for sales team with engagement context
- **1-week actions:** Content repurposing plan (which sessions become blog posts, recordings, social clips), initial survey analysis, social media recap
- **2-week actions:** Full survey report, internal debrief agenda and questions, sponsor fulfillment report with deliverable proof
- **4-week actions:** ROI report framework tied to original objectives, financial reconciliation summary, lessons learned document, decision on next edition

For the debrief meeting, include these discussion prompts:
1. What exceeded expectations? What fell short?
2. What would we do differently with the same budget?
3. Which vendor relationships should we keep, renegotiate, or replace?
4. What did attendees tell us (survey highlights and verbatim quotes)?
5. What institutional knowledge should we document for next time?

## Step 3.5: Verification Gate

Before presenting final outputs, verify internal consistency:

1. **Timeline feasibility:** Does the timeline respect lead time minimums from `references/planning-defaults.md`? If any critical-path task has less than minimum lead time, flag it explicitly.
2. **Budget coherence:** Do budget category percentages sum to 100%? Does the total match the user's stated budget? Are allocations format-adjusted (virtual shifts venue budget to technology)?
3. **Checklist completeness:** Does the checklist cover all five lifecycle phases? Are there tasks for every workstream mentioned in the RACI?
4. **Cross-reference consistency:** Do the dates in the timeline match the milestones in the event brief? Do the risk register items appear as checklist items with mitigations?
5. **Closed-door vocabulary scan (mandatory for executive dinners, roundtables, advisory boards, NDA/Chatham House events):** Run the forbidden-vocabulary scan from `references/executive-events.md` § "Vocabulary discipline." Binary test — even one occurrence of `pipeline`, `MQL`, `SQL`, `pipeline-build`, `conversion`, `nurture`, etc. anywhere in the output = fail the gate, rewrite, re-scan. Includes operational instructions, unlock-matrix questions, and checklist items — not only customer-facing copy.

If any check fails, fix it before presenting to the user. Do not present outputs that contradict each other.

## Skill Interface

**Accepts input from:** First entry point — accepts raw user requirements (event type, dates, audience, budget, goals).

**Produces output for:**
- event-budget: Event brief (event_type, format, dates, attendee_count, budget_envelope, venue_status)
- event-content: Event brief (event_name, dates, audience, objectives, tone, key_messages)
- event-speakers: Event profile (event_type, format, dates, session_count, track_count, audience_level)
- event-logistics: Event requirements (event_type, format, dates, attendee_count, session_count, venue_status)
- event-registration: Event parameters (event_type, format, dates, attendee_count, ticket_model, location)
- event-sponsors: Event profile (event_type, attendee_count, audience_profile, dates, revenue_target)
- event-marketing: Event brief (event_type, format, dates, attendee_target, audience, budget)
- event-analytics: Event objectives (objectives, KPI_targets, success_criteria)

## Step 4: Connect to Specialized Skills

**If the user needs communication documents alongside the plan, offer to generate:**
- Executive summary (1-page event overview for leadership sign-off)
- Sponsor pitch email (tailored to prospective sponsors with event value proposition)
- Speaker invitation email (with event brief, audience profile, and logistics overview)
- Attendee save-the-date email (with key details and early registration CTA)

These are bridge deliverables — generate them here if needed now. For full communication sequences, use the event-content skill.

After producing the core plan, point the user to relevant specialized skills:

- **Budget details**: "For detailed budget creation with cost benchmarks, use the event-budget skill"
- **Content and comms**: "For email sequences, social posts, and event copy, use the event-content skill"
- **Speaker management**: "For CFP templates, speaker briefs, and agenda building, use the event-speakers skill"
- **Logistics and vendors**: "For venue checklists, vendor briefs, and run-of-show, use the event-logistics skill"
- **Registration**: "For registration flow design and attendee data management, use the event-registration skill"
- **Sponsorship**: "For sponsorship packages and exhibitor management, use the event-sponsors skill"
- **Post-event analysis**: "For KPI frameworks, surveys, and ROI reporting, use the event-analytics skill"
- **Marketing and promotion**: "For campaign planning and demand generation, use the event-marketing skill"

Only mention skills relevant to the user's specific situation.

## Output Format

- Default output: Markdown document, structured with clear headers
- If the user requests a specific format (spreadsheet, presentation, Word doc), adapt accordingly
- For timelines: use tables with columns for Phase, Task, Owner, Deadline, Dependencies, Status — mark critical-path tasks with [CP]
- For checklists: use checkbox syntax (`- [ ]`) grouped by phase and workstream
- For the event brief: use the planning canvas template from `assets/planning-canvas.md`
- Keep language direct and professional — write for an event manager who has done this before

## Examples

### Example 1: Mid-size partner conference

**User says:** "I need to plan a 300-person partner summit in Munich for October. We have 6 months lead time and a €150K budget."

**Skill response:** Event brief with partner-specific objectives and GDPR compliance section. Compressed 6-month timeline with [CP] dependencies. Checklist emphasizing networking facilitation and exclusive content. Risk register flagging tight timeline, GDPR, and budget constraints. Post-event action plan with partner-specific follow-up (deal pipeline tracking, partner feedback loop).

### Example 2: Hybrid developer conference

**User says:** "We're planning a hybrid developer conference. 2,000 attendees (1,200 in-person, 800 remote), 3-day event with multiple tracks, 12-month runway."

**Skill response:** Full six outputs PLUS hybrid deliverables: dual run-of-show, tech requirements, speaker hybrid prep guide, virtual attendee guide, content repurposing plan. Timeline includes platform selection at T-6, streaming tests at T-2 months, full hybrid rehearsal at T-1 week. Risk register prioritizes technology risks for both audiences.

### Example 3: Micro event — VIP dinner

**User says:** "I need to organize a VIP dinner for 25 C-level executives in 3 weeks."

**Skill response:** Half-page event brief focused on guest experience. 3-week sprint timeline with daily milestones. Simplified checklist: guest list curation, venue/restaurant booking, personalized invitations, conversation facilitation plan, follow-up actions. Skip RACI. Top 3 risks only. Post-event action plan with executive-grade follow-up.

### Example 4: Virtual product launch

**User says:** "We need a virtual product launch for 200 people, 6 weeks from now."

**Skill response:** Virtual-adjusted timeline (30-40% shorter). Tech-focused checklist. Technology risks prioritized. Budget shifted: 0% venue, 40% technology/production, 25% marketing. Sprint plan with weekly milestones.

## Edge Cases

- **Very short lead time (<4 weeks):** Produce a "sprint plan" — daily milestones, minimal viable event scope, clear callout of what to cut vs. keep
- **No budget specified:** Use benchmarks from `references/planning-defaults.md` to suggest ranges, flag that budget confirmation is critical before vendor commitments
- **Virtual-only event:** Adjust timeline (30-40% shorter), replace venue/logistics with platform selection and tech rehearsals, shift budget per format-specific benchmarks
- **Multi-city roadshow:** Generate master plan plus per-city adaptation notes, emphasizing branding consistency
- **Recurring event with history:** Ask for lessons learned from previous edition, incorporate into risk register and timeline
- **Micro events (10-50 attendees):** Half-page brief, 2-4 week sprint timeline, no RACI, simplified checklist, top 3 risks only. Micro events succeed on guest experience quality, not logistics scale.
- **Sustainable event planning:** Consider virtual-first for events where travel carbon footprint outweighs in-person benefits. For in-person: choose venues with sustainability certifications (ISO 20121), plan for waste reduction (no single-use plastics, digital-first materials), calculate and offset carbon footprint, include sustainability metrics in event KPIs. Hybrid format reduces per-attendee carbon footprint while maintaining networking value.
- **Crisis and contingency planning:** Every event plan should include a risk register with mitigation strategies for: speaker cancellation (backup speakers, session restructuring), venue unavailability (force majeure clause, backup venue shortlist), low registration (<50% target at T-4 weeks: pivot to smaller format, intensify marketing, consider postponement), technology failure (backup streaming platform, offline presentation copies, redundant internet), health/safety incident (emergency contacts, first aid, evacuation plan, communication chain). Budget should include 10-15% contingency reserve. For hybrid events: have a plan to go fully virtual on 48h notice.
- **User asks for personal/private event planning (B2C):** Politely decline and explain the skill is built for B2B contexts only. Suggest they look for a personal event planner / wedding planner. Do NOT attempt to "adapt" a B2B profile to the personal event — the budget models, KPIs, RACI roles, and post-event ROI frameworks assume business objectives and will produce misleading output. Examples that should trigger this decline: wedding, birthday party, baby shower, anniversary, baptism / christening, bachelor or bachelorette party, family reunion, funeral / wake, engagement party, housewarming, graduation, retirement party (personal, not company-hosted), private dinner party, school reunion.
- **Borderline B2C case (charity gala, fundraiser, public festival, sports tournament):** Confirm B2B objectives before proceeding. Ask the user: "Does this event have business objectives like sponsor pipeline, corporate lead generation, or paid corporate attendance?" If yes, proceed as Industry Summit or Trade Show profile with adapted KPIs. If purely cause-based fundraising with no corporate-pipeline goal, decline as above.
