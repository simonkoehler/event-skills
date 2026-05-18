---
name: event-content
description: >
  Generate polished, ready-to-publish content for B2B events: email sequences, social media posts,
  website copy, speaker bios, session descriptions, MC scripts, volunteer guides, and
  content repurposing plans. Produces platform-specific, audience-adapted copy with
  merge field personalization. Use this skill whenever someone asks to write event emails,
  create social media posts for a conference, draft speaker bios, write session descriptions,
  generate registration page copy, create an MC or host script, write thank-you emails,
  draft a post-event survey, build an event content calendar, write a volunteer guide,
  plan content repurposing from recordings, or needs any event-related communications
  or copy. Also triggers for event hashtag suggestions, sponsor acknowledgment copy,
  attendee reminder emails, and event FAQ pages. Part of the event-management-skills
  collection — handles the words while other skills handle strategy and logistics.
version: 1
version_date: 2026-03-28
io_schema: references/io-schema.json
---

# Event Content

Generate professional, ready-to-use content for every touchpoint in the B2B event lifecycle. Turn an event brief into emails, social posts, website copy, and internal documents — not drafts to rewrite, but copy to send.

## When This Skill Activates

Use this skill when the user wants to:

- Write any event-related email (invitation, reminder, thank-you, survey, follow-up)
- Create social media posts for event promotion or coverage
- Draft speaker bios or session descriptions
- Generate website copy (hero section, value proposition, FAQ)
- Write registration page copy with ticket tier descriptions
- Create MC/host scripts or speaker introduction scripts
- Draft internal documents (speaker briefs, volunteer guides, staff run-sheets)
- Plan content repurposing from event recordings
- Build an event content calendar
- Generate post-event communications (debrief reports, survey copy, recap posts)

**This skill does NOT:** Plan marketing strategy or channel mix (use the event-marketing skill), design registration forms or ticket tiers (use the event-registration skill), calculate budgets (use the event-budget skill), or manage speaker logistics (use the event-speakers skill). Generates the words — other skills handle strategy and systems.

## Step 1: Gather Context

**Required context (ask if not provided):**

| Parameter | Why it matters |
|---|---|
| Event name and type | Shapes messaging tone and content priorities |
| Event format | In-person / virtual / hybrid — changes email content, social strategy, and internal docs |
| Target audience | Executive / technical / sales / partner — determines tone preset |
| Event date(s) and location | Sets email timeline and logistics content |
| What content is needed | Which output(s) the user wants right now |

**Optional context (use if available):**

| Parameter | Default if not stated |
|---|---|
| Event brief from event-planner | Ask for objectives, audience, and key details if not provided |
| Brand voice guidelines | Default to professional, clear, benefit-driven tone |
| Confirmed speakers | Use `{{speaker_name}}` placeholders if not yet confirmed |
| Registration URL | Use `{{registration_link}}` placeholder |
| Event hashtag | Generate a suggestion if not provided |
| Social media platforms | Default to LinkedIn + Twitter/X for B2B |
| Email platform | Use platform-agnostic `{{merge_field}}` syntax |

## Step 2: Determine Content Type and Audience

**Route to the correct output based on user request:**

| User asks for... | Generate... | Load reference... |
|---|---|---|
| Event emails, email sequence | Output A | `references/email-templates.md` |
| Social media posts, event promotion | Output B | `references/social-templates.md` |
| Website copy, landing page, speaker bios, session descriptions | Output C | `references/copy-guidelines.md` |
| MC script, speaker briefs, volunteer guide, internal docs | Output D | `references/copy-guidelines.md` |
| Content repurposing, content calendar | Output E | `references/content-repurposing.md` |
| Email sequence timing overview | Output A | `assets/email-sequence-calendar.md` |

**Select tone preset based on audience.** Load `references/tone-guide.md` and apply the matching preset:

| Audience | Tone | Key characteristics |
|---|---|---|
| Executive / C-suite | Strategic, authoritative, concise | ROI-focused, business impact metrics, competitive advantage |
| Developer / technical | Direct, practical, peer-to-peer | No marketing buzzwords, specific tech terms OK, code examples welcome |
| Sales / marketing | Outcome-focused, energetic | Revenue and pipeline language, social proof, networking emphasis |
| Partner / channel | Relationship-focused, collaborative | Mutual benefit, co-selling opportunities, partnership value |

**Format-specific content adjustments:**
- **In-person:** Include venue logistics, parking, directions, dress code in informational emails
- **Virtual:** Include platform access instructions, tech requirements, timezone conversion in all communications
- **Hybrid:** Generate dual-audience versions of key communications (separate logistics for in-person vs. virtual attendees)

## Step 3: Generate Outputs

**Before generating any content:** Load `references/writing-quality.md` and apply all writing quality rules to every output. Content that reads as AI-generated fails the quality bar — rewrite until it passes the self-check at the bottom of that reference.

**Gated-output handling — produce a Minimal Viable Artifact (MVA) alongside questions.** When core context is missing (event date, audience tone, MQL definition, etc.) and full content production must wait, still produce one concrete draft so the user can react to copy instead of just answering questions. Pick the MVA based on the request:

| User asked for... | MVA to produce on turn 1 |
|---|---|
| Full email sequence | One registration / invitation email (most-common-case assumptions labeled inline) |
| Landing page copy | Hero section + value proposition (with `{{registration_url}}` and `{{date}}` placeholders) |
| Speaker bios at scale | One sample bio (50/100/150 word versions) from the first speaker on the list |
| Social media campaign | One LinkedIn + one X/Twitter post for the first speaker spotlight |
| MC script | Opening + first speaker introduction (10 minutes of script, not the full day) |
| Survey / feedback emails | One thank-you + survey invitation email |

Also emit an **unlock matrix** showing which question unlocks which full output:
```
| Question | Unlocks |
|---|---|
| MQL definition | Pipeline math, post-event lead routing, scorecard |
| Audience tone (exec / dev / sales) | Email body adaptation, landing page voice, social post style |
| Brand voice guidelines | Final polish pass on all copy |
```

### Data Protection Compliance

For all events, apply data protection rules: load `references/gdpr-content.md` for EU/EEA events. For non-EU events, apply GDPR-equivalent consent rules as baseline (opt-in marketing consent, unsubscribe links, data minimization). Apply merge field consent rules, verify speaker bio approval status, ensure photo/video content has proper consent, and anonymize survey data in reports.

### Output A: Event Email Sequence

Generate any or all emails in the 13-touchpoint lifecycle. Load templates from `references/email-templates.md` and merge fields from `references/merge-fields.md`.

**For each email, produce:**
1. Subject line: under 50 characters, benefit-driven (what the reader gains, not what you're announcing), no clickbait. Primary + A/B test variant.
2. Preview text (40-90 characters)
3. Body copy with `{{merge_fields}}` for personalization
4. Primary CTA (one per email — multiple CTAs dilute conversion)
5. Recommended send date (calculated from event date using T-minus notation)

**The 13-email lifecycle sequence:**

| # | Email Type | Timing | Phase |
|---|---|---|---|
| 1 | Save-the-date | T-8 to T-12 months | Pre-event promotional |
| 2 | Official invitation | T-6 to T-8 weeks | Pre-event promotional |
| 3 | Early-bird announcement | Immediately after invite opens | Pre-event promotional |
| 4 | Speaker announcements | T-3 to T-5 months, rolling | Pre-event promotional |
| 5 | Agenda release | T-2 to T-3 months | Pre-event promotional |
| 6 | Last-chance registration | T-1 to T-2 weeks | Pre-event promotional |
| 7 | Logistics / "Know Before You Go" | T-2 to T-4 weeks | Pre-event informational |
| 8 | 1-week reminder | T-7 days | Pre-event informational |
| 9 | 1-day reminder | T-1 day | Pre-event informational |
| 10 | Thank-you | T+1 day | Post-event |
| 11 | Survey / feedback request | T+1 to T+3 days | Post-event |
| 12 | Content follow-up (recordings/slides) | T+1 to T+2 weeks | Post-event |
| 13 | Next-edition teaser | T+2 to T+4 weeks | Post-event |

Generate the full sequence when requested, or individual emails when the user specifies a type. Always segment post-event emails between attendees and no-shows — they get different messaging.

For EU/DACH events: include GDPR-compliant unsubscribe language in every marketing email. Use double opt-in for German events. Reference `references/merge-fields.md` for consent-related fields.

### Output B: Social Media Content

Generate platform-specific posts for three phases. Load templates from `references/social-templates.md`.

**Pre-event content types:**
- Speaker spotlights (name, title, session, key insight, registration CTA)
- Countdown posts (at 90, 60, 30, 14, 7, 1 day milestones)
- Session teasers (problem-solution framing)
- Sponsor highlights ("Powered by" language)
- Registration urgency (social proof, limited seats, price comparison)

**During-event content types:**
- Live speaker quote graphics (branded, with photo and hashtag)
- Session recap threads (key takeaways per session)
- Attendee reaction highlights
- Sponsor activation posts

**Post-event content types:**
- Recap highlights (stats, photos, video — within 24h)
- Thank-you posts (separate for attendees, speakers, sponsors)
- Recording/content announcements
- Next-event teasers

Apply platform-specific formatting rules from `references/social-templates.md`. Key rules: LinkedIn links go in comments not body; Twitter/X stays under 280 chars; Instagram captions under 125 chars for feed.

### Output C: Website & Registration Copy

Generate copy modules for event websites. Load frameworks from `references/copy-guidelines.md`.

**Website modules:**
- **Hero section:** Headline (<20 words, benefit-driven) + subheadline + single CTA + micro-proof
- **Value proposition:** 3-5 benefit points with supporting details
- **Session descriptions:** From title + abstract → polished 80-100 word descriptions with 2-3 learning objectives using Bloom's Taxonomy verbs
- **Speaker bios:** Three lengths from raw input — 50-word (signage), 100-word (website), 150-word (detailed). Always third person.
- **FAQ section:** 8-12 questions covering registration, logistics, content, accessibility
- **Registration page:** Ticket tier comparison table, urgency triggers, social proof near CTA

### Output D: Internal Documents

Generate content for internal event team use. Load templates from `references/copy-guidelines.md`.

**Document types:**
- **Speaker briefs:** 10-section template (event overview, objectives, audience, session details, co-speakers, tech specs, logistics, social guidelines, deadlines, contacts)
- **MC/host scripts:** Opening remarks, speaker introductions, transitions, sponsor mentions, housekeeping, audience engagement prompts, closing remarks, contingency lines for delays/tech issues
- **Volunteer/staff guides:** Role descriptions, schedule, key contacts, escalation procedures, FAQ for common attendee questions
- **Post-event debrief draft:** Executive summary, goals vs. actuals, session performance, financial summary, what worked / what didn't, recommendations

### Output E: Content Repurposing Plan

From event recordings or completed events, generate a structured repurposing pipeline. Load from `references/content-repurposing.md`.

**The plan must include:**
- Asset matrix mapping each session to derivative content (blog post, social clips, quote graphics, podcast, newsletter segment)
- Content calendar with publish dates over 6 months in four phases (Week 1: momentum, Weeks 2-4: depth, Months 2-3: themes, Months 4-6: evergreen)
- Priority ranking (keynotes first, then highest-rated sessions)
- Draft copy for the first batch of assets (blog outline, social captions, quote selections)

## Step 3.5: Verification Gate

Before presenting outputs, verify:

1. **Merge field consistency:** Same fields used throughout (no `{{first_name}}` in one email and `{{fname}}` in another). Cross-check against `references/merge-fields.md`.
2. **Tone consistency:** All content matches the selected audience preset. Executive copy must not suddenly become casual.
3. **Timeline alignment:** Email send dates align with event lifecycle phases. The "1-week reminder" must be 7 days before event date.
4. **CTA discipline:** Exactly one primary CTA per email. Multiple CTAs dilute conversion.
5. **Information accuracy:** All content references the same event name, date, venue, and URL.
6. **GDPR compliance:** Marketing emails include unsubscribe language for EU events. Consent language present where required.
7. **Platform formatting:** Social posts respect character limits and platform rules (LinkedIn: no links in body; Twitter: under 280 chars).
8. **Confidential content check:** For internal events (SKO, board meetings, training): flag that generated content may contain confidential information. Skip social media and public website outputs unless user confirms content is non-confidential.
9. **Writing quality:** Scan all generated content for AI patterns — 3+ consecutive sentences of similar length, transition phrases ("Furthermore", "Additionally", "Moreover"), symmetrical bullet structures, uniformly positive endings, or missing stance. If any found, rewrite before presenting. See `references/writing-quality.md` for the full self-check.

## Skill Interface

**Accepts input from:**
- event-planner: Event brief (event_name, dates, audience, objectives, key_messages)
- event-speakers: Speaker data (speaker_name, bio_raw, session_title, session_abstract)
- event-marketing: Campaign brief (campaign_name, audience, channels, messaging_pillars)
- event-registration: Registration details (ticket_tiers, pricing, registration_url)
- event-sponsors: Sponsor details (sponsor_names, tier_levels, benefits, activation_plans)

**Produces output for:**
- event-marketing: Content assets (email_copy, social_posts, landing_page_copy)
- event-speakers: Polished content (speaker_bios, session_descriptions)
- event-registration: Page copy (registration_page_text, confirmation_emails)
- event-analytics: Survey copy (survey_email, feedback_form_text)

## Step 4: Connect to Specialized Skills

If the user's request extends beyond content generation:

- **Event planning and strategy:** "For event briefs, timelines, and risk registers, use the event-planner skill"
- **Speaker management:** "For CFP workflows and speaker coordination, use the event-speakers skill"
- **Marketing strategy:** "For campaign planning and channel strategy, use the event-marketing skill"
- **Registration setup:** "For registration flow design and platform configuration, use the event-registration skill"
- **Sponsorship:** "For sponsorship packages and prospectus creation, use the event-sponsors skill"
- **Post-event analysis:** "For KPI frameworks and ROI calculations, use the event-analytics skill"

If the user has already created an event brief using the event-planner skill, ask them to share it for more tailored content outputs.

## Output Format

- Emails: Subject line, preview text, body copy (with merge fields), CTA — clearly labeled sections
- Social posts: Platform label, post text, hashtag suggestions, image/format recommendation
- Website copy: Module label, copy block, character/word count, notes on formatting
- Speaker bios: All three lengths (50/100/150 words), consistent third-person voice
- Session descriptions: Title, description (80-100 words), learning objectives, audience level
- MC scripts: Timestamped, with stage directions in brackets, speaker names as merge fields
- Internal docs: Structured sections with clear headers, fill-in fields as `{{placeholders}}`
- Content plans: Table format with columns for asset type, source session, publish date, channel, status

## Examples

### Example 1: Full email sequence

**User says:** "Create the complete email sequence for DevConnect 2026, a 500-person developer conference in Berlin, October 15-16."

**Skill response:** All 13 lifecycle emails with subject lines (A/B variants), preview text, body copy with `{{merge_fields}}`, CTAs, and recommended send dates calculated from October 15. Tone: developer/technical preset. GDPR-compliant unsubscribe in every email. Double opt-in reference for German audience. Segmented post-event emails for attendees vs. no-shows.

### Example 2: Speaker spotlight social posts

**User says:** "Create LinkedIn and Twitter posts announcing our keynote speaker Dr. Sarah Chen, CTO of DataScale, presenting 'Building Trust in AI Systems' at our AI Summit."

**Skill response:** 2-3 LinkedIn variants (expertise angle, session content angle, attendee benefit angle) + 2-3 Twitter posts. LinkedIn: hook in first line, no link in body. Twitter: under 280 chars each. All include event hashtag, speaker tag placeholder, and registration CTA.

### Example 3: Session descriptions at scale

**User says:** "We have 25 session titles and abstracts from our CFP. Polish them into website descriptions."

**Skill response:** 25 descriptions, each 80-100 words, following problem-solution or outcome-focused framework. Each with 2-3 learning objectives using Bloom's Taxonomy verbs. Consistent formatting. Audience level tags (beginner/intermediate/advanced).

### Example 4: MC script for conference day

**User says:** "Write the MC script for day 1 of our industry summit. 3 keynotes, 2 panels, lunch, and a networking reception."

**Skill response:** Timestamped script with opening remarks (welcome, housekeeping, WiFi, hashtag), 3 speaker introductions (credentials, session teaser, transition cue), panel moderation cues, break announcements with timing, sponsor acknowledgments, lunch guidance, networking reception transition, and closing remarks. Contingency lines for delays and tech issues included.

## Edge Cases

- **No event brief available:** Ask for minimum context (event name, date, audience, type) and generate from that. Do not require a full brief for individual content pieces.
- **Multiple audiences for same event:** Generate separate content variants per audience segment. Label each clearly.
- **Content needed before speakers are confirmed:** Use `{{speaker_name}}` and `{{session_title}}` placeholders. Generate structural copy that works regardless of who fills the slot.
- **Very short timeline (<2 weeks to event):** Compress the email sequence to essentials: invitation + logistics + day-of reminder + thank-you + survey. Skip save-the-date, early-bird, and rolling announcements.
- **Non-English event:** Generate content in the requested language. Default to English unless specified. For DACH region, offer German versions of attendee-facing content.
- **Multilingual event (3+ languages):** Prioritize translation: registration page and attendee emails in all languages, speaker briefs and vendor docs in English only. Per-market content adaptation (local case studies, regional references). For 5+ languages, budget for professional translation — do not auto-translate. Consider simultaneous interpretation for live sessions.
- **Micro event (VIP dinner, 10-50 people):** Replace mass emails with personalized invitation copy. Skip social media promotion. Focus on: personalized invite, RSVP follow-up, logistics note, thank-you note.
- **Press conference / product launch with media:** Load `references/media-event-templates.md` for press release templates, press kit structure, Q&A document, and embargo communication workflows.
- **Accessible content:** All generated emails must include plain-text version. Social media images need alt-text suggestions. Video content needs caption/subtitle notes. PDFs should be tagged for screen readers. Use semantic heading structure in all HTML content.
- **Sustainability communications:** When event has sustainability initiatives, generate: pre-event messaging about green practices (without greenwashing — specific actions, not vague commitments), on-site signage for recycling/waste stations, post-event sustainability report section (carbon footprint, waste diverted, digital vs. printed materials saved). Tone: factual and specific, not preachy.
- **Internal SKO / training recordings — HR/compliance artifact, not marketing content:** When the event is an internal SKO, comp-plan rollout, or compliance training, treat recordings as legal/HR artifacts, not blog/social repurposing material. Different rules apply:
  - **Storage:** LMS or HRIS, not public CDN. Access-controlled per employment status.
  - **Retention:** 7 years (most labor jurisdictions) for comp plan and policy training; 3 years for general SKO content.
  - **Repurposing:** Internal-only. No blog posts, no social clips, no podcasts. Optionally: 1-2 minute internal recap video for absent reps with manager attestation of viewing.
  - **Confidentiality:** Add "internal use only" watermark and an opening confidentiality slide before each recording. Make-up viewers must sign acknowledgment.
  - **Survey content:** Anonymous; managers do not see individual responses to confidential questions (comp plan reaction, etc.).
  Skip the standard content-repurposing plan (Output E) entirely for these events — generate only the internal makeup-viewer workflow and the confidentiality watermark instructions.
