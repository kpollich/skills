# GitHub Issue Templates

## Choosing a template

| Use | When |
|---|---|
| Project / Epic | Spiked work, multi-sprint effort, needs breaking down into sub-issues |
| Implementation Task | One slice of a larger project; linked to a parent issue |
| Bug | Something is broken; has repro steps |
| Enhancement | Standalone improvement; no spike needed; single sprint or less |

## Common rules

- Title: verb + outcome, ≤ 70 chars
- `##` H2 for every section
- Omit sections that have nothing to say - no placeholder text, no empty bullets
- Acceptance Criteria: testable, ≤ 15 words each, `- [ ]` checkboxes
- Open Questions: decision-shaped (not research tasks), ≤ 25 words each, standalone for GitHub quote-reply

---

## Project / Epic - ≤ 400 words

Use for spiked work, multi-sprint projects, or any issue that spawns sub-issues.

```markdown
## Problem Statement
<!-- ≤ 50 words. Who has this, why now, what's broken/missing. -->

## Goal
<!-- 1 sentence. What does done look like at the project level? -->

## Acceptance Criteria
<!-- ≤ 5 project-level outcomes. These will be broken into sub-issues. -->
- [ ] …

## Milestones
<!-- Only if project > 3 sprints. Table with owner + target, or checklist of child issues. -->
| Milestone | Sub-issue | Target |
|---|---|---|

## Open Questions
<!-- Decisions needing team alignment before work starts. ≤ 25 words each, standalone for quote-reply. -->
- …

## Open Risks
<!-- What's most likely to blow scope mid-project? -->
- …

## POC Proposal
<!-- Optional. Thinnest vertical slice to validate assumptions in ~2 weeks. -->
```

---

## Implementation Task / Subtask - ≤ 150 words

Use for one discrete slice of a larger project linked to a parent issue.

```markdown
## Context
<!-- 1-2 sentences. Link parent (Parent: #123) and state what slice this issue owns. -->

## Approach
<!-- Optional. Only if the approach isn't obvious from the parent issue. -->

## Acceptance Criteria
- [ ] …
```

---

## Bug - ≤ 200 words

Use when something is broken and needs a repro. Keep it minimal.

```markdown
## Problem
<!-- What's broken. 1-2 sentences. -->

## Steps to Reproduce
1. …

## Expected vs Actual
**Expected:** …
**Actual:** …

## Environment
<!-- Versions, OS, Fleet/Kibana/agent versions, whatever pins the repro. -->

## Acceptance Criteria
- [ ] …
```

---

## Enhancement - ≤ 250 words

Use for a standalone improvement that doesn't need a spike or sub-issues.

```markdown
## Problem
<!-- What's missing or annoying today. -->

## Proposed Change
<!-- 1-3 bullets or a short paragraph. -->

## Acceptance Criteria
- [ ] …
```
