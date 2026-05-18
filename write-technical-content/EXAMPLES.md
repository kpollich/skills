# Format Structures and Examples

## Pull Request Description

**Structure:** Summary (what + why, 1-3 bullets) → test plan (checklist) → optional notes.

Title: imperative verb, ≤ 70 chars. Body ≤ 200 words.

**Bad:**
> This PR adds some changes to fix the issue we were having with the enrollment flow.
> I made several updates across multiple files to address the problems.
> Please review and let me know if you have any feedback.

**Good:** *(~55 words)*
> ## Summary
> - Fix dangling session after mid-enrollment disconnect (closes #1234)
> - Add 30s enrollment timeout with session cleanup hook
>
> ## Test plan
> - [ ] Integration test: enrollment succeeds after prior attempt disconnected mid-flow
> - [ ] No dangling sessions after enrollment timeout fires
> - [ ] Existing enrollment happy path unchanged

**For larger PRs**, add a "How to review" section routing reviewers to entry points or key decisions - not a walkthrough of every change.

---

## GitHub Issue

See [ISSUE_TEMPLATES.md](ISSUE_TEMPLATES.md) for all four issue types:
Project/Epic, Implementation Task, Bug, Enhancement.

Title: verb + outcome, ≤ 70 chars. `##` headings throughout. Apply VOICE.md rules.

**Bad title:** "Agent enrollment bug"
**Good title:** "Fix crash when agent disconnects during enrollment"

---

## Design Doc / RFC

**Structure:** Problem → proposal → alternatives considered → tradeoffs → open questions.

Assume audience has context. No length cap - but every section earns its place.

**Bad opening:**
> ## Introduction
> As our platform has grown, we've encountered increasing challenges with how we handle
> rate limiting across our services. Rate limiting is important because...

**Good opening:**
> ## Problem
> The ingestion pipeline has no rate limiting. During last week's incident, a single misconfigured
> agent pushed 50k events/sec and starved other tenants for 40 minutes.
>
> ## Proposal
> Add per-tenant token bucket rate limiting at the API gateway layer.

---

## Status Update / Team Communication

**Structure:** What changed → what's blocked → what's next. One sentence per item. ≤ 150 words.

**Bad:**
> ## Weekly Update
> Hi team! Hope everyone had a great week. Here's a comprehensive update on our progress
> across all workstreams. We've been making great strides on several fronts...

**Good:** *(~35 words)*
> **Done:** Rate limiting deployed to staging. Load test passed at 2x expected peak.
> **Blocked:** Production deploy waiting on SRE review - @charlie is out until Thursday.
> **Next:** Write runbook for rate limit tuning. Start monitoring dashboard.
