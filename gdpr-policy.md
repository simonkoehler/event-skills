# Collection-Level GDPR Policy

## Purpose

This is the single source of truth for GDPR rules shared across all event skills. Individual skill-level GDPR files (e.g., `event-registration/references/gdpr-registration.md`) handle domain-specific details. This document defines the baseline that every skill must follow.

---

## Definition of Personal Data in Event Context

| Category | Examples | Classification |
|---|---|---|
| Standard personal data | Name, email, company, job title, country, phone number | Personal data |
| Special category data | Dietary requirements, accessibility needs, health information | Article 9 — requires explicit consent |
| Digital identifiers | IP addresses, device IDs, event app user profiles | Personal data (per GDPR Recital 30) |
| Behavioural data | Badge scans, session attendance, app usage | Personal data if linked to an individual |
| Visual data | Photos, video recordings, CCTV footage | Personal data if individuals are identifiable |

## Unified Consent Framework

### When each lawful basis applies

| Scenario | Lawful Basis | Requirements |
|---|---|---|
| Event confirmation and logistics emails | Contract performance | No separate consent needed |
| Safety, access control, incident response | Legitimate interest | Document the interest assessment |
| Post-event feedback surveys | Legitimate interest | Must be event-related, not marketing |
| Marketing emails, newsletters, save-the-dates | Consent (double opt-in) | Separate checkbox, no pre-ticking |
| Sponsor data sharing | Explicit consent | Per-sponsor disclosure |
| Special category data (dietary, accessibility, health) | Explicit consent | Separate from general registration consent |
| Photography and video for marketing use | Consent or legitimate interest with opt-out | Signage + opt-out badges required |

### Granular consent checkboxes (minimum set)

1. Event operational communications (may be implied by registration)
2. Marketing communications from the organizer
3. Data sharing with named sponsors
4. Photography and video consent (or opt-out mechanism)
5. Post-event marketing use of attendee data

No pre-ticked boxes. Consent withdrawal must be as easy as giving consent. Record timestamp, IP, and exact wording for every consent captured.

Double opt-in is required for marketing emails when targeting German attendees (BGH case law).

---

## Data Retention Periods

| Phase | Scope | What is retained |
|---|---|---|
| During event | Full operational access | All collected data needed for delivery |
| T+0 to T+3 months | Analytics, follow-up, reconciliation | Registration data, feedback, financial records |
| T+3 to T+12 months | Anonymized analytics only | Aggregated attendance, satisfaction scores, budget data |
| After 12 months | Delete or anonymize all personal data | No identifiable records retained |

### Exceptions

| Data Type | Retention | Rationale |
|---|---|---|
| Special category data (dietary, accessibility) | 30 days post-event | No operational need after event |
| Declined CFP proposals | 6 months post-decision | Allow re-submission for future events |
| Financial records (invoices, payments) | Per local tax law (7-10 years in EU) | Legal obligation — minimize personal data to invoice-level |
| Marketing consent records | Active period + 3 years after withdrawal | Proof of lawful basis if challenged |
| Speaker agreements and logistics data | 24 months post-event | Contractual liability and dispute resolution |
| Incident reports containing personal data | 36 months post-event | Liability and insurance requirements |

---

## Cross-Skill Data Flow Rules

Data passed between skills must not exceed what the receiving skill needs (data minimization principle).

| From | To | Permitted Data | Conditions |
|---|---|---|---|
| event-planner | event-registration | Attendee count, event type, dates | No personal data |
| event-registration | event-logistics | Dietary counts (aggregated) | Per-person details only if operationally required by caterer |
| event-registration | event-sponsors | Attendee name, email, company, job title | ONLY if attendee consented to sponsor data sharing |
| event-speakers | event-content | Speaker bio, headshot, session abstract | Speaker must consent to publication |
| event-exhibition | CRM export | Lead name, email, company, scan timestamp | Consent captured at point of badge scan |
| event-registration | event-content | First name, email (for merge fields) | Marketing emails require marketing consent |

No skill may request or forward data beyond what is listed here without updating this policy.

---

## Vendor and Third-Party Requirements

Every vendor handling attendee personal data must sign a **Data Processing Agreement (DPA)** before receiving any data. No exceptions.

| Vendor Type | Key DPA Clause | Additional Requirement |
|---|---|---|
| Registration platform | Data residency, sub-processor list | EU hosting preferred; transfer impact assessment if non-EU |
| Badge scanning vendor | Data ownership stays with organizer | Vendor deletes all data within 30 days post-event |
| Virtual / hybrid platform | Data residency, recording storage | Verify where session recordings and chat logs are stored |
| Photographer / videographer | Image ownership, usage rights | Release forms for identifiable individuals; crowd notice signage |
| Catering company | Purpose limitation to dietary fulfilment | No retention of dietary data beyond event delivery |
| Event app provider | Analytics scope, data deletion timeline | Individual-level tracking requires in-app consent |

---

## Rights and Compliance

### Data subject rights

Every skill that collects personal data must support all of the following:

- **Access** — Provide a copy of all personal data held, within 30 days of request
- **Rectification** — Correct inaccurate data promptly
- **Erasure** — Delete personal data when requested, unless legal retention applies
- **Portability** — Export data in a structured, machine-readable format
- **Restriction** — Stop processing while a dispute is resolved
- **Objection** — Honour objections to legitimate-interest processing

### Compliance requirements

- Privacy notice must be accessible at the point of registration, before data submission
- Data Protection Officer (DPO) contact must appear in all event communications that process personal data
- Data breach notification: within 72 hours to the supervisory authority (Article 33)
- Maintain a Record of Processing Activities (ROPA) covering all event data processing
- For events with attendees from multiple jurisdictions: apply the strictest applicable standard

---

## Sponsor Data-Sharing Consent Workflow

### End-to-End Process

1. **Registration form design:** Add individual checkboxes per sponsor tier that promises attendee data. Never bundle multiple sponsors into one checkbox. Wording: "I agree to share my name, email, company, and job title with {{sponsor_name}} for follow-up communication about their products and services."
2. **Late sponsor addition:** If a new sponsor is added after registration opens, add their checkbox to the form immediately. For already-registered attendees: send a separate consent email before sharing any data. Never retroactively apply consent.
3. **Consent tracking:** Record per-attendee, per-sponsor: timestamp, IP address, exact checkbox wording, consent version.
4. **Data delivery to sponsors:** Only after event. Format: CSV with consented attendees only. Include only the fields specified in the consent text. Deliver within 5 business days post-event. Sponsors must confirm DPA is signed before receiving data.
5. **Withdrawal handling:** If an attendee withdraws consent before data delivery, remove them from the export. If after delivery, notify the sponsor to delete that attendee's data.

### Practical Example

Event with 500 attendees, 3 sponsor tiers (Platinum, Gold, Silver):
- Platinum (2 sponsors): gets attendee data → 2 separate checkboxes on registration form
- Gold (5 sponsors): gets session attendance data only → 1 checkbox ("share my session attendance with Gold sponsors")
- Silver (10 sponsors): no data access → no checkbox needed
- Result: Registration form has 3 consent checkboxes for sponsor data sharing
- Post-event: Platinum Sponsor A receives CSV of ~180 attendees who checked their specific box (est. 35-40% opt-in rate)

---

## Controller, Processor, and DPO Framework

### Role Definitions

| Role | Who | Responsibilities |
|---|---|---|
| Data Controller | Event organizer | Determines purposes and means of processing. Liable for compliance. |
| Data Processor | Registration platform, event app, badge vendor, virtual platform | Processes data on behalf of the controller. Bound by DPA. |
| Sub-Processor | Cloud hosting provider used by a processor, email delivery service | Must be disclosed in processor's sub-processor list. Controller has right to object. |
| Joint Controller | Organizer + sponsor (when co-hosting with shared data decisions) | Requires joint controller agreement defining responsibilities per Article 26. |

### DPO Identification

- **When required:** Events processing data of >5,000 attendees, or any event where special category data (health, dietary, accessibility) is collected systematically
- **How to identify:** DPO contact (name or role + email) must appear in: privacy notice, registration confirmation email, event website footer, on-site signage near registration desk
- **Format:** "Data Protection Officer: {{dpo_email}} | {{organizer_name}}, {{organizer_address}}"

### Data Breach Notification

**72-hour procedure (Article 33):**

1. **T+0h (Discovery):** Identify scope — what data, how many records, what happened
2. **T+0-4h:** Contain the breach. Disable affected systems if needed. Preserve evidence.
3. **T+4-24h:** Assess risk to data subjects. Classify severity:
   - **Low:** Anonymized data, encrypted data with key intact, no personal data affected
   - **Medium:** Names + emails exposed, limited records (<100)
   - **High:** Special category data, financial data, large-scale exposure (>100 records)
4. **T+24-72h:** Notify supervisory authority (mandatory for Medium and High). Use authority's breach notification form. Include: nature of breach, categories of data, approximate number of records, DPO contact, measures taken.
5. **If High risk:** Notify affected data subjects without undue delay (Article 34). Clear language, no jargon. Explain what happened, what data was affected, what you're doing, what they should do.

**Template fields for breach notification:**
- Date and time of breach discovery
- Nature of the breach (unauthorized access / data loss / disclosure)
- Categories of personal data affected
- Approximate number of data subjects affected
- Name and contact of DPO
- Likely consequences of the breach
- Measures taken or proposed to address the breach

### Multi-Jurisdiction Events

When attendees come from multiple countries:
- **Rule:** Apply the strictest applicable standard. In practice, this is usually GDPR.
- **EU + US attendees:** Apply GDPR to all. CAN-SPAM is less strict — GDPR compliance automatically satisfies CAN-SPAM.
- **EU + APAC attendees:** Apply GDPR as baseline. Check if local laws (PDPA Singapore, APPI Japan) have additional requirements.
- **Supervisory authority:** File with the authority where the organizer is established (lead supervisory authority principle, Article 56).
