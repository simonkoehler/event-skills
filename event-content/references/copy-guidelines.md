# Copy Guidelines

Load this reference when generating website copy (Output C) or internal documents (Output D).

## Table of Contents

1. [Website Copy Modules](#website-copy-modules)
2. [Session Description Frameworks](#session-description-frameworks)
3. [Speaker Bio Structure](#speaker-bio-structure)
4. [MC Script Structure](#mc-script-structure)
5. [Speaker Brief Template](#speaker-brief-template)
6. [Post-Event Debrief Structure](#post-event-debrief-structure)

---

## Website Copy Modules

### Hero Section

**Formula:** Headline (<20 words, benefit-driven) + Subheadline + Single CTA + Micro-proof

| Element | Spec | Example |
|---|---|---|
| Headline | <20 words, primary attendee benefit | "Where {{audience_descriptor}} solve tomorrow's challenges today" |
| Subheadline | Expand with audience + outcome + differentiator | "Join {{expected_attendees}}+ leaders in {{venue_city}} for {{event_duration}} of actionable insights, hands-on workshops, and unmatched networking." |
| CTA | Single verb-driven button. "Save My Seat" outperforms "Register Now" | "Save My Seat" / "Claim Your Spot" / "Join Us" |
| Micro-proof | One stat near the CTA | "{{past_attendees}} joined us last year" / "Rated 4.8/5 by past attendees" |

### Value Proposition Block

**3-5 benefit points, each structured as:**
- **Benefit headline** (what the attendee gets — outcome, not feature)
- **Supporting detail** (1-2 sentences explaining how)

Example:
```
🎯 Actionable insights, not theory
Every session is designed around takeaways you can implement the week you return.

🤝 Curated networking
Connect with {{expected_attendees}}+ peers through structured matchmaking, roundtables, and a networking reception.

🚀 First look at what's next
Exclusive product demos, research previews, and roadmap sessions you won't find anywhere else.
```

### FAQ Section

Generate 8-12 questions covering these categories:

| Category | Example Questions |
|---|---|
| Registration | "Can I transfer my ticket?" / "What's included in each pass type?" |
| Logistics | "Where is parking?" / "Is there a hotel block?" / "What's the dress code?" |
| Content | "Will sessions be recorded?" / "How do I access slides after the event?" |
| Accessibility | "Is the venue wheelchair accessible?" / "Will there be live captioning?" |
| Virtual (hybrid/virtual only) | "What platform will be used?" / "Can I watch sessions on demand later?" |
| Data/Privacy | "How is my registration data used?" / "Can I opt out of sponsor communications?" |

### Registration Page Copy

**Ticket tier comparison table structure:**

| Element | Tier 1 (e.g., Standard) | Tier 2 (e.g., VIP) | Tier 3 (e.g., Executive) |
|---|---|---|---|
| Price | {{currency_symbol}}{{price_1}} | {{currency_symbol}}{{price_2}} | {{currency_symbol}}{{price_3}} |
| Sessions access | All main stage | All sessions + workshops | All + executive roundtables |
| Networking | General networking | VIP reception | 1:1 meeting scheduler |
| Content | On-demand recordings | Recordings + slide decks | Recordings + slides + extras |
| Badge | [Most Popular] | — | — |

**Rules:** List higher-priced options first (anchoring effect). Mark one tier as "Most Popular." Maintain minimum 20-25% price difference between tiers. Place social proof near the registration form ("{{registered_count}} professionals already registered").

---

## Session Description Frameworks

Generate 80-100 word descriptions from session title + abstract. Include 2-3 learning objectives.

### Four Proven Frameworks

**1. Problem-Solution:**
"[Problem statement that resonates with audience]. In this session, [speaker] reveals [solution or approach]. You'll learn [specific takeaway 1], [takeaway 2], and [takeaway 3]. Walk away with [concrete deliverable or new capability]."

**2. Question-Based:**
"What if you could [desirable outcome]? [Speaker] shows how [company/team] achieved [specific result] using [approach]. This session covers [topic 1], [topic 2], and [topic 3] — with examples you can apply immediately."

**3. Outcome-Focused:**
"Walk away with [number] actionable strategies to [specific outcome]. [Speaker] draws on [credentials/experience] to share [framework/methodology], including [specific element 1] and [specific element 2]. Ideal for [target audience descriptor]."

**4. Curiosity Gap:**
"Most teams approach [topic] wrong — and it's costing them [consequence]. [Speaker] challenges conventional wisdom with [surprising insight or data point]. Expect to rethink [assumption] and gain practical tools for [outcome]."

### Variance Rule for Batch Generation

When generating descriptions for 5+ sessions at once, deliberately vary:
- **Length:** Some 60 words, some 120. Not all 80-100.
- **Framework:** Mix all four above. Never use the same framework twice in a row.
- **Learning objectives:** 2 for some sessions, 3 for others, none for panels and firesides.
- **Tone:** Some dry and technical, some enthusiastic, some provocative — match the topic.
- **Opening:** Not every description starts the same way. Some with a question, some with a stat, some with the speaker's perspective, some with the attendee's problem.

If all descriptions on a page read like they were written by the same system in the same session, they were. Fix that.

### Learning Objectives

Use Bloom's Taxonomy verbs. Each session gets 2-3 objectives:
- **Remember/Understand:** Describe, explain, summarize, identify
- **Apply:** Apply, implement, use, demonstrate
- **Analyze/Evaluate:** Compare, analyze, assess, evaluate
- **Create:** Design, build, develop, create

**Format:** "After this session, you will be able to [verb] [specific skill/knowledge]."

### Audience Level Tags

Assign one per session: Beginner | Intermediate | Advanced | All Levels

---

## Speaker Bio Structure

Generate three lengths from raw input. Always write in third person.

### 50-Word Bio (Signage/App)
```
{{speaker_name}} is {{speaker_title}} at {{speaker_company}}. [One sentence: key expertise or achievement relevant to session]. [One sentence: scope of impact — team size, revenue, customers, or years of experience].
```

### 100-Word Bio (Website)
```
{{speaker_name}} is {{speaker_title}} at {{speaker_company}}, where [1 sentence: what they do / area of expertise]. [1-2 sentences: key achievements, quantified where possible]. [1 sentence: connection to the session topic — why they are uniquely qualified to speak on this]. [1 sentence: relevant background — previous roles, education, publications, or industry recognition]. [Optional: 1 humanizing detail — location, hobby, side project].
```

### 150-Word Bio (Detailed Profile)
Expand the 100-word bio with additional achievements, publications, speaking history, and personal details.

**Rules:**
- Always third person ("Sarah leads..." not "I lead...")
- Current role first, then credentials
- Quantify achievements where possible ("led a team of 50" not "led a large team")
- Tie expertise to the session topic
- One humanizing personal detail at the end (optional but recommended)

**Variance rule:** When generating 5+ bios for the same event, vary the opening. Not every bio starts with "Name is Title at Company." Alternatives: lead with an achievement ("With 15 years in distributed systems..."), lead with the session connection ("When it comes to scaling Kubernetes, few people have..."), lead with a defining characteristic ("Equal parts engineer and storyteller, Sarah...").

---

## MC Script Structure

**Write for speaking, not reading.** MC scripts are performed, not published. Spoken language is shorter, uses fragments, skips transitions, and sounds casual-professional. The MC should sound like a confident colleague welcoming the room, not like someone reading a press release.

Instead of: "We are thrilled to have you here for this exciting event."
Write: "Great to see you all. Full house — love it. Let's get into it."

Instead of: "Technology — keeping us humble since the invention of the projector."
Write: "Tech hiccup. Give us 30 seconds. [To audience] Anyone got a good conference horror story while we wait?"

Generate timestamped scripts with stage directions in [brackets].

### Standard Conference Day Script Structure

```
[PRE-SHOW — 15 minutes before start]
[House music playing. Countdown timer on screen.]
[MC positioned at side of stage, ready.]

---

[TIME: {{session_start_time}}]
## Opening Remarks (3-5 minutes)

[MC walks to center stage. House lights dim. Music fades.]

"Good morning and welcome to {{event_name}}!

I'm {{mc_name}}, and I'll be your guide for the next [duration].

Before we dive in, a few quick notes:
• WiFi: {{wifi_network}}, password: {{wifi_password}}
• Hashtag: #{{event_hashtag}} — we'd love to see your posts
• Restrooms are [location]
• In case of emergency, exits are [location]
• Please silence your phones — or at least put them on vibrate

[Sponsor acknowledgment]
A huge thank you to our sponsors who make this possible:
[Name Platinum/Gold sponsors by name]

Today's lineup:
[Brief overview of the day — 2-3 sentences, not the full agenda]

Let's get started."

---

[TIME: {{keynote_start_time}}]
## Speaker Introduction (1-2 minutes per speaker)

"Our [first/next] speaker is [someone who / a leader in / the person behind] [achievement or relevance to audience].

{{speaker_name}} is {{speaker_title}} at {{speaker_company}}, where [1 sentence: what they do that matters to this audience].

[1 sentence: specific credential or achievement]

Today, [he/she/they] will be talking about [session topic in plain language — not the formal title].

Please welcome {{speaker_name}}.

[MC steps aside. Applause.]"

---

## Transition Between Sessions (30-60 seconds)

"[Applause] Thank you, {{previous_speaker_name}} — [1 sentence genuine reaction to the talk].

[If break:] We're taking a [duration] break. [Catering/refreshments] are in [location]. Please be back by [time].

[If next session:] Up next: {{next_speaker_name}} on [topic]. We'll get started in 2 minutes."

---

## Closing Remarks (3-5 minutes)

"What a day. [1-2 sentences: genuine highlight or reflection]

A few things before you go:
• [Survey CTA:] We'd love your feedback — check your email for a 3-minute survey
• [Content CTA:] Recordings will be available at {{event_url}} within [timeframe]
• [Networking CTA:] The networking reception is in [location] — drinks are on [sponsor name]
• [Next event:] Save the date for {{event_name}} {{next_year}} — [date if known]

Thank you to our speakers, sponsors, team, and most importantly — thank you for being here.

See you [at the reception / next year / tomorrow for Day 2]. Have a great evening."

[MC exits. House music resumes.]
```

### Contingency Lines

Keep these ready for unscripted moments:
- **Speaker is late:** "While we're setting up for our next session, let me share a quick story / ask you a question..."
- **Tech failure:** "Technology — keeping us humble since the invention of the projector. We'll have this sorted in just a moment. In the meantime, [engage audience with question or fun fact]."
- **Running behind schedule:** "We're running a few minutes behind — but trust me, this next session is worth the wait."
- **Session ran short:** "We have a few extra minutes — let's open it up for one more question from the audience."

---

## Speaker Brief Template

10-section document sent to speakers 2-4 weeks before the event.

1. **Event overview:** {{event_name}}, date, location, theme, website URL, USP
2. **Event objectives:** 2-3 measurable goals, key messages to reinforce
3. **Audience profile:** Who's attending, how many, knowledge level, what they care about
4. **Session details:** Format (keynote/panel/workshop), duration, Q&A allocation, co-speakers
5. **Tech specifications:** Slide format (16:9, 1920×1080), upload deadline, clicker provided, recording consent
6. **Logistics:** Venue address, parking, hotel, arrival time, speaker lounge location, contact person
7. **Social media guidelines:** Event hashtag, handles to tag, sharing permissions, recording policy
8. **Key deadlines:** Bio/headshot due, slide draft due, final slides due, tech check date
9. **On-site details:** Check-in process, green room, when to be at session room, AV contact
10. **Contact information:** Event lead name, phone, email; AV contact; emergency number

---

## Post-Event Debrief Structure

12-section report draft. Customize for audience: executive version (ROI focus), sponsor version (visibility focus), internal version (operational detail).

1. **Executive summary** — 2-3 sentences + one hero metric
2. **Event overview** — Date, venue, format, theme
3. **Goals vs. actuals** — Table with KPIs, targets, actuals, and RAG status
4. **Attendance analysis** — Registered vs. attended, no-show rate, demographics
5. **Session performance** — Per-session attendance, ratings, top/bottom performers
6. **Sponsor/exhibitor metrics** — Leads collected, booth traffic, satisfaction
7. **Financial summary** — Budget vs. actuals, P&L, cost per attendee
8. **Marketing performance** — Registrations by channel, email metrics, social reach
9. **Feedback and sentiment** — NPS score, satisfaction rating, key verbatim quotes
10. **What worked / what didn't** — Honest assessment with specific examples
11. **Recommendations** — Numbered actions with assigned owners and deadlines
12. **Appendix** — Full survey results, financial detail, attendee list summary
