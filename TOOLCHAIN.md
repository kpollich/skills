# Skill Toolchain

Two-phase workflow: **interrogate → produce artifact**. Never skip straight to writing.

The interrogation phase surfaces unknowns, resolves scope ambiguity, and forces explicit decisions before anything gets written. The artifact phase produces a clean, shareable output. Word limits belong on the artifact, not the conversation.

---

## Phase 1: Interrogate

**[`/grill-me`](https://github.com/mattpocock/skills/tree/main/grill-me)** (Matt Pocock) — the interrogation primitive. Use for any ill-defined ask: a project, a technical decision, a stakeholder request, a design problem. Asks one question at a time and branches until all open decisions are resolved.

**[`/grill-with-docs`](https://github.com/mattpocock/skills/tree/main/grill-with-docs)** (Matt Pocock) — like `/grill-me`, but also updates your team's domain language documentation as you resolve terminology disagreements.

---

## Phase 2: Produce Artifact

After grilling, route to the right skill:

| What you need | Skill |
|---|---|
| GitHub issue / PR / design doc / status update | [`/write-technical-content`](./write-technical-content/) |
| Product Requirements Document | [`/to-prd`](https://github.com/mattpocock/skills/tree/main/to-prd) (Matt Pocock) |
| GitHub issues from a plan | [`/to-issues`](https://github.com/mattpocock/skills/tree/main/to-issues) (Matt Pocock) |
| Portable HTML for sharing | [`/make-html-artifact`](./make-html-artifact/) |

---

## Common Workflows

**Scope a new project or spike:**
1. `/grill-me` — interrogate the problem, surface unknowns, define scope
2. `/write-technical-content` — produce a GitHub issue

**Align stakeholders on a new initiative:**
1. `/grill-me` — interrogate the initiative end-to-end
2. `/to-prd` — produce a PRD
3. `/make-html-artifact` — render it for sharing outside GitHub

**Write a PR description:**
- `/write-technical-content` directly — no interrogation needed

---

## Word Limits

Word limits are artifact constraints, not conversation constraints. The interrogation phase has no ceiling — push until the decision tree is resolved.

| Format | Limit |
|---|---|
| PR description | ≤ 200 words |
| GitHub issue - Project/Epic | ≤ 400 words |
| GitHub issue - Task | ≤ 150 words |
| GitHub issue - Bug | ≤ 200 words |
| GitHub issue - Enhancement | ≤ 250 words |
| Status update | ≤ 150 words |
| Design doc / RFC | No cap |

---

## Full Skill List

### From this repo (`kpollich/skills-personal`)

| Skill | Purpose |
|---|---|
| [`/write-technical-content`](./write-technical-content/) | GitHub issues, PRs, design docs, status updates |
| [`/make-html-artifact`](./make-html-artifact/) | Render any artifact as a portable HTML file |

### From Matt Pocock ([`mattpocock/skills`](https://github.com/mattpocock/skills))

| Skill | Purpose |
|---|---|
| [`/grill-me`](https://github.com/mattpocock/skills/tree/main/grill-me) | Intensive interrogation to resolve decision branches |
| [`/grill-with-docs`](https://github.com/mattpocock/skills/tree/main/grill-with-docs) | Interrogation that also updates domain language docs |
| [`/to-prd`](https://github.com/mattpocock/skills/tree/main/to-prd) | Synthesize a conversation into a PRD |
| [`/to-issues`](https://github.com/mattpocock/skills/tree/main/to-issues) | Convert a plan into independently-grabbable GitHub issues |
| [`/write-a-skill`](https://github.com/mattpocock/skills/tree/main/write-a-skill) | Create new skills with proper structure |
| [`/diagnose`](https://github.com/mattpocock/skills/tree/main/diagnose) | Structured debugging for complex bugs |
| [`/improve-codebase-architecture`](https://github.com/mattpocock/skills/tree/main/improve-codebase-architecture) | Identify architectural improvements |
