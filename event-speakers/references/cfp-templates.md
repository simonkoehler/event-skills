# CFP Templates

Load this reference when generating Call for Papers documents (Output A).

## Table of Contents

1. [Standard CFP Template](#standard-cfp-template)
2. [CFP Timeline by Event Type](#cfp-timeline-by-event-type)
3. [Submission Form Fields](#submission-form-fields)
4. [CFP Promotion Checklist](#cfp-promotion-checklist)
5. [Acceptance and Rejection Templates](#acceptance-and-rejection-templates)

---

## Standard CFP Template

```
# Call for Papers: {{event_name}}

## About the Event

{{event_name}} takes place on {{event_date_display}} in {{venue_city}}.
[2-3 sentences: event description, audience, why it matters]

We're looking for {{target_session_count}} sessions across {{number_of_tracks}} tracks.

## Topics We're Looking For

### Track 1: {{track_1_name}}
[2-3 sentences describing scope. 4-6 example subtopics as bullets]

### Track 2: {{track_2_name}}
[Same structure]

### Track 3: {{track_3_name}}
[Same structure]

We also welcome proposals that don't fit neatly into these tracks —
surprise us with something our audience needs to hear.

## Session Formats

| Format | Duration | Description |
|---|---|---|
| Keynote | 30-45 min | Invite-only. Big ideas for the full audience. |
| Breakout talk | 30-40 min | Deep-dive on a specific topic. 25-30 min talk + 5-10 min Q&A. |
| Panel discussion | 45-60 min | 3-4 panelists + moderator. Conversational, audience Q&A included. |
| Workshop | 60-90 min | Hands-on, interactive. Max 30-50 participants. Laptop required. |
| Lightning talk | 10-15 min | Fast-paced, focused insight. No Q&A. |

## What to Submit

- **Session title** (max 75 characters)
- **Abstract** (200-300 words): What you'll cover, why it matters, what attendees will learn
- **2-3 learning objectives**: "After this session, attendees will be able to..."
- **Target audience level**: Beginner / Intermediate / Advanced / All Levels
- **Session format preference**: Talk / Workshop / Panel / Lightning
- **Speaker bio** (100-150 words, third person)
- **Speaker headshot** (minimum 400×400px, JPEG or PNG)
- **Previous speaking experience** (links to recordings or slide decks appreciated)

## How We Select

Proposals are reviewed by a committee of {{review_committee_size}} industry practitioners.

| Criterion | Weight |
|---|---|
| Topic relevance to our audience | 25% |
| Content quality and clarity | 25% |
| Originality (not widely available elsewhere) | 15% |
| Speaker expertise and track record | 15% |
| Audience level fit | 10% |
| Diversity of perspective | 10% |

We value practitioners sharing real experience over vendors pitching products.
Vendor pitches will not be accepted.

## Important Dates

| Milestone | Date |
|---|---|
| CFP opens | {{cfp_open_date}} |
| CFP closes | {{cfp_close_date}} |
| Notifications sent | {{notification_date}} |
| Speaker confirmation deadline | {{confirmation_deadline}} |
| Slide draft due | {{slide_draft_deadline}} |
| Final slides due | {{final_slides_deadline}} |
| Event dates | {{event_date_display}} |

## What We Offer Speakers

- Complimentary full conference pass
- [Travel stipend: {{currency_symbol}}{{travel_stipend}} / full travel coverage / not provided]
- [Hotel: {{hotel_nights}} nights / not provided]
- Professional recording of your session (with your permission)
- Promotion on event website, social media, and email campaigns
- Speaker dinner / networking reception the evening before

## Code of Conduct

All speakers and attendees are expected to follow our Code of Conduct:
[Link to code of conduct]

## Questions?

Contact {{speaker_contact_name}} at {{speaker_contact_email}}

## Submit Your Proposal

[Submit via {{submission_platform}}]({{submission_url}})
```

---

## CFP Timeline by Event Type

| Event Type | CFP Opens | Duration | Review | Notify | Agenda Published |
|---|---|---|---|---|---|
| Large conference (500+) | T-9 months | 6-8 weeks | 3 weeks | T-5.5 months | T-4 months |
| Mid-size conference (200-500) | T-7 months | 4-6 weeks | 2 weeks | T-5 months | T-3.5 months |
| Developer conference | T-8 months | 6-8 weeks | 3 weeks | T-5 months | T-4 months |
| Industry summit | T-6 months | 4 weeks | 2 weeks | T-4.5 months | T-3 months |
| Community meetup | T-2 months | 2-3 weeks | 1 week | T-1 month | T-3 weeks |

**Compressed CFP (under 3 months lead time):** Skip formal CFP. Use direct invitation with a 1-week response window. Generate speaker target list + outreach emails instead.

---

## Submission Form Fields

### Required Fields

| Field | Type | Validation |
|---|---|---|
| Session title | Text | Max 75 characters |
| Abstract | Text area | 200-300 words |
| Learning objectives | Text (2-3 items) | Start with verb (Bloom's Taxonomy) |
| Audience level | Select | Beginner / Intermediate / Advanced / All |
| Session format | Select | Talk / Workshop / Panel / Lightning |
| Speaker full name | Text | — |
| Speaker email | Email | — |
| Speaker bio | Text area | 100-150 words, third person |
| Speaker headshot | File upload | Min 400×400px, JPEG/PNG |

### Optional Fields

| Field | Type | Notes |
|---|---|---|
| Previous speaking links | URLs | Video recordings or slide decks |
| Company / organization | Text | For speaker profile |
| Twitter/X handle | Text | For promotion |
| LinkedIn URL | URL | For speaker page |
| Dietary requirements | Select + text | If speaker events planned |
| Travel support needed | Yes/No + text | If budget allows |
| Co-speaker information | Text fields | For panels or co-presented talks |

---

## CFP Promotion Checklist

- [ ] Post CFP on event website with prominent CTA
- [ ] Send CFP announcement email to previous attendees and speakers
- [ ] Post on LinkedIn, Twitter/X with event hashtag
- [ ] Submit to CFP aggregator sites (PaperCall, Sessionize, CFPList)
- [ ] Share in relevant Slack/Discord communities
- [ ] Ask advisory board / previous speakers to share with their networks
- [ ] Send targeted outreach to speakers you specifically want to submit
- [ ] Post reminder at CFP midpoint ("2 weeks left to submit")
- [ ] Post final reminder 3 days before close ("Last chance to submit")

---

## Acceptance and Rejection Templates

### Acceptance Email

**Subject:** "Your talk has been accepted for {{event_name}}!"

```
Dear {{speaker_name}},

Great news — your session "{{session_title}}" has been selected for
{{event_name}} on {{event_date_display}} in {{venue_city}}.

Session details:
• Format: {{session_format}}
• Duration: {{session_duration}} minutes
• Track: {{track_name}}

Next steps:
1. Confirm your participation by {{confirmation_deadline}}
2. Submit your bio and headshot (if not already done)
3. Block {{event_date_display}} in your calendar

[Speaker benefits summary]

Please reply to this email to confirm. We'll follow up with logistics
details and deadlines closer to the event.

Welcome to {{event_name}}!
{{organizer_name}}
```

### Rejection Email (Respectful, Constructive)

**Subject:** "Your {{event_name}} submission update"

```
Dear {{speaker_name}},

Thank you for submitting "{{session_title}}" to {{event_name}}.

We received {{total_submissions}} proposals for {{available_slots}} sessions,
making this an exceptionally competitive selection process. After careful review,
we were unable to include your session in this year's program.

This does not reflect on the quality of your proposal — we had to make
difficult choices between many strong submissions.

[Optional: specific feedback if available]

We'd love to stay connected:
• You're welcome to submit again for future editions
• We've added you to our speaker community for early CFP notifications
• Consider attending — your perspective would enrich the discussion

Thank you for your interest in {{event_name}}.
{{organizer_name}}
```

**Key rules for rejections:**
- Send on the same day as acceptances (never leave candidates waiting)
- Be honest about the volume and competitiveness
- Never ghost a submitter — every proposal deserves a response
- Offer a path forward (future editions, attendee invitation)
