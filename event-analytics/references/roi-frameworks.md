# ROI Frameworks (Post-Event)

Load this reference when calculating event ROI from actual post-event data (Output C).

This is backward-looking analysis — measuring what actually happened, not projecting what might happen. For forward-looking ROI projections during budget planning, use the event-budget skill.

## Table of Contents

1. [ROI Calculation Methods](#roi-calculation-methods)
2. [Attribution Rules](#attribution-rules)
3. [Benchmarks](#benchmarks)
4. [Reporting Framework](#reporting-framework)

---

## ROI Calculation Methods

### Pipeline ROI

```
Pipeline ROI = (Pipeline generated from event ÷ Total event cost) × 100
```

Example: 500K pipeline from a 100K event = 500% pipeline ROI.

### Revenue ROI

```
Revenue ROI = (Closed revenue from event-sourced leads ÷ Total event cost) × 100
```

Requires CRM attribution tracking. Typical close rate on event-sourced leads: 10-20% for conferences, 5-10% for trade shows.

### Cost per Lead

```
Cost per Lead = Total event cost ÷ Qualified leads generated
```

### Cost per Meeting

```
Cost per Meeting = Total event cost ÷ Meetings booked at or from event
```

### Cost per Attendee

```
Cost per Attendee = Total event cost ÷ Actual attendees (not registered — attended)
```

## Attribution Rules

- **Event-sourced:** Lead's first meaningful interaction was at the event. Tag in CRM as "Source: [Event Name]"
- **Event-influenced:** Lead existed before but attended the event. Tag as "Influenced: [Event Name]"
- **Attribution window:** 90 days minimum, 180 days recommended. B2B sales cycles are long — cutting attribution at 30 days misses most of the value.
- **Always separate sourced vs. influenced** in reporting. Leadership cares about sourced. Marketing cares about both.

### CRM Tagging Recommendations

- Create campaign in CRM before event
- Tag all registered attendees to campaign
- After event: mark attended vs. no-show
- For booth leads: add "Lead Source Detail: Booth Scan" or "Lead Source Detail: Meeting"
- Track pipeline and revenue against campaign for 180 days

## Benchmarks

| Metric | Average | Good | Excellent |
|---|---|---|---|
| Pipeline ROI | 2-3× | 3-5× | 5×+ |
| Cost per lead as % of per-attendee cost (conference) | 40-100% | 20-40% | Under 20% |
| Cost per lead as % of per-attendee cost (trade show) | 60-160% | 30-60% | Under 30% |
| Cost per meeting as % of per-attendee cost | 100-300% | 60-100% | Under 60% |
| Lead follow-up rate | 18% (industry avg) | 50-70% | 80%+ |
| Lead-to-opportunity rate | 10-15% | 15-25% | 25%+ |
| Event-sourced close rate | 5-10% | 10-20% | 20%+ |

**Context:** Only 18% of trade show leads are ever followed up. The biggest ROI lever is not generating more leads — it's following up the ones you have within 48 hours.

## Reporting Framework

Structure post-event ROI reports as:

1. **Investment:** Total event cost (include staff time if possible)
2. **Returns:** Pipeline generated (sourced + influenced, separate), meetings booked, leads captured
3. **Efficiency:** Cost per lead, cost per meeting, cost per attendee
4. **Comparison:** This event vs. previous edition (if available), this event vs. other channels
5. **Recommendation:** Continue / modify / discontinue, with specific reasoning
