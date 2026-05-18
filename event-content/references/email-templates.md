# Email Templates

Load this reference when generating event email sequences (Output A). Each template includes subject line patterns, preview text, body structure, and CTA. Tone adaptation is handled separately via the tone-guide reference loaded from SKILL.md.

**Asymmetry rule:** When generating a sequence of 3+ emails, deliberately vary the body structure. Not every email gets 3 bullet points. Not every email opens with "{{first_name}}," followed by a hook. Mix formats: one email uses flowing prose, one uses a price comparison table, one is a short plain-text "personal note from the host." The last-chance email should always be plain-text and personal — it outperforms designed emails by 20-30%.

## Table of Contents

1. [Email Benchmarks](#email-benchmarks)
2. [Pre-Event Promotional Emails](#pre-event-promotional-emails)
3. [Pre-Event Informational Emails](#pre-event-informational-emails)
4. [Post-Event Emails](#post-event-emails)
5. [Segmentation Rules](#segmentation-rules)
6. [Subject Line Best Practices](#subject-line-best-practices)

---

## Email Benchmarks

Use these benchmarks to set expectations and guide recommendations:

| Metric | B2B Average (2025) | Top Quartile | Notes |
|---|---|---|---|
| Open rate | 36-42% | 50%+ | Inflated by Apple MPP; CTR is more reliable |
| Click-through rate (CTR) | 2-5% | 6-10% | True engagement measure |
| Click-to-open rate (CTOR) | 5-8% | 10-15% | Content quality signal |
| Unsubscribe rate | 0.08-0.5% | <0.1% | Above 0.5% = content/frequency problem |
| Best send days | Tuesday-Thursday | — | Monday for sequence launch, Wednesday for follow-up |
| Best send time | 8:00-11:30 AM | — | In recipient's local timezone |
| Subject line length | 20-45 characters | — | Short subject lines average 38% open rates |
| Personalization lift | +9-26% open rate | — | First name in subject line boosts opens 20-26% |

---

## Pre-Event Promotional Emails

### 1. Save-the-Date

**Timing:** T-8 to T-12 months
**Goal:** Plant the date, build early awareness, generate calendar blocks

**Subject lines:**
- A: "Mark Your Calendar: {{event_name}} — {{event_date_display}}"
- B: "{{event_name}} is coming to {{venue_city}} — Save the date"

**Preview text:** "Join {{expected_attendees}}+ {{audience_descriptor}} on {{event_date_display}}"

**Body structure:**
```
{{first_name}},

[One-line hook tied to event theme or industry trend]

{{event_name}} is happening on {{event_date_display}} in {{venue_city}}.

[2-3 sentences: what the event is, who it's for, why it matters]

Details are still coming together, but here's what we can tell you:
• {{event_date_display}} | {{venue_city}}
• {{expected_attendees}}+ attendees expected
• [1 confirmed highlight — keynote speaker, theme, or track]

Registration opens soon. Add it to your calendar now.

[Add to Calendar CTA button]

More details to follow.

{{sender_name}}
{{sender_title}}, {{organization_name}}
```

---

### 2. Official Invitation

**Timing:** T-6 to T-8 weeks
**Goal:** Drive first wave of registrations with full event details

**Subject lines:**
- A: "You're Invited: {{event_name}} in {{venue_city}}"
- B: "{{first_name}}, join us at {{event_name}} — Registration is open"

**Preview text:** "{{expected_attendees}}+ {{audience_descriptor}} | {{event_date_display}} | Register now"

**Body structure:**
```
{{first_name}},

[Opening hook: problem statement or aspiration the event addresses]

{{event_name}} brings together {{expected_attendees}}+ {{audience_descriptor}} for {{event_duration}} of [content value proposition].

Why attend:
• [Benefit 1 — tied to attendee outcome, not event feature]
• [Benefit 2 — social proof or exclusivity angle]
• [Benefit 3 — specific content or networking value]

[If early-bird active: "Register before {{early_bird_deadline}} and save {{discount_amount}}"]

{{event_date_display}} | {{venue_name}}, {{venue_city}}

[Register Now CTA button → {{registration_link}}]

{{sender_name}}
{{sender_title}}, {{organization_name}}

[Unsubscribe link]
```

---

### 3. Early-Bird Announcement

**Timing:** Immediately after registration opens; deadline T-3 to T-5 months before event
**Goal:** Create urgency for early registrations, reward early commitment

**Subject lines:**
- A: "Save {{currency_symbol}}{{discount_amount}} — Early bird for {{event_name}} ends {{early_bird_deadline}}"
- B: "{{first_name}}, early-bird pricing won't last — {{event_name}}"

**Preview text:** "Register before {{early_bird_deadline}} for the best rate"

**Body structure:**
```
{{first_name}},

Early-bird registration for {{event_name}} is now open — and it won't last.

Register before {{early_bird_deadline}} to save {{currency_symbol}}{{discount_amount}} on your pass.

[Price comparison table: Early Bird vs. Standard vs. VIP]

What's included:
• [Access level details]
• [Content highlights — 2-3 bullet points]
• [Networking/extras]

[Register at Early-Bird Price CTA → {{registration_link}}?promo={{early_bird_code}}]

[Countdown element: "{{days_remaining}} days left at this price"]

{{sender_name}}
[Unsubscribe link]
```

---

### 4. Speaker Announcement

**Timing:** T-3 to T-5 months, rolling (1-2 per week)
**Goal:** Build excitement through credibility, drive registrations via FOMO

**Subject lines:**
- A: "{{speaker_name}} is joining {{event_name}}"
- B: "Just announced: {{speaker_name}} on {{session_topic_short}}"

**Preview text:** "{{speaker_title}} at {{speaker_company}} presents at {{event_name}}"

**Body structure:**
```
{{first_name}},

We're excited to announce that {{speaker_name}} will be speaking at {{event_name}}.

[1-2 sentences: speaker credentials and why they matter to this audience]

Session: {{session_title}}
[2-3 sentences: what attendees will learn, key takeaway preview]

{{speaker_name}} joins [number] other speakers including [1-2 other confirmed names].

[See the Full Lineup CTA → {{event_url}}/speakers]

Don't miss it — [seats are limited / early-bird pricing ends {{early_bird_deadline}}].

[Register Now CTA → {{registration_link}}]

{{sender_name}}
[Unsubscribe link]
```

---

### 5. Agenda Release

**Timing:** T-2 to T-3 months
**Goal:** Convert undecided prospects by showing full content value

**Subject lines:**
- A: "The full {{event_name}} agenda is here"
- B: "{{number_of_sessions}} sessions, {{number_of_speakers}} speakers — your {{event_name}} agenda"

**Preview text:** "Browse sessions and build your personal schedule"

**Body structure:**
```
{{first_name}},

The complete {{event_name}} agenda is live. {{number_of_sessions}} sessions across {{number_of_tracks}} tracks — here's a preview of what's in store.

[Highlight 3-4 must-see sessions with title, speaker, and one-line takeaway]

Track highlights:
• [Track 1 name]: [1-sentence description]
• [Track 2 name]: [1-sentence description]
• [Track 3 name]: [1-sentence description]

[Browse the Full Agenda CTA → {{event_url}}/agenda]

[Register Now CTA → {{registration_link}}]

{{sender_name}}
[Unsubscribe link]
```

---

### 6. Last-Chance Registration

**Timing:** T-1 to T-2 weeks
**Goal:** Convert final holdouts with maximum urgency

**Subject lines:**
- A: "Only {{seats_remaining}} seats left — {{event_name}}"
- B: "Last chance to join {{event_name}} next {{event_day_of_week}}"

**Preview text:** "Registration closes {{registration_close_date}}"

**Body structure:**
```
{{first_name}},

{{event_name}} is {{days_until_event}} days away and seats are filling fast.

[Social proof: "{{registered_count}} {{audience_descriptor}} are already registered"]

Here's what you'll miss if you don't join:
• [Top session or keynote]
• [Networking value — who's attending]
• [Exclusive content or experience]

[Register Before It's Too Late CTA → {{registration_link}}]

See you in {{venue_city}}.

{{sender_name}}
[Unsubscribe link]
```

**Tip:** Plain-text "from the host" formats often outperform designed HTML for urgency emails. Test a personal-feeling version alongside the branded version.

---

## Pre-Event Informational Emails

### 7. Logistics / "Know Before You Go"

**Timing:** T-2 to T-4 weeks (to registered attendees only)
**Goal:** Reduce day-of friction, build excitement, cut support inquiries

**Subject lines:**
- A: "Your {{event_name}} prep guide — everything you need to know"
- B: "Getting ready for {{event_name}}? Here's your logistics checklist"

**Body structure:**
```
{{first_name}},

{{event_name}} is just {{days_until_event}} days away. Here's everything you need to arrive prepared.

📍 Venue: {{venue_name}}, {{venue_address}}
📅 Dates: {{event_date_display}}
🕐 Registration opens: {{registration_desk_time}}

Getting there:
• [Directions / transit / parking info]
• [Hotel block info if applicable: "Book at {{hotel_name}} with code {{hotel_code}}"]

What to bring:
• [Laptop / business cards / ID for registration]
• [Dress code guidance]

Event app:
• Download: [App link]
• Build your personal schedule: [Schedule builder link]

WiFi: Network: {{wifi_network}} | Password: {{wifi_password}}

Hashtag: #{{event_hashtag}}

Questions? Reply to this email or contact {{support_email}}.

See you there!
{{sender_name}}
[Unsubscribe link]
```

---

### 8-9. Reminder Emails (1-Week + 1-Day)

**1-week reminder subject:** "{{event_name}} is one week away — are you ready?"
**1-day reminder subject:** "See you tomorrow at {{event_name}}"

These are shorter versions of the logistics email. 1-week: checklist format (app downloaded? schedule built? hotel booked?). 1-day: day-of essentials only (check-in time, first session, venue address, hashtag, emergency contact).

---

## Post-Event Emails

### 10. Thank-You Email

**Timing:** Within 24 hours of event end
**Goal:** Express gratitude, extend the experience, set up survey and follow-up

**Subject lines:**
- A (attendees): "Thank you for making {{event_name}} unforgettable"
- A (no-shows): "We missed you at {{event_name}} — here's what happened"

**Body structure (attendees):**
```
{{first_name}},

Thank you for being part of {{event_name}}.

[1-2 sentences: highlight of the event — a memorable moment, a key stat, an emotional beat]

By the numbers:
• {{total_attendees}} attendees
• {{total_sessions}} sessions
• {{total_speakers}} speakers
• [1 engagement stat — questions asked, connections made, etc.]

[Photos / highlight video link if available]

We'd love your feedback — it takes 3 minutes and helps us make next year even better.
[Share Your Feedback CTA → {{survey_link}}]

Recordings and slides will be available within [timeframe] at {{event_url}}/content.

Until next time,
{{sender_name}}
[Unsubscribe link]
```

**Body structure (no-shows):** Different tone — empathetic, not guilt-inducing. Offer access to recordings. Include "join the waitlist for next year" CTA.

---

### 11. Survey / Feedback Request

**Timing:** T+1 to T+3 days
**Goal:** Capture feedback while experience is fresh (response rates drop 50% after 72h)

**Subject lines:**
- A: "3 minutes to shape next year's {{event_name}}"
- B: "How was {{event_name}}? We want to hear from you"

**Body structure:**
```
{{first_name}},

Your feedback makes {{event_name}} better every year. This survey takes 3 minutes.

[Take the Survey CTA → {{survey_link}}]

[Optional incentive: "Complete the survey for a chance to win {{incentive}}"]

Your responses are [anonymous / confidential] and directly inform our planning for the next edition.

Thank you,
{{sender_name}}
[Unsubscribe link]
```

---

### 12. Content Follow-Up

**Timing:** T+1 to T+2 weeks
**Goal:** Extend event value, re-engage attendees and no-shows

**Subject line:** "{{event_name}} recordings and slides are live"

**Body:** Link to on-demand content library, highlight top 3 sessions, include slide deck downloads. For no-shows: this is gated content that requires registration data they already provided.

---

### 13. Next-Edition Teaser

**Timing:** T+2 to T+4 weeks
**Goal:** Capture early intent while sentiment is high

**Subject line:** "{{event_name}} {{next_year}} — save the date"

**Body:** Next event date (if known), loyalty/alumni pricing offer, waitlist signup CTA, "share with a colleague" forward prompt.

---

## Segmentation Rules

Always generate separate versions for these segments when applicable:

| Segment | How messaging differs |
|---|---|
| VIP / executive pass | Exclusive reception invites, concierge language, networking emphasis |
| General attendee | Full content value, community emphasis |
| Virtual attendee (hybrid) | Platform access, tech requirements, timezone, engagement features |
| Speaker | Logistics focus, deadline reminders, content submission CTAs |
| Sponsor / exhibitor | Booth info, lead capture setup, fulfillment deadlines |
| No-show (post-event) | Empathetic tone, recording access, next-event priority |

---

## Subject Line Best Practices

| Pattern | Example | Why it works |
|---|---|---|
| Name personalization | "{{first_name}}, your agenda is ready" | +20-26% open rate |
| Specificity with numbers | "25 sessions, 40 speakers — the agenda is live" | Concrete > vague |
| Curiosity gap | "The one session every CTO should attend" | Creates information asymmetry |
| Urgency with deadline | "Early bird ends Friday — save {{discount_amount}}" | Time pressure drives action |
| Social proof | "Join 2,400 leaders at {{event_name}}" | Validates decision to attend |
| Question format | "Ready for {{venue_city}}?" | Engages mental response |
| Plain and direct | "{{event_name}} — October 15-16, Berlin" | Clarity beats cleverness for save-the-dates |

**Avoid:** ALL CAPS, multiple exclamation marks, "Free!!!", "Urgent" — these trigger spam filters and reduce sender reputation.
