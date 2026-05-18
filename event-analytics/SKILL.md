---
name: event-analytics
description: >
  Measure, analyze, and report on actual B2B event performance using post-event data.
  Generates KPI frameworks, post-event survey questions, ROI calculations from actual
  results, attendance analysis, session performance reports, sponsor fulfillment reports,
  and lessons-learned documents. Use this skill
  whenever someone asks to measure event success, create event KPIs, build a post-event
  survey, calculate actual event ROI from post-event data, analyze attendance data, create a post-event report,
  compare event performance year-over-year, measure sponsor satisfaction, evaluate
  session ratings, write a lessons-learned document, or plan a post-event debrief. Also
  triggers for NPS surveys, lead quality analysis, content engagement metrics, and event
  benchmarking. Part of the event-management-skills collection — measures outcomes
  while other skills handle planning, execution, and content.
version: 1
version_date: 2026-03-28
io_schema: references/io-schema.json
---

# Event Analytics

Measure what matters and prove event value. Produces KPI frameworks, surveys, and reports that connect event outcomes to business objectives — not vanity metrics.

## When This Skill Activates

- Define KPIs for an upcoming event
- Create a post-event survey
- Calculate event ROI (pipeline, revenue, cost per lead)
- Analyze attendance data
- Create a post-event report (executive, sponsor, or internal version)
- Compare event performance across editions
- Write a lessons-learned document
- Plan and facilitate a post-event debrief meeting

**Scope:** B2B event KPIs (pipeline ROI, cost per lead, attendee engagement). For non-B2B metrics (fundraising ROI, donor retention, auction yield), adapt the framework or track custom KPIs outside this skill's benchmarks.

**This skill does NOT:** Set pre-event KPI targets tied to business objectives (use the event-planner skill), write survey email copy (use the event-content skill), or do budget reconciliation (use the event-budget skill). Measures outcomes after the event and turns data into decisions.

## Step 1: Gather Context

**Required (ask if not provided):**

| Parameter | Why it matters |
|---|---|
| Event type | Determines which KPIs are most relevant |
| Event objectives (from brief) | KPIs must map directly to stated objectives |
| What analytics output is needed | Survey, report, KPIs, or debrief |
| Event data available | What numbers does the user already have? |

**Optional:**

| Parameter | Default |
|---|---|
| Event format | In-person / virtual / hybrid — affects which metrics apply |
| Event brief from event-planner | Ask for objectives if not available |
| Previous event data | For year-over-year comparison |
| CRM integration | Determines if pipeline attribution is possible |
| Survey platform | Generate platform-agnostic questions |
| Currency | Use user's currency; ask if not specified |
| GDPR relevance | If EU event, load `references/gdpr-analytics.md` for data handling rules |

## Step 2: Route to Output

**Format-specific routing (apply to all outputs):**
- **In-person:** Physical metrics — foot traffic, badge scans, booth dwell time, session room fill rates, networking density
- **Virtual:** Platform metrics — session views, chat activity, poll participation, time-in-session, replay views, drop-off curves
- **Hybrid:** Both metric sets plus: format preference analysis, crossover rate (% who switched formats mid-event), engagement comparison across formats

| User asks about... | Generate... |
|---|---|
| KPIs, metrics, measurement plan | Output A |
| Survey, feedback questions | Output B |
| ROI calculation | Output C |
| Post-event report | Output D |
| Debrief, lessons learned | Output E |

## Step 3: Generate Outputs

### Output A: KPI Framework

Load from `references/kpi-framework.md`. Map KPIs to event objectives. Every KPI needs: metric name, measurement method, data source, target, and benchmark.

**Universal KPIs (every event):** Registration count, attendance rate (registered ÷ attended), NPS score, overall satisfaction rating, cost per attendee.

**Objective-specific KPIs:**
- Lead generation: qualified leads, cost per lead, lead-to-opportunity rate
- Brand awareness: social mentions, media coverage, website traffic during event
- Customer engagement: session attendance rate, engagement score, repeat attendance
- Revenue: pipeline generated, deals closed (90-180 day window), sponsor revenue
- Education: session ratings, knowledge gain (pre/post survey), content downloads

### Output B: Post-Event Survey

Load from `references/survey-templates.md`. Generate 5-10 questions maximum (longer surveys kill response rates). Send within 48 hours. Include NPS question.

**Standard survey structure:**
1. NPS: "How likely are you to recommend {{event_name}}?" (0-10 scale)
2. Overall satisfaction (1-5 scale)
3. Top session (select from list)
4. Content quality rating (1-5)
5. Networking quality rating (1-5)
6. Logistics satisfaction (venue, catering, organization) (1-5)
7. "What was the most valuable part?" (open text)
8. "What would you improve?" (open text)
9. "Will you attend next year?" (Yes / Maybe / No)
10. Optional: interest areas for future events (multi-select)

Customize by event type and audience. Virtual events: add platform usability question. Hybrid: ask format preference for next time.

### Output C: ROI Calculation

Load formulas from `references/roi-frameworks.md`.

**Calculations:**
- Pipeline ROI = (Pipeline from event ÷ Total cost) × 100
- Revenue ROI = (Revenue attributed ÷ Total cost) × 100
- Cost per lead = Total cost ÷ Qualified leads
- Cost per attendee = Total cost ÷ Attendees
- Marketing efficiency = Registrations ÷ Marketing spend

**Attribution rules:** Event-sourced leads = first-touch at event. Event-influenced = existing leads who attended. Attribution window: 90-180 days post-event. Always separate sourced vs. influenced in reporting.

### Output D: Post-Event Report

Three versions based on audience:

**Executive report** (1-2 pages): Hero metric, objectives vs. results table with RAG status, financial summary (revenue, cost, ROI), 3 key recommendations, next steps.

**Sponsor report** (per sponsor): Their specific deliverables fulfilled (with proof), impressions/exposure metrics, leads collected at booth, session attendance (if speaking), overall event metrics, renewal offer.

**Internal report** (comprehensive): Full 12-section structure from `references/report-structure.md`.

### Output E: Lessons Learned

Structured debrief document and meeting agenda.

**Debrief meeting agenda (60-90 minutes):**
1. Review objectives vs. results (15 min)
2. What exceeded expectations? (10 min)
3. What fell short? (10 min)
4. What would we do differently with the same budget? (10 min)
5. Vendor assessment: keep, renegotiate, replace (10 min)
6. Attendee feedback highlights (10 min)
7. Decisions for next edition (10 min)
8. Action items with owners and deadlines (10 min)

**Lessons learned document structure:** What worked (keep doing), what didn't (stop doing), what to try next time, vendor scorecards, attendee verbatim highlights, institutional knowledge to preserve.

## Step 3.5: Verification Gate

1. **KPI-objective alignment:** Every stated objective has at least one KPI with a measurement method
2. **Survey length:** Maximum 10 questions (ideally 5-7). Include NPS.
3. **ROI math:** Formulas are correct and inputs are clearly labeled
4. **Report audience match:** Executive report ≤ 2 pages. Sponsor report is per-sponsor, not generic.
5. **Actionability:** Every finding has a recommendation. Every recommendation has an owner.
6. **Writing quality:** Executive reports and lessons-learned documents pass anti-AI writing check — no "Furthermore/Additionally/Moreover", varied sentence structure, specific rather than generic language

## Skill Interface

**Accepts input from:**
- event-planner: Event objectives (stated_objectives, success_criteria, KPI_targets)
- event-budget: Financial data (total_cost, revenue, budget_vs_actual)
- event-registration: Attendance data (registrations, attendees, no_shows, by_tier)
- event-sponsors: Sponsor data (deliverables_fulfilled, booth_traffic, sponsor_satisfaction)

**Produces output for:**
- event-planner: Lessons learned (what_worked, what_failed, recommendations_for_next)
- event-content: Report content (survey_results, key_metrics, testimonial_quotes)
- event-budget: Financial actuals (actual_cost_per_attendee, actual_roi, variance_data)

## Step 4: Connect to Specialized Skills

- **Event objectives:** "If objectives weren't defined pre-event, use the event-planner skill to set them for next time"
- **Survey copy:** "For survey email copy and follow-up sequences, use the event-content skill"
- **Financial analysis:** "For detailed budget variance and cost analysis, use the event-budget skill"
- **Sponsor metrics:** "For sponsor fulfillment tracking, use the event-sponsors skill"

## Output Format

- KPI frameworks: tables with columns Metric / Method / Source / Target / Benchmark
- Surveys: numbered questions with scale type and response options, plus 1-2 open text fields
- ROI calculations: formula + inputs labeled with units + result, no hidden assumptions
- Executive reports: ≤2 pages, lead with hero metric and RAG-status objectives table
- Sponsor reports: one per sponsor, customised to their package and deliverables
- Lessons-learned: structured into "Keep / Stop / Try next time" sections with named owners
- Currency: user's currency throughout. Ask if not specified.

## Examples

### Example 1: KPI framework
**User says:** "Define KPIs for our lead-gen focused trade show."
**Response:** KPI framework with lead generation focus: qualified leads (target + benchmark), cost per lead, lead-to-meeting conversion, pipeline generated (90-day window), booth traffic, session attendance. Plus universal KPIs.

### Example 1b: Dual-objective KPI framework (retention + acquisition)
**User says:** "We're running a 500-pax SaaS user conference. Goal is customer retention + 50 net-new enterprise leads. What KPIs?"
**Response:** Two KPI clusters tied to the dual objective.

*Retention cluster (existing customers, ~40% of attendees comped):*
- Customer attendance rate (% of invited customers who actually attended) — target ≥60%
- Customer NPS at the event (segmented from prospect NPS) — target ≥50
- Repeat attendance vs. prior year — target ≥70% of last year's customers return
- Expansion pipeline created during 1:1 customer meetings (logged in CRM with event tag) — target value vs. spend on customer comp + dinner
- Renewal intent signal (survey question) — target ≥85% positive

*Acquisition cluster (prospects, paid + prospect-comp tickets):*
- Net-new enterprise leads captured — target 50 (user-stated)
- Cost per net-new lead — benchmark: 60-150% of marketing cost-per-attendee
- Lead-to-opportunity rate at 90 days — target ≥20%
- Pipeline generated from event-sourced leads — target value vs. acquisition-share of budget

Flag the comp-ticket allocation tension explicitly: if customer comp is 40% of capacity, only ~250-300 tickets carry paid+prospect demand. Test pricing scenarios with event-budget. Surface the conflict in the brief, not at month 9.

### Example 2: Post-event survey
**User says:** "Create the post-event survey for our 500-person developer conference."
**Response:** 8-question survey with NPS, session ratings, content quality, networking, logistics, best session, improvement suggestions, return intent. Developer-appropriate tone.

### Example 3: Executive report
**User says:** "Write the post-event report for leadership. Our conference had 450 attendees, target was 500."
**Response:** 2-page executive report: hero metric, objectives vs. actuals (attendance 90% of target — yellow), financial summary, top 3 wins, top 3 improvements, recommendations with owners.

## Edge Cases

- **No pre-event objectives defined:** Help define them retroactively using available data, then flag that objectives should be set before the event next time.
- **No survey data:** Use available quantitative data (attendance, session counts, social media metrics) and anecdotal feedback. Recommend implementing surveys for next edition.
- **Virtual event metrics:** Replace physical metrics (foot traffic, badge scans) with platform metrics (session views, chat activity, poll participation, time-in-session).
- **Multi-event comparison:** Generate year-over-year comparison table with trend arrows. Normalize by attendee count for fair comparison.
- **Very small event (<50):** Skip quantitative survey (sample too small). Use structured 1:1 conversations or group debrief instead.
- **Multi-event portfolio analysis:** When comparing ROI across an entire year's events or deciding which events to continue, load `references/portfolio-analysis.md` for scoring framework, ROI comparison matrix, and budget allocation guidance.
- **NPS cultural calibration:** APAC respondents typically score 10-15 points lower than Western European respondents due to cultural response patterns (central tendency bias). A Singapore NPS of 30 may be equivalent to a European 45. Adjust benchmarks when comparing cross-regional events.
- **Sales-driven event (deal dinner, executive meeting):** Replace lead-gen KPIs with deal progression metrics: deal stage advancement, follow-up meetings booked, verbal commitments, relationship depth. Skip quantitative survey — use structured post-event debrief with sales team. Track deal-specific outcomes at 30/60/90 days post-event.
