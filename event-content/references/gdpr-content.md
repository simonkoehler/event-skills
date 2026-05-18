# GDPR for Event Content

Load this reference when generating content that contains or references personal data for EU/EEA events.

## Table of Contents

1. [Merge Fields and Consent](#merge-fields-and-consent)
2. [Photo and Video Content](#photo-and-video-content)
3. [Speaker Bio Publishing](#speaker-bio-publishing)
4. [Social Media and Tagging](#social-media-and-tagging)
5. [Survey and Feedback Content](#survey-and-feedback-content)
6. [Content GDPR Checklist](#content-gdpr-checklist)

---

## Merge Fields and Consent

Not all merge fields require the same level of consent. Distinguish between data used for event delivery (contract performance) and data used for marketing (consent required).

| Merge Field | Lawful Basis | Notes |
|---|---|---|
| `{{first_name}}`, `{{last_name}}` | Contract performance | Necessary for event communications |
| `{{email}}` | Contract performance | Delivery address for event info |
| `{{company}}`, `{{job_title}}` | Contract performance | Standard attendee context |
| `{{registration_link}}` | Contract performance | Event access |
| `{{dietary_requirements}}` | Explicit consent | Special category — never include in marketing emails |
| `{{sponsor_name}}` in attendee email | Requires sponsor-sharing consent | Only if attendee opted in to sponsor communications |

**Rules for merge field use:**
- Event confirmation and logistics emails: all standard fields are fine (contract performance)
- Marketing emails (save-the-date, promotional, next-edition): require marketing consent
- Sponsor-featured emails: require sponsor-sharing consent from the attendee
- Never use dietary, accessibility, or other special category data in email content
- Post-event survey emails: legitimate interest for event-related surveys, consent for marketing surveys

## Photo and Video Content

Content repurposing from event recordings and photography involves personal data processing.

**Session recordings:**
- Speaker consent for recording must be obtained before the event (see event-speakers GDPR reference)
- Attendees visible in session recordings: inform via event signage and registration privacy notice
- Before publishing clips on social media: verify speaker recording consent covers social distribution
- Blurring or cropping may be needed for attendees who opted out of photography

**Event photography:**
- Group/crowd photos in public event spaces: legitimate interest with opt-out mechanism
- Individual portraits or identifiable close-ups: consent required before publishing
- Speaker presentation photos: covered by speaker agreement if photography clause included
- Attendee testimonial photos: explicit consent per use case (website, social, print)

**Content repurposing timeline:**
- Week 1 (momentum): Use pre-approved speaker photos, crowd shots (no close-ups of identifiable non-consenting attendees)
- Weeks 2-4 (depth): Verify consent for any attendee quotes, testimonials, or featured content
- Months 2-6 (evergreen): Review consent validity — remove content if consent has been withdrawn

## Speaker Bio Publishing

When generating speaker bios, session descriptions, or speaker spotlight content:

- Use only information the speaker has explicitly provided and approved
- Do not add personal details from external research (LinkedIn, company website) without speaker consent
- Three bio lengths (50/100/150 words) must all be approved by the speaker before publication
- After the event: speaker bios may remain on the website for the retention period agreed in the speaker agreement (default: 12 months)
- Speaker may request bio removal at any time — honor within 72 hours

## Social Media and Tagging

**Tagging attendees:**
- Do not tag individual attendees in posts without consent
- Speaker tags: include in speaker agreement ("We may tag you on LinkedIn/Twitter when promoting your session")
- Sponsor tags: included in sponsor agreement — standard practice
- User-generated content (attendee posts): resharing is generally fine if the attendee posted publicly, but verify before adding to owned channels

**Quote attribution:**
- Live session quotes: if sessions were recorded with consent, attributing public statements is legitimate interest
- Private conversation quotes (hallway, networking): always get written consent
- Survey verbatim quotes: anonymize unless respondent explicitly consented to attribution

**Hashtag and user-generated content:**
- Event hashtags are public — curating and resharing is standard practice
- Compiling UGC into marketing materials (recap videos, testimonial pages) requires creator consent

## Survey and Feedback Content

When generating survey emails or processing survey results in content:

- Survey invitation emails: legitimate interest for event-related feedback
- Survey data in reports: anonymize by default — no individual names in published reports
- NPS scores: always aggregated, never attributed to individuals
- Verbatim comments in debrief reports: anonymize (remove names, companies, identifying details)
- If using survey quotes in marketing: obtain explicit consent from respondent
- Minimum group size for any reported segment: 10 respondents (prevents re-identification)

## Content GDPR Checklist

**Before Generating Content:**
- [ ] Confirm which merge fields are available with valid consent
- [ ] Verify speaker bio approval status before publishing
- [ ] Check recording consent scope (event platform only? social media? marketing?)

**Email Content:**
- [ ] Marketing emails only sent to contacts with marketing consent
- [ ] Sponsor mentions only in emails to attendees who opted in to sponsor sharing
- [ ] Unsubscribe link in every marketing email
- [ ] Double opt-in reference for German audience
- [ ] No special category data (dietary, accessibility) in any email content

**Social Media Content:**
- [ ] Speaker tags covered by speaker agreement
- [ ] No individual attendee tags without consent
- [ ] Photo content uses pre-approved images or crowd shots only
- [ ] Quote attributions verified (public session = OK, private = consent needed)

**Post-Event Content:**
- [ ] Survey results anonymized before inclusion in reports
- [ ] Recording clips verified against speaker consent scope
- [ ] Attendee testimonials have written consent
- [ ] Content review scheduled at 12-month mark for retention compliance
