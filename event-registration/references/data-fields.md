Load this reference when managing attendee data schemas, configuring registration fields, or reviewing data compliance requirements.

# Data Fields & Compliance

## Attendee Data Schema

| Field | Type | Required | Source | Retention |
|---|---|---|---|---|
| registration_id | UUID | Auto | System | Event + 12 months |
| first_name | Text | Yes | Form | Event + 12 months |
| last_name | Text | Yes | Form | Event + 12 months |
| email | Email | Yes | Form | Until consent withdrawn |
| company | Text | Yes | Form | Event + 12 months |
| job_title | Text | Yes | Form | Event + 12 months |
| country | Text | Recommended | Form | Event + 12 months |
| ticket_type | Enum | Yes | Form | Event + 12 months |
| ticket_price | Currency | Auto | System | Per tax law (7-10 years) |
| registration_date | DateTime | Auto | System | Event + 12 months |
| payment_status | Enum | Auto | System | Per tax law |
| checked_in | Boolean | Auto | Check-in | Event + 12 months |
| check_in_time | DateTime | Auto | Check-in | Event + 12 months |
| dietary_requirements | Text | If catering | Form | 30 days post-event |
| accessibility_needs | Text | If relevant | Form | 30 days post-event |
| marketing_consent | Boolean | If EU | Form | As long as active |
| marketing_consent_date | DateTime | If EU | System | As long as active + 3 years |
| sponsor_sharing_consent | Boolean | If sponsors | Form | 6 months post-event |
| sessions_attended | Array | Auto | Scanning | Event + 12 months |

## CSV Export Format (Platform-Agnostic)

Standard header row for badge printing and data management:

```
registration_id,first_name,last_name,email,company,job_title,ticket_type,country,checked_in
```

### Platform Field Mapping

| Standard Field | Eventbrite | Cvent | Bizzabo | Sweap |
|---|---|---|---|---|
| first_name | First Name | FirstName | firstName | Vorname |
| last_name | Last Name | LastName | lastName | Nachname |
| email | Email | EmailAddress | email | E-Mail |
| company | Company | Company | company | Firma |
| job_title | Job Title | Title | jobTitle | Position |
| ticket_type | Ticket Type | RegType | ticketType | Ticketart |

## GDPR Quick Reference (EU Events)

For full GDPR guidance on lawful bases, DPIAs, and international transfers, use the event-planner skill.

**Registration-specific GDPR requirements:**

1. **Privacy notice:** Link from registration form before data submission
2. **Marketing consent:** Separate checkbox, unchecked by default, unbundled from registration
3. **Sponsor sharing:** Explicit consent per sponsor, not blanket "share with partners"
4. **Double opt-in:** Required for email marketing in Germany (BDSG case law)
5. **Data minimization:** Only collect what is necessary for event delivery
6. **Retention:** Define and enforce deletion schedule post-event
7. **Right to erasure:** Process for handling "delete my data" requests within 30 days
8. **Data processing agreements:** Signed with registration platform and all vendors handling attendee data

## Deduplication Rules

When merging data from multiple sources:

1. Match on email address (primary identifier)
2. If email matches but name differs: keep the most recent record
3. If same person registered twice: keep the highest-tier ticket
4. Flag duplicates for manual review rather than auto-deleting
5. Preserve all consent records (never delete consent evidence)
