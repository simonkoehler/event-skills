# Event-Type Routing Matrix

Load this reference when the event-orchestrator needs to determine which skills are relevant for a specific event type, or when any skill needs to check whether it applies to the current event.

---

## Skill Relevance by Event Type

Each cell indicates: **R** = Required, **O** = Optional, **—** = Not applicable

| Event Type | planner | budget | speakers | content | logistics | registration | sponsors | marketing | analytics | exhibition |
|---|---|---|---|---|---|---|---|---|---|---|
| Conference | R | R | R | R | R | R | R | R | R | — |
| Trade show (organizer) | R | R | O | R | R | R | R | R | R | — |
| Trade show (participant) | — | O | — | O | — | — | — | O | O | R |
| Partner conference | R | R | R | R | R | R | O | O | R | — |
| Product launch | R | R | O | R | R | R | O | R | R | — |
| Sales kickoff (SKO) | R | R | R | R | R | — | — | — | R | — |
| Developer conference | R | R | R | R | R | R | R | R | R | — |
| Industry summit | R | R | R | R | R | R | O | O | R | — |
| Roadshow | R | R | O | R | R | R | O | R | R | — |
| Community meetup | R | O | O | O | O | R | — | O | O | — |
| Micro event (VIP) | R | O | O | O | O | — | — | — | O | — |
| Town hall / All-hands | R | O | O | R | O | — | — | — | O | — |
| Webinar | R | O | R | R | — | R | O | R | R | — |

## Event-Type-Specific Input Overrides

When a specific event type is detected, these fields change behavior:

### SKO (Sales Kickoff)
```json
{
  "skip_skills": ["event-registration", "event-sponsors", "event-marketing"],
  "override_inputs": {
    "event-registration": null,
    "event-planner": { "registration_method": "calendar_invite_via_hr" },
    "event-content": { "audience": "internal", "tone": "motivational" }
  }
}
```

### Webinar
```json
{
  "skip_skills": ["event-logistics", "event-exhibition"],
  "override_inputs": {
    "event-planner": { "timeline_compression": true, "lead_time_weeks": 4 },
    "event-registration": { "overbooking_factor": 1.5, "no_show_rate": 0.45 },
    "event-content": { "post_event": "on_demand_recording" }
  }
}
```

### Micro Event (VIP Dinner / Executive Roundtable)
```json
{
  "skip_skills": ["event-registration", "event-sponsors", "event-marketing", "event-exhibition"],
  "override_inputs": {
    "event-planner": { "registration_method": "personal_invitation", "scale": "intimate" },
    "event-content": { "tone": "exclusive", "no_mass_email": true }
  }
}
```

### Community Meetup
```json
{
  "skip_skills": ["event-sponsors", "event-exhibition"],
  "override_inputs": {
    "event-registration": { "fields": ["name", "email"], "overbooking_factor": 1.4 },
    "event-budget": { "budget_range": "low", "cost_index": 0.1 }
  }
}
```

### Town Hall / All-Hands
```json
{
  "skip_skills": ["event-registration", "event-sponsors", "event-marketing", "event-exhibition"],
  "override_inputs": {
    "event-planner": { "audience": "internal", "attendance": "mandatory" },
    "event-content": { "channel": "internal_comms", "no_public_content": true }
  }
}
```

### Trade Show (Participant)
```json
{
  "start_skill": "event-exhibition",
  "skip_skills": ["event-planner", "event-speakers", "event-logistics", "event-registration", "event-sponsors"],
  "override_inputs": {
    "event-exhibition": { "role": "exhibitor" }
  }
}
```
