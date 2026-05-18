# Hybrid Event Requirements

Load this reference when the event format is hybrid (simultaneous in-person and virtual audiences). Hybrid events require additional deliverables beyond the standard six outputs.

## Table of Contents

1. [Hybrid-Specific Timeline Additions](#hybrid-specific-timeline-additions)
2. [Dual-Audience Run-of-Show Template](#dual-audience-run-of-show-template)
3. [Technical Requirements Checklist](#technical-requirements-checklist)
4. [Speaker Hybrid Delivery Prep Guide](#speaker-hybrid-delivery-prep-guide)
5. [Virtual Attendee Experience Guide](#virtual-attendee-experience-guide)
6. [Content Repurposing Plan](#content-repurposing-plan)
7. [Hybrid Budget Considerations](#hybrid-budget-considerations)

---

## Hybrid-Specific Timeline Additions

These tasks are in addition to the standard event timeline. Integrate them at the indicated phases:

### Planning Phase (T-9 to T-3 months)
| When | Task | Dependencies |
|---|---|---|
| T-8 months | Select virtual event platform (evaluate: streaming quality, engagement features, analytics, reliability, cost) [CP] | Objectives defined |
| T-7 months | Contract streaming/production partner for virtual component | Platform selected |
| T-6 months | Define virtual engagement strategy (live Q&A, polls, chat moderation, virtual networking, breakout rooms) | Platform selected |
| T-6 months | Design dual-track attendee experience (what's shared, what's exclusive to each format) | Content strategy defined |
| T-5 months | Configure platform (sessions, breakout rooms, sponsor virtual booths, on-demand library) | Platform contracted |

### Execution Prep (T-3 to T-1 month)
| When | Task | Dependencies |
|---|---|---|
| T-3 months | Ship speaker tech kits to remote presenters (camera, microphone, ring light, instructions) | Speaker list confirmed |
| T-2 months | Individual speaker tech checks — verify setup, lighting, audio, background | Tech kits delivered |
| T-6 weeks | Build virtual attendee guide (platform access, troubleshooting, engagement features) | Platform configured |
| T-4 weeks | Test streaming end-to-end from venue to platform (video, audio, screen share, backup stream) | AV vendor + platform confirmed |
| T-2 weeks | Full hybrid dress rehearsal with in-room speakers, remote speakers, virtual moderators, and production team [CP] | All tech confirmed |
| T-1 week | Test backup streaming path (4G/5G bonding, secondary ISP, pre-recorded backup) | Primary stream tested |
| T-3 days | Send virtual attendee prep email (login credentials, platform guide, tech requirements, agenda with timezone conversion) | Attendee list finalized |
| T-1 day | Final platform test, verify on-demand content library, check all session links | — |

## Dual-Audience Run-of-Show Template

A hybrid run-of-show must have two parallel columns — one for the in-room experience and one for the virtual production. The virtual column includes cues that in-room staff don't see (stream transitions, virtual engagement triggers, chat moderation actions).

### Template Structure

```
| Time | In-Room Cues | Virtual Production Cues | Speaker Notes |
|---|---|---|---|
| 08:30 | Doors open, registration begins | Stream holding slide with countdown timer | — |
| 08:55 | Lights dim, walk-in music fades | Switch to live camera, unmute stream audio | — |
| 09:00 | MC welcome from stage | Push welcome poll to virtual audience | MC acknowledges both audiences |
| 09:05 | Keynote speaker introduced | Camera 1 on speaker, slides on stream | Speaker uses clicker |
| 09:25 | In-room Q&A microphone runner | Virtual Q&A moderator selects questions from chat | MC alternates: 1 in-room, 1 virtual |
| 09:30 | Transition: lights up, coffee break | Stream transitions to break slide, push networking feature | 15-min break for both |
| 09:45 | Breakout sessions begin | Virtual breakout rooms open, moderators assigned | Parallel tracks start |
```

**Key principles for dual run-of-show:**
- Virtual audience needs more visual cues (countdown timers, holding slides, transition graphics) because they cannot see the room
- Always allocate equal Q&A time to virtual and in-room questions — virtual attendees must feel like first-class participants
- Plan for 5-10 second stream delay — in-room and virtual are never perfectly synchronized
- Assign a dedicated virtual experience host/moderator who is the "face" of the event for remote attendees
- Chat moderation needs staffing: 1 moderator per 200 virtual attendees for general business conferences; **1 per 100 for developer / technical audiences** (higher chat volume — devs ask more questions, share more code snippets, dive deeper); 1 per 50 for hands-on workshop tracks with technical Q&A
- Plan engagement triggers every 10-15 minutes for virtual audience (polls, reactions, chat prompts) to combat drop-off

## Technical Requirements Checklist

### Internet & Streaming
- [ ] Dedicated internet line for streaming (minimum 20 Mbps upload, ideally 50+ Mbps)
- [ ] Backup internet connection (4G/5G bonding or secondary ISP)
- [ ] Streaming encoder (hardware encoder preferred over software for reliability)
- [ ] Redundant streaming path configured (if primary fails, auto-switch to backup)
- [ ] CDN or platform can handle expected concurrent virtual viewers
- [ ] Stream latency tested and acceptable (<10 seconds recommended)

### Camera & Audio
- [ ] Minimum 2 cameras per main stage (speaker close-up + wide shot)
- [ ] Camera operator or PTZ (pan-tilt-zoom) remote control system
- [ ] Audio feed from house sound system routed to stream (not microphone pointed at speaker from camera)
- [ ] Separate audio mix for stream vs. room (stream needs compressed, equalized audio)
- [ ] Backup wireless microphone for each session room
- [ ] Audio monitoring position for stream engineer (hearing what virtual audience hears)

### Platform & Experience
- [ ] Virtual event platform load-tested at expected concurrent users AND contract tier covers peak concurrency (most platforms enforce per-tier caps — read the SLA, not the marketing page). For 1,000+ concurrent viewers, verify the platform's "burst" allowance, not just the steady-state cap.
- [ ] Session rooms configured with correct speakers, times, descriptions
- [ ] Virtual sponsor booths configured with assets and staff assignments
- [ ] Breakout rooms configured for virtual networking
- [ ] On-demand content library ready for post-event recordings
- [ ] Live captioning enabled (auto-generated or human captioner)
- [ ] Mobile experience tested (many virtual attendees join from phones)

### Speaker Setup (Remote Speakers)
- [ ] Speaker tech kit shipped: HD webcam, USB microphone, ring light, ethernet adapter
- [ ] Speaker's internet connection tested (minimum 10 Mbps upload)
- [ ] Speaker background checked (professional, well-lit, minimal distractions)
- [ ] Speaker has backup device and backup internet (phone hotspot)
- [ ] Green room / waiting room configured for speakers to join 15 min early
- [ ] Screen share tested with speaker's actual presentation file

## Speaker Hybrid Delivery Prep Guide

Send this guide to all speakers presenting at a hybrid event, whether in-room or remote.

### For In-Room Speakers Presenting to a Hybrid Audience

1. **Acknowledge both audiences.** Open with "Welcome to everyone here in the room and to our virtual attendees joining from around the world." Reference the virtual audience at least 2-3 times during your talk.
2. **Look at the camera periodically.** The main camera is your connection to the virtual audience. Alternate between looking at the room and looking at the camera lens — not the monitor showing virtual attendees.
3. **Repeat in-room questions for the stream.** Virtual attendees cannot hear audience questions. Before answering, repeat the question: "Great question — for those online, the question was..."
4. **Move less than usual.** Camera operators can follow you, but staying within a defined zone ensures better framing for virtual viewers.
5. **Use high-contrast slides.** Virtual viewers see your slides on smaller screens. Use large fonts (24pt minimum), high contrast, and avoid detailed charts that don't read at low resolution.

### For Remote Speakers Presenting Virtually

1. **Set up 2 hours before your session.** Join the green room to test audio, video, screen share, and backup devices.
2. **Use ethernet, not WiFi.** Hardwired connections are dramatically more reliable for streaming.
3. **Close all other applications.** No Slack, email, or browser tabs. Disable system notifications.
4. **Position the camera at eye level.** Laptop cameras below eye level create an unflattering angle — use a stack of books or a laptop stand.
5. **Light your face from the front.** Ring light or window in front of you. No backlighting (window behind you = silhouette).
6. **Have a backup plan.** If your primary setup fails, be ready to switch to phone (dial-in audio + mobile camera) within 2 minutes. Keep the event tech support number on your phone.

## Virtual Attendee Experience Guide

Template for the attendee-facing guide sent 3 days before the event.

### Contents to Include

1. **Platform access**: URL, login credentials, browser requirements (Chrome recommended), mobile app link
2. **Tech requirements**: Minimum internet speed (5 Mbps download), supported browsers, recommended setup (headphones, second screen)
3. **Troubleshooting**: What to do if video doesn't load, audio isn't working, screen share is blank. Include tech support contact (live chat, email, phone).
4. **Agenda with timezone conversion**: Show all session times in the attendee's timezone plus event-local time
5. **How to engage**: Guide to Q&A, polls, chat, reactions, virtual networking, breakout rooms
6. **On-demand content**: Which sessions will be available as recordings post-event, when they'll be published
7. **Networking tips**: How to use the virtual networking feature, connect with other attendees, visit sponsor booths
8. **FAQ**: Common questions about platform, technical issues, session recordings, certificates of attendance

## Content Repurposing Plan

Hybrid events produce more content assets than in-person events because everything is already recorded and digitized. Plan content repurposing before the event, not after.

### Content Asset Matrix

| Source | Asset Type | Timeline | Channel |
|---|---|---|---|
| Keynote recordings | Full session on-demand | T+1 week | Event platform, YouTube |
| Keynote recordings | 2-3 minute highlight clips | T+2 weeks | LinkedIn, social media |
| Session recordings | Full sessions on-demand | T+2 weeks | Event platform, gated content library |
| Speaker slide decks | PDF downloads | T+1 week | Event website, email to attendees |
| Panel discussions | Blog post summaries (key takeaways) | T+2 weeks | Company blog |
| Audience Q&A | FAQ document or blog post | T+2 weeks | Knowledge base, blog |
| Event photos | Social media gallery, press kit | T+2 days | Social media, press |
| Attendee testimonials | Social proof for next edition | T+2 weeks | Website, marketing materials |
| Session data (attendance, engagement) | Internal report | T+4 weeks | Internal stakeholders |

## Hybrid Budget Considerations

Hybrid events are the most expensive format because they require dual production. Plan for these additional cost centers:

| Category | Estimated Additional Cost (% of technology budget) | Notes |
|---|---|---|
| Streaming production (cameras, encoder, operator) | 25-40% | Depends on camera count and production complexity |
| Virtual event platform licensing | 20-35% | Based on expected virtual attendees and features |
| Internet upgrade at venue | 3-8% | Dedicated upload line for streaming |
| Remote speaker tech kits | 2-5% per speaker | Camera, mic, light, shipping |
| Virtual engagement moderators | 5-10% per day per moderator | 1 moderator per 200 virtual attendees |
| Live captioning | 5-10% per day | Human captioner for accessibility |
| Content post-production | 5-15% | Editing recordings for on-demand library |

**Rule of thumb:** Budget 30-40% more than the equivalent in-person event for hybrid. If budget is constrained, consider livestreaming keynotes only rather than all sessions — this captures 80% of the hybrid value at 30% of the hybrid cost.
