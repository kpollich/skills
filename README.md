# kpollich/skills

Personal Claude Code skills. Two-phase workflow: interrogate, then produce artifact.

Interrogate with `/grill-me` before writing anything. Word limits apply to artifacts, not the conversation.

## Workflows

**Scope a project or spike:**
1. `/grill-me` - interrogate the problem
2. `/write-technical-content` - produce a GitHub issue

**Align stakeholders on an initiative:**
1. `/grill-me` - interrogate the initiative
2. `/make-html-artifact` - render it for sharing

**Write a PR description:**
- `/write-technical-content` directly, no interrogation needed

## Artifact Reference

| What you need | Skill |
|---|---|
| GitHub issue / PR / design doc / status update | [`/write-technical-content`](./write-technical-content/) |
| Portable HTML for sharing | [`/make-html-artifact`](./make-html-artifact/) |

## Word Limits

Limits exist to prevent over-engineering. A 150-word task issue forces clarity; a 400-word epic forces prioritization. If you can't fit the problem, the problem isn't scoped yet — go back to `/grill-me`.

| Format | Limit |
|---|---|
| PR description | ≤ 200 words |
| GitHub issue - Project/Epic | ≤ 400 words |
| GitHub issue - Task | ≤ 150 words |
| GitHub issue - Bug | ≤ 200 words |
| GitHub issue - Enhancement | ≤ 250 words |
| Status update | ≤ 150 words |
| Design doc / RFC | No cap |

## Skills

### This repo

| Skill | Purpose |
|---|---|
| [`/write-technical-content`](./write-technical-content/) | GitHub issues, PRs, design docs, status updates |
| [`/make-html-artifact`](./make-html-artifact/) | Render any artifact as a portable HTML file |

## Install

```bash
npx skills add kpollich/skills-personal
```

Or install individual skills:

```bash
npx skills add kpollich/skills-personal --skill write-technical-content
npx skills add kpollich/skills-personal --skill make-html-artifact
```

Each skill is self-contained. `setup.sh` symlinks skill directories into `~/.claude/skills/` for local development.
