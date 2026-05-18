---
name: event-registration
description: >
  Design and manage registration workflows for B2B events: registration form design,
  ticket tier structures, pricing strategies, attendee data management, check-in
  processes, and attendee communication flows. Generates registration page specs,
  ticket tier matrices, confirmation email sequences, attendee data schemas, badge
  designs, and check-in plans. Use this skill whenever someone asks to set up event
  registration, design a registration form, create ticket tiers, plan check-in, manage
  attendee data, design badges, process attendee CSV files, set up early-bird pricing,
  plan group registration, or handle waitlist management. Also triggers for GDPR-
  compliant registration, attendee segmentation, no-show management, and capacity
  planning. Part of the event-management-skills collection.
version: 1
version_date: 2026-03-28
io_schema: references/io-schema.json
---

# Event Registration

Design registration workflows that maximize conversions and minimize friction. Produces form specs, pricing structures, and check-in operations — ready to implement in any platform.

## When This Skill Activates

- Design a registration form or page
- Create ticket tiers and pricing strategy
- Plan early-bird, group, and promotional pricing
- Design check-in and badge collection process
- Manage attendee data (schemas, imports, exports)
- Set up confirmation and reminder email triggers
- Handle waitlist and capacity management
- Ensure GDPR-compliant data collection

**This skill does NOT:** Write registration page marketing copy (use the event-content skill), plan registration promotion campaigns (use the event-marketing skill), or manage physical check-in desk logistics on event day (use the event-logistics skill). Designs the registration system — forms, tiers, data, and workflows.

## Step 1: Gather Context

**Required (ask if not provided):**

| Parameter | Why it matters |
|---|---|
| Event type | Shapes registration flow and data needs |
| Event format | In-person / virtual / hybrid — changes form fields, confirmation content, and check-in process |
| Expected attendees | Capacity planning and check-in staffing |
| Ticket model | Free / paid / invite-only — changes the entire flow |
| Event date(s) | Sets pricing timeline |
| Location (EU or not) | Determines GDPR requirements |

**Optional:**

| Parameter | Default |
|---|---|
| Registration platform | Platform-agnostic specs |
| Ticket tiers | Standard 3-tier recommendation |
| Pricing | Use event-budget benchmarks; use user's currency |
| Segments | General, VIP, speaker, sponsor, press |

## Step 2: Route to Output

**Format-specific routing:**
- **In-person:** Form includes dietary requirements, accessibility needs, parking; confirmation includes venue directions; check-in with physical badges
- **Virtual:** Form includes timezone, platform preferences; confirmation includes platform access link and tech requirements; no physical check-in
- **Hybrid:** Attendance mode choice (in-person / virtual) as required field, then conditional fields per mode; separate confirmation emails per mode; dual check-in (physical + virtual login)

| User asks about... | Generate... |
|---|---|
| Form fields, page UX | Output A: Form Specification |
| Tiers, early-bird, discounts | Output B: Pricing Structure |
| Data schemas, GDPR, CSV | Output C: Data Management |
| Check-in, badges, on-site | Output D: Check-In Operations |
| Confirmations, reminders | Output E: Communication Triggers |

## Step 3: Generate Outputs

**Gated-output handling — MVA + unlock matrix.** When core context is missing (capacity, GDPR consent posture, ticket model), produce one Minimal Viable Artifact (typically Output A: Registration Form Specification with the most-likely B2B assumptions) and emit an unlock matrix:

```
| Question | Unlocks |
|---|---|
| Ticket model (free / paid / invite-only) | Pricing structure, comp allocation, payment flow |
| EU/EEA event? | GDPR consent text, double opt-in for DE/AT, lawful-basis annotations |
| Capacity hard-cap or soft-cap? | Waitlist logic, overbooking ratio, sold-out trigger |
| Hybrid / virtual / in-person? | Conditional fields, attendance-mode flow, badge vs. login |
```

Users with partial answers get partial artifacts immediately.

### Output A: Registration Form Specification

Load from `references/registration-flows.md`. Core principle: every additional field reduces conversions by up to 11%. Keep required fields to 5-7. Mobile-first design (55%+ register on mobile). Social proof near submit button.

**Standard fields:** First name, last name, email, company, job title, ticket type (required). Country, dietary requirements (recommended). Marketing consent, sponsor sharing consent (required for EU — separate checkboxes, never pre-ticked).

### Output B: Ticket Tier Structure

Load from `references/ticket-types.md`. Standard 3-tier model with price anchoring (highest first), "Most Popular" badge on middle tier, 20-25% minimum gap between tiers. Early-bird: 15-20% discount for first 20-25% of registrations. Group: 10-15% for 5+. Comp tickets: 10-15% of capacity for speakers, sponsors, VIPs. All pricing in the user's currency.

### Data Protection Compliance

For all events, apply baseline consent rules (opt-in marketing consent, unsubscribe links, data minimization). For EU/EEA events: load `references/gdpr-registration.md` and apply full GDPR requirements including double opt-in for DE/AT.

### Output C: Attendee Data Management

Load from `references/data-fields.md`. Standardized data schema with field types, sources, and retention periods. CSV import/export format compatible across platforms. GDPR rules for EU events: data minimization, separate marketing consent, double opt-in (Germany), defined retention, DSAR process.

### Output D: Check-In Operations

Badge specs (4"×3", name 24pt+, color-coded by attendee type, QR code). Staffing: 1 per 50-75 attendees at peak. Desk layout options (alphabetical or by ticket type). System failure backup (offline attendee list, blank badges).

### Output E: Registration Communication Triggers

Automated emails: confirmation (immediate), payment receipt (immediate), logistics prep (T-30), final reminder (T-7), day-of details (T-1), no-show follow-up (T+1), waitlist notification (when spot opens), cancellation confirmation (immediate).

## Step 3.5: Verification Gate

1. **Field count:** Required fields ≤ 7
2. **Consent compliance:** Marketing consent separate, unchecked (EU events)
3. **Pricing math:** Early-bird 15-20% below standard, tiers have 20%+ gaps, comps ≤ 15%
4. **Capacity:** Total tickets across tiers = venue capacity
5. **Data retention:** Every field has defined retention period

## Skill Interface

**Accepts input from:**
- event-planner: Event parameters (event_type, format, dates, attendee_count, ticket_model)
- event-budget: Pricing guidance (break_even_point, price_benchmarks, comp_allocation)
- event-marketing: Funnel targets (registration_target, conversion_benchmarks)

**Produces output for:**
- event-content: Registration details (ticket_tiers, pricing, registration_url, confirmation_fields)
- event-budget: Ticket revenue (tier_pricing, registrations_per_tier, comp_tickets)
- event-logistics: Attendee data (attendee_count, check_in_requirements, badge_specs)
- event-marketing: Registration metrics (current_registrations, conversion_rates, capacity_remaining)

## Step 4: Connect to Specialized Skills

- **Page copy:** "For registration page text, use the event-content skill"
- **Revenue modeling:** "For pricing strategy and projections, use the event-budget skill"
- **Check-in logistics:** "For on-site registration flow, use the event-logistics skill"
- **GDPR:** "For registration-specific data protection rules, load `references/gdpr-registration.md`"

## Output Format

- Form specifications: field-by-field table with type, required/optional, validation, GDPR notes
- Ticket tier structure: comparison matrix (rows = tiers, columns = benefits / price / capacity)
- Data schemas: field definitions with type, source, retention period
- Check-in operations: badge specs, staffing math, desk layout, system-failure backup
- Communication triggers: trigger event → email type → timing → segment table
- Currency: user's currency. Ask if not specified.

## Examples

### Example 1: Paid conference
**User says:** "Design registration for 500-person tech conference, 3 tiers."
**Response:** Form spec (6 fields), 3-tier pricing, GDPR consent (if EU), badge design, email trigger map.

### Example 2: Free meetup
**User says:** "Registration for free meetup, 150 limit."
**Response:** Simplified form (4 fields), waitlist at 150, overbooking recommendation (register 200 for 30-50% no-show rate), reminder sequence.

### Example 3: Data merge
**User says:** "Merge 3 Eventbrite CSVs (420 registrations total) for badge printing at our Berlin conference."
**Response:** Standardized schema mapping 12 Eventbrite fields to 6 badge fields. Dedup rules (email as primary key, 15-20 expected duplicates). Badge-ready CSV export sorted alphabetically.

## Edge Cases

- **Free event:** Skip pricing. Overbook 130-150% capacity (30-50% no-show rate).
- **Invite-only:** Unique invite codes per invitee. No public registration page.
- **Hybrid:** Separate paths for in-person and virtual — attendance mode as required field, conditional form fields per mode, separate confirmation emails, separate "Know Before You Go" content, and separate check-in processes.
- **Very large (2,000+) in-person:** On-site badge printing, express lanes, 30-min queue planning. **Virtual:** Platform capacity load testing, concurrent connection limits, chat moderation scaling, breakout room capacity planning.
- **Multi-day with day passes:** Day-selection field, per-day capacity tracking.
- **International:** Visa invitation letter field, country-specific dietary defaults.
- **Internal event (SKO, Town Hall, All-Hands):** No public registration page. Attendance managed via calendar invites from HR or leadership. Skip ticket pricing entirely. Badge generation from HR employee list, not registration form. If RSVP needed, use simple Yes/No/Remote form with 3 fields max (name, attendance mode, dietary).
- **Accessible registration:** Form must meet WCAG 2.1 AA. All fields need visible labels (not just placeholders). Error messages must be descriptive and associated with the field. Provide alternative registration method (email/phone) for users who cannot complete the online form. Include accessibility requirements question: mobility, visual, hearing, dietary — phrased as "To ensure the best experience, please let us know if you have any accessibility requirements."
- **Multi-city event (roadshow, tour):** Unified registration with city-selection field, or separate per-city pages linked from a hub. Per-city capacity tracking with cross-city waitlist overflow. Deduplicate registrants across cities. Consolidated attendee export with city column for analytics.
- **Combined event with sub-events (hackathon, awards dinner, workshops):** Add-on ticket model — main event registration plus optional sub-event add-ons with separate capacity limits. Per-sub-event waitlists. Conditional registration fields (e.g., hackathon: team name, skills; awards dinner: dietary requirements, plus-one).
