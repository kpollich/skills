# kpollich/skills

Personal Claude Code skills.

## Skills

- **[run-spike](./run-spike/)**: Guides a spike / pre-project investigation end-to-end: surfaces unknowns, scopes a vertical-slice POC, and produces a GitHub issue using a consistent planning template.
- **[write-technical-content](./write-technical-content/)**: Guides writing clear, concise technical content: GitHub issues, PR descriptions, design docs, RFCs, project plans, and status updates.

## Install

```bash
git clone git@github.com:kpollich/skills.git ~/.agents/skills-personal
~/.agents/skills-personal/setup.sh
```

`setup.sh` symlinks each skill directory into `~/.claude/skills/`. Re-running is safe - existing symlinks are skipped.
