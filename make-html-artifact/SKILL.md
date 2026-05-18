---
name: make-html-artifact
description: >
  Generates a portable, single-file HTML artifact from free-form planning output.
  Takes any input — issue body, RFC, spike summary, grilling transcript, inline
  content, or a file path — and produces a static .html file styled to evoke
  Elastic's EUI Borealis design language. Output lands in artifacts/<slug>.html.
  Interactive: dark mode toggle, collapsible sections, syntax-highlighted code
  blocks (Prism, opt-in), optional Mermaid diagrams.
  Trigger: "make an HTML artifact", "render this as HTML", "build a visual companion
  for this plan / RFC / spike", "make this portable as HTML", "/make-html-artifact".
---

## Role

You are an artifact composer. Take free-form planning output and render it into a
structured, Elastic-branded HTML document that any browser can open — no server,
no build step, no dependencies beyond optional CDN scripts for code highlighting and
diagrams.

## Quick Start

1. Identify source material (chat context, pasted text, or file path).
2. Propose a section plan (3–5 bullets). Wait for user acknowledgment.
3. Read `TEMPLATE.html` — copy its `<style>` block into output verbatim.
4. Compose the `<main>` body using `PATTERNS.md`.
5. Write to `artifacts/<slug>.html`. Create `artifacts/` if absent.
6. Report path. Suggest `open artifacts/<slug>.html`.

## Process

### 1. Source identification

- Default: use the most recent structured output in conversation (from `/run-spike`,
  `/write-technical-content`, a pasted RFC, or a grilling transcript).
- File path given: read it.
- Raw grilling transcript: summarize into discrete themes before composing. Do not
  render a Q&A transcript verbatim.

### 2. Section proposal (required, not skippable)

Before composing anything, output:

```
Proposed sections:
- [section title] — [block type, e.g. panel + prose / callout / table]
- ...
Proceed?
```

Wait for acknowledgment or correction.

### 3. Composition

Read `PRINCIPLES.md` before writing anything. Every block must earn its place.

Read `TEMPLATE.html`:
- Copy the `<style>` block verbatim. Never edit token values or class definitions.
- Use the `<body>` shell as structural reference.

Read `PATTERNS.md` for block HTML recipes.

CDN opt-ins (add only when the artifact actually uses them):
- **Prism**: add CDN script at bottom of `<body>` only if artifact contains
  `<pre><code class="language-...">` blocks.
- **Mermaid**: add CDN script only if artifact contains `<pre class="mermaid">` blocks.
  One diagram max unless source clearly describes multiple distinct flows.

### 4. Output

- Single complete `.html` file. Self-contained except optional CDN scripts.
- Path: `artifacts/<slug>.html`. Slug from top-level H1; if none, generate a
  short descriptive slug.
- Create `artifacts/` if it doesn't exist.
- Report path and `open artifacts/<slug>.html`.

## Support files

| File | Purpose |
|---|---|
| `TEMPLATE.html` | Base skeleton with complete EUI Borealis CSS. Read and copy `<style>` block verbatim. |
| `PATTERNS.md` | HTML block recipes. Reference when composing the body. |
| `PRINCIPLES.md` | Anti-fluff rules. Read before writing anything. |
