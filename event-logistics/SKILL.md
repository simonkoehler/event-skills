---
name: event-logistics
description: >
  Manage venue selection, vendor coordination, and on-site operations for B2B events.
  Generates venue evaluation scorecards, vendor RFP templates, vendor briefing documents,
  run-of-show documents, floor plan briefs, load-in schedules, and on-site operations
  guides. Use this skill whenever someone asks to evaluate a venue, compare venues, write
  a vendor RFP, create a vendor brief, build a run-of-show, plan event setup and teardown,
  coordinate catering, manage AV requirements, plan on-site registration flow, create a
  floor plan brief, write a load-in schedule, or coordinate event day operations. Also
  triggers for venue site visit checklists, vendor contract review, emergency procedures,
  and staff deployment plans. Part of the event-management-skills collection — handles
  physical execution while other skills handle planning, content, and finance.
version: 1
version_date: 2026-03-28
io_schema: references/io-schema.json
---

# Event Logistics

Manage venues, vendors, and on-site operations. Produces evaluation frameworks, vendor documents, and operational plans that prevent the chaos that derails events.

## When This Skill Activates

- Evaluate or compare venues
- Write vendor RFPs or briefing documents
- Create a run-of-show document
- Plan event setup, load-in, and teardown
- Coordinate catering, AV, and production vendors
- Design on-site registration and check-in flow
- Create floor plan briefs or room layout specs
- Write emergency procedures and contingency plans
- Plan staff deployment and volunteer coordination

**This skill does NOT:** Create the event timeline or strategic plan (use the event-planner skill), write vendor communication copy (use the event-content skill), or track vendor payments (use the event-budget skill). Handles physical execution — venues, vendors, and on-site operations.

## Step 1: Gather Context

**Required (ask if not provided):**

| Parameter | Why it matters |
|---|---|
| Event type | Determines venue requirements and vendor mix |
| Event format | In-person / virtual / hybrid — fundamentally changes logistics scope |
| Expected attendees | Drives capacity, catering, staffing |
| Event date(s) and duration | Affects load-in timing, vendor availability |
| Location / city | Venue market and local vendors |
| What logistics output is needed | Which deliverable the user needs now |

**Optional:**

| Parameter | Default |
|---|---|
| Venue status | If booked, use confirmed; otherwise generate evaluation criteria |
| Sessions / tracks | Determines room count and AV |
| Exhibitor count | Determines floor plan complexity |
| Budget | Use event-budget benchmarks; use user's currency |
| GDPR relevance | If EU/EEA event, load `references/gdpr-logistics.md` for vendor DPAs and special category data rules |

## Step 2: Determine Logistics Phase

**Format-specific routing:**
- **In-person:** Full venue, vendor, and on-site operations
- **Virtual:** Platform logistics, streaming production, remote speaker coordination
- **Hybrid:** Dual logistics: physical venue + streaming infrastructure, separate vendor tracks

| Phase | User asks about... | Generate... |
|---|---|---|
| Venue Selection | Evaluating, comparing venues | Output A |
| Vendor Management | RFPs, briefs, coordination | Output B |
| Production Planning | Run-of-show, AV, floor plans | Output C |
| On-Site Operations | Registration, staffing, emergencies | Output D |
| Post-Event | Load-out, vendor reconciliation, debrief | Output E |

## Step 3: Generate Outputs

### GDPR Compliance (EU events)

If event location is EU/EEA: load `references/gdpr-logistics.md`. Ensure vendor DPAs are included in all vendor documents, dietary/accessibility data is handled as special category data, and on-site photography/scanning has proper signage and opt-out mechanisms.

### Output A: Venue Evaluation

Load from `references/venue-checklist.md`. Weighted scorecard: Capacity & Layout (20%), Location & Access (20%), Technology & AV (15%), Catering (15%), Cost & Value (15%), Logistics (10%), Accessibility (5%). Generate comparison matrix for multiple venues. Include RFP questions, site visit checklist, contract review checklist. For accessibility requirements, load `references/accessibility-checklist.md`. For sustainability criteria, load `references/sustainability-checklist.md`.

### Output B: Vendor Management Documents

Load from `references/vendor-management.md`. Four document types: Vendor RFP (scope, deliverables, timeline, evaluation criteria), Vendor Brief (post-selection specs and expectations), Vendor Coordination Matrix (all vendors on one page), Contract Checklist (cancellation, liability, insurance, payment terms).

### Output C: Production Documents

Load from `references/run-of-show.md`. Run-of-show: minute-by-minute with columns for Time, Activity, Location, Responsible, AV Cues, Speaker, Notes. Floor plan brief: room-by-room specs (setup style, capacity, AV, power, signage). Load-in/out schedule: timestamped vendor arrivals, setup sequence, teardown plan. Standard load-in dependency order: Electrical → AV/lighting → Staging/furniture → Signage/branding → Registration desk → Catering setup. Each phase completes before the next begins. Teardown reverses this order.

### Output D: On-Site Operations

Registration flow: desk layout, staffing (1 per 50-75 attendees at peak), system failure backup, signage. Staff deployment: role assignments, shifts, breaks, communication channel, escalation path.

**Emergency procedures — include in every on-site operations plan:**

| Severity | Definition | Response |
|---|---|---|
| Level 1 (Low) | Minor disruption: single AV failure, catering delay, minor spill | On-site team handles. No escalation. Log for debrief. |
| Level 2 (Medium) | Significant disruption: WiFi down, speaker no-show, catering shortage | Event manager + vendor lead. Activate backup plan. Communicate to affected attendees. |
| Level 3 (High) | Major disruption: power failure, fire alarm, medical emergency, security threat | Event director + venue security. Follow venue emergency protocol. Communicate to all attendees. |
| Level 4 (Critical) | Event-threatening: natural disaster, bomb threat, active threat | Evacuate. Call emergency services. Event director makes cancel/continue decision. |

**Attendee injury procedure:** Staff member stays with injured person → call venue first aid / emergency services → event manager notified → incident report filed within 1 hour → follow up with injured person within 24 hours → review for liability implications.

**Photography opt-out mechanism:**
- Offer "no photo" badge notation (colored lanyard, sticker, or badge ribbon) at registration
- Brief all photographers and videographers on opt-out indicators during pre-event walkthrough
- Designated photo-free zones (e.g., networking areas where off-the-record conversations happen)
- Signage at venue entrance: "Photography and video recording take place at this event. If you prefer not to be photographed, please collect a [no-photo indicator] at registration."

**Vendor failure response playbook:**

| Failure | Immediate Response | Backup Plan |
|---|---|---|
| WiFi down | Contact venue IT. Switch to mobile hotspot for speakers. | Pre-arrange backup 4G/5G hotspot. Have speaker slides cached locally. |
| Main stage AV failure | Switch to backup laptop + portable speaker. Pause program 5-10 min. | Always have backup laptop with all presentations loaded. Portable PA system on standby. |
| Catering delayed/shortage | Extend current session or start networking break early. | Emergency catering contact (nearby restaurant/delivery). Always over-order coffee by 10%. |
| Badge printer failure | Switch to handwritten badges. Pre-print attendee list for manual check-in. | Bring backup thermal printer. Have PDF badge templates ready for any printer. |
| Registration system down | Paper backup: printed attendee list + manual check-in. | Export attendee list to offline device morning of event. |
| Streaming/hybrid platform down | Communicate delay to virtual audience via backup channel (email, social). | Have backup streaming service account ready. Record sessions locally for post-event upload. |

### Output E: Post-Event Logistics

1. **Load-out plan:** Reverse of load-in with timestamped vendor departures, equipment removal sequence, signage takedown, waste disposal
2. **Vendor reconciliation:** Final invoice checklist per vendor, comparison of contracted vs. actual services, damage assessment, deposit return tracking
3. **Venue debrief:** Room-by-room assessment (condition, issues, damage), venue contact feedback, notes for next booking (what worked, what to negotiate differently)
4. **Equipment return:** Rented items checklist, shipping/freight for materials, storage for reusable items
5. **Data cleanup:** Badge scan data export, registration system closure, GDPR-required deletions (dietary, accessibility data within 30 days)

## Step 3.5: Verification Gate

1. **Capacity:** Venue matches attendance with 20% buffer
2. **Load-in time:** Sufficient for complexity (4h small, 8-24h large)
3. **Vendor coverage:** All essentials covered (venue, AV, catering minimum)
4. **Run-of-show completeness:** Pre-event through post-event, all sessions
5. **Contacts:** Every vendor has named contact and phone field

## Skill Interface

**Accepts input from:**
- event-planner: Event requirements (event_type, format, dates, attendee_count, session_count)
- event-budget: Budget constraints (venue_budget, av_budget, catering_budget, vendor_budgets)
- event-speakers: Session requirements (session_count, formats, av_needs, speaker_travel)

**Produces output for:**
- event-budget: Vendor costs (venue_quotes, av_quotes, catering_quotes, vendor_estimates)
- event-speakers: Venue specs (room_capacities, av_capabilities, green_room, tech_specs)
- event-exhibition: Venue details (floor_plan, booth_locations, load_in_schedule)

## Step 4: Connect to Specialized Skills

- **Planning:** "For full timeline, use the event-planner skill"
- **Budget:** "For vendor cost benchmarks, use the event-budget skill"
- **Speakers:** "For speaker travel logistics, use the event-speakers skill"
- **Hybrid production:** "For streaming logistics, see event-planner's hybrid reference"
- **Exhibition logistics:** "For exhibitor booth planning and lead capture at trade shows, use the event-exhibition skill"

## Output Format

- Venue evaluations: weighted scorecard with comparison matrix across 2+ venues
- Vendor RFPs / briefs: structured sections (scope, deliverables, timeline, criteria, T&Cs)
- Run-of-show: time-stamped table with columns Time / Activity / Location / Responsible / AV Cues / Speaker / Notes
- Floor plan briefs: room-by-room specs (setup style, capacity, AV, power, signage)
- Load-in/out schedules: timestamped arrivals + dependency order (Electrical → AV → Staging → Signage → Reg → Catering)
- On-site operations: registration flow, staff deployment, emergency procedure tables
- Currency: user's currency. Ask if not specified.

## Examples

### Example 1: Venue comparison
**User says:** "Compare 3 venues for our 400-person conference in Frankfurt."
**Response:** Weighted scorecard, site visit checklist, RFP questions, comparison matrix.

### Example 2: Run-of-show
**User says:** "Run-of-show for day 1: 2 keynotes, 8 breakouts, lunch, networking reception."
**Response:** 07:00-22:00 minute-by-minute document with AV cues, transitions, catering, staff positions. Load-in at T-1 day 14:00, sound check T-0 day 07:00.

### Example 3: Vendor RFP
**User says:** "AV vendor RFP for product launch. 200 people, LED wall, 3 breakout rooms."
**Response:** Structured RFP with room-by-room specs, streaming needs, timeline, evaluation criteria.

## Edge Cases

- **No venue yet:** Generate evaluation criteria and RFP. Don't assume venue specifics.
- **Outdoor event:** Add weather contingency, tent/canopy, power generator, rain date.
- **Virtual-only:** Skip physical logistics. Focus on platform and streaming production.
- **Very large (2,000+):** Add crowd management, security, medical, transportation.
- **Union venue:** Flag union setup rules in vendor briefing.
- **Multi-city roadshow:** Master run-of-show template plus per-venue adaptation checklist. Decide traveling crew vs. local vendors per city. Equipment transport plan (single shipment following route vs. pre-shipped). Compressed setup for 1-day events: T-1 day load-in or same-morning setup. Post-city debrief after each stop to iterate.
- **Catering dietary complexity:** Collect dietary requirements during registration (dropdown: vegetarian, vegan, gluten-free, halal, kosher, allergies — free text). Budget 10-25% surcharge per special meal. International events: default to offering vegetarian + halal + gluten-free options for all, with meat as an option — this reduces complexity and waste. Always have buffer meals (5-10% of total). Label all food clearly with allergen information.
- **Emergency procedures:** Every on-site logistics plan must include: evacuation routes and assembly points, first aid station location and staffed hours, emergency contact list (venue security, local emergency services, event team chain of command), severe weather contingency (for outdoor components), power failure protocol (UPS for critical AV, battery backup for registration), medical emergency procedure (who calls, who manages crowd, who communicates), cybersecurity incident response (platform breach, unauthorized data access — isolate system, notify DPO, follow `gdpr-policy.md` breach notification). Brief all staff and volunteers on emergency procedures during pre-event walkthrough.
