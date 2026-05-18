---
name: event-marketing
description: >
  Plan and execute marketing strategy and channel mix to promote B2B events. Generates
  marketing strategies, promotion timelines, channel playbooks, registration funnel
  designs, campaign briefs, and demand generation plans. Plans the promotion strategy —
  event-content writes the actual copy. Use this skill whenever someone asks to
  create an event marketing plan, design a promotion strategy, plan email campaigns for
  event registration, create a social media promotion calendar, design paid advertising
  for an event, build a registration funnel, plan referral or ambassador programs, write
  campaign briefs, optimize registration conversion, or analyze marketing channel
  performance. Also triggers for event launch strategies, early-bird promotion plans,
  last-chance registration campaigns, and multi-channel promotion. Part of the
  event-management-skills collection — handles promotion strategy while event-content
  handles the actual copy.
version: 1
version_date: 2026-03-28
io_schema: references/io-schema.json
---

# Event Marketing

Plan promotion strategies that fill seats. Produces marketing plans, channel playbooks, and funnel designs — strategy and structure, not just content.

## When This Skill Activates

- Create an event marketing or promotion plan
- Design a multi-channel promotion strategy
- Plan email campaign sequences for registration
- Create a social media promotion calendar
- Design paid advertising strategy for an event
- Build and optimize a registration funnel
- Plan referral or ambassador programs
- Analyze marketing channel effectiveness
- Design early-bird and last-chance campaigns

**This skill does NOT:** Write the actual email copy, social post text, or landing page content (use the event-content skill), design registration forms or ticket tiers (use the event-registration skill), set the marketing budget (use the event-budget skill), or measure post-event channel performance or attribution (use the event-analytics skill). Plans the strategy and channel mix — event-content creates the words.

## Step 1: Gather Context

**Required (ask if not provided):**

| Parameter | Why it matters |
|---|---|
| Event type | Shapes channel mix and messaging |
| Event format | In-person / virtual / hybrid — fundamentally changes channel mix, geographic targeting, and urgency mechanics |
| Registration target | Defines the goal the marketing plan must achieve |
| Event date(s) | Sets the promotion timeline |
| Target audience | Determines channels, messaging, and targeting |
| Marketing budget | Constrains channel mix (organic vs. paid) |

**Optional:**

| Parameter | Default |
|---|---|
| Registration platform | Platform-agnostic planning |
| Previous event data | If recurring — conversion rates, channel performance |
| Existing audience (email list size, social followers) | Estimate from event type |
| Partnerships / co-marketing | Plan as bonus, not dependency |
| GDPR/Region | If EU event, load `references/gdpr-marketing.md` for consent requirements |

## Step 2: Route to Output

**Format-specific routing:**
- **In-person:** Geographic targeting, travel incentives, venue-as-selling-point, limited capacity urgency
- **Virtual:** Wider geographic reach, timezone-adjusted campaign timing, low-commitment messaging ("join from your desk"), higher no-show tolerance (register 2x target)
- **Hybrid:** Dual campaigns with separate messaging per attendance mode; in-person has scarcity urgency, virtual emphasizes convenience

| User asks about... | Generate... |
|---|---|
| Full marketing plan | Output A |
| Channel strategy | Output B |
| Registration funnel | Output C |
| Campaign brief | Output D |
| Performance analysis | Output E |

## Step 3: Generate Outputs

**Gated-output handling — MVA + unlock matrix.** When the brief lacks key inputs (budget, audience persona, channel preferences), produce one MVA — typically a channel-mix table for the most-likely B2B audience with all assumptions labeled — and emit an unlock matrix:

```
| Question | Unlocks |
|---|---|
| Marketing budget envelope | Channel ROI ranking, paid vs. organic split, per-channel allocation |
| Audience persona (exec / dev / sales / partner) | Channel mix, messaging pillars, social platform priority |
| Registration target + capacity | Conversion funnel, low-registration rescue protocol triggers |
| Existing audience (email list size, follower count) | Owned vs. earned vs. paid balance, partner co-marketing dependencies |
```

### Output A: Event Marketing Plan

Load from `references/promotion-timeline.md`. Complete marketing plan structure:

1. **Goal:** Registration target, revenue target, awareness metrics
2. **Audience:** Primary and secondary personas with channels they use
3. **Messaging:** Core value proposition, 3-5 messaging pillars, urgency triggers
4. **Channel mix:** Owned (email, website, social), earned (PR, partners, speakers), paid (ads, sponsorships)
5. **Timeline:** Phase-based promotion calendar mapped to registration milestones
6. **Budget allocation:** By channel with expected ROI per channel
7. **Conversion targets:** Website → registration page → completed registration (benchmark funnels)

### Output B: Channel Playbooks

Load from `references/channel-playbooks.md`. Per-channel strategy:

**Email marketing:** Sequence of 8-12 emails over promotion period. Segment by: not-yet-registered, registered, past attendees, speaker networks. Best practices: personalization (+20-26% opens), Tuesday-Thursday sends, subject lines under 45 chars.

**LinkedIn (primary B2B channel):** Organic: 2-3 posts/week during promotion (speaker spotlights, session teasers, countdown). Paid: sponsored content, event ads, lead gen forms. Employee advocacy: draft posts for team to share. LinkedIn Events: create and promote.

**Twitter/X:** Real-time updates, speaker announcements, countdown threads. Higher frequency during promotion (daily in final 2 weeks).

**Website/SEO:** Event landing page optimized for search. Speaker and session pages for long-tail keywords. Blog posts on event topics to drive organic traffic.

**Paid advertising:** LinkedIn Ads (best for B2B targeting), Google Ads (capture search intent), retargeting (website visitors who didn't register).

**Partner marketing:** Co-promotion with speakers, sponsors, and media partners. Provide ready-made social posts, email copy, and banner ads for partners to share.

**PR / media:** Press release for major conferences, media partnerships, press passes, analyst briefings (for product launches).

### Output C: Registration Funnel Design

**Funnel stages with conversion benchmarks:**

| Stage | Metric | Benchmark |
|---|---|---|
| Awareness → Website visit | Impressions to clicks | 1-3% CTR |
| Website visit → Registration page | Landing page to form | 20-40% |
| Registration page → Completed registration | Form conversion | 30-60% (paid), 15-30% (free with friction) |
| Registration → Attendance | Show-up rate | 80-90% (paid), 50-70% (free) |

**Funnel optimization tactics:** Reduce form fields (each field = -11% conversion), add social proof, implement exit-intent popup, use retargeting for page abandoners, test CTA copy ("Save My Seat" vs. "Register Now"), add urgency triggers.

**Low-Registration Contingency:**
If registrations are below 50% of target at T-4 weeks: activate rescue protocol — shift budget to highest-converting channel, increase send frequency, add urgency messaging (countdown, scarcity), deploy peer-referral incentive, consider extending early-bird deadline. Generate specific rescue action plan when this trigger is met.

### Output D: Campaign Brief

Structured brief for each marketing campaign:

```
Campaign: {{campaign_name}}
Objective: {{specific_measurable_goal}}
Audience: {{target_segment}}
Channels: {{channels_used}}
Timeline: {{start_date}} to {{end_date}}
Budget: {{currency_symbol}}{{budget}}
Key message: {{core_message}}
CTA: {{primary_call_to_action}}
Success metric: {{kpi_and_target}}
Owner: {{responsible_person}}
```

### Output E: Channel Performance Analysis

Post-campaign analysis framework: registrations by channel, cost per registration by channel, conversion rate by funnel stage, email performance (opens, clicks, conversions), social engagement metrics, paid ad performance (CPC, CPA, ROAS), channel ROI ranking.

## Step 3.5: Verification Gate

1. **Registration math:** Do channel targets sum to total registration goal?
2. **Timeline feasibility:** Is promotion starting early enough? (6-8 weeks minimum for most events)
3. **Budget allocation logic:** Are highest-ROI channels getting the most budget?
4. **Funnel realism:** Are conversion rates within benchmark ranges?
5. **Channel-content alignment:** Is there enough content to sustain the posting frequency?

## Skill Interface

**Accepts input from:**
- event-planner: Event brief (event_type, format, dates, audience, registration_target)
- event-budget: Marketing budget (total_marketing_budget, channel_allocation)
- event-registration: Registration status (current_registrations, capacity, conversion_rates)

**Produces output for:**
- event-content: Campaign briefs (campaign_name, audience, channels, messaging_pillars, timeline)
- event-registration: Funnel targets (registration_target, traffic_targets, conversion_goals)
- event-analytics: Campaign data (channel_performance, cost_per_registration, funnel_metrics)

## Step 4: Connect to Specialized Skills

- **Content creation:** "For actual email copy, social posts, and landing page text, use the event-content skill"
- **Registration setup:** "For registration form and ticketing design, use the event-registration skill"
- **Budget:** "For marketing budget allocation and ROI modeling, use the event-budget skill"
- **Post-event analysis:** "For campaign performance analysis and ROI reporting, use the event-analytics skill"
- **Event planning:** "For the overall event timeline that marketing must align with, use the event-planner skill"

**Boundary:** event-marketing plans the strategy and channel mix. event-content writes the actual copy. They work together but don't overlap.

## Output Format

- Marketing plans: phased structure (Goal → Audience → Messaging → Channels → Timeline → Budget → Targets)
- Channel playbooks: per-channel section with organic / paid / partner sub-plans and KPIs
- Registration funnels: stage table (Awareness → Visit → Page → Reg → Attendance) with benchmark conversion rates
- Campaign briefs: structured form (objective, audience, channels, timeline, budget, message, CTA, KPI, owner)
- Performance analysis: ranked channel ROI table with cost-per-registration and recommendations
- Strategy outputs only — actual copy is generated by the event-content skill
- Currency: user's currency. Ask if not specified.

## Examples

### Example 1: Full marketing plan
**User says:** "Create a marketing plan to get 500 registrations for our tech conference in 12 weeks."
**Response:** Complete plan with weekly milestones: soft launch (weeks 1-2), early-bird push (weeks 3-6), speaker announcements and agenda release (weeks 7-9), last-chance campaign (weeks 10-12). Channel mix, budget allocation, conversion targets per channel.

### Example 2: LinkedIn promotion strategy
**User says:** "How should we promote our summit on LinkedIn? 1,000 followers, €3,000 budget."
**Response:** Organic plan (3 posts/week for 8 weeks: speaker spotlights, session teasers, countdown), paid plan (full budget across sponsored content + event ads, targeting by job title/industry/seniority), employee advocacy kit (5 pre-written posts for team), LinkedIn Event setup.

### Example 3: Low-budget promotion
**User says:** "We have almost no marketing budget. How do we promote our 200-person meetup?"
**Response:** All-organic strategy: email to existing contacts, community channels (Slack, Discord, Meetup.com), speaker network amplification, partner co-promotion, LinkedIn organic posts, referral incentive ("bring a colleague, both get X"). No paid ads needed for community events.

## Edge Cases

- **No marketing budget:** Focus on owned channels (email list, social) and earned (speaker networks, partner amplification, community posts). Generate a zero-budget promotion playbook.
- **First event (no audience):** Heavier reliance on paid ads, speaker networks, and partner co-marketing. Generate an audience-building plan alongside promotion.
- **Internal event (SKO, town hall):** Replace external marketing entirely with internal communications plan. No LinkedIn, no paid ads, no public landing page. Instead: executive email announcement (CEO/CHRO), Slack/Teams channel with drip updates, calendar hold from admin, manager cascade ("ensure your team attends"), countdown in internal newsletter. Urgency drivers: agenda teasers, confirmed leadership speakers, team challenges.
- **Very short timeline (<4 weeks):** Compress to essentials: one email blast, LinkedIn push, direct outreach to target accounts. Skip content marketing and SEO.
- **Virtual event:** Increase paid digital budget (no travel means wider geographic targeting). Add webinar/content marketing as awareness drivers. Emphasize low commitment ("join from your desk").
- **Hybrid:** Dual messaging needed — promote in-person experience AND virtual value separately. Different urgency triggers per format.
- **Accessible marketing materials:** All social media images need alt-text. Video ads need captions/subtitles. Landing pages must meet WCAG 2.1 AA. Email campaigns need plain-text alternatives. Ensure color contrast ratios meet 4.5:1 minimum for text. Don't rely on color alone to convey information (e.g., "click the green button").
- **Multi-city roadshow:** Per-city promotion with staggered timelines — city 1 promotion starts first. Geo-targeted campaigns per city. Cross-city social proof ("200 already registered across 3 cities"). Shared brand toolkit for local partners. Per-city registration targets and landing pages.
