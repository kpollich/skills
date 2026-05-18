# Artifact Composition Principles

## Core rule

Every visual element must add signal that is not already present in the prose.
If in doubt, leave it as prose.

## Ban list

Do not use any of the following:

- Clickable carousels or tabbed panels
- Scroll-jacking or parallax effects
- Decorative animations or CSS transitions on content (theme toggle button excepted)
- Hero banners, full-width gradient headers, decorative backgrounds
- Emoji used as decoration or bullet replacements
- "AI-generated" flourishes: typewriter effects, loading spinners, "✨ powered by AI" callouts
- Sticky sidebars, floating action buttons, or modal dialogs
- Auto-playing anything

## What earns a visual upgrade

A section earns a non-prose treatment ONLY when it makes the content meaningfully
easier to consume. Examples:

| Source content | Appropriate upgrade |
|---|---|
| List of acceptance criteria or steps | `eui-steps` ordered list |
| Comparison of two approaches | Two-column `eui-flex-group` with `eui-panel` per option |
| Key metric or count | `eui-stat` block |
| Risk or open question | `eui-callout--warning` or `eui-callout--info` |
| Milestone table | `eui-table` |
| Long supporting context (alternatives, appendix) | `<details class="eui-collapsible">` |
| Clearly described flow or sequence | Single Mermaid diagram |
| Code sample | Prism-highlighted `<pre><code>` block |

If the source section is just paragraphs of prose, render it as `<p>` tags.
Do not wrap prose in panels for decoration.

## Layout

- Max content width: 960px, centered.
- Default: light mode. Dark toggle is always present, but not the default state.
- Heading hierarchy: one `<h1>` per artifact (the title). Section headings are
  `<h2>`. Subsections `<h3>`. Do not skip levels.
- Prose line length naturally limits to ~80ch within the 960px layout.

## Portability

- The artifact must render fully offline except for optional Mermaid and Prism CDN scripts.
- No Google Fonts CDN, no analytics, no telemetry, no external images.
- Do not reference local file paths in the HTML.

## Mermaid budget

- Maximum one diagram unless the source genuinely describes multiple distinct flows.
- Flowcharts and sequence diagrams only. Not pie charts. Not gantt charts unless
  the source is explicitly a project timeline.
- Keep diagrams simple: ≤ 12 nodes. A complex diagram is a failure of taste.
