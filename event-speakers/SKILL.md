---
name: event-speakers
description: >
  Manage the full speaker lifecycle for B2B events: Call for Papers creation, speaker
  outreach, proposal review criteria, agenda building, session scheduling, speaker
  coordination, and presentation logistics. Generates CFP documents, speaker coordination
  templates, review scorecards, multi-track agendas, speaker briefing documents, and
  session format guides. Use this skill whenever someone asks to create a Call for Papers, write a CFP,
  find or invite speakers, review talk proposals, build a conference agenda, schedule
  sessions across tracks, create speaker briefing documents, manage speaker logistics,
  design session formats, write speaker invitation emails, plan a panel discussion, or
  coordinate keynote speakers. Also triggers for talk selection criteria, speaker
  diversity planning, session time allocation, and workshop design. Part of the
  event-management-skills collection.
version: 1
version_date: 2026-03-28
io_schema: references/io-schema.json
---

# Event Speakers

Manage speakers from sourcing through post-event follow-up. Produces CFP documents, review frameworks, multi-track agendas, and speaker communications — ready-to-use deliverables.

## When This Skill Activates

- Create a Call for Papers / Call for Speakers
- Write speaker invitation or outreach emails
- Design proposal review criteria and scorecards
- Build a conference agenda with sessions and tracks
- Schedule sessions across rooms and time slots
- Create speaker briefing documents
- Plan session formats (keynote, panel, workshop, lightning talk)
- Manage speaker logistics (travel, accommodation, AV needs)
- Design a panel discussion structure

**This skill does NOT:** Write polished speaker bios for the website (use the event-content skill), handle speaker travel booking or green room setup (use the event-logistics skill), or manage speaker fees in the budget (use the event-budget skill). Manages the speaker program lifecycle from sourcing through session delivery.

## Step 1: Gather Context

**Required (ask if not provided):**

| Parameter | Why it matters |
|---|---|
| Event name and type | Shapes CFP scope, session formats, speaker profile |
| Event format | In-person / virtual / hybrid — affects logistics and tech needs |
| Event date(s) | Sets CFP timeline and speaker deadlines |
| Expected sessions | Determines CFP volume target and agenda complexity |
| Number of tracks | Single vs. multi-track changes scheduling logic |
| Sourcing approach | CFP (open) / invitation-only / hybrid of both |

**Optional:**

| Parameter | Default |
|---|---|
| Session formats | Keynote, breakout, panel, workshop |
| Speaker budget | In user's currency; covers fees, travel, accommodation. Estimate from `references/session-formats.md` |
| Content themes | Generate suggestions if not provided |
| Audience level | Mix beginner/intermediate/advanced |
| GDPR relevance | If EU/EEA event or EU-based speakers, load `references/gdpr-speakers.md` for consent requirements |

## Step 2: Determine Speaker Workflow Phase

**Format-specific routing:**
- **In-person:** Standard CFP, physical venue logistics in briefing, on-site rehearsal scheduling
- **Virtual:** CFP includes technical requirements (camera, audio, lighting, bandwidth), speaker tech kit shipping (2-5% of speaker budget per remote speaker), virtual rehearsal scheduling, recording consent specifics
- **Hybrid:** Dual briefing (in-room + remote speakers), separate tech specs per format, dual-audience moderation guidance

| Phase | User asks about... | Generate... |
|---|---|---|
| Sourcing | CFP, finding speakers, outreach | Output A or B |
| Selection | Reviewing proposals, choosing | Output C |
| Agenda Building | Scheduling, tracks, time slots | Output D |
| Coordination | Briefings, logistics, prep | Output E |
| Session Design | Format planning, panel structure | Output F |
| Post-Event | Thank-you, feedback, evaluation | Output G |

## Step 3: Generate Outputs

**Gated-output handling — MVA + unlock matrix.** When the brief lacks key inputs (session count, sourcing approach, speaker budget), produce one MVA — typically a CFP skeleton (Output A) with the most-likely B2B-conference assumptions and a 6-8 week submission window — and emit an unlock matrix:

```
| Question | Unlocks |
|---|---|
| Sourcing approach (CFP / invite-only / hybrid) | CFP timeline, review framework, invitation email template selection |
| Number of tracks + sessions | Agenda structure, track balance constraints, room assignments |
| Speaker budget (paid / unpaid / travel-covered) | Compensation framing in CFP, no-show insurance clauses, honorarium tiers |
| Event format (in-person / virtual / hybrid) | Tech kit requirements, virtual rehearsal slots, dual-audience moderation briefs |
| Diversity scoring approach (in-scorecard vs. two-pass) | Review framework structure, balance-check gate timing |
```

### GDPR Compliance (EU events)

If event location is EU/EEA or speakers are EU-based: load `references/gdpr-speakers.md` and apply consent requirements to CFP submissions, speaker agreements, recording consent, and bio publishing.

### Output A: Call for Papers (CFP)

Load templates from `references/cfp-templates.md`. CFP includes: event details, topics/tracks (5-10 areas), session formats with durations, submission requirements (title, abstract, bio, learning objectives, audience level), selection criteria, key dates (open, close, notification, confirmation deadline), speaker benefits, submission process, code of conduct, contact info.

**Standard CFP timeline:** Open at T-9 months for 6-8 weeks → Close T-7 → Review 2-3 weeks → Notify T-5.5 → Confirm T-5 → Agenda published T-4.

### Speaker compensation guidance (relative to event budget)

Before writing the CFP, decide whether speakers are paid. The CFP should be explicit — "non-paid, travel covered" vs. "honorarium per session" — to avoid downstream renegotiation.

| Event Type (cost index) | Keynote | Breakout / Panel | Workshop | Lightning talk |
|---|---|---|---|---|
| Community meetup / developer conference (0.1-0.8×) | Unpaid + travel covered for invited names; CFP speakers unpaid + comp ticket | Unpaid + comp ticket | Unpaid + comp ticket | Unpaid |
| Partner / trade show / industry conference (1.0-1.2×) | Paid honorarium (mid-tier industry rate) + travel + hotel | Often unpaid for CFP speakers; honoraria for invited speakers | Honorarium + travel | Unpaid + comp ticket |
| Product launch / industry summit (1.5-2.5×) | Premium honorarium for high-profile keynotes; full travel + premium hotel + per diem | Mid-tier honorarium for all invited speakers | Honorarium + travel | Comp ticket + travel for invited |
| Internal SKO / town hall / training | No external fees (internal presenters); cross-functional time is HR-funded | Same | Same | n/a |

**Practical guidance:**
- For CFP-driven events: state up-front whether speakers are paid. "Non-paid, travel covered" is fine and respected at developer conferences; surprising speakers with "by the way, we don't pay" after acceptance damages community trust.
- For invited keynotes: agree on the fee *before* sending the formal invitation. The invitation should reference the agreed fee.
- For paid keynotes at any tier: include the no-show insurance clause from this skill (cancellation refund schedule).
- Speaker travel + accommodation should always be covered by the organizer for invited speakers, regardless of fee.

### Output B: Speaker Invitation Emails

Three templates: initial invitation (why this speaker, why this event, what's expected/offered), follow-up after 7-10 days (shorter, add urgency), confirmation/acceptance (session details, logistics, deadlines). Each with subject line and `{{merge_fields}}`.

### Output C: Proposal Review Framework

**Two valid approaches — pick one and apply consistently across the CFP cycle.**

**Approach A — In-scorecard diversity weighting (default):**
Weighted scorecard: Topic relevance (25%), Content quality (25%), Originality (15%), Speaker credibility (15%), Audience fit (10%), Diversity contribution (10%). Scale 1-5 per criterion. Pros: explicit, transparent, defensible to committee. Cons: can introduce token-perception when an outstanding submission narrowly loses to a weaker one because of diversity points.

**Approach B — Two-pass review (content-first, then cohort balance):**
Pass 1: Score on content only — Topic relevance (30%), Content quality (30%), Originality (20%), Speaker credibility (10%), Audience fit (10%). No diversity scoring at this stage. Pass 2: After top N+10 are selected, apply diversity balancing to the cohort using the framework below. If the selected set under-indexes on any dimension, swap in the highest-content-scoring waitlisted speaker who improves that dimension. Pros: removes per-submission tokenization risk, content quality is preserved. Cons: requires post-scoring balancing discipline; used by NDC, KubeCon, FOSDEM.

**Process either approach:** screening → independent scoring by 3-5 reviewers → calibration meeting → final selection with cohort balance check → waitlist (top 10-15 unselected) → notifications.

**Recommendation:** Approach B for community / developer conferences where diversity is a cultural value but content credibility is paramount. Approach A for corporate / industry summits where the diversity contribution can be explicitly defended in writing.

### Output D: Conference Agenda

Load specs from `references/session-formats.md`. Standard durations: keynotes 30-45 min, breakout sessions 25-40 min, panels 30-45 min, workshops 60-90 min, lightning talks 5-10 min. Include 15 min transitions between sessions and 45+ min lunch. Rules: keynotes first (anchor sessions), high-demand in largest rooms, alternate depth (dense technical → lighter panel), no competing same-topic sessions in parallel, workshops in PM, networking breaks after keynotes, end days strong.

**Multi-track constraints:** No speaker in two simultaneous sessions. Related topics cluster per track. Consistent difficulty progression (beginner AM → advanced PM). Sponsor sessions don't compete with keynotes.

Output as time-slot table with one column per track/room.

### Speaker Content & Conduct Rules

Include in every speaker agreement and briefing document:

**Content balance rule:** Sessions must be ≥70% educational value, ≤30% product/company promotion. Keynotes: ≥80% value. Workshops: ≥90% hands-on. Enforce during proposal review (Output C) and slide review (T-2 weeks). Exception: Internal events (SKO, town hall) and non-conference formats (awards ceremonies, entertainment segments, motivational keynotes) are exempt from this ratio. Apply content balance only to external conference sessions with an audience expecting educational value.

**Selling from stage:** No direct sales pitches, discount codes, or "book a demo" CTAs during sessions. Speakers may mention their product when relevant to the topic. Sponsor sessions are the exception — but must still be labeled as sponsored in the agenda.

**Speaker vetting framework:**
1. **Content check:** Review 1-2 previous talks (video or slides). No history of plagiarism or misleading claims.
2. **Reputation check:** Quick search for public controversies, code of conduct violations at other events.
3. **Conflict of interest:** Disclose if speaker is from a sponsor company. Label session accordingly.
4. **Behavior expectations:** Speakers agree to the event's code of conduct. Include: respectful language, no harassment, punctuality, sobriety during sessions, and cooperation with event staff.

**No-show insurance:** For paid keynotes (any fee exceeding 40% of the speaker budget), include a cancellation clause in the speaker agreement: full refund if cancelled >4 weeks out, 50% if 2-4 weeks, no refund <2 weeks unless force majeure. Always maintain 2-3 backup speakers per track who can step in on short notice.

### Output E: Speaker Briefing Document

10-section brief: event overview, objectives and messages, audience profile, session details (format, duration, Q&A, co-speakers), tech specs (16:9 slides, upload deadline, clicker, recording consent), logistics (venue, parking, hotel, arrival, green room), social media guidelines, key deadlines, on-site details, emergency contacts.

**Format-specific briefing additions:**
- **Virtual speakers:** Platform walkthrough, audio/video setup guide (camera angle, lighting, background), bandwidth requirements (minimum 10 Mbps upload), backup plan for tech failure, recording consent form, tech check scheduling (mandatory T-3 days)
- **Hybrid speakers (remote):** All virtual requirements plus guidance on engaging both in-room and remote audiences simultaneously, dual-camera awareness, monitoring chat/Q&A from remote attendees
- **Hybrid speakers (in-room):** Standard in-person briefing plus awareness of virtual audience, looking at camera for remote viewers, repeating audience questions for stream

### Output F: Session Format Guide

Load from `references/session-formats.md`. Generate format specifications per session type including duration, room setup, AV needs, facilitator notes, and audience engagement approach.

### Output G: Post-Event Speaker Follow-Up

Speaker relationship management after the event:

1. **Thank-you email** (T+1 day): Personalized thank-you referencing their specific session, audience reaction, and standout moments. Include event photos from their session if available.
2. **Recording delivery** (T+3-5 days): Link to their session recording for personal use and sharing. Confirm consent scope for public distribution.
3. **Feedback sharing** (T+1-2 weeks): Share relevant session ratings, attendee feedback quotes (anonymized), and attendance numbers for their session.
4. **Speaker evaluation** (internal, T+2 weeks): Session rating, audience feedback summary, logistics reliability (on time, slides submitted, tech issues), recommendation for future events (invite again / waitlist / do not invite).
5. **Future engagement** (T+4 weeks): Invitation to remain in speaker network, early notification for next edition CFP, referral request for other potential speakers.

## Step 3.5: Verification Gate

1. **No speaker conflicts** in multi-track agendas
2. **Time math** correct (sessions + transitions + breaks = total day)
3. **Track balance** (equal session count and difficulty distribution)
4. **CFP dates feasible** (6-8 week window, 2-3 week review, notification 4+ months before event)
5. **Deadline chain logical** (bio before agenda publish, slides before rehearsal)
6. **Topic-conflict check (multi-track):** No two sessions on the same primary topic running in parallel time slots. Tag each session with one primary topic; if two sessions in the same time slot share a tag, swap one or split into morning/afternoon. Critical for 3+ track events where audience self-selection depends on topic differentiation.

## Skill Interface

**Accepts input from:**
- event-planner: Event profile (event_type, format, dates, session_count, track_count, themes)
- event-budget: Speaker budget (total_speaker_budget, fee_range, travel_budget)

**Produces output for:**
- event-content: Speaker data (speaker_names, bios_raw, session_titles, session_abstracts, photos)
- event-logistics: Session schedule (session_times, room_assignments, av_requirements, speaker_travel)
- event-budget: Speaker costs (confirmed_fees, travel_estimates, accommodation_costs)

## Step 4: Connect to Specialized Skills

- **Speaker bios and session descriptions:** "For polished bios and descriptions, use the event-content skill"
- **Speaker budget:** "For fee benchmarks and travel costs, use the event-budget skill"
- **On-site logistics:** "For venue AV and green room, use the event-logistics skill"
- **Event planning:** "For full timeline and checklists, use the event-planner skill"

## Output Format

- CFP documents: structured Markdown with topics/tracks, formats, dates, submission requirements, criteria
- Speaker invitations: subject line + body + merge fields, 3-template sequence (initial / follow-up / confirmation)
- Review framework: weighted scorecard table with criteria, weights, and scoring scale 1-5
- Agendas: time-slot table with columns per track/room, transitions marked, breaks called out
- Speaker briefs: 10-section structured document with logistics, tech specs, and deadlines
- Session format guides: per-format specs (duration, room setup, AV, facilitator notes)
- Currency: user's currency for any fees mentioned. Ask if not specified.

## Examples

### Example 1: Developer conference CFP
**User says:** "Create a CFP for our developer conference. 3 tracks, 40 sessions, topics: cloud-native, AI/ML, DevOps."
**Response:** Complete CFP with track descriptions, topic suggestions, submission requirements, review criteria, 6-week timeline, speaker benefits, code of conduct.

### Example 2: Multi-track agenda
**User says:** "Build day 1 agenda. 3 tracks, 8 hours, 2 keynotes, 15 breakouts confirmed."
**Response:** Full day agenda table with time slots, room assignments, transitions, breaks. Keynotes in plenary, breakouts across tracks. Sessions balanced by topic/difficulty.

### Example 3: Speaker invitation for summit
**User says:** "Write an invitation for a CTO keynote at our Industry Summit."
**Response:** Initial invitation (executive tone), follow-up, confirmation email. Each with subject line, personalized body, clear next steps.

### Example 4: Panel discussion design
**User says:** "Design a 45-minute panel on AI in Healthcare with 4 panelists."
**Response:** Panel structure with moderator prep guide, 5-6 discussion questions, audience Q&A plan, timing breakdown (5 min intro, 25 min discussion, 10 min audience, 5 min wrap-up).

## Speaker Diversity Framework

Track and optimize for diversity across multiple dimensions:

| Dimension | Target | How to Measure |
|---|---|---|
| Gender | ≥30% non-male speakers (stretch: 40%) | Self-reported in CFP submission |
| Geography | ≥3 countries represented | Speaker profile |
| Seniority | Mix of C-level, mid-career, and emerging voices | Job title analysis |
| Company size | Mix of enterprise, SMB, startup | Company profile |
| Speaking experience | ≥20% first-time conference speakers | Self-reported |
| Background | Industry + academia + independent | Speaker profile |

**Actions to improve diversity:**
- Blind review for CFP (remove name, company, photo during scoring)
- Targeted outreach to underrepresented communities before CFP closes
- Speaker mentorship program: pair first-time speakers with experienced ones
- Travel grants for speakers who couldn't otherwise attend
- Track diversity metrics per edition and publish in post-event report

## Edge Cases

- **CFP underperforms:** Extend deadline 2 weeks, broaden topics, activate direct outreach. Generate emergency speaker email.
- **Too many submissions:** Tighten criteria, add pre-screening, create larger waitlist.
- **Speaker cancellation — by timing:**
  - T-3+ months: Replace from waitlist or direct outreach. No public communication needed. Update agenda quietly.
  - T-1 to T-3 weeks: Activate pre-identified backup speakers (always have 2-3 per track). Communicate agenda change to registered attendees. Reframe, don't apologize.
  - T-1 to T-0 days: Merge the slot with an extended Q&A, panel, or networking session. If keynote: promote a strong breakout speaker to the main stage. Generate attendee communication that focuses on what IS happening, not what was cancelled.
- **Speaker no-show on-site triage:**
  1. MC announces "schedule adjustment" — never say "no-show" or "cancelled"
  2. Slot <30 min away: extend previous session Q&A, or convert to moderated audience discussion on the same topic
  3. Slot 30-60 min away: contact backup speakers on-site. Offer the slot to a panelist or workshop leader willing to do a spontaneous talk
  4. Keynote no-show: promote strongest breakout speaker to main stage. Reframe as "bonus keynote" in communications
  5. Post-incident: document for speaker evaluation (Output G). Affects future invitation decisions.
- **Single-track event:** Skip multi-track constraints, focus on flow and energy arc.
- **Unconference format:** Skip CFP. Generate open space technology facilitation guide.
- **Panel-heavy event:** Generate panel design guides with moderator prep and question frameworks.
- **Speaker violates content rules:** If a speaker goes off-script with excessive promotion during a live session: moderator redirects with a question. Post-session: private conversation with speaker, note in evaluation. Repeated violation: do not re-invite.
- **Internal event (SKO, training, all-hands):** Skip CFP, external speaker vetting, and content balance rules. Internal presenters coordinated through department heads. Focus on agenda building, session format design, and presentation coaching. No speaker fees. Company product/roadmap content is expected and appropriate.
- **Accessible presentations:** Speaker guidelines should include: minimum 24pt font for slides, high contrast colors, alt-text for images in slide decks, no content conveyed only through color, provide slide deck 48h before for captioning/sign language prep. For virtual/hybrid: ensure screen-share is readable, use platform's built-in captioning, describe visual content verbally.
- **Large speaker program (50+ speakers):** Form per-track program committees (3-5 reviewers per track) instead of centralized review. Stagger tech checks across multiple days. Plan speaker lounge capacity for 15-20% concurrent occupancy. Batch speaker communications by track. Designate 3-5 backup speakers per track. For 100+ speakers, recommend a speaker management tool or portal.
