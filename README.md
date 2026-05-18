# kpollich/skills

Personal Claude Code skills.

## Skills

- **[make-html-artifact](./make-html-artifact/)**: Generates a portable, single-file HTML artifact from free-form planning output (issue body, RFC, spike summary, etc.). Output lands in `artifacts/<slug>.html`, styled to evoke Elastic's EUI Borealis design language. Supports dark mode, collapsible sections, syntax highlighting, and Mermaid diagrams.
- **[run-spike](./run-spike/)**: Guides a spike / pre-project investigation end-to-end: surfaces unknowns, scopes a vertical-slice POC, and produces a GitHub issue using a consistent planning template.
- **[write-technical-content](./write-technical-content/)**: Guides writing clear, concise technical content: GitHub issues, PR descriptions, design docs, RFCs, project plans, and status updates.

## Install

```bash
npx skills add kpollich/skills-personal
```

Or install individual skills:

```bash
npx skills add kpollich/skills-personal --skill run-spike
npx skills add kpollich/skills-personal --skill write-technical-content
npx skills add kpollich/skills-personal --skill make-html-artifact
```

Each skill is self-contained and installs independently. A `setup.sh` is also available for local development (symlinks skill directories into `~/.claude/skills/`).
