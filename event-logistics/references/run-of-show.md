# Run-of-Show Templates

Load this reference when generating production documents (Output C).

## Table of Contents

1. [Run-of-Show Template](#run-of-show-template)
2. [Floor Plan Brief Template](#floor-plan-brief-template)
3. [Load-In Schedule Template](#load-in-schedule-template)
4. [Registration Flow Design](#registration-flow-design)
5. [Emergency Procedures Template](#emergency-procedures-template)

---

## Run-of-Show Template

The run-of-show is the single most important production document. It is the minute-by-minute script for executing the event.

### Column Structure

| Time | Duration | Activity | Location | Lead | AV/Tech Cues | Speaker | Notes |
|---|---|---|---|---|---|---|---|
| 07:00 | 60 min | Venue opens, vendor load-in begins | Loading dock | Logistics Lead | — | — | Verify AV delivery |
| 08:00 | 60 min | AV setup and testing all rooms | All rooms | AV Lead | Test all mics, projectors, WiFi | — | Report issues by 08:45 |
| 08:30 | 30 min | Registration desk setup | Lobby | Reg Lead | Test badge printers, scanners | — | Backup offline list ready |
| 08:30 | 30 min | Signage installation | All areas | Ops team | — | — | Photo of each sign placement |
| 09:00 | 90 min | Registration opens | Lobby | Reg Lead | — | — | Doors open to attendees |
| 09:00 | 15 min | Speaker check-in, green room open | Green room | Speaker Liaison | — | All AM speakers | Coffee, water, chargers |
| 10:00 | 5 min | House lights dim, walk-in music fades | Main stage | AV | Cue: dim lights, fade music | MC | MC positioned side-stage |
| 10:05 | 5 min | MC opening remarks | Main stage | MC | Cue: podium mic live, slides on screen | MC | Welcome, housekeeping, WiFi, hashtag |
| 10:10 | 45 min | Keynote: {{speaker_name}} | Main stage | AV | Cue: lapel mic, clicker, confidence monitor | {{speaker}} | Timer visible to speaker |
| 10:55 | 5 min | MC transition to break | Main stage | MC | Cue: house lights up | MC | Announce break, catering location |
| 11:00 | 30 min | Coffee break | Foyer | Catering | — | — | Catering service 10:55 |
| 11:30 | 40 min | Breakout Session 1A | Room A | Room mgr | Session slides on screen | {{speaker}} | Mic runner for Q&A |
| 11:30 | 40 min | Breakout Session 1B | Room B | Room mgr | Session slides on screen | {{speaker}} | — |
| ... | ... | ... | ... | ... | ... | ... | ... |

### Rules for Building Run-of-Show

- **Time column is absolute** (clock time, not relative)
- **Every transition has a line** (even "MC walks to stage")
- **AV cues are specific** ("Cue: switch to camera 2" not "change camera")
- **Catering has exact service times** (food out 5 min before break starts)
- **Buffer built in** (15 min slack per half-day for overruns)
- **Two versions:** Production version (full detail) and Speaker/Staff version (simplified)

---

## Floor Plan Brief Template

This is a specification document for the venue — not the drawing itself.

```
# Floor Plan Brief: {{event_name}}

## Room: {{room_name}}
- **Purpose:** {{session_type}} (keynote / breakout / workshop / exhibition / catering)
- **Setup style:** {{setup_style}} (theater / classroom / banquet / U-shape / cabaret)
- **Expected capacity:** {{capacity}} people
- **Dimensions needed:** {{min_dimensions}} m²

### Furniture
- Chairs: {{chair_count}}
- Tables: {{table_count}} × {{table_type}} (round 8-person / rectangle 6-person / classroom)
- Stage: {{stage_spec}} (size, height, steps, ramp)
- Podium/lectern: Yes / No
- Registration desk: {{desk_count}} × {{desk_length}}m

### AV Requirements
- Projector/screen: {{screen_size}} (or LED wall: {{led_dimensions}})
- Speakers: {{speaker_setup}} (stereo / distributed / line array)
- Microphones: {{mic_count}} × {{mic_type}} (lapel / handheld / podium / audience)
- Confidence monitor: Yes / No
- Recording: Yes / No
- Streaming: Yes / No

### Power
- Outlets needed: {{outlet_count}} (location: {{locations}})
- Dedicated circuits: {{circuit_needs}} (for AV, lighting)
- Extension cords allowed: Yes / No (venue policy)

### Signage
- Room name sign: outside door
- Wayfinding: from {{direction_from}}
- Sponsor banner: {{banner_location}} ({{banner_size}})
- WiFi info sign: inside room

### Accessibility
- Wheelchair accessible: {{yes_no}}
- Hearing loop: {{yes_no}}
- Reserved seating for mobility needs: front row, aisle access

### Notes
- {{special_notes}}
```

Repeat for each room. Include one section for common areas (foyer, catering area, exhibitor hall).

---

## Load-In Schedule Template

| Time | Vendor / Team | Activity | Location | Contact | Notes |
|---|---|---|---|---|---|
| Day before, 08:00 | Venue staff | Open loading dock, freight elevator | Loading dock | {{venue_contact}} | Keys/access required |
| Day before, 08:30 | AV vendor | Deliver and position main stage equipment | Main hall | {{av_contact}} | Heaviest items first |
| Day before, 10:00 | Signage vendor | Install wayfinding and room signs | All areas | {{signage_contact}} | Map of placements provided |
| Day before, 12:00 | Registration vendor | Set up check-in desks, test badge printers | Lobby | {{reg_contact}} | Need power and WiFi |
| Day before, 14:00 | AV vendor | Full sound check and projection test | All rooms | {{av_contact}} | All rooms operational by 16:00 |
| Day before, 16:00 | Event team | Full walkthrough and punch list | All areas | Event Manager | Photograph all setups |
| Event day, 07:00 | Catering | Deliver and set up morning coffee service | Foyer | {{catering_contact}} | Service ready by 08:30 |
| Event day, 07:30 | Event team | Final checks, signage, materials placement | All areas | Ops Lead | Last corrections |

### Teardown (Load-Out)

| Time | Vendor / Team | Activity | Notes |
|---|---|---|---|
| Event end + 30 min | Event team | Secure valuable items, back up recordings | Before vendors start teardown |
| Event end + 1h | AV vendor | Begin AV teardown | Main stage first, breakouts second |
| Event end + 1h | Signage | Remove all signage and banners | Leave no trace |
| Event end + 2h | Catering | Final cleanup, remove all F&B items | Kitchen cleared |
| Event end + 3-4h | All vendors | Loading dock clear | Venue inspection with venue manager |

---

## Registration Flow Design

### Desk Layout Options

**By last name (standard for 200+ attendees):**
- Desk 1: A-F
- Desk 2: G-L
- Desk 3: M-R
- Desk 4: S-Z
- Desk 5: VIP / Speakers / Press (express lane)

**By ticket type (good for tiered events):**
- Desk 1-2: General admission
- Desk 3: VIP / Premium
- Desk 4: Speakers / Staff
- Desk 5: On-site registration / walk-ins

### Staffing Formula

- **Peak check-in period:** First 90 minutes of day 1
- **Staffing ratio:** 1 staff member per 50-75 expected arrivals during peak
- **For 500 attendees arriving in 90 min:** 8-10 registration staff
- **Add 1-2 staff for troubleshooting** (wrong name, missing registration, on-site changes)
- **Add 1 staff for badge reprints** (printer jams, errors)

### Backup Plan (System Failure)

- Print offline attendee list (alphabetical, with ticket type) — updated night before
- Pre-print blank badges for manual writing
- Designate 1 desk as "manual check-in" with printed list
- Test backup process during setup (not just primary system)

---

## Emergency Procedures Template

Post at all staff positions and brief all team members.

```
# Emergency Procedures: {{event_name}}

## Emergency Contacts
- Event Manager: {{event_manager_name}}, {{event_manager_phone}}
- Venue Security: {{venue_security_phone}}
- Local Emergency: {{local_emergency_number}} (112 in EU, 911 in US)
- Nearest Hospital: {{hospital_name}}, {{hospital_address}}, {{hospital_phone}}

## Medical Emergency
1. Call for help. Do not move the person unless in immediate danger.
2. Call local emergency number: {{local_emergency_number}}
3. Notify Event Manager: {{event_manager_phone}}
4. Send someone to guide paramedics from venue entrance
5. First aid kit location: {{first_aid_location}}

## Evacuation
1. Announce: "Please calmly proceed to the nearest exit"
2. Emergency exits: {{exit_locations}}
3. Assembly point: {{assembly_point}}
4. Do NOT use elevators
5. Staff: sweep your assigned area, confirm all clear to Event Manager

## Fire
1. Activate fire alarm if not already sounding
2. Call local emergency: {{local_emergency_number}}
3. Begin evacuation per above
4. Do NOT attempt to fight fire unless trained and it is small

## Power Outage
1. Remain calm. Emergency lighting should activate.
2. Pause sessions. Announce status to attendees.
3. Contact venue: {{venue_contact_phone}}
4. If extended (>15 min): assess whether to continue, delay, or cancel

## Severe Weather (outdoor/hybrid events)
1. Monitor weather alerts starting 24h before event
2. If alert during event: move outdoor activities inside
3. Decision authority: Event Manager
4. Communicate changes via event app / PA system / staff
```
