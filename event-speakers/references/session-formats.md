# Session Formats

Load this reference when designing session formats (Output F) or building agendas (Output D).

## Table of Contents

1. [Format Specifications](#format-specifications)
2. [Panel Discussion Design](#panel-discussion-design)
3. [Workshop Design](#workshop-design)
4. [Agenda Building Patterns](#agenda-building-patterns)

---

## Format Specifications

### Keynote

| Element | Specification |
|---|---|
| Duration | 30-45 minutes (including introduction) |
| Setup | Main stage, plenary room, all attendees |
| AV | Full stage lighting, confidence monitor, large screen, lapel mic |
| Q&A | 0-10 minutes (often skip Q&A for keynotes; use hallway conversations instead) |
| Slide format | 16:9, 1920×1080, minimal text, high-impact visuals |
| Rehearsal | 1-2 full run-throughs recommended, especially for product demos |
| Speaker type | Typically invited, often paid (mid-tier to high-profile). For speaker budget tiers and fee benchmarks, use the event-budget skill. |
| Best placement | Opening or closing of event/day. Sets the tone. |

### Breakout Talk

| Element | Specification |
|---|---|
| Duration | 30-40 minutes total (25-30 talk + 5-10 Q&A) |
| Setup | Breakout room, theater or classroom style, 50-200 people |
| AV | Projector/screen, handheld or lapel mic, slide clicker |
| Q&A | 5-10 minutes at end. Assign a mic runner for audience questions. |
| Slide format | 16:9, readable from back of room (24pt minimum font) |
| Rehearsal | Encouraged but not mandatory. Tech check on event day. |
| Speaker type | Practitioners, experts, submitted via CFP or invited |
| Best placement | Mid-morning or mid-afternoon, spread across tracks |

### Panel Discussion

| Element | Specification |
|---|---|
| Duration | 45-60 minutes |
| Setup | Stage with chairs (no table), 3-4 panelists + moderator |
| AV | Individual mics per panelist, optional slides for intro |
| Q&A | 10-15 minutes audience Q&A integrated into second half |
| Moderator | Essential. Must prepare questions, manage time, prevent monologues |
| Best placement | After related talks (deepens the topic) or as standalone |

### Workshop / Hands-On Lab

| Element | Specification |
|---|---|
| Duration | 60-90 minutes (shorter = too rushed; longer = energy drops) |
| Setup | Classroom with tables, power strips, WiFi. Max 30-50 people. |
| AV | Projector + screen, facilitator mic |
| Materials | Pre-distributed instructions, software pre-installed, GitHub repo shared 24h in advance |
| Facilitator | Needs 1 assistant per 15-20 participants for troubleshooting |
| Best placement | Afternoon (energy dip makes hands-on formats more engaging than passive talks) |

### Lightning Talk

| Element | Specification |
|---|---|
| Duration | 5-10 minutes (strict — timer visible to speaker) |
| Setup | Main stage or breakout room, rapid rotation |
| AV | Single screen, auto-advance slides optional |
| Q&A | None during lightning block. Speakers available afterward. |
| Grouping | Block of 4-6 lightning talks = 45-60 minute session |
| Best placement | Pre-lunch energy burst or end-of-day variety |

### Fireside Chat

| Element | Specification |
|---|---|
| Duration | 20-30 minutes |
| Setup | Two comfortable chairs, casual staging |
| AV | Two lapel mics, no slides |
| Format | Interviewer + guest. Conversational, no formal presentation. |
| Preparation | Interviewer prepares 8-10 questions; uses 5-6, adapts to conversation |
| Best placement | Interspersed between dense sessions for energy contrast |

### Unconference / Open Space

| Element | Specification |
|---|---|
| Duration | 60-90 minutes per round (typically 2-3 rounds per day) |
| Setup | Multiple breakout spaces, sticky notes, markers, topic board |
| Facilitation | Open Space Technology rules: whoever comes is the right people, whenever it starts is the right time, whatever happens is the only thing that could have, when it's over it's over |
| Best placement | Day 2 (after attendees know each other) or standalone format |

---

## Panel Discussion Design

### Panel Structure (45 minutes)

| Time | Activity | Notes |
|---|---|---|
| 0:00-2:00 | Moderator welcome and topic framing | Set context, explain format |
| 2:00-5:00 | Quick panelist introductions | 30-45 seconds each, NOT full bios |
| 5:00-8:00 | Opening question (each panelist answers) | Broad question, 1 minute each |
| 8:00-30:00 | Discussion questions (3-4 questions) | Moderator directs, manages time |
| 30:00-40:00 | Audience Q&A | Mic runner, moderator selects questions |
| 40:00-45:00 | Closing: one takeaway per panelist | 30 seconds each, then moderator wrap |

### Moderator Preparation

- **Pre-panel call (2-3 weeks before):** 30-minute call with all panelists. Establish rapport. Share questions. Identify areas of agreement and disagreement.
- **Question preparation:** Prepare 8-10 questions, plan to use 5-6. Mix: 2 broad opening questions, 3-4 specific/provocative questions, 2 backup questions.
- **Rules to share with panelists:** Keep answers to 60-90 seconds. Be additive, not repetitive. It's OK to disagree. Lean forward to signal you want to speak.

### Common Panel Failures and Prevention

| Failure | Cause | Prevention |
|---|---|---|
| One panelist dominates | No time management | Moderator interrupts politely after 90 sec |
| Boring agreement on everything | Safe questions, similar panelists | Include one contrarian; ask provocative questions |
| Audience Q&A goes off-topic | No question filtering | Moderator screens questions, rephrases if needed |
| Panelists repeat each other | No pre-call, similar backgrounds | Assign each panelist a distinct angle in pre-call |

---

## Workshop Design

### Workshop Planning Template

```
Workshop: {{workshop_title}}
Facilitator: {{facilitator_name}}
Duration: {{duration}} minutes
Max participants: {{max_participants}}

Prerequisites:
- {{prerequisite_1}} (e.g., laptop with Docker installed)
- {{prerequisite_2}} (e.g., GitHub account)

Materials to prepare:
- [ ] Step-by-step guide document
- [ ] Starter code / template repository
- [ ] Slides for introduction and transitions
- [ ] Backup plan if WiFi fails (local files, USB drives)

Timing:
| Time | Activity |
|---|---|
| 0:00-10:00 | Introduction: goals, agenda, verify setup |
| 10:00-15:00 | Demo: show the end result |
| 15:00-45:00 | Hands-on exercise (guided, in steps) |
| 45:00-55:00 | Share results, troubleshoot, Q&A |
| 55:00-60:00 | Wrap-up: next steps, resources, feedback |

Facilitator needs:
- 1 assistant per 15-20 participants
- Room with power outlets at every table
- WiFi tested for simultaneous connections
```

---

## Agenda Building Patterns

### Single-Track Day (4-6 sessions)

```
09:00 — Welcome + Keynote (45 min)
09:50 — Break (20 min)
10:10 — Talk 1 (40 min)
10:55 — Talk 2 (40 min)
11:40 — Break (20 min)
12:00 — Lightning Talks (45 min, 4-5 speakers)
12:45 — Lunch (75 min)
14:00 — Workshop or Talk 3 (60 min)
15:05 — Talk 4 (40 min)
15:50 — Break (20 min)
16:10 — Closing Keynote or Panel (45 min)
17:00 — Networking Reception
```

### Multi-Track Day (15-18 sessions across 3 tracks)

Follows the same time blocks but with parallel sessions. See SKILL.md Output D for scheduling constraints.

### Energy Arc

Design the day's energy intentionally:
- **Morning:** High energy. Keynote → dense technical talks
- **Pre-lunch:** Lightning talks (variety, fast pace)
- **After lunch:** Interactive formats (workshops, panels — avoid passive talks during the 14:00-15:00 energy dip)
- **Late afternoon:** Lighter content, audience participation
- **Close:** High-energy session or panel, followed by networking

### Time Buffer Rules

- 15 minutes minimum between sessions (room transitions, speaker setup)
- 5 minutes between lightning talks (enough for speaker swap)
- 30 minutes for major transitions (plenary → breakouts or vice versa)
- Build 15-30 minutes slack into the full day for inevitable overruns

---

### Hackathon
- Duration: 4-24 hours (standalone) or 3-4 hours (within a conference)
- Setup: tables for teams of 3-5, power strips, strong WiFi, projector for demos
- Structure: kickoff/rules (15 min), hacking time, demo presentations (3-5 min per team), judging, awards
- Requirements: separate registration (team size, skills), judging criteria and panel, prize structure, mentor availability
- Notes: overnight hackathons need food, quiet space, security. Conference-embedded hackathons work best as evening or half-day events.

### Awards Ceremony
- Duration: 45-90 minutes
- Setup: stage with podium, presentation screen, walk-up music, photographer
- Structure: host opening, category presentations (2-3 min each), winner announcements, acceptance remarks (1-2 min), closing
- Requirements: nomination/judging workflow completed before event, trophy/certificate production, winner notification (optional: surprise vs. pre-notified), presenter assignments per category
- Notes: exempt from 70/30 content balance rule. Pair with dinner or reception for maximum impact.
