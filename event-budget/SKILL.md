---
name: event-budget
description: >
  Create, track, and optimize budgets for B2B events: conferences, trade shows, product
  launches, sales kickoffs, summits, and meetups. Generates budget breakdowns with
  industry benchmarks, cost-per-attendee calculations, revenue projections, variance
  tracking, and ROI estimates. Use this skill whenever someone asks to create an event
  budget, estimate event costs, build a budget spreadsheet, calculate cost per attendee,
  track event expenses, forecast event revenue, compare budget scenarios, find cost
  savings for an event, forecast event ROI and model revenue scenarios, or needs help
  with event financial planning.
  Also triggers for overall sponsorship revenue target forecasting, ticket pricing
  strategy, vendor cost comparison, budget variance analysis, and post-event financial
  reconciliation. Part of
  the event-management-skills collection — handles finances while other skills handle
  planning, content, and logistics.
version: 1
version_date: 2026-03-28
io_schema: references/io-schema.json
---

# Event Budget

Create realistic, benchmark-grounded budgets for B2B events. Produces actionable financial plans with fixed/variable cost modeling, revenue projections, and variance tracking — not blank templates to fill in.

## When This Skill Activates

Use this skill when the user wants to:

- Create a budget for a new event from scratch
- Estimate costs for a specific event type and scale
- Build budget scenarios (base / lean / stretch)
- Calculate cost per attendee or break-even point
- Set ticket pricing based on cost structure
- Project revenue from registrations and sponsorship
- Track actuals vs. planned budget (variance analysis)
- Identify cost-saving opportunities
- Create a post-event financial reconciliation
- Estimate ROI from an event investment

**This skill does NOT:** Write sponsorship proposals (use the event-sponsors skill), set up registration platforms (use the event-registration skill), or analyze post-event survey data (use the event-analytics skill). Handles financial planning, tracking, and forecasting.

## Step 1: Gather Context

**Required context (ask if not provided):**

| Parameter | Why it matters |
|---|---|
| Event type | Determines cost structure and category mix |
| Event format | In-person / virtual / hybrid — fundamentally changes budget shape |
| Expected attendees | Drives variable costs (F&B, badges, materials) |
| Event duration | Multi-day events multiply venue, catering, and staffing costs |
| Location / region | Affects venue rates, travel costs, tax, currency |
| Total budget envelope | If known — otherwise skill estimates from benchmarks |

**Optional context (use if available):**

| Parameter | Default if not stated |
|---|---|
| Revenue model | Assume mixed (tickets + sponsors) unless stated |
| Number of speakers | Estimate from event type |
| Venue status | If booked, use actual cost; otherwise estimate |
| Sponsor revenue confirmed | Include confirmed only; project pipeline separately |
| Currency | Use user's currency; ask if not specified |
| Previous event data | Use actuals from prior edition as baseline if recurring |

## Step 2: Select Budget Profile

Different event types have fundamentally different cost structures. Load benchmarks from `references/cost-benchmarks.md`.

**Format-specific budget profiles:**
- **In-person:** Baseline allocation — venue and F&B dominate (40-45% combined)
- **Virtual:** Reallocate entirely — 0% venue/F&B, 35-45% technology/platform, 20-25% marketing (wider reach). Cost index 0.1-0.3× vs. in-person equivalent.
- **Hybrid:** Most expensive format — full in-person production PLUS full virtual production. Budget 30-40% premium over in-person alone. Contingency 15-20% (dual-format = more failure points).

| Event Type | Largest Cost Center | Revenue Model | Key Budget Risk |
|---|---|---|---|
| Trade show / Expo | Venue + exhibitor infrastructure | Exhibitor fees + sponsor + tickets | Floor plan changes, AV scope creep |
| Partner conference | Venue + F&B + networking | Sponsor-funded or internal | Catering overruns |
| Product launch | Production + AV + demos | Internally funded | Production scope creep |
| Sales kickoff | Venue + accommodation + F&B | Internally funded | Travel and resort pricing |
| Developer conference | Venue + AV + speaker travel | Tickets + sponsors | WiFi infrastructure |
| Industry summit | Venue + speaker fees + catering | Tickets + sponsors | Premium venue costs |
| Community meetup | Venue + catering | Sponsor-funded | Sponsor dependence |
| Virtual event | Platform + production | Tickets + sponsors | Platform licensing |
| Hybrid event | All in-person + all virtual | Mixed | Dual production (30-40% premium) |

## Step 3: Generate Outputs

### Output A: Full Budget Breakdown

Detailed budget organized by category. Load structure from `references/budget-categories.md`.

**Structure:** Revenue section (registration tiers, sponsorship tiers, exhibitor fees, other income) → Fixed costs (venue, base AV, platform, insurance) → Variable costs (catering per head, badges, materials) → Semi-variable costs (marketing, speakers, staff, photography) → Contingency (10-15%) → Net result.

For each line item provide: description, unit cost, quantity, subtotal, notes, and category percentage.

### Output B: Scenario Modeling

Three scenarios: **Lean** (20-30% below base — minimum viable event), **Base** (realistic working budget), **Stretch** (20-30% above base — enhanced experience). For each show total cost, cost per attendee, break-even count, and key trade-offs.

### Output C: Revenue Projection

Model all revenue sources. Registration: by tier with early-bird (20-25% of registrations at 15-20% discount) and comp tickets (10-15%). Sponsorship: by tier with close rates (60-70% returning, 20-30% new). Exhibitor: booth fee × count plus add-ons. Calculate break-even point and sensitivity at 80% and 120% of target.

### Output D: Cost-per-Attendee Analysis

Calculate and benchmark against `references/cost-benchmarks.md`: gross cost per attendee, net cost per attendee (minus sponsor revenue), F&B cost per attendee, marketing cost per registration. Flag metrics significantly above or below benchmarks.

### Output E: Variance Tracker

For events in progress or completed: category-level comparison of budgeted vs. actual with RAG status (🟢 within ±5%, 🟡 5-15% over, 🔴 over 15%).

### Output F: ROI Calculation

For completed events: pipeline ROI, revenue ROI, cost per lead, cost per meeting. Load ROI frameworks from `references/roi-frameworks.md`.

## Step 3.5: Verification Gate

Before presenting outputs, verify:

1. **Math accuracy:** Line items sum to category totals, categories sum to grand total, percentages sum to 100%
2. **Benchmark alignment:** Flag any category more than 10 percentage points off from benchmarks
3. **Revenue realism:** Registration projections based on realistic conversion rates
4. **Contingency present:** 10-15% of total expenses — never present a budget without it
5. **Currency consistency:** All figures in same currency, tax/VAT handled consistently
6. **Fixed vs. variable logic:** Variable costs actually scale with headcount

## Skill Interface

**Accepts input from:**
- event-planner: Event brief (event_type, format, dates, attendee_count, budget_envelope)
- event-sponsors: Sponsorship revenue (tier_pricing, expected_sponsors_per_tier, close_rates)
- event-registration: Ticket revenue (tier_pricing, expected_registrations, comp_tickets)
- event-logistics: Vendor costs (venue_quote, av_quote, catering_quote, vendor_estimates)

**Produces output for:**
- event-sponsors: Revenue targets (total_sponsorship_target, per_tier_targets)
- event-registration: Pricing guidance (break_even_point, price_benchmarks)
- event-analytics: Financial baseline (total_budget, category_allocations, revenue_targets)
- event-logistics: Budget constraints (vendor_budget_per_category)

## Step 4: Connect to Specialized Skills

- **Event planning:** "For full event plans with timeline and checklists, use the event-planner skill"
- **Sponsorship revenue:** "For sponsorship package design and pricing, use the event-sponsors skill"
- **Registration and pricing:** "For registration flow and ticket tier design, use the event-registration skill"
- **Post-event ROI:** "For comprehensive KPI frameworks and ROI reporting, use the event-analytics skill"
- **Vendor costs:** "For vendor selection and RFP templates, use the event-logistics skill"

If the user has an event brief from event-planner, ask them to share it for more accurate estimates.

## Output Format

- Default: Markdown tables with category headers
- For spreadsheet: CSV-ready tables (Category, Item, Unit Cost, Qty, Subtotal, Notes)
- Currency: Use the currency specified by the user. Ask if not provided.
- Show both absolute amounts and percentage of total per category
- Include one-paragraph executive summary at top of any full budget

## Examples

### Example 1: Mid-size conference budget

**User says:** "Create a budget for a 500-person developer conference in Berlin, 2 days, €200K total budget."

**Skill response:** Full breakdown using stated budget as anchor. Developer conference profile: higher AV/tech (15%), moderate F&B, 20-30 speakers. Three scenarios (Lean 75%, Base 100%, Stretch 130% of stated budget). Revenue: ticket tiers + 4-tier sponsorship. Break-even analysis. Cost per attendee = 40% of per-head benchmark at base scenario. Timeline: budget finalized by T-6 months, vendor deposits by T-4 months.

### Example 2: Trade show booth budget

**User says:** "How much should we budget for our booth at a major trade show? 20m² booth, 3 days. Shell scheme price from organizer is $350/m²."

**Skill response:** Exhibitor budget using $350/m² shell scheme as anchor. Custom build = 3-6× shell scheme = $1,050-2,100/m². Total booth space + build for 20m²: $21,000-42,000. Add staff travel, lead capture, materials, giveaways. Flag: production scope creep is #1 risk.

### Example 3: Virtual event cost estimate

**User says:** "What does a virtual conference for 1,000 people cost? We have a quote for a platform at $8,000."

**Skill response:** Virtual budget using platform cost as anchor. Platform = 20-40% of technology budget, technology = 35-45% of total. Derived total: $18,000-40,000. Allocation: 0% venue, 40% technology, 25% marketing, 15% speakers, 10% staff, 10% contingency. Cost index 0.1-0.3× of equivalent in-person event.

### Example 4: Budget variance review

**User says:** "Our conference is T-3 weeks out. We're 15% over budget on AV."

**Skill response:** AV variance analysis. Common causes. Immediate savings options by T-2 weeks. Revised forecast with updated contingency draw.

## Edge Cases

- **No total budget given:** Use calibration method from `cost-benchmarks.md` — ask for one local anchor price. Present percentage-based allocation and flag that absolute numbers need user-provided data.
- **Internal event (no revenue):** Skip revenue section. Focus on expense budget with cost justification.
- **Multi-currency:** Primary currency for all figures, note exchange rates, add 3-5% fluctuation buffer.
- **Very tight budget:** Priority cut order: swag → print → photographer → entertainment → premium catering → venue downgrade. Never cut contingency.
- **First-time event:** Use benchmarks, add 15% contingency, flag that first editions cost 10-20% more.
- **Recurring event with history:** Use prior actuals as baseline, adjust for inflation (3-5% annually).
- **Green budget options:** Include line items for: carbon offset (1-3% of per-attendee cost for in-person), sustainable catering premium (+10-20%), reusable signage and booth materials (higher upfront, lower over 3+ events), digital swag alternatives, waste management and recycling. Present as optional add-ons with ROI framing — sustainability increasingly influences sponsor and attendee decisions.
