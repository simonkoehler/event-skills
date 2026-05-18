---
name: event-reviewer
description: >
  Review and validate outputs from other B2B event skills for cross-skill consistency,
  completeness, and quality. Checks that budget figures match timeline assumptions,
  sponsorship tiers align with venue capacity, email timing matches registration
  deadlines, and GDPR compliance is consistent across all outputs. Use this skill
  after generating outputs from multiple event skills to catch inconsistencies,
  before presenting a complete event plan to stakeholders, or when the user asks
  to review or validate their event planning outputs.
version: 1
version_date: 2026-03-28
io_schema: references/io-schema.json
---

# Event Reviewer

Quality-check outputs from multiple event skills for consistency, completeness, and feasibility. Catches the gaps that individual skills cannot see because they operate independently.

## When This Skill Activates

- User has outputs from 2+ event skills and wants a consistency check
- User asks to "review my event plan" or "check everything fits together"
- Before presenting a complete event plan to stakeholders
- After a major change to one skill's output that might affect others
- User asks if anything is missing or inconsistent

**This skill does NOT:** Generate event deliverables (use specialist skills). Does not replace individual skill verification gates (Step 3.5). Reviews cross-skill consistency that individual skills cannot check alone.

## Step 1: Gather Outputs

Collect all available outputs from event skills. At minimum, need outputs from 2+ skills to provide value.

| Skill | Key data points to extract |
|---|---|
| event-planner | Event type, format, dates, attendee count, objectives, timeline milestones |
| event-budget | Total budget, category allocations, revenue targets, cost per attendee |
| event-speakers | Session count, speaker count, CFP timeline, agenda structure |
| event-content | Email sequence timing, social calendar, content assets planned |
| event-logistics | Venue capacity, vendor contracts, run-of-show, load-in schedule |
| event-registration | Ticket tiers, pricing, capacity, form fields, GDPR consent |
| event-sponsors | Tier structure, pricing, benefits promised, attendee data commitments |
| event-marketing | Channel plan, promotion timeline, registration targets, budget |
| event-analytics | KPIs defined, survey planned, ROI measurement method |
| event-exhibition | Booth specs, staffing plan, lead capture goals, budget |

## Step 2: Run Consistency Checks

Machine-readable thresholds and weights for automated evaluation are available in `tests/evaluation-rubrics.json`.

### Check 1: Numbers Alignment

| Rule | Pass | Warn | Fail |
|---|---|---|---|
| Attendee count across skills | All match exactly | ±5% variance | >5% variance |
| Speaker count vs. agenda slots | Count ≤ slots | Count = slots + 1-2 | Count > slots + 3 |
| Registration capacity vs. venue capacity | Reg ≤ venue | Reg = venue (no buffer) | Reg > venue |
| Sponsor count vs. booth allocation | Sponsors ≤ booths | Sponsors = booths (no spare) | Sponsors > booths |

### Check 2: Timeline Alignment

| Rule | Pass | Warn | Fail |
|---|---|---|---|
| Marketing start vs. registration open | Marketing ≥ T-2 weeks before reg | Same week | Marketing after registration |
| Speaker confirmation vs. agenda publish | Speakers confirmed before agenda | Same week | Agenda published with unconfirmed speakers |
| Content delivery vs. send dates | Content ready ≥ 3 days before send | 1-2 days before | Content not ready at send time |
| Early-bird deadline vs. campaign end | ≥4 weeks of promotion before deadline | 2-3 weeks | <2 weeks |
| CFP open period | ≥4 weeks | 2-3 weeks | <2 weeks |

### Check 3: Budget Alignment

| Rule | Pass | Warn | Fail |
|---|---|---|---|
| Category sum vs. total | Sum = total ±1% | ±1-3% (rounding) | >3% variance |
| Speaker budget vs. speaker count × fee | Budget ≥ count × min fee | Budget = count × min fee (no buffer) | Budget < count × min fee |
| Venue budget vs. venue quote | Budget ≥ quote | Budget = quote (no contingency) | Budget < quote |
| Contingency reserve | ≥10% of total | 5-10% | <5% or missing |
| Ticket revenue vs. registration pricing × expected | Revenue ≥ pricing × 80% of target | Revenue = pricing × 60-80% | Revenue < pricing × 60% |

### Check 4: Capacity Alignment

| Rule | Pass | Warn | Fail |
|---|---|---|---|
| Venue capacity vs. target attendance | Venue ≥ 110% of target | Venue = 100-110% | Venue < target |
| Catering count vs. registration | Catering ≥ registered + 5% | Catering = registered | Catering < registered |
| Breakout room capacity vs. track attendance | Room ≥ expected per track | Room = expected | Room < expected |
| Booth allocation vs. floor space | All booths fit with circulation | Tight fit, minimal circulation | Not enough space |

### Check 5: Data Protection Compliance

Validates regional data protection rules:
- **EU/EEA events:** GDPR — double opt-in for DE/AT, standard consent elsewhere
- **Singapore/APAC:** PDPA — opt-in consent, broadly mirrors GDPR
- **US events:** State laws where applicable (CCPA for California residents)
- **Default:** Apply GDPR-equivalent consent as baseline for any region

| Rule | Pass | Warn | Fail |
|---|---|---|---|
| Sponsor data sharing vs. consent checkbox | Consent checkbox exists for each sponsor tier promising attendee data | Checkbox exists but wording is vague | No consent checkbox but data sharing promised |
| Photo/video consent vs. content plan | Consent mechanism defined and implemented | Consent planned but not yet implemented | Content plan includes photos/videos without consent mechanism |
| Data retention stated | Retention periods defined in registration privacy notice | Retention mentioned but no specific periods | No retention information |
| Marketing consent vs. email plan | Double opt-in for all marketing emails (DE/AT mandatory) | Single opt-in with clear unsubscribe | No consent mechanism for marketing emails |

**Format-Aware Check Adjustment:**
- Virtual events: Skip venue capacity, catering count, load-in schedule, and booth allocation checks
- Hybrid events: Apply venue/catering checks to in-person count only (use `attendee_count_in_person` if available, not total `attendee_count`)
- In-person events: All checks apply

### Check 6: Content Completeness

| Rule | Pass | Warn | Fail |
|---|---|---|---|
| Timeline milestones with content | Every milestone has corresponding content piece | 1-2 milestones without content | >2 milestones without content |
| Speaker bios for confirmed speakers | All confirmed speakers have bios | Missing 1-2 bios | Missing >2 bios |
| Registration confirmation email | Email drafted and reviewed | Email drafted, not reviewed | No confirmation email |
| Post-event communications | All segments covered (attendees, speakers, sponsors, no-shows) | 1 segment missing | >1 segment missing |

## Step 3: Generate Review Report

**Report output format:**

```
## Review Summary
- **Status**: PASS / WARN / FAIL
- **Checks run**: X/6
- **Critical issues**: [count]
- **Warnings**: [count]

## Detailed Results
| Check | Rule | Expected | Actual | Status |
|---|---|---|---|---|
| Numbers | Attendee count | 500 across all skills | 500 (planner), 480 (budget) | WARN |

## Recommended Actions
1. [CRITICAL] Align attendee count — update event-budget to 500
2. [WARN] Add contingency to venue budget — use the event-budget skill

## Prescriptive Remediation
For each CRITICAL/WARN finding, provide:
| # | Finding | Fix Command | Skill | Input Change | Expected Result |
|---|---|---|---|---|---|
| 1 | Attendee mismatch (500 vs 480) | Re-run event-budget with attendee_count=500 | event-budget | attendee_count: 500 | Budget recalculated for 500 |
| 2 | No contingency | Add 10% contingency line | event-budget | Add contingency: 10% | Budget + 10% contingency |
```

For each finding: cite the specific values from each skill, state the impact, and name the skill responsible for the fix. The prescriptive remediation table must specify the exact input change needed — not just "fix it" but "change X to Y in skill Z."

## Step 3.5: Verification Gate

1. **All provided outputs reviewed:** No skill output was skipped
2. **Issues are specific:** Each finding cites exact numbers/dates, not vague concerns
3. **Recommendations are actionable:** Each issue has a clear fix with responsible skill identified
4. **Priority is clear:** Critical vs. warning vs. gap distinction maintained

## Step 4: Cross-Skill References

- **Fix budget issues:** "For budget adjustments, use the event-budget skill"
- **Fix timeline issues:** "For timeline changes, use the event-planner skill"
- **Fix content gaps:** "For missing content, use the event-content skill"
- **Orchestrate fixes:** "For coordinating changes across multiple skills, use the event-orchestrator skill"

## Output Format

- Review summary: status (PASS / WARN / FAIL), check counts, critical and warning counts
- Detailed results table: Check / Rule / Expected / Actual / Status — cite exact values from each skill
- Recommended actions: numbered list, prefixed with [CRITICAL] / [WARN] / [GAP], each with a fix command and responsible skill
- Prescriptive remediation table: # / Finding / Fix Command / Skill / Input Change / Expected Result
- No new deliverables generated — reviewer only validates existing outputs

## Examples

### Example 1: Budget-timeline mismatch
**User provides:** Event brief (500 attendees), budget (150K), speaker plan (30 speakers with fees)
**Finding:** Speaker budget allocates 33% of total for 30 speakers (avg 1,667 per speaker), but 5 keynotes at 3-7% of total budget each consume 17-33% alone, leaving 0-17% for 25 remaining speakers. **Recommendation:** Adjust speaker budget to ~47% of total or reduce keynote count to 3.

### Example 2: Registration-marketing gap
**User provides:** Registration plan (early-bird ends T-6 weeks), marketing plan (promotion starts T-8 weeks)
**Finding:** Only 2 weeks between promotion start and early-bird deadline. Benchmark: 4-6 weeks needed for early-bird conversion. **Recommendation:** Either extend early-bird to T-4 weeks or start promotion at T-10 weeks.

### Example 3: GDPR inconsistency
**User provides:** Sponsor package (Platinum gets full attendee list), registration form (no sponsor data-sharing consent checkbox)
**Finding:** Platinum tier promises attendee data but registration form has no consent mechanism. This is a GDPR violation for EU events. **Recommendation:** Add explicit sponsor data-sharing consent to registration form with named sponsors.

## Edge Cases

- **Only 2 skills provided:** Run available checks, note which cross-checks cannot be performed, recommend completing other skills first.
- **Outputs from different time periods:** Flag if outputs may be based on different assumptions (e.g., budget from January, speaker plan from March with different attendee target).
- **User disagrees with finding:** Explain the reasoning, cite the benchmark, but respect user's final decision. Document the accepted risk.
- **No issues found:** Confirm consistency and list which checks passed. Recommend areas to monitor as plans evolve.
- **Major inconsistency cascade:** If one change affects 3+ other skills, recommend using event-orchestrator to manage the update sequence.
