---
name: event-sponsors
description: >
  For B2B event organizers: create and sell sponsorship packages for YOUR B2B event. Manages
  programs from the organizer's perspective — designing tiers, pricing, tracking fulfillment.
  B2B context only — not for cause-based galas, charity fundraisers, or sports/entertainment sponsorships.
  Generates tier structures, prospectus documents, exhibitor guides, outreach emails,
  fulfillment trackers, and sponsor ROI reports. Triggers for creating sponsorship
  packages, writing a prospectus, designing tiers, pricing levels, creating exhibitor
  guides, writing outreach emails, tracking deliverables, planning activations, or
  reporting on sponsor ROI. Also handles revenue forecasting, retention strategy,
  in-kind valuation, and communication sequences. This is the organizer side — for
  evaluating whether to sponsor someone else's event, use the event-exhibition skill instead.
  Part of the event-management-skills collection.
version: 1
version_date: 2026-03-28
io_schema: references/io-schema.json
---

# Event Sponsors

Design and manage sponsorship programs that generate revenue and deliver measurable value to sponsors. Produces tier structures, prospectus documents, and fulfillment frameworks.

## When This Skill Activates

- Create sponsorship tiers and packages
- Write a sponsorship prospectus or pitch deck outline
- Design exhibitor guide with booth specifications
- Write sponsor outreach and communication emails
- Track sponsor deliverables and fulfillment
- Plan sponsor activations (booths, sessions, branding)
- Calculate and report sponsor ROI
- Forecast sponsorship revenue

**Scope:** B2B tiered sponsorship with marketing-driven benefits (brand exposure, lead access, speaking slots). For non-B2B sponsorship models (table sponsorships at galas, cause-based CSR sponsorships, naming rights), adapt the tier framework or design custom packages manually.

**This skill does NOT:** Write polished prospectus copy or sponsor pitch emails (use the event-content skill for final copy), track sponsor payments in the budget (use the event-budget skill), or manage sponsor booth setup on event day (use the event-logistics skill). Designs the sponsorship program — packages, pricing, fulfillment, and reporting.

## Step 1: Gather Context

**Required (ask if not provided):**

| Parameter | Why it matters |
|---|---|
| Event type and scale | Determines sponsor value and package structure |
| Event format | In-person / virtual / hybrid — fundamentally changes package benefits and pricing |
| Expected attendees | Primary value driver for sponsors (audience size) |
| Audience profile | Sponsor targeting depends on who attends |
| Event date(s) | Sets outreach and fulfillment timeline |
| Number of sponsor tiers | Typically 3-4 (Platinum/Gold/Silver/Bronze) |

**Optional:**

| Parameter | Default |
|---|---|
| Revenue target from sponsorship | Estimate from event-budget benchmarks |
| Existing sponsor relationships | Assume all-new unless stated |
| Exhibitor component | Include if trade show or expo |
| Format | In-person packages differ from virtual/hybrid |

## Step 2: Route to Output

**Format-specific routing:**
- **In-person:** Full physical benefits (booth space, stage branding, signage, printed materials)
- **Virtual:** Digital benefits (virtual booth, banner ads, sponsored sessions, branded emails, attendee data)
- **Hybrid:** Dual-benefit packages combining physical and digital, priced at in-person + 20-30% premium

| User asks about... | Generate... |
|---|---|
| Packages, tiers, pricing | Output A: Tier Structure |
| Prospectus, pitch document | Output B: Prospectus |
| Exhibitor specs, booth info | Output C: Exhibitor Guide |
| Outreach, communication | Output D: Sponsor Emails |
| Tracking, fulfillment | Output E: Fulfillment Tracker |
| ROI, reporting | Output F: Sponsor Report |

## Step 3: Generate Outputs

### GDPR Compliance (EU events)

If event location is EU/EEA: load `references/gdpr-sponsors.md` and apply all consent and data-sharing requirements to sponsor packages and attendee data deliverables.

### Output A: Sponsorship Tier Structure

Load from `references/sponsorship-tiers.md`.

**Standard 4-tier model:**

| Benefit | Platinum | Gold | Silver | Bronze |
|---|---|---|---|---|
| Slots available | 1-2 | 3-5 | 5-10 | Unlimited |
| Price (% of total event budget) | 15-25% | 8-15% | 3-8% | 1-3% |
| Logo on website | Top placement | Second row | Third row | Listed |
| Logo on materials | All printed + digital | Programs + signage | Signage only | Listed |
| Social media mentions | 5+ dedicated posts | 3 dedicated posts | 1 dedicated post | Tag in group post |
| Email mentions | Dedicated feature | Included in email | Logo in footer | — |
| Comp tickets | 8-10 | 5 | 3 | 1 |
| Booth space | Premium location, large | Standard, good | Small/table | — |
| Speaking slot | Keynote or panel | Breakout session | Lightning talk | — |
| Branding on stage | Stage backdrop | Side banner | — | — |
| Attendee data | Full list (with consent) | Leads from booth | Leads from booth | — |
| Networking access | VIP dinner + reception | VIP reception | Reception | Reception |

Pricing scales with event size and budget. Platinum should be 2-3× Gold price (exclusivity premium). Total sponsorship revenue target: 30-50% of event budget. Use the percentage-of-budget model in `references/sponsorship-tiers.md` to calculate tier pricing in the user's currency.

### Output B: Sponsorship Prospectus

Document structure: event overview and value proposition → audience profile with demographics → sponsorship tiers with benefits matrix → add-on sponsorship opportunities (named sessions, networking, content, WiFi, badges) → past event data and testimonials → logistics and deadlines → contact information.

### Output C: Exhibitor Guide

For trade shows or events with exhibition component. Includes: booth specifications (size, included items, electrical, WiFi), move-in/move-out schedule, shipping and freight instructions, badge allocation, lead scanning setup, rules and regulations, venue map with booth numbers, staff hotel and parking info, emergency contacts.

### Output D: Sponsor Communication Sequence

6-email sequence: initial outreach (T-9 months), follow-up (T-8 months), package details (upon interest), confirmation and onboarding (upon signing), fulfillment check-in (T-2 months), pre-event logistics (T-2 weeks). Each with subject line, body, and CTA.

### Output E: Fulfillment Tracker

Matrix tracking all sponsor deliverables: logo received, bio/description received, session content submitted, booth setup confirmed, social posts published, email mentions sent, signage produced. Status per sponsor: Pending / Received / Complete / Overdue.

### Output F: Sponsor ROI Report

Post-event report per sponsor: logo impressions, social mentions and reach, email exposure, booth traffic, leads collected, session attendance (if speaking), overall event satisfaction scores. Template customized by tier.

## Step 3.5: Verification Gate

1. **Tier differentiation:** Clear value gap between each tier (sponsors must see why upgrading is worth it)
2. **Capacity limits:** Platinum limited to 1-2 (exclusivity = value), total booth count ≤ venue capacity
3. **Pricing math:** Tier prices × expected sponsor count = revenue target is achievable
4. **Consent compliance:** Attendee data sharing requires explicit consent per GDPR for EU events
5. **Fulfillment feasibility:** Are all promised deliverables actually achievable (e.g., don't promise 10 social posts if the content calendar can't support it)
6. **Writing quality:** Sponsor communication drafts (outreach emails, follow-up sequences) pass anti-AI writing check — no filler phrases, varied rhythm, professional tone

## Skill Interface

**Accepts input from:**
- event-planner: Event profile (event_type, attendee_count, audience_profile, dates)
- event-budget: Revenue targets (total_sponsorship_target, pricing_guidance)

**Produces output for:**
- event-content: Sponsor details (sponsor_names, tier_levels, benefits, prospectus_outline)
- event-budget: Sponsorship revenue (tier_pricing, expected_sponsors, confirmed_revenue)
- event-logistics: Exhibitor requirements (booth_count, booth_sizes, power_needs, load_in_requirements)

## Step 4: Connect to Specialized Skills

- **Sponsor revenue modeling:** "For revenue projections and pricing strategy, use the event-budget skill"
- **Sponsor pitch copy:** "For prospectus writing and outreach emails, use the event-content skill"
- **Exhibitor logistics:** "For booth setup and floor plan, use the event-logistics skill"
- **Sponsor data sharing compliance:** "For GDPR rules on sponsor data sharing and lead capture, load `references/gdpr-sponsors.md`"

## Output Format

- Tier structures: benefits matrix (rows = benefits, columns = tiers) with pricing as % of event budget
- Prospectus documents: structured sections (event overview, audience, tiers, add-ons, proof, logistics, CTA)
- Exhibitor guides: booth specs, move-in/move-out schedules, shipping, rules, lead-scanning setup
- Outreach sequences: 6-email template set with subject line, body, CTA, send timing
- Fulfillment trackers: per-sponsor matrix of deliverables with status (Pending / Received / Complete / Overdue)
- Sponsor ROI reports: per-sponsor, customised to their package and benefits
- Currency: user's currency throughout. Ask if not specified.

## Examples

### Example 1: 4-tier sponsorship program
**User says:** "Create sponsorship packages for our 800-person tech conference."
**Response:** 4-tier structure with pricing ratios (Platinum 100%, Gold 48%, Silver 24%, Bronze 8% of top tier), benefits matrix, add-on opportunities, revenue projection.

### Example 2: Sponsorship prospectus
**User says:** "Write a sponsorship prospectus for our 600-person Industry Summit. Target: €80K sponsor revenue, 4 tiers."
**Response:** Complete prospectus document with event value proposition, audience demographics, tier benefits, past event proof points, logistics, and CTA.

### Example 3: Exhibitor guide
**User says:** "Create the exhibitor guide for our trade show. 40 exhibitors, 3 days."
**Response:** Full exhibitor guide with booth specs, move-in schedule, freight instructions, rules, staff info, venue map description, and lead scanning setup.

## Edge Cases

- **First-time event (no history):** Base prospectus on industry benchmarks and audience promise. Offer introductory pricing (20-30% below established event rates). Promise transparent post-event reporting.
- **Sponsor wants custom package:** Generate a "build your own" menu with à la carte pricing for individual benefits.
- **Virtual event sponsorship:** Replace physical benefits (booth, signage) with digital: virtual booth in event platform, banner ads on session pages, sponsored session slot, attendee data (with consent), branded emails, logo in virtual lobby. Price virtual tiers at 50-60% of in-person equivalent.
- **Hybrid event sponsorship:** Offer dual-benefit packages: physical booth + virtual booth, on-stage branding + digital branding, in-person attendee data + virtual attendee data. Price at in-person rate + 20-30% for the virtual component. Allow sponsors to choose in-person-only or hybrid packages.
- **In-kind sponsorship:** Create valuation framework for non-cash contributions (venue, catering, technology, media). Value at market rate minus 20-30%.
- **Sponsor retention (recurring event):** Generate renewal email with prior-year metrics, loyalty discount (5-10%), and early access to premium tiers.
