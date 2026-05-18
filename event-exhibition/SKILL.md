---
name: event-exhibition
description: >
  For B2B participants: plan YOUR participation at others' B2B trade shows, expos, and
  sponsored conferences as an exhibitor or sponsor. B2B context only — not for consumer expos. Generates booth planning briefs, stand personnel
  training guides, lead capture strategies, sponsorship evaluation scorecards, pre-show
  marketing plans, and post-event ROI reports. Use this skill whenever someone asks to
  plan a trade show booth, prepare for a trade show, train booth staff, evaluate a
  sponsorship package, decide which events to sponsor, create a booth briefing, set up
  lead capture, plan pre-event outreach to target accounts, submit a CFP proposal for
  an external conference, or analyze ROI from event sponsorship. Also triggers for
  exhibit design briefs, stand personnel shift plans, giveaway planning, and post-show
  lead follow-up sequences. Part of the event-management-skills collection — covers
  the participant perspective while other skills cover the organizer perspective.
version: 1
version_date: 2026-03-28
io_schema: references/io-schema.json
---

# Event Exhibition

Plan participation at trade shows and sponsored events as an exhibitor or sponsor. This is the OTHER side of events — you are not organizing, you are attending with a booth, a sponsorship package, or a speaking slot. Different workflows, different success metrics.

## When This Skill Activates

- Plan a trade show booth or exhibition stand
- Evaluate or compare sponsorship packages at external events
- Create a booth briefing or stand personnel training
- Set up lead capture processes for a trade show
- Plan pre-show outreach to target accounts
- Prepare an abstract submission for an external CFP
- Create a post-show follow-up sequence
- Analyze ROI from sponsored event participation
- Decide which events to attend or sponsor next year

**This skill does NOT:** Create sponsorship packages for YOUR event (use the event-sponsors skill), organize a trade show from scratch (use the event-planner skill + the event-logistics skill), or write general event marketing campaigns (use the event-marketing skill). Covers participation at OTHERS' events.

## Step 1: Gather Context

**Required (ask if not provided):**

| Parameter | Why it matters |
|---|---|
| Event name and type | Trade show, conference, expo — determines workflow |
| Your role | Exhibitor / Sponsor / Speaker / Attendee-only |
| Booth size (if exhibiting) | Drives design brief, staffing, budget |
| Goals | Lead gen / brand awareness / product demo / recruiting / partner meetings |
| Budget | Total available for this event participation |
| Event format | In-person / virtual / hybrid — changes booth, staffing, and lead capture approach |

**Optional:**

| Parameter | Default |
|---|---|
| Target accounts list | Generate pre-show outreach template |
| Sponsorship package details | Evaluate if provided, otherwise generate evaluation criteria |
| Team size on-site | Estimate from booth size |
| Previous year's results | For year-over-year comparison |

## Step 2: Route to Output

| User asks about... | Generate... |
|---|---|
| Booth planning, exhibit design | Output A: Booth Planning Brief |
| Sponsorship evaluation | Output B: Sponsorship Scorecard |
| Staff preparation | Output C: Stand Personnel Guide |
| Lead capture | Output D: Lead Strategy |
| Pre-show outreach | Output E: Pre-Show Campaign |
| Speaker submission | Output F: CFP Response |
| Post-show follow-up | Output G: Follow-Up Sequence |

**Format-specific routing:**
- **In-person:** Full booth planning, physical lead capture, on-site staffing
- **Virtual:** Virtual booth setup, digital lead capture, chat-based engagement
- **Hybrid:** Physical booth + virtual presence, dual lead capture streams

## Step 3: Generate Outputs

**Gated-output handling — MVA + unlock matrix.** When core context is missing (booth design status, lead-capture stack, ABM list status), don't defer all eight deliverables behind questions. Produce one MVA so the user has a draft to mark up:

| Brief signal | MVA to produce on turn 1 |
|---|---|
| Booth size + budget anchor stated | Booth brief skeleton (all 12 sections) with the most-likely assumptions per section labeled inline |
| Lead goal stated | Lead-capture spec draft using A/B/C/D framework + MQL/SQL mapping |
| Staff count + days stated | 2-shift × N-day rota with handover overlaps and lunch coverage |
| Show name only | Pre-show outreach timeline (T-4 to T-3 days) with placeholders for target accounts |

Also emit an **unlock matrix** so users can answer questions in parallel:
```
| Question | Unlocks deliverable(s) |
|---|---|
| Booth design (shell vs. custom) | Booth brief, AV spec, build timeline, build cost range |
| Lead-capture stack | Lead-capture spec, CRM wiring, follow-up email timing |
| SQL definition + maturity window | Scorecard reconciliation, ABM sizing, post-show ROI |
| Hospitality / anti-bribery cap | Dinner plan, gift policy, swag spec |
| 5-staff rota constraints | Staffing rota, booth coverage, evening engagement plan |
| ABM list status | Pre-show outreach cadence, meeting-booking calendar |
```

### GDPR Compliance (EU events)

If the event is in the EU/EEA or targets EU attendees: load `references/gdpr-exhibition.md`. Apply lead capture consent requirements to Output D, verify organizer compliance before using attendee lists, and include GDPR signage in booth planning (Output A).

### Output A: Booth Planning Brief

Load detailed templates and checklists from `references/booth-planning.md`. Design brief for your exhibit. NOT the floor plan drawing — the specification document for your booth builder.

**Booth brief structure:**
1. Event details (name, dates, venue, hall, booth number)
2. Booth dimensions and type (island, peninsula, corner, inline)
3. Brand guidelines (colors, logo placement, messaging hierarchy)
4. Key messages (max 3 — what should someone understand in 5 seconds of walking past?)
5. Product/demo stations (what's being shown, power/internet needs, table space)
6. Furniture and layout (meeting table, storage, counter, seating)
7. AV requirements (screen size, media player, speakers, lighting)
8. Electrical and internet (outlets count, dedicated line for demos, WiFi backup)
9. Graphics and signage (header, side walls, counter wraps, pull-up banners)
10. Storage (secure for bags, coats, printed materials, backup equipment)
11. Catering in booth (coffee machine, water, meeting snacks)
12. Sustainability (reusable components, no single-use handouts, digital alternatives)

**Budget benchmarks (relative):** Custom booth typically costs 3-6× the shell scheme price per m² from the organizer. Premium custom builds run 4-8× shell scheme. Ask the organizer for their shell scheme pricing as your local anchor, then multiply up for custom builds.

### Output B: Sponsorship Evaluation Scorecard

When evaluating whether to sponsor an external event. Different from creating sponsorship packages (that's event-sponsors).

**Evaluation criteria:**

| Criterion | Weight | Score 1-5 | Assessment Questions |
|---|---|---|---|
| Audience fit | 30% | | Does the attendee profile match our ICP? Job titles, company sizes, industries? |
| Package value | 20% | | What do we get for the money? Speaking slot, booth, leads, branding? |
| Competitive landscape | 15% | | Are competitors there? Would our absence be noticed? |
| Lead generation potential | 15% | | Can we scan badges? Get attendee lists? Book meetings? |
| Brand visibility | 10% | | Logo placement, social reach, media coverage of the event? |
| Logistics feasibility | 10% | | Can our team travel? Is the timing workable? Conflict with own events? |

**Red flags:** Event doesn't share attendee demographics before commitment. No attendee data included in any tier. Pricing is disproportionate to audience size. No cancellation terms. First edition with no track record.

**Decision framework:** Score 4.0+ = Sponsor. Score 3.0-3.9 = Negotiate a better package or lower tier. Score under 3.0 = Skip. Attend as participant if strategically important, but don't pay for sponsorship.

### Output C: Stand Personnel Guide

Training document for everyone working the booth.

**Pre-show briefing content:**
1. Event overview (what, when, who attends, our goals)
2. Key messages (3 talking points — memorize these, not a script)
3. Product demos (what to show, in what order, common questions)
4. Lead capture process (how to scan, what to note, qualification criteria)
5. Shift schedule (who, when, breaks, dress code)
6. Escalation: when to pull in a specialist or senior person
7. Competitor responses (what to say when asked about [competitor])
8. Logistics (booth location, hotel, dinner plans, emergency contacts)

**Booth behavior rules:**
- No sitting behind the table. Stand at the front, facing the aisle.
- No eating at the booth. No phones visible. No conversations among yourselves.
- Greet passers-by. "Hi, what brings you to the show?" not "Can I help you?"
- Qualify fast. 60 seconds to determine: right target? Genuine interest? Decision-maker?
- If not a fit, be friendly and brief. Don't waste 15 minutes on someone who will never buy.
- Capture EVERY relevant interaction. No lead is remembered tomorrow if not scanned today.

**Shift planning:**
- 2 people minimum on booth at all times (one greeting, one in conversation)
- Maximum 4-hour shifts without a 30-minute break
- Senior person available for VIP conversations, not standing at booth entrance
- Overlap shifts by 15 minutes for handover

### Output D: Lead Capture Strategy

Load qualification framework, tool comparison, and follow-up email templates from `references/lead-capture.md`.

**Before the show:**
- Configure lead scanning app (if provided by organizer) or bring own (Akkroo/Momencio/iCapture)
- Create qualification criteria: A-lead (decision-maker, active need, budget) / B-lead (influencer, future need) / C-lead (information seeker, no urgency)
- Set up CRM campaign tag: "[Event Name] [Year]" — all leads tagged automatically
- Prepare follow-up email drafts (different for A, B, C leads)
- Print backup paper lead forms (app failure happens more than you'd think)

**During the show:**
- Scan badge immediately after conversation. Add qualification notes while fresh.
- One-line note per lead: "Interested in [product], evaluating in Q3, team of 20"
- At end of each day: team debrief, review day's leads, flag hot leads for next-morning follow-up
- Don't collect business cards unless scanning is unavailable. Cards get lost.

**Lead quality scoring framework:**

| Score | Label | Criteria | Follow-Up |
|---|---|---|---|
| A (Hot) | Sales-ready | Decision-maker + active project + budget + timeline <6 months | Personal email same day. Sales call within 48h. |
| B (Warm) | Nurture-to-sales | Influencer or evaluator + interest + no immediate timeline | Personalized template within 48h. Add to sales sequence. |
| C (Cool) | Marketing nurture | Information seeker, student, or no buying authority | Add to marketing automation. No personal follow-up. |
| D (Disqualify) | Wrong fit | Competitor, job seeker, wrong industry/size | Do not add to pipeline. Optional: note for competitive intel. |

**Badge scanning compliance (GDPR/privacy):**
- Verify with the organizer: what data is encoded in the badge (name, email, company, or more)?
- Display a visible sign at your booth: "We scan badges to follow up on your interest. Your data will be processed by {{your_company}} per our privacy policy: {{url}}"
- Attendee can decline scanning — respect this. Never argue.
- Scanned data is YOUR responsibility after capture. Apply your company's data retention policy.
- For EU events: scanning = data collection = requires lawful basis. Legitimate interest (following up on a conversation the attendee initiated at your booth) is typically sufficient, but document the assessment.
- Never scan badges of people who merely walked past. Only scan after a conversation.

**Post-show (48h rule):**
- A-leads: Personal email from the person they spoke with. Same day or next morning.
- B-leads: Personalized template email within 48 hours. Reference what was discussed.
- C-leads: Nurture sequence (add to marketing automation). Not personal follow-up.
- All leads: In CRM within 24 hours of show close. Not "when we get back to the office."

### Output E: Pre-Show Campaign

Maximize ROI by scheduling meetings BEFORE the show. Walking the floor hoping to bump into target accounts wastes time.

**4-week pre-show outreach:**

| Timing | Action |
|---|---|
| T-4 weeks | Build target account list (who's attending that we want to meet?) |
| T-3 weeks | Email #1 to target accounts: "We'll be at [Event]. Can we schedule 20 minutes?" |
| T-2 weeks | LinkedIn outreach to contacts at target accounts. Personal, not InMail template. |
| T-1 week | Email #2 to non-responders: "Last chance to book a slot — our calendar is filling up." |
| T-3 days | Confirmation email to all booked meetings: time, location (booth or meeting room), who from your side |
| During show | Walk-up meetings fill remaining slots. Ask scanned leads: "Do you have 10 minutes tomorrow morning?" |

### Output F: CFP Response Guide

When submitting a speaking proposal to someone else's CFP.

**Before writing:**
- Study the event's published themes and tracks. Align your abstract to THEIR priorities, not yours.
- Check past event agendas for tone, format, and level. Match it.
- Avoid vendor pitches. Review committees reject anything that smells like a sales presentation.

**Abstract checklist:**
- Title: Specific, outcome-oriented. Not "Our Journey with AI" but "How We Cut Support Tickets 60% with AI Classification — Mistakes Included."
- Problem statement: What challenge does the audience face?
- Your unique angle: Why are YOU the right person? What did you actually DO?
- Takeaways: 2-3 concrete things the audience will leave with.
- No product names in the abstract. If accepted, you can mention your product in context during the talk. The abstract should be vendor-neutral.

### Output G: Post-Show Report and Follow-Up

**Lead follow-up timeline:** A-leads within 24h, B-leads within 48h, C-leads within 1 week. After 72 hours, lead quality decays rapidly.

**Post-show report structure:**
1. Investment (booth, travel, sponsorship, staff time, materials)
2. Results (leads by tier, meetings booked, pipeline generated, deals influenced)
3. Efficiency (cost per lead, cost per meeting, cost per qualified opportunity)
4. Qualitative (what worked, what didn't, competitor observations)
5. Recommendation (return next year? Same tier or different? Same booth size?)
6. **Sales-cycle impact** (the CFO question): compare median days-to-close for event-sourced and event-influenced deals against the company baseline. Pull at 90 days post-show, refresh at 180 days. If event-influenced deals close 15-30% faster than baseline, this is the most defensible ROI argument for renewing next year. If they close at the same speed, the event added pipeline without compressing cycle — still valuable, but the conversation with finance is different.

## Step 3.5: Verification Gate

1. **Goals vs. outputs:** Does every output directly serve the stated participation goal?
2. **Budget realism:** Does the booth budget match the m² benchmark (3-6× organizer shell scheme price)?
3. **Staffing math:** Enough people for all shifts with breaks? (2 min on booth × hours × days)
4. **Lead follow-up:** Is the 48h follow-up timeline reflected in the plan?
5. **Pre-show calendar:** Is pre-show outreach starting at least 3 weeks before?
6. **Writing quality:** Human-facing content (pre-show emails, follow-up sequences) passes writing quality self-check from event-content's writing-quality.md standards — no AI transition phrases, varied sentence length
7. **Lead-goal feasibility check:** When the user states a numeric lead target (e.g., "250 MQLs"), compute:
   ```
   required_leads_per_staff_per_day = lead_goal / (staff_count × show_days × MQL_qualification_rate)
   ```
   Assume MQL_qualification_rate ≈ 30-40% of total conversations qualify as MQL-grade. Industry baseline at major B2B shows: 5-10 MQL-grade leads per staff per show-day with strong pre-show outreach.
   - **Warn** if required is 8-15 per staff/day (achievable only with heavy pre-show + perfect booth flow)
   - **Flag as unrealistic** if required is >15 per staff/day (recommend increasing staff, adding show days, or reducing target)
   - Always state the assumed qualification rate and ask the user to confirm before proceeding.

## Skill Interface

**Accepts input from:** Entry point for trade show participation — accepts raw user requirements (event_name, role, booth_size, goals, budget, format).

**Produces output for:**
- event-budget: Participation costs (booth_cost, travel_cost, materials_cost, total_investment)
- event-content: Content needs (pre_show_emails, social_posts, booth_messaging)
- event-analytics: Performance data (leads_captured, meetings_booked, costs, roi_metrics)
- event-marketing: Pre-show campaign (target_accounts, outreach_timeline, channel_plan)

## Step 4: Connect to Specialized Skills

- **Exhibitor packages:** "For designing exhibitor packages for your own event, use the event-sponsors skill. For floor plan and vendor coordination, use the event-logistics skill"
- **Post-show analytics:** "For detailed ROI analysis and portfolio comparison across multiple events, use the event-analytics skill"
- **Pre-show promotion:** "For pre-show social campaigns, use the event-marketing skill. For announcement posts and outreach copy, use the event-content skill"
- **Booth budgeting:** "For detailed trade show booth cost breakdowns, use the event-budget skill"

## Output Format

- Booth briefs: structured 12-section document with brand/functional/technical zones
- Sponsorship evaluation: weighted scorecard table with score and assessment notes per criterion
- Stand personnel guide: shift schedule + behaviour rules + talking points + escalation contacts
- Lead capture strategy: qualification framework table + tool comparison + follow-up email templates
- Pre-show campaign: week-by-week timeline table with target accounts and channels
- Post-show report: investment / results / efficiency / qualitative / recommendation / sales-cycle impact
- Currency: user's currency throughout. Ask if not specified.

## Examples

### Example 1: Trade show booth planning
**User says:** "We have a 12m² booth at a tech trade show in 6 weeks. Help me plan."
**Response:** Booth planning brief, stand personnel guide for 4 team members, shift plan for 2 days, lead capture setup, pre-show outreach email sequence, post-show follow-up templates.

### Example 2: Sponsorship evaluation
**User says:** "Should we sponsor this conference? They want €15K for a Gold package."
**Response:** Sponsorship evaluation scorecard. Asks for attendee demographics, package details, competitor presence. Scores the opportunity. Recommends: sponsor / negotiate / skip.

### Example 3: Abstract submission
**User says:** "I need to submit a talk proposal for KubeCon. Our team of 3 has been running Kubernetes in production for 2 years with 500+ microservices."
**Response:** CFP response guide tailored to CNCF conferences. Vendor-neutral abstract draft with outcome focus. 2-3 takeaway bullet points. Title options. Speaker bio adapted for the KubeCon audience of 10,000+ attendees.

### Example 4: Post-show analysis
**User says:** "We just got back from the trade show. 6m² booth, €12K total spend, 3 staff for 2 days, 87 leads scanned."
**Response:** Post-show report: cost per lead 138 (115% of per-attendee cost; benchmark: 60-160% average for trade shows). Lead breakdown by tier. Staff efficiency: 29 leads/person. ROI projection at 5% conversion rate. Recommendation for next year: same booth size, increase staff to 4 for better coverage.

## Edge Cases

- **First time exhibiting:** Add booth design basics, common first-timer mistakes (too much furniture, not enough open space, no meeting area). Recommend starting with smaller booth.
- **Virtual booth:** Replace physical logistics with virtual platform setup (banner ads, chat, video demos, downloadable content). Lead capture through platform analytics.
- **Satellite event:** Planning your own small event parallel to a major trade show. For the side event, use the event-planner skill; use this skill for the trade show presence.
- **Speaker-only (no booth):** Skip booth outputs. Focus on CFP response, pre-show outreach, and post-talk networking strategy.
- **Budget below 1× standard booth price:** Shell scheme only, no custom build. Focus budget on lead capture tools and staff travel. Skip giveaways.
- **Mega-event (50,000+ attendees, 500+ exhibitors):** High noise floor — invest disproportionately in pre-show outreach (target accounts list critical). Booth staffing needs overlap shifts for peak hours. Demo stations need crowd management (queue system or timed slots). Lead quality drops at scale — tighten A-lead criteria. Consider satellite meeting space off show floor for high-value conversations.
