# kpollich/skills

Personal Claude Code skills built around a two-phase workflow: **interrogate → produce artifact**.

The interrogation phase uses [`/grill-me`](https://github.com/mattpocock/skills/tree/main/grill-me) (Matt Pocock) to surface unknowns and resolve scope before anything gets written. The artifact phase routes to the right skill based on what you need. See [TOOLCHAIN.md](./TOOLCHAIN.md) for the full picture.

## Workflows

**Scope a project or spike:**
1. `/grill-me` — interrogate the problem
2. `/write-technical-content` — produce a GitHub issue

**Align stakeholders on an initiative:**
1. `/grill-me` — interrogate the initiative
2. `/to-prd` (Matt Pocock) — produce a PRD
3. `/make-html-artifact` — render it for sharing

**Write a PR description:**
- `/write-technical-content` directly — no interrogation needed

## Skills

- **[write-technical-content](./write-technical-content/)**: Produces GitHub issues, PR descriptions, design docs, RFCs, project plans, and status updates. Enforces word limits and voice rules so output doesn't read like AI slop.
- **[make-html-artifact](./make-html-artifact/)**: Renders any artifact as a portable, single-file HTML file. Styled to evoke Elastic's EUI Borealis design language. Supports dark mode, collapsible sections, syntax highlighting, and Mermaid diagrams.

## Install

```bash
npx skills add kpollich/skills-personal
```

Or install individual skills:

```bash
npx skills add kpollich/skills-personal --skill write-technical-content
npx skills add kpollich/skills-personal --skill make-html-artifact
```

Each skill is self-contained and installs independently. A `setup.sh` is also available for local development (symlinks skill directories into `~/.claude/skills/`).
