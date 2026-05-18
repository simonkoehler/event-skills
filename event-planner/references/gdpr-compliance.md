# GDPR & Data Protection for Events

Load this reference when the event location is in the EU, EEA, UK, or Switzerland, OR when attendees from these regions are expected.

## Table of Contents

1. [Core GDPR Requirements for Events](#core-gdpr-requirements-for-events)
2. [Consent Collection Rules](#consent-collection-rules)
3. [Privacy Notice Requirements](#privacy-notice-requirements)
4. [Data Minimization](#data-minimization)
5. [Retention Periods](#retention-periods)
6. [DACH-Specific Requirements](#dach-specific-requirements)
7. [Compliance Checklist](#compliance-checklist)
8. [Common GDPR Failures at Events](#common-gdpr-failures-at-events)

---

## Core GDPR Requirements for Events

### Lawful Basis for Processing

Each type of data processing at an event needs a lawful basis:

| Data Processing Activity | Recommended Lawful Basis | Notes |
|---|---|---|
| Registration data (name, email, ticket) | Contract performance or legitimate interest | Essential for event delivery |
| Marketing emails to registrants | Explicit opt-in consent | Separate checkbox required |
| Post-event follow-up emails | Legitimate interest (if event-related) or consent (if marketing) | Distinguish between event content and marketing |
| Photo/video of attendees | Legitimate interest with opt-out, or consent | Provide opt-out badges or zones |
| Lead scanning at exhibitor booths | Consent — per exhibitor | Each exhibitor needs separate consent |
| Sharing attendee list with sponsors | Explicit consent | Must be disclosed and consented to separately |
| Dietary/accessibility requirements | Consent (special category data) | Collect only what is needed, delete promptly post-event |
| Event app usage analytics | Legitimate interest or consent | Depends on data granularity |

## Consent Collection Rules

- Consent must be freely given, specific, informed, and unambiguous
- Marketing consent must be unbundled from registration — use a separate checkbox
- No pre-ticked boxes — ever. This is a hard GDPR requirement (Article 7, Recital 32)
- Consent withdrawal must be as easy as giving it (unsubscribe link in every email)
- Record when, how, and what was consented to (timestamp, IP, specific wording)
- For minors (<16 in most EU states, <14 in Austria): parental consent required
- Double opt-in recommended for marketing (required in Germany by case law)

### Consent Wording Examples

**Registration marketing consent:**
"I agree to receive marketing communications about future events from [Organization]. I can unsubscribe at any time."

**Sponsor data sharing consent:**
"I agree that my registration details (name, email, company, job title) may be shared with the following event sponsors: [list sponsors]. Each sponsor will contact me independently and I can opt out from each."

**Photo/video consent (registration form):**
"This event will be photographed and recorded. Images may be used in post-event communications, social media, and marketing materials. If you prefer not to be photographed, please collect a 'no photo' badge at registration."

## Privacy Notice Requirements

Include in the registration form or link prominently from it. Must contain:

1. **Data controller identity**: Organization name, address, contact email
2. **Data Protection Officer contact**: If applicable (required for public authorities, large-scale processing)
3. **What data is collected**: List all fields and their purpose
4. **Why data is collected**: Specific purposes (event delivery, marketing, sponsor sharing)
5. **Who receives the data**: Internal teams, sponsors, exhibitors, platform providers — be explicit
6. **Legal basis**: Contract performance, legitimate interest, or consent (per processing activity)
7. **Retention period**: How long data is kept and when it is deleted
8. **International transfers**: If data leaves the EEA (e.g., US-based event platform)
9. **Attendee rights**: Right to access, rectification, erasure, restriction, portability, objection
10. **Right to withdraw consent**: How and where to withdraw
11. **Right to complain**: Contact details for the relevant supervisory authority

## Data Minimization

Collect only what is necessary for the event. More fields = more friction = lower conversion AND more compliance risk.

**Minimum required fields (any event):**
- Full name
- Email address
- Ticket/pass type

**Reasonable additional fields (conferences/trade shows):**
- Company name
- Job title/role
- Country

**Collect only if genuinely needed:**
- Phone number (only if SMS updates are part of the event communication plan)
- Dietary requirements (only if catering is provided — delete within 30 days post-event)
- Accessibility needs (only if venue has specific accommodations to plan)
- T-shirt size (only if swag is provided)

**Never require for basic registration:**
- Company revenue/size (use a post-registration survey instead)
- Personal social media handles
- Date of birth (unless age verification is legally required)

## Retention Periods

Recommended defaults — document these in your privacy notice:

| Data Type | Retention Period | Rationale |
|---|---|---|
| Registration data (name, email, company) | 12 months post-event, or until next edition | Needed for follow-up and future event invitations |
| Financial records (invoices, payments) | Per local tax law (7-10 years in most EU countries) | Legal obligation |
| Marketing consent records | As long as consent is active + 3 years after withdrawal | Prove consent was given if challenged |
| Dietary/accessibility requirements | 30 days post-event | No longer needed after event delivery |
| Session recordings with attendee participation | Obtain separate recording consent; retain per content strategy | Distinct from general event consent |
| Badge scan data shared with sponsors | 6 months maximum | Enough for sponsor follow-up cycle |
| Event app usage data | 6 months post-event | Enough for analytics and reporting |
| Attendee feedback/survey responses | 12 months post-event | Needed for ROI reporting and future planning |

## DACH-Specific Requirements

### Germany (GDPR + BDSG + TTDSG)

- **BDSG (Bundesdatenschutzgesetz):** Supplements GDPR with stricter rules on employee data processing. For internal events (SKOs, town halls), the works council (Betriebsrat) may need to be informed or consulted if employee data is processed in new ways.
- **TTDSG (Telekommunikation-Telemedien-Datenschutzgesetz):** Regulates cookie consent and tracking technologies. Event websites and apps must obtain affirmative consent before setting non-essential cookies. A cookie banner with "accept all" as the only prominent option is non-compliant.
- **Double opt-in:** German case law effectively requires double opt-in for email marketing (Bundesgerichtshof). Send a confirmation email after consent checkbox is ticked, subscriber confirms by clicking a link.
- **Data Protection Officer (DPO):** Required if the organization employs 20+ people regularly engaged in automated data processing.
- **Supervisory authority:** Each Bundesland has its own. The relevant authority is based on where the data controller is established, not where the event takes place.

### Austria (GDPR + DSG)

- **DSG (Datenschutzgesetz):** Largely mirrors GDPR but includes specific provisions for research, journalism, and artistic expression.
- **Age of consent for information society services:** 14 years (lower than the GDPR default of 16).
- **DPO requirement:** Same as GDPR default — required for large-scale processing of special categories or systematic monitoring.
- **Supervisory authority:** Österreichische Datenschutzbehörde (DSB).

### Switzerland (FADP / nDSG)

- **FADP (Federal Act on Data Protection):** Revised in September 2023. Largely GDPR-aligned but operates under a separate legal framework.
- **Key differences from GDPR:** Data breach notification within 72 hours to the FDPIC (Federal Data Protection and Information Commissioner). No requirement for a DPO, but organizations can appoint one voluntarily. Consent requirements are similar but not identical — the standard is "informed" rather than "explicit."
- **Cross-border transfers:** Switzerland has its own adequacy assessment framework. The EU considers Switzerland adequate, but Swiss organizations must independently assess adequacy when transferring data abroad.
- **Supervisory authority:** FDPIC (Eidgenössischer Datenschutz- und Öffentlichkeitsbeauftragter).

## Compliance Checklist

Include relevant items in the event Master Checklist based on event location:

### Pre-Registration (Planning Phase)
- [ ] Privacy notice drafted and reviewed by legal/DPO
- [ ] Privacy notice linked prominently from registration form
- [ ] Marketing consent checkbox is separate and not pre-ticked
- [ ] Sponsor data sharing disclosed and consented to separately (if applicable)
- [ ] Double opt-in configured for marketing emails (required in Germany)
- [ ] Data processing agreements (DPA) signed with all vendors handling attendee data
- [ ] Registration platform GDPR compliance verified (where is data hosted? Is there a DPA?)
- [ ] International data transfer assessment completed (if platform is US-based)
- [ ] Cookie consent mechanism implemented on event website (required by TTDSG in Germany)

### Pre-Event (Execution Prep Phase)
- [ ] Photo/video consent mechanism defined (opt-out badges, signage, or consent form)
- [ ] "No photo" badges or lanyards prepared for attendees who opt out
- [ ] Badge scanning consent mechanism defined for exhibitor lead capture
- [ ] Data retention policy defined and documented
- [ ] Process for handling data subject access requests (DSARs) documented
- [ ] Staff briefed on data handling procedures (who can access what, how to respond to attendee questions)

### Post-Event
- [ ] Data deletion schedule set and tracked
- [ ] Dietary/accessibility data deleted within 30 days
- [ ] Sponsor data sharing limited to consented scope
- [ ] Marketing list cleaned (unsubscribes processed, bounces removed)
- [ ] Data retained only for documented purposes and defined periods

## Common GDPR Failures at Events

Avoid these frequent compliance failures:

1. **Sharing the full attendee list with all sponsors by default.** Each sponsor sharing needs separate, explicit consent.
2. **Pre-ticked marketing consent boxes.** Always unchecked by default.
3. **No privacy notice on the registration form.** Must be present or prominently linked before data is submitted.
4. **Photographing attendees without notice.** Post signage at minimum; provide opt-out badges for higher compliance.
5. **Using a US-based registration platform without a DPA and transfer impact assessment.** Ensure GDPR-compliant data processing agreement is in place.
6. **Keeping attendee data indefinitely "for future events."** Define and enforce retention periods.
7. **Collecting unnecessary data fields because "marketing wants it."** Each field must have a documented purpose. Collect optional data via post-registration survey instead.
8. **No process for DSARs.** If an attendee asks for their data or requests deletion, you must respond within 30 days.
