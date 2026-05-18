# Regional Localization

Load this reference when the event targets a specific region, or when the user specifies a currency, language, or compliance framework.

## Table of Contents

1. [Default Configuration (DACH / EU)](#default-configuration-dach--eu)
2. [Regional Presets](#regional-presets)
3. [How Skills Use This Reference](#how-skills-use-this-reference)

---

## Default Configuration (DACH / EU)

All skills default to these settings unless overridden:

```json
{
  "region": "DACH",
  "currency": "User's currency (default: Euro for DACH region)",
  "currency_symbol": "User's currency symbol",
  "date_format": "ISO 8601 (YYYY-MM-DD)",
  "compliance": ["GDPR", "BDSG", "UWG §7"],
  "email_consent": "double_opt_in",
  "tone": "formal",
  "language": "en",
  "vat_rate": 0.19,
  "tax_note": "All prices excl. 19% MwSt unless stated"
}
```

## Regional Presets

### United Kingdom

```json
{
  "region": "UK",
  "currency": "GBP",
  "currency_symbol": "£",
  "compliance": ["UK-GDPR", "PECR", "ICO"],
  "email_consent": "soft_opt_in_for_existing_customers",
  "vat_rate": 0.20,
  "tax_note": "All prices excl. 20% VAT unless stated",
  "notes": "Post-Brexit: UK-GDPR mirrors EU-GDPR but enforced by ICO. Adequate safeguards needed for EU-UK data transfers."
}
```

### United States

```json
{
  "region": "US",
  "currency": "USD",
  "currency_symbol": "$",
  "compliance": ["CAN-SPAM", "CCPA"],
  "email_consent": "opt_out",
  "vat_rate": null,
  "tax_note": "Sales tax varies by state. Consult local requirements.",
  "notes": "If ANY EU/UK attendees expected, apply GDPR as baseline. CAN-SPAM requires physical mailing address in emails. CCPA applies if processing California residents' data."
}
```

### Nordics (Sweden, Norway, Denmark, Finland)

```json
{
  "region": "Nordics",
  "currency": "Local currency (SEK/NOK/DKK; EUR in Finland)",
  "compliance": ["GDPR", "local DPA rules"],
  "email_consent": "double_opt_in",
  "tone": "informal_ok",
  "notes": "High sustainability expectations — include green options by default. Strong accessibility norms. Informal tone acceptable in most B2B contexts (du/du/du)."
}
```

### Asia-Pacific (Singapore, Australia, Japan)

```json
{
  "region": "APAC",
  "currency": "Local currency (SGD/AUD/JPY)",
  "compliance": ["PDPA (SG)", "APPs (AU)", "APPI (JP)"],
  "email_consent": "opt_in",
  "notes": "Timezone management critical for virtual events spanning APAC. Japan: high formality expected. Australia: informal. Singapore: PDPA broadly mirrors GDPR."
}
```

**Japan-specific notes:** Business card exchange (meishi koukan) essential at executive events. Seating hierarchy (kamiza/shimoza — senior guests seated furthest from door). Gift-giving customs apply for VIP events (omiyage, appropriate price range). Dining: host pours for guests, kampai protocol. Consider interpreter for non-English-speaking executives.

### Middle East (UAE, Saudi Arabia)

```json
{
  "region": "MEA",
  "currency": "Local currency (AED/SAR)",
  "compliance": ["PDPL (KSA)", "DIFC Data Protection Law (UAE)"],
  "email_consent": "opt_in",
  "notes": "Cultural considerations: prayer times in run-of-show, halal catering default, gender-separated options may apply. Weekend is Friday-Saturday in some jurisdictions."
}
```

## How Skills Use This Reference

### Currency Handling

All benchmarks in this skill set are currency-neutral (ratios, percentages, cost indices). When generating output:
- Use the user's currency throughout — do not convert to or from any reference currency
- If the user does not specify a currency, ask or infer from their region
- Per-person cost estimates should be sourced from local market rates, not converted from another currency

### Compliance Switching

| Region | Email Marketing | Data Collection | Retention |
|---|---|---|---|
| EU/DACH | Double opt-in mandatory | GDPR full compliance | Per gdpr-policy.md |
| UK | Soft opt-in for existing, consent for new | UK-GDPR (mirrors EU) | Per gdpr-policy.md |
| US | Opt-out (CAN-SPAM) | CCPA if CA residents | No unified requirement — follow GDPR as best practice |
| APAC | Opt-in (varies by country) | Local DPA rules | Varies — apply GDPR as baseline for multinational |

### Tone Adaptation

| Region | Default Tone | Formal Address | Notes |
|---|---|---|---|
| DACH | Formal | Sie | Use du only if brand explicitly allows |
| UK | Professional | First name OK | Slightly less formal than DACH |
| US | Friendly-professional | First name standard | More casual, benefit-driven copy |
| Nordics | Informal | du/du/du | Casual is expected, formality reads as cold |
| Japan | Very formal | -san/-sama | Hierarchy-aware communications |
| MEA | Formal | Title + surname | Respect for seniority and titles |

### Run-of-Show Adjustments

| Region | Lunch Duration | Networking Breaks | Day Start | Day End |
|---|---|---|---|---|
| DACH | 60 min | 20 min | 09:00 | 17:30 |
| UK | 45-60 min | 15-20 min | 09:00 | 17:00 |
| US | 45 min | 15 min | 08:30 | 17:00 |
| Southern Europe | 90 min | 30 min | 09:30 | 18:30 |
| Nordics | 45 min | 15-20 min | 09:00 | 16:30 |
| MEA | 60 min + prayer times | 20 min | 09:00 | 17:00 |
| APAC (Singapore) | 60 min (12:00-13:00) | 15-20 min | 09:00 | 17:30 |

> **APAC note:** Similar to DACH timing. Multi-ethnic catering defaults apply (halal + vegetarian standard).

### Input Override

To switch region, pass this parameter in event-planner Step 1:

```
Region/locale: [region code]
```

All downstream skills inherit the region from the event-planner brief. Individual skills do not need separate region configuration.
