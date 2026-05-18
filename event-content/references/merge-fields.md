# Merge Fields Reference

Load this reference when generating any content with personalization tokens. Use the platform-agnostic `{{field_name}}` syntax in all outputs. Users adapt to their platform using the mapping table below.

## Table of Contents

1. [Standard Merge Fields](#standard-merge-fields)
2. [Platform Syntax Mapping](#platform-syntax-mapping)
3. [GDPR-Related Fields](#gdpr-related-fields)

## Standard Merge Fields

### Contact Fields

| Field | Token | Description |
|---|---|---|
| First name | `{{first_name}}` | Attendee first name |
| Last name | `{{last_name}}` | Attendee last name |
| Full name | `{{full_name}}` | First + last name |
| Email | `{{email}}` | Attendee email address |
| Company | `{{company}}` | Attendee company/organization |
| Job title | `{{job_title}}` | Attendee job title |

### Event Fields

| Field | Token | Description |
|---|---|---|
| Event name | `{{event_name}}` | Official event name |
| Event date display | `{{event_date_display}}` | Formatted date (e.g., "October 15-16, 2026") |
| Event day of week | `{{event_day_of_week}}` | e.g., "Tuesday" |
| Event duration | `{{event_duration}}` | e.g., "2 days" |
| Venue name | `{{venue_name}}` | Full venue name |
| Venue address | `{{venue_address}}` | Street address |
| Venue city | `{{venue_city}}` | City name |
| Event URL | `{{event_url}}` | Main event website URL |
| Event hashtag | `{{event_hashtag}}` | Without # (skill adds # in social content) |
| WiFi network | `{{wifi_network}}` | Venue WiFi SSID |
| WiFi password | `{{wifi_password}}` | Venue WiFi password |

### Registration Fields

| Field | Token | Description |
|---|---|---|
| Registration link | `{{registration_link}}` | Direct registration URL |
| Ticket type | `{{ticket_type}}` | e.g., "VIP", "Standard", "Virtual" |
| Registration ID | `{{registration_id}}` | Unique confirmation number |
| Discount code | `{{discount_code}}` | Promo/early-bird code |
| Early-bird deadline | `{{early_bird_deadline}}` | Formatted deadline date |
| Days until event | `{{days_until_event}}` | Countdown number |
| Registered count | `{{registered_count}}` | Current registration total (social proof) |
| Seats remaining | `{{seats_remaining}}` | Remaining capacity |
| Expected attendees | `{{expected_attendees}}` | Target attendance number |

### Speaker & Session Fields

| Field | Token | Description |
|---|---|---|
| Speaker name | `{{speaker_name}}` | Full speaker name |
| Speaker title | `{{speaker_title}}` | Job title |
| Speaker company | `{{speaker_company}}` | Company name |
| Session title | `{{session_title}}` | Official session title |
| Session topic short | `{{session_topic_short}}` | Brief topic descriptor |
| Session time | `{{session_time}}` | Session start time |
| Session room | `{{session_room}}` | Room name/number |

### Post-Event Fields

| Field | Token | Description |
|---|---|---|
| Survey link | `{{survey_link}}` | Post-event survey URL |
| Recording link | `{{recording_link}}` | On-demand content URL |
| Slides link | `{{slides_link}}` | Slide deck download URL |
| Total attendees | `{{total_attendees}}` | Final attendance count |
| Total sessions | `{{total_sessions}}` | Number of sessions delivered |
| Total speakers | `{{total_speakers}}` | Number of speakers |
| Next event date | `{{next_event_date}}` | Next edition date |

### Sender Fields

| Field | Token | Description |
|---|---|---|
| Sender name | `{{sender_name}}` | Email sender name |
| Sender title | `{{sender_title}}` | Sender job title |
| Organization name | `{{organization_name}}` | Organizing company |
| Support email | `{{support_email}}` | Support/questions email |

---

## Platform Syntax Mapping

Users should replace `{{field_name}}` with their platform's syntax:

| Skill Token | HubSpot | Mailchimp | Brevo | Cvent |
|---|---|---|---|---|
| `{{first_name}}` | `{{contact.firstname}}` | `*\|FNAME\|*` | `{{ contact.FIRSTNAME }}` | Data tag: First Name |
| `{{last_name}}` | `{{contact.lastname}}` | `*\|LNAME\|*` | `{{ contact.LASTNAME }}` | Data tag: Last Name |
| `{{email}}` | `{{contact.email}}` | `*\|EMAIL\|*` | `{{ contact.EMAIL }}` | Data tag: Email |
| `{{company}}` | `{{contact.company}}` | `*\|COMPANY\|*` | `{{ contact.COMPANY }}` | Data tag: Company |
| `{{unsubscribe}}` | `{{unsubscribe_link}}` | `*\|UNSUB\|*` | `{{ unsubscribe }}` | Auto-included |

**Note:** Event-specific fields (event name, dates, venue) are typically not platform merge fields — they are static values in the email template. Only contact and registration fields need platform-specific merge syntax.

---

## GDPR-Related Fields

For EU/DACH events, include these in relevant communications:

| Field | Token | When to use |
|---|---|---|
| Unsubscribe link | `{{unsubscribe_link}}` | Every marketing email |
| Privacy policy link | `{{privacy_policy_link}}` | Registration confirmation, first email |
| Consent reference | `{{consent_date}}` | Compliance records |
| Data controller | `{{data_controller}}` | Privacy notice |

**Required footer for EU marketing emails:**
```
You're receiving this because you [registered for / expressed interest in] {{event_name}}.
[Unsubscribe]({{unsubscribe_link}}) | [Privacy Policy]({{privacy_policy_link}})
{{organization_name}} | {{organization_address}}
```
