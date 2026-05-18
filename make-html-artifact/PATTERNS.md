# HTML Block Patterns

Quick reference for composing artifact body content.
Each block: when to use it + minimal HTML. Copy and adapt.

---

## Panel

Use for discrete sections that benefit from visual grouping (e.g. a proposal, a POC description, an option in a tradeoff comparison). Add `--border` by default; `--shadow` only for prominent standalone cards.

```html
<div class="eui-panel eui-panel--border">
  <h3 class="eui-title-xs">Panel heading</h3>
  <div class="eui-spacer-s"></div>
  <p>Panel content.</p>
</div>
```

Semantic color variants (background tinted to color):
```html
<div class="eui-panel eui-panel--primary eui-panel--border"> <!-- blue tint -->
<div class="eui-panel eui-panel--success eui-panel--border"> <!-- green tint -->
<div class="eui-panel eui-panel--warning eui-panel--border"> <!-- yellow tint -->
<div class="eui-panel eui-panel--danger  eui-panel--border"> <!-- red tint -->
<div class="eui-panel eui-panel--subdued eui-panel--border"> <!-- neutral -->
```

---

## Callout

Use for open questions (info), risks (warning/danger), notes/context (success, info). Not for prose sections.

```html
<div class="eui-callout eui-callout--info">
  <div class="eui-callout-title">Open Question</div>
  <p>Should we gate behind the existing feature flag or ship directly?</p>
</div>

<div class="eui-callout eui-callout--warning">
  <div class="eui-callout-title">Risk</div>
  <p>Backfill migration touches 50M rows. Needs runbook and rollback plan.</p>
</div>

<div class="eui-callout eui-callout--danger">
  <div class="eui-callout-title">Blocker</div>
  <p>Legal sign-off required before shipping. Owner: @alice</p>
</div>

<div class="eui-callout eui-callout--success">
  <div class="eui-callout-title">Decision Made</div>
  <p>Using the existing auth middleware. No new deps.</p>
</div>
```

---

## Badge

Use for status labels, categories, severity. Inline with text or in table cells.

```html
<span class="eui-badge eui-badge--primary">In Progress</span>
<span class="eui-badge eui-badge--success">Done</span>
<span class="eui-badge eui-badge--warning">Needs Review</span>
<span class="eui-badge eui-badge--danger">Blocked</span>
<span class="eui-badge eui-badge--neutral">Backlog</span>
```

---

## Stat

Use for a small number of key metrics. Group in a flex row.

```html
<div class="eui-flex-group">
  <div class="eui-flex-item">
    <div class="eui-stat">
      <span class="eui-stat-number">~2 weeks</span>
      <span class="eui-stat-label">POC Timeline</span>
      <span class="eui-stat-description">Vertical slice, single engineer</span>
    </div>
  </div>
  <div class="eui-flex-item">
    <div class="eui-stat">
      <span class="eui-stat-number">3</span>
      <span class="eui-stat-label">Open Questions</span>
    </div>
  </div>
</div>
```

---

## Steps

Use for ordered processes — acceptance criteria, POC phases, runbook steps.

```html
<ol class="eui-steps">
  <li class="eui-step">
    <span class="eui-step-number">1</span>
    <div class="eui-step-content">
      <div class="eui-step-title">Scaffold the integration</div>
      <p>Stand up the agent package with a working local data stream.</p>
    </div>
  </li>
  <li class="eui-step">
    <span class="eui-step-number">2</span>
    <div class="eui-step-content">
      <div class="eui-step-title">Validate metrics in Kibana</div>
      <p>Confirm transforms render in the expected dashboards.</p>
    </div>
  </li>
</ol>
```

---

## Table

Use for milestones, decision matrices, tradeoff comparisons, risk/impact grids.

```html
<table class="eui-table">
  <thead>
    <tr>
      <th>Milestone</th>
      <th>Owner</th>
      <th>Target</th>
      <th>Status</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>Agent scaffold complete</td>
      <td>@alice</td>
      <td>2026-06-01</td>
      <td><span class="eui-badge eui-badge--success">Done</span></td>
    </tr>
    <tr>
      <td>Performance validation</td>
      <td>@bob</td>
      <td>2026-06-15</td>
      <td><span class="eui-badge eui-badge--warning">In Progress</span></td>
    </tr>
  </tbody>
</table>
```

---

## Flex Group (side-by-side layout)

Use for two-option tradeoff comparisons, stat rows, or horizontally grouped panels.

```html
<div class="eui-flex-group">
  <div class="eui-flex-item">
    <div class="eui-panel eui-panel--border">
      <h4 class="eui-title-xxs">Option A</h4>
      <div class="eui-spacer-xs"></div>
      <p>Description of option A and its tradeoffs.</p>
    </div>
  </div>
  <div class="eui-flex-item">
    <div class="eui-panel eui-panel--border">
      <h4 class="eui-title-xxs">Option B</h4>
      <div class="eui-spacer-xs"></div>
      <p>Description of option B and its tradeoffs.</p>
    </div>
  </div>
</div>
```

---

## Collapsible

Use for long supporting context that's important but not primary reading: alternatives considered, raw transcript excerpts, appendix material.

```html
<details class="eui-collapsible">
  <summary>Alternatives Considered</summary>
  <div class="eui-collapsible-body">
    <p>We evaluated approach X, but dismissed it because Y.</p>
    <p>Approach Z was considered but deprioritized due to Z.</p>
  </div>
</details>
```

---

## Code Block (Prism)

Use when the source contains actual code, config, queries, or command-line examples.
Specify the language in `class="language-..."` for syntax highlighting.
**Include the Prism CDN scripts when any code block is present.**

```html
<pre><code class="language-yaml">
integrations:
  - name: nginx
    type: logfile
    streams:
      - paths: [/var/log/nginx/*.log]
</code></pre>

<pre><code class="language-bash">
fleet-server -c /etc/fleet-server/config.yml
</code></pre>
```

Common language identifiers: `bash`, `yaml`, `json`, `typescript`, `javascript`,
`python`, `go`, `sql`, `dockerfile`, `toml`, `diff`.

---

## Mermaid Diagram (opt-in)

Use ONLY when the content describes a clear flow, sequence, or architecture with
distinct nodes. Keep diagrams to ≤ 12 nodes. One diagram per artifact unless
the source explicitly has multiple distinct flows.

**Include the Mermaid CDN scripts when any diagram is present.**

```html
<!-- Flowchart: POC phases or architecture components -->
<pre class="mermaid">
flowchart LR
    A[Fleet Server] --> B[Elastic Agent]
    B --> C[Integration Package]
    C --> D[Elasticsearch]
    D --> E[Kibana Dashboard]
</pre>

<!-- Sequence diagram: request flow -->
<pre class="mermaid">
sequenceDiagram
    participant Client
    participant API
    participant Auth
    Client->>API: POST /enroll
    API->>Auth: validate token
    Auth-->>API: ok
    API-->>Client: 200 agent-id
</pre>
```

---

## Section Structure (bare prose)

Most sections don't need a special block. Plain headings + paragraphs are correct.

```html
<h2>Problem Statement</h2>
<p>
  Fleet currently has no mechanism to automatically de-provision agents that
  have been unreachable for more than 30 days. Operations teams must manually
  identify and remove stale agents, which takes ~2 hours per quarter per cluster.
</p>

<h2>Goal</h2>
<p>
  Automated stale-agent detection and de-provisioning, configurable per policy,
  with a dry-run mode and audit log.
</p>
```

---

## Horizontal Rule + Spacers

Use `<hr class="eui-hr">` to separate major sections. Use spacers to control vertical rhythm.

```html
<hr class="eui-hr">

<div class="eui-spacer-m"></div>
```
