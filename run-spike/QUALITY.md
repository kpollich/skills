# Quality Checklist

Verify every completed template against these checks before handing it off.

## Checklist

- [ ] Every acceptance criterion is testable. "Works correctly" is not testable.
- [ ] Non-goals are explicit. If scope could reasonably include something, it's either
      in acceptance criteria or non-goals -- never ambiguous.
- [ ] Open Questions section is present and contains decisions, not research tasks.
      "We need to decide X before work starts," not "we need to look into X."
- [ ] Each open question is a standalone item that someone can quote-reply to on GitHub.
- [ ] If cross-team dependencies exist, they appear as open questions naming the
      team/person and what we need from them.
- [ ] POC Proposal (if present) describes a vertical slice buildable end-to-end in ~2 weeks
      that shakes out complexity — not a mini-feature or throwaway prototype.
- [ ] Out of Scope / Follow-ups parks known follow-ons explicitly so they don't
      re-enter scope mid-sprint through the back door.

## Example: Open Questions vs. Acceptance Criteria

Bad (acceptance criterion that hides an unresolved decision):
- [ ] Select All selects all tokens across all pages

Good (open question surfaced for kickoff):
> Open question: does Select All include tokens not visible in the current page view?
> Recommend aligning with the agent table pattern: checkbox selects current page,
> with an inline "Select all N tokens" option appearing after. Needs team confirmation.

The difference: the first pretends a decision was made. The second names the decision
and proposes a default, letting the team confirm or override at kickoff.
