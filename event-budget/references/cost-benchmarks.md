# Cost Benchmarks

Load this reference when generating budgets, estimating costs, or benchmarking actuals. Benchmarks use **percentage-based allocation and ratios only** — no absolute prices. The skill works in whatever currency the user provides.

## Table of Contents

1. [How to Use These Benchmarks](#how-to-use-these-benchmarks)
2. [Calibration: Anchor Your Budget](#calibration-anchor-your-budget)
3. [Budget Allocation by Format](#budget-allocation-by-format)
4. [Per-Attendee Cost Ratios by Event Type](#per-attendee-cost-ratios-by-event-type)
5. [Category Deep Dives](#category-deep-dives)
6. [Cost Scaling Behavior](#cost-scaling-behavior)
7. [Cost Modifiers](#cost-modifiers)
8. [Industry Cost Context](#industry-cost-context)

---

## How to Use These Benchmarks

1. **Get a budget anchor** from the user (Section 2)
2. **Apply allocation percentages** by format (Section 3)
3. **Cross-check** per-attendee ratio against event type (Section 4)
4. **Adjust** with cost modifiers (Section 7)
5. **Validate** that no category exceeds its plausible range

All benchmarks are **currency-neutral**. Work in whatever currency the user provides. Never convert to or from a reference currency.

## Calibration: Anchor Your Budget

Every budget needs a starting point. Get it from the user — don't invent one.

### If the user provides a total budget

Use allocation percentages (Section 3) to distribute across categories. Cross-check the resulting per-attendee cost against Section 4.

### If the user provides a venue quote

Venue + F&B is typically 40-45% of total in-person budget. Derive the total:

```
Total budget ≈ venue_quote / 0.40 to 0.45
```

Then distribute the remaining categories using Section 3.

### If the user provides a per-attendee target

Multiply by attendee count for total budget. Cross-check against event type ranges in Section 4.

### If the user provides nothing

Ask: **"What is your total budget, or what does an all-day conference catering package (2 coffee breaks + lunch) cost per person in your event city?"**

From a catering-per-person number, derive:
- All-day catering is typically 4-7% of total per-attendee cost
- → Per-attendee total ≈ catering_price / 0.04 to 0.07
- → Total budget = per-attendee total × attendee count

If the user truly cannot provide any number, state that you can only offer percentage-based structure without absolute figures, and recommend getting one local venue or catering quote to anchor the budget.

## Budget Allocation by Format

These percentages apply globally regardless of market or currency.

| Category | In-Person | Virtual | Hybrid | SKO (Global, Internal) |
|---|---|---|---|---|
| Venue & F&B | 40-45% | 0-5% | 25-30% | 20-25% |
| Travel & Accommodation | (rolled into Staff & travel) | — | — | **40-50%** |
| Technology & production | 10-15% | 35-45% | 25-35% | 5-10% |
| Marketing | 15-20% | 20-25% | 15-20% | 0% (internal — no demand gen) |
| Speakers / Content | 10-15% | 10-15% | 10-15% | 5-8% (internal presenters) |
| Staff & travel | 10-15% | 5-10% | 10-15% | (Travel broken out separately above) |
| Contingency | 10-15% | 10-15% | 15-20% | 10-15% |

**Validation rule:** All categories must sum to 100%. If they don't, the allocation is wrong.

**Contingency is mandatory.** Never present a budget with 0% contingency. Minimum 10% for in-person, 15% for hybrid.

**SKO note:** Global SKOs (reps flying in from multiple regions) are structurally different from external conferences — travel and hotel dominate, marketing is zero, content is internal. Do not apply the In-Person template to a global SKO; it will under-allocate travel by ~30 percentage points. For regional/single-city SKOs where most reps commute, use the In-Person template adjusted to ~25% Travel & Accommodation and ~30% Venue & F&B.

## Per-Attendee Cost Ratios by Event Type

Instead of absolute prices, use these **ratios relative to a standard conference** (index = 1.0×):

| Event Type | Cost Index | Notes |
|---|---|---|
| Community meetup | 0.1-0.2× | Often sponsor-funded, minimal production |
| Virtual event | 0.1-0.3× | Platform + production only |
| Developer conference | 0.5-0.8× | Community-priced, less premium |
| Trade show (organizer) | 0.8-1.2× | Excludes exhibitor-funded costs |
| Partner conference | 1.0× (baseline) | Standard B2B conference |
| Sales kickoff | 1.0-1.5× | Includes accommodation |
| Product launch | 1.5-2.5× | Production-heavy, high per-attendee spend |
| Industry summit | 1.5-2.5× | Premium, small audience, high-touch |

**How to use:** If the user's per-attendee cost for a partner conference is X, then a product launch with similar quality should budget 1.5-2.5× that amount per attendee.

**Sanity check:** If the derived per-attendee cost is >3× or <0.3× of what the user expected for the event type, flag a mismatch and ask the user to verify.

## Category Deep Dives

### Venue & F&B (40-45% of in-person budget)

**Venue subcategory split:**

| Subcategory | % of Venue & F&B category |
|---|---|
| Venue rental | 35-50% |
| Catering (meals + breaks) | 40-55% |
| Furniture & setup | 5-10% |
| Signage & branding | 3-5% |

**Venue type cost ranking** (relative, from cheapest to most expensive):
1. Co-working / event space (0.5×)
2. Hotel conference room (1.0× — baseline)
3. Restaurant private dining (1.0-1.5×)
4. Convention center small (1.5-2.5×)
5. Convention center large (2.5-5.0×)

**Catering ratios** (relative to all-day package as 1.0×):

| Service | Ratio | Notes |
|---|---|---|
| Coffee break only | 0.1-0.15× | Coffee, tea, snacks |
| Buffet lunch | 0.4-0.6× | Three courses |
| All-day package (2 breaks + lunch) | 1.0× | Most common conference setup |
| Plated lunch | 0.6-0.9× | Premium venues |
| Cocktail reception (2h) | 0.5-0.7× | Drinks + canapés |
| Plated dinner (3-course) | 0.9-1.3× | Wine pairing adds 30-50% |

**Dietary complexity surcharge:** Special dietary requirements (vegan, gluten-free, halal, kosher) add 10-25% per affected meal. Budget for 15-20% of attendees requiring special meals. For known diverse audiences (international, tech): budget 25-30%.

**Warning:** Catering is the #1 source of budget overruns. Budget for 5-10% above confirmed headcount.

### Technology & Production (10-15% of in-person budget)

**Relative cost scale** (basic AV package = 1.0×):

| Item | Ratio | Notes |
|---|---|---|
| Basic AV package (per room/day) | 1.0× | Projector, screen, mic, speakers |
| Professional main stage (per day) | 5-12× | Lighting, LED, sound |
| Live streaming (single camera/day) | 2-5× | Hybrid/virtual |
| Multi-camera production (per day) | 5-10× | Broadcast quality |
| WiFi upgrade (dedicated line) | 1-3× | For 200+ concurrent devices |
| Event app | 2-8× | Depends on features |

**Warning:** AV is the #2 source of budget overruns. Lock specs by T-4 weeks.

### Speakers (10-15% of total budget)

**Speaker tier distribution** (as % of speaker budget):

| Speaker Type | % of Speaker Budget | Additional |
|---|---|---|
| Internal speakers | 0% | Time cost only |
| Industry practitioners (unpaid) | 0% fee | Travel + hotel: 2-5% of speaker budget each |
| Panel participants | 0-5% | Standard: no fee + travel |
| Microinfluencers (5K-50K followers) | 5-15% | Negotiate content rights |
| Professional speakers (mid-tier) | 15-40% | Travel + hotel + rider |
| Keynote speakers (high-profile) | 40-80% | Premium travel + rider |

**Rule of thumb:** If keynotes consume >60% of speaker budget, reduce keynote count or tier.

### Marketing (15-20% of total budget)

**Channel allocation** (as % of marketing budget):

| Channel | % of Marketing Budget | Notes |
|---|---|---|
| Event website | 15-30% | Foundation — required |
| Email marketing | 10-20% | Highest ROI channel globally |
| Primary social platform ads | 20-40% | LinkedIn for B2B in most markets; varies regionally |
| Regional/secondary channels | 10-25% | Platform varies by market |
| Print materials | 5-15% | Declining in most markets |

## Cost Scaling Behavior

Not all costs scale linearly with event size or location:

| Category | Scales with... | Behavior |
|---|---|---|
| Venue & catering | Attendee count + local market | Linear with attendees. Heavily location-dependent. |
| AV & production | Complexity, not attendee count | Mostly fixed cost. 50-person and 500-person events in the same room need similar AV. |
| Speaker fees | Speaker's market value | Global market for keynotes. Local market for regional speakers. Not location-dependent. |
| Marketing (digital) | Campaign scope, not location | Global pricing (LinkedIn, Google). Cost-per-click varies by industry, not city. |
| Marketing (physical) | Local production costs | Location-dependent. |
| Staff & travel | Team size + travel distance | Partially location-dependent. |
| Event app / platform | Feature set, not attendee count | Mostly fixed cost with per-user tiers. |

**Key insight:** When scaling a budget from one city to another, only adjust the location-dependent categories. Speaker fees and digital marketing stay constant.

## Cost Modifiers

Apply these adjustments to the baseline budget:

| Modifier | Impact | Notes |
|---|---|---|
| Hybrid format | +30-40% vs. in-person | Dual infrastructure: physical + streaming |
| Virtual format | -50-75% vs. in-person | No venue, no F&B, no physical logistics |
| First edition (no track record) | +10-20% | Higher vendor risk premiums, no leverage |
| Weekend dates | +10-30% | Venue + staff surcharges |
| Peak season (Sep-Nov, Jan-Mar) | +10-20% | Higher venue + hotel rates |
| Off-peak dates | -15-25% | Negotiation leverage |
| Last-minute booking (<8 weeks) | +20-30% | Reduced vendor options |
| Multi-year venue deal | -10-15% | Commit to 2-3 editions |
| Room block commitment | -10-20% | Hotel group rate in exchange for guaranteed bookings |
| Repeat event (3rd+ edition) | -5-10% | Established vendor relationships, reusable assets |

## Industry Cost Context

- Event costs risen 40-50% since pre-pandemic (Forrester 2025)
- 69% of B2B event budgets flat or declining (Forrester 2025)
- ~35% of budgets go to venue + F&B, ~20% to technology — this ratio is consistent globally
- Catering is the #1 and AV is the #2 source of budget overruns — also consistent globally
- Hybrid events cost 30-40% more than in-person alone
- Virtual events cost 50-75% less than in-person equivalent
- **Currency risk:** For events where vendors bill in a different currency than the budget, lock contracts at booking. Budget 3-5% for exchange rate fluctuation.
