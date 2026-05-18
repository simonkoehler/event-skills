# Event Planning Canvas

> Template for the event-planner skill. Populate all fields based on user input and defaults from `references/planning-defaults.md`. Replace all `{{placeholder}}` values.

## Table of Contents

- [Objectives](#objectives)
- [Target Audience](#target-audience)
- [Budget Overview](#budget-overview)
- [Key Milestones](#key-milestones)
- [Stakeholders](#stakeholders)
- [Success Criteria](#success-criteria)
- [Open Questions](#open-questions)
- [Constraints & Risks](#constraints--risks)

---

## {{event_name}}

**Type:** {{event_type}}
**Tagline:** {{one_line_description}}
**Date(s):** {{event_dates}}
**Location:** {{venue_name}}, {{city}}, {{country}}
**Format:** {{in_person_hybrid_virtual}} | {{single_day_multi_day}} | {{number_of_tracks}} track(s)

---

### Objectives

| # | Objective | KPI | Target |
|---|---|---|---|
| 1 | {{objective_1}} | {{kpi_1}} | {{target_1}} |
| 2 | {{objective_2}} | {{kpi_2}} | {{target_2}} |
| 3 | {{objective_3}} | {{kpi_3}} | {{target_3}} |

### Target Audience

**Primary:** {{primary_audience_description}}
**Secondary:** {{secondary_audience_description}}
**Expected attendance:** {{expected_attendees}}
**Registration target:** {{registration_target}} (accounting for {{no_show_rate}}% estimated no-show rate)

**Canonical audience profile** (passed verbatim to event-sponsors, event-marketing, event-content, event-speakers, event-analytics):

```yaml
audience_profile:
  job_titles: [{{title_1}}, {{title_2}}, {{title_3}}]   # top 3-5
  industries: [{{industry_1}}, {{industry_2}}]           # top 3-5
  company_sizes:
    smb_pct: {{smb_pct}}                                  # <100 employees
    midmarket_pct: {{midmarket_pct}}                      # 100-1,000
    enterprise_pct: {{enterprise_pct}}                    # 1,000+
  geographies: [{{geo_1}}, {{geo_2}}]
  seniorities:
    ic_pct: {{ic_pct}}
    manager_pct: {{manager_pct}}
    director_pct: {{director_pct}}
    vp_pct: {{vp_pct}}
    csuite_pct: {{csuite_pct}}
  buying_authority:
    decision_pct: {{decision_pct}}
    influencer_pct: {{influencer_pct}}
    user_pct: {{user_pct}}
```

All percentages should sum to 100% within each sub-category. If unknown, mark as `{{unknown}}` rather than guessing — downstream skills (event-sponsors tier design, event-marketing targeting) need real numbers to calibrate.

### Budget Overview

| Category | Planned ({{currency}}) | % of Total | Notes |
|---|---|---|---|
| Venue | {{venue_budget}} | {{venue_pct}}% | |
| Food & beverage | {{fb_budget}} | {{fb_pct}}% | |
| AV / production | {{av_budget}} | {{av_pct}}% | |
| Marketing | {{marketing_budget}} | {{marketing_pct}}% | |
| Speakers | {{speaker_budget}} | {{speaker_pct}}% | |
| Materials & signage | {{materials_budget}} | {{materials_pct}}% | |
| Staff & labor | {{staff_budget}} | {{staff_pct}}% | |
| Technology | {{tech_budget}} | {{tech_pct}}% | |
| Contingency | {{contingency_budget}} | {{contingency_pct}}% | |
| **Total** | **{{total_budget}}** | **100%** | |

**Revenue sources:** {{revenue_sources}}
**Break-even point:** {{break_even}} registrations (if ticketed)

### Key Milestones

| Date | Milestone |
|---|---|
| {{milestone_date_1}} | {{milestone_1}} |
| {{milestone_date_2}} | {{milestone_2}} |
| {{milestone_date_3}} | {{milestone_3}} |
| {{milestone_date_4}} | {{milestone_4}} |
| {{milestone_date_5}} | {{milestone_5}} |
| {{milestone_date_6}} | {{milestone_6}} |
| {{milestone_date_7}} | {{milestone_7}} |

### Stakeholders

| Role | Person | Responsibility |
|---|---|---|
| Executive sponsor | {{exec_sponsor}} | Strategic direction, budget approval, executive presence |
| Event lead | {{event_lead}} | Overall planning and execution, single point of accountability |
| Content lead | {{content_lead}} | Speaker program, agenda, session content |
| Marketing lead | {{marketing_lead}} | Promotion, communications, brand |
| Logistics lead | {{logistics_lead}} | Venue, vendors, on-site operations |
| Registration lead | {{registration_lead}} | Attendee data, check-in, reporting |

### Success Criteria

How we will know this event was successful:

1. {{success_criterion_1}}
2. {{success_criterion_2}}
3. {{success_criterion_3}}

### Open Questions

Decisions that still need to be made:

- [ ] {{open_question_1}}
- [ ] {{open_question_2}}
- [ ] {{open_question_3}}

### Constraints & Risks

| Constraint / Risk | Impact | Mitigation |
|---|---|---|
| {{risk_1}} | {{impact_1}} | {{mitigation_1}} |
| {{risk_2}} | {{impact_2}} | {{mitigation_2}} |
| {{risk_3}} | {{impact_3}} | {{mitigation_3}} |

---

*Created: {{creation_date}} | Last updated: {{update_date}} | Owner: {{event_lead}}*

*For deeper planning, use specialized skills: event-budget (detailed budgeting), event-content (communications), event-speakers (speaker program), event-logistics (venue and vendors), event-registration (attendee management), event-sponsors (sponsorship), event-analytics (post-event reporting), event-marketing (promotion campaigns).*
