# Quality Checklist

Verify every completed template against these checks before handing it off.
If any check fails: cut, don't compress. Promote excess to Open Questions or drop it.

## Length

- [ ] Total output ≤ 250 words (excluding code blocks and URLs).
- [ ] Problem Statement ≤ 50 words.
- [ ] AC: ≤ 5 items, each ≤ 15 words.
- [ ] Each Open Question ≤ 25 words.

## Structure

- [ ] Only the core 4 sections present unless POC/Milestones were explicitly confirmed.
- [ ] No placeholder text remaining.
- [ ] No section that duplicates another section.

## Content

- [ ] Every AC is testable. "Works correctly" is not testable.
- [ ] Each Open Question is a decision, not a research task. "We need to decide X," not "we need to look into X."
- [ ] Each Open Question is standalone - a teammate can quote-reply on GitHub.
- [ ] Cross-team dependencies named by team/person in Open Questions.

## Voice

- [ ] No banned phrases (see [VOICE.md](VOICE.md)).
- [ ] No throat-clearing intro or concluding summary.
- [ ] Title: verb + outcome, ≤ 70 chars.

## Example: Open Question vs. Acceptance Criterion

Bad (hides an unresolved decision as AC):
- [ ] Select All selects all tokens across all pages

Good (surfaces the decision):
> Open question: does Select All include tokens not on the current page? Recommend matching agent table pattern (page-select + "Select all N" inline). Needs team confirmation.
