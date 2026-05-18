#!/usr/bin/env bash
# Quality checker for event-management-skills collection.
# Implements every mechanical check from CLAUDE.md's Quality Checklist.
# Exit code: 0 = pass, 1 = failures found.

set -euo pipefail

REPO_ROOT="$(cd "$(dirname "$0")/.." && pwd)"
ERRORS=0
WARNINGS=0

red()    { printf '\033[0;31mFAIL\033[0m %s\n' "$1"; }
yellow() { printf '\033[0;33mWARN\033[0m %s\n' "$1"; }
green()  { printf '\033[0;32mPASS\033[0m %s\n' "$1"; }
info()   { printf '     %s\n' "$1"; }

fail() { red "$1"; ERRORS=$((ERRORS + 1)); }
warn() { yellow "$1"; WARNINGS=$((WARNINGS + 1)); }

# ─── Discover skills ──────────────────────────────────────────────
SKILL_DIRS=()
for d in "$REPO_ROOT"/event-*/; do
  [ -f "$d/SKILL.md" ] && SKILL_DIRS+=("$d")
done

if [ ${#SKILL_DIRS[@]} -eq 0 ]; then
  fail "No event-* skill directories found in $REPO_ROOT"
  exit 1
fi

echo "Checking ${#SKILL_DIRS[@]} skills..."
echo ""

# ─── 1. SKILL.md line count (<500) ───────────────────────────────
echo "── 1. SKILL.md line count ──"
for d in "${SKILL_DIRS[@]}"; do
  skill=$(basename "$d")
  lines=$(wc -l < "$d/SKILL.md")
  if [ "$lines" -ge 500 ]; then
    fail "$skill/SKILL.md: $lines lines (max 499)"
  fi
done
green "Line count check complete"
echo ""

# ─── 2. YAML frontmatter validation ─────────────────────────────
echo "── 2. YAML frontmatter ──"
for d in "${SKILL_DIRS[@]}"; do
  skill=$(basename "$d")
  file="$d/SKILL.md"

  # Extract description from YAML frontmatter.
  # Handles both "description: >  (folded)" and "description: inline" forms.
  # Collect lines from 'description:' until next top-level key or closing '---'.
  desc=$(awk '
    /^---$/ && started { exit }
    /^---$/ { started=1; next }
    /^description:/ { in_desc=1; sub(/^description:[[:space:]]*>?[[:space:]]*/, ""); if ($0 != "") print; next }
    in_desc && /^[a-z_]+:/ { exit }
    in_desc { sub(/^[[:space:]]+/, ""); print }
  ' "$file" | tr '\n' ' ' | sed 's/  */ /g;s/^ *//;s/ *$//')

  char_count=${#desc}
  if [ "$char_count" -gt 1024 ]; then
    fail "$skill: description is $char_count chars (max 1024)"
  fi

  # Check for < or > in description
  if echo "$desc" | grep -q '[<>]'; then
    fail "$skill: description contains < or > characters"
  fi
done
green "YAML frontmatter check complete"
echo ""

# ─── 3. Referenced files exist ───────────────────────────────────
echo "── 3. Referenced files exist ──"
for d in "${SKILL_DIRS[@]}"; do
  skill=$(basename "$d")
  file="$d/SKILL.md"

  # Find all references to references/ and assets/ paths in backticks or quotes
  refs=$(grep -oE '(references|assets)/[a-z0-9._-]+\.(md|json)' "$file" | sort -u)

  for ref in $refs; do
    if [ ! -f "$d/$ref" ]; then
      fail "$skill: referenced file '$ref' does not exist"
    fi
  done
done
green "Referenced files check complete"
echo ""

# ─── 4. No cross-skill file references ──────────────────────────
echo "── 4. No cross-skill file references ──"
for d in "${SKILL_DIRS[@]}"; do
  skill=$(basename "$d")
  file="$d/SKILL.md"

  # Look for references to other skill directories' files
  cross_refs=$(grep -oE 'event-[a-z]+/(references|assets)/[^ )`"'"'"']+' "$file" 2>/dev/null || true)
  if [ -n "$cross_refs" ]; then
    while IFS= read -r ref; do
      target_skill=$(echo "$ref" | cut -d/ -f1)
      if [ "$target_skill" != "$skill" ]; then
        fail "$skill: cross-skill file reference to '$ref'"
      fi
    done <<< "$cross_refs"
  fi
done
green "Cross-skill reference check complete"
echo ""

# ─── 5. No orphaned files ───────────────────────────────────────
echo "── 5. No orphaned files ──"
for d in "${SKILL_DIRS[@]}"; do
  skill=$(basename "$d")
  file="$d/SKILL.md"

  # Collect all non-SKILL.md files in the skill directory
  while IFS= read -r subfile; do
    relpath="${subfile#"$d"}"
    basename_file=$(basename "$subfile")

    # Skip SKILL.md itself and io-schema.json (referenced via frontmatter)
    [ "$relpath" = "SKILL.md" ] && continue
    [ "$basename_file" = "io-schema.json" ] && continue

    # Check if the file is mentioned in SKILL.md
    if ! grep -qF "$basename_file" "$file" && ! grep -qF "$relpath" "$file"; then
      fail "$skill: orphaned file '$relpath' (not referenced in SKILL.md)"
    fi
  done < <(find "$d" -type f -name '*.md' -o -name '*.json' | grep -v '/io-schema\.json$' | sort)
done
green "Orphaned file check complete"
echo ""

# ─── 6. Required sections present ───────────────────────────────
echo "── 6. Required sections ──"
required_patterns=(
  "This skill does NOT"
  "Step 3.5.*Verification Gate|Verification Gate"
  "^## Examples"
  "^## Edge Cases"
)
required_labels=(
  "'This skill does NOT' section"
  "Verification Gate (Step 3.5)"
  "Examples section"
  "Edge Cases section"
)

for d in "${SKILL_DIRS[@]}"; do
  skill=$(basename "$d")
  file="$d/SKILL.md"

  for i in "${!required_patterns[@]}"; do
    if ! grep -qE "${required_patterns[$i]}" "$file"; then
      fail "$skill: missing ${required_labels[$i]}"
    fi
  done
done
green "Required sections check complete"
echo ""

# ─── 7. Minimum examples (3+) ───────────────────────────────────
echo "── 7. Example count (min 3) ──"
for d in "${SKILL_DIRS[@]}"; do
  skill=$(basename "$d")
  file="$d/SKILL.md"

  # Count **User says:** or **User provides:** patterns (one per example)
  example_count=$(grep -cE '^\*\*User (says|provides|asks)' "$file" 2>/dev/null || echo 0)
  if [ "$example_count" -lt 3 ]; then
    fail "$skill: only $example_count examples (minimum 3)"
  fi
done
green "Example count check complete"
echo ""

# ─── 8. Minimum edge cases (5+) ─────────────────────────────────
echo "── 8. Edge case count (min 5) ──"
for d in "${SKILL_DIRS[@]}"; do
  skill=$(basename "$d")
  file="$d/SKILL.md"

  # Extract everything after "## Edge Cases" heading
  edge_section=$(sed -n '/^## Edge Cases/,/^## /p' "$file" | tail -n +2)
  # Count edge case entries (lines starting with - ** or numbered items or ### headings)
  edge_count=$(echo "$edge_section" | grep -cE '^- \*\*|^[0-9]+\. \*\*|^### ' 2>/dev/null || echo 0)
  if [ "$edge_count" -lt 5 ]; then
    fail "$skill: only $edge_count edge cases (minimum 5)"
  fi
done
green "Edge case count check complete"
echo ""

# ─── 9. Currency hardcoding (EUR/€) ─────────────────────────────
echo "── 9. Currency hardcoding ──"
# Check all skill markdown files for EUR or € (excluding examples that quote user input)
eur_hits=0
while IFS= read -r file; do
  # Skip this script
  [ "$file" = "$0" ] && continue

  matches=$(grep -nE '€|EUR[^O]' "$file" 2>/dev/null || true)
  if [ -n "$matches" ]; then
    relpath="${file#"$REPO_ROOT"/}"
    while IFS= read -r match; do
      line_num=$(echo "$match" | cut -d: -f1)
      line_text=$(echo "$match" | cut -d: -f2-)
      # Allow EUR/€ in user-input examples (lines starting with **User says:** or containing "User says")
      if echo "$line_text" | grep -qE '^\*\*User (says|provides|asks)|"User says'; then
        continue
      fi
      warn "$relpath:$line_num — EUR/€ hardcoding: $(echo "$line_text" | head -c 100)"
      eur_hits=$((eur_hits + 1))
    done <<< "$matches"
  fi
done < <(find "$REPO_ROOT"/event-* -name '*.md' -type f | sort)

if [ "$eur_hits" -eq 0 ]; then
  green "No currency hardcoding found"
else
  info "$eur_hits currency hardcoding instances (warnings — some may be in valid examples)"
fi
echo ""

# ─── 10. Cross-skill reference phrasing ─────────────────────────
echo "── 10. Cross-skill reference phrasing ──"
for d in "${SKILL_DIRS[@]}"; do
  skill=$(basename "$d")
  file="$d/SKILL.md"

  # Find "use event-X" references that don't use "use the event-X skill" pattern
  bad_refs=$(grep -nE 'use event-[a-z]' "$file" | grep -vE 'use the event-[a-z]+ skill' 2>/dev/null || true)
  if [ -n "$bad_refs" ]; then
    while IFS= read -r line; do
      warn "$skill: $(echo "$line" | head -c 120) — should be 'use the event-X skill'"
    done <<< "$bad_refs"
  fi
done
green "Cross-skill phrasing check complete"
echo ""

# ─── 11. Reference files >100 lines need TOC ────────────────────
echo "── 11. Table of Contents for long references ──"
while IFS= read -r file; do
  lines=$(wc -l < "$file")
  if [ "$lines" -gt 100 ]; then
    if ! grep -qiE 'Table of Contents|^## Contents' "$file"; then
      relpath="${file#"$REPO_ROOT"/}"
      warn "$relpath: $lines lines but no Table of Contents"
    fi
  fi
done < <(find "$REPO_ROOT"/event-*/references -name '*.md' -type f | sort)
green "TOC check complete"
echo ""

# ─── 12. Load instruction in reference files ────────────────────
echo "── 12. Reference file load instructions ──"
while IFS= read -r file; do
  basename_file=$(basename "$file")
  # Skip io-schema.json files
  [ "$basename_file" = "io-schema.json" ] && continue

  if ! head -5 "$file" | grep -qiE 'Load this reference when|> Load when'; then
    relpath="${file#"$REPO_ROOT"/}"
    warn "$relpath: missing 'Load this reference when...' instruction in first 5 lines"
  fi
done < <(find "$REPO_ROOT"/event-*/references -name '*.md' -type f | sort)
green "Load instruction check complete"
echo ""

# ─── 13. Naming convention (kebab-case) ─────────────────────────
echo "── 13. File naming convention ──"
while IFS= read -r file; do
  basename_file=$(basename "$file")
  # SKILL.md and COLLECTION.md are standard names — exempt from kebab-case
  if [ "$basename_file" = "SKILL.md" ] || [ "$basename_file" = "COLLECTION.md" ] || [ "$basename_file" = "CLAUDE.md" ] || [ "$basename_file" = "README.md" ] || [ "$basename_file" = "SOUL.md" ]; then
    continue
  fi
  if echo "$basename_file" | grep -qE '[A-Z]|_'; then
    relpath="${file#"$REPO_ROOT"/}"
    fail "$relpath: filename not kebab-case"
  fi
done < <(find "$REPO_ROOT"/event-* -type f \( -name '*.md' -o -name '*.json' \) | sort)
green "Naming convention check complete"
echo ""

# ─── Summary ─────────────────────────────────────────────────────
echo "════════════════════════════════════════"
if [ "$ERRORS" -gt 0 ]; then
  red "FAILED: $ERRORS error(s), $WARNINGS warning(s)"
  exit 1
elif [ "$WARNINGS" -gt 0 ]; then
  yellow "PASSED with $WARNINGS warning(s)"
  exit 0
else
  green "ALL CHECKS PASSED"
  exit 0
fi
