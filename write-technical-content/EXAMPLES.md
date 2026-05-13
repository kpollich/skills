# Format Structures and Examples

## Pull Request Description

**Structure:** Summary (what + why, 1-3 bullets) → test plan (checklist) → optional notes.

Title: imperative verb, ≤70 chars. Body: enough for a reviewer to understand scope and validate the change.

**Bad:**
> This PR adds some changes to fix the issue we were having with the enrollment flow.
> I made several updates across multiple files to address the problems.
> Please review and let me know if you have any feedback.

**Good:**
> ## Summary
> - Fix dangling session after mid-enrollment disconnect (closes #1234)
> - Add 30s enrollment timeout with session cleanup hook
>
> ## Test plan
> - [ ] Integration test: enrollment succeeds after prior attempt disconnected mid-flow
> - [ ] No dangling sessions remain after enrollment timeout fires
> - [ ] Existing enrollment happy path unchanged

**For larger PRs**, add a "How to review" section that routes reviewers to entry points or key decisions, not a walkthrough of every change.

---

## GitHub Issue

**Structure:** Title (verb + outcome) → problem context → proposed solution or ask → acceptance criteria.

**Bad title:** "Agent enrollment bug"
**Good title:** "Fix crash when agent disconnects during enrollment"

**Bad body:**
> ## Background
> We have been experiencing some issues with our enrollment flow. The enrollment flow is a critical
> part of our agent lifecycle management. When agents enroll, they go through several steps...
>
> ## Problem
> Sometimes agents crash.

**Good body:**
> Agents that disconnect mid-enrollment leave a dangling session in Fleet Server, causing the next
> enrollment attempt to fail with `409 Conflict`.
>
> **Proposed fix:** Add a session cleanup hook to the enrollment timeout handler. If no heartbeat
> arrives within 30s of enrollment start, expire the session.
>
> **Acceptance criteria:**
> - [ ] Enrollment succeeds after a prior attempt disconnected mid-flow
> - [ ] No dangling sessions remain after enrollment timeout

## Design Doc / RFC

**Structure:** Problem statement → proposed solution → alternatives considered → tradeoffs → open questions.

Assume the audience has context. Skip backstory they already know.

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

## Project Plan

**Structure:** Goal → milestones (owner + date) → dependencies → risks → open questions.

Cut prose. Use a table or list for milestones.

**Bad:**
> ## Overview
> This project plan outlines our approach to migrating the auth middleware. The project will
> be broken into several phases, each building on the previous one...

**Good:**
> **Goal:** Replace auth middleware to meet session token compliance requirements by Q2.
>
> | Milestone | Owner | Target |
> |---|---|---|
> | New middleware passing integration tests | @alice | Mar 28 |
> | Shadow mode in staging | @bob | Apr 11 |
> | Production rollout (canary → full) | @alice | Apr 25 |
>
> **Dependencies:** Security team sign-off on token storage design (pending).
> **Risks:** Shadow mode may surface edge cases in legacy session format.

## Status Update / Team Communication

**Structure:** What changed → what's blocked → what's next. One sentence per item unless a blocker needs explanation.

**Bad:**
> ## Weekly Update
> Hi team! Hope everyone had a great week. Here's a comprehensive update on our progress
> across all workstreams. We've been making great strides on several fronts...

**Good:**
> **Done:** Rate limiting deployed to staging. Load test passed at 2x expected peak.
> **Blocked:** Production deploy waiting on SRE review — @charlie is out until Thursday.
> **Next:** Write runbook for rate limit tuning. Start monitoring dashboard.
