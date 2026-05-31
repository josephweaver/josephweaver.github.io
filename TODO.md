# Repository TODO

This file tracks practical site/repository improvements. It is not a promise of near-term work; it is a backlog for keeping the public notebook easier to browse and maintain.

## Immediate / Small

- [ ] Update `fiction/README.md` into the same understated map style used by `research/README.md` and `probability/README.md`.
- [ ] Decide whether `index.html` should keep the static roadmap cards or replace them with links to existing work.
- [ ] Add a short note to `README.md` or `about.html` explaining that some sections are working notes rather than finished essays.
- [ ] Review `research/ai-homework/discovery-ready.md`; either fill it, rename it, or remove it.
- [ ] Decide whether root notes (`math.md`, `STT882.notes.md`, `experiments.md`, `vc.md`) should stay at root or move into clearer sections.

## Structure / Navigation

- [ ] Create an index for standalone notes if they remain at the repository root.
- [ ] Add a `research/ai-assisted-research/` public thread if the intake material is promoted.
- [ ] Decide whether selected AI-assisted research prompt templates belong in `docs/`.
- [ ] Add a simple thread index once enough pages have `thread` front matter.
- [ ] Add a tag index once tags are stable enough to be useful.
- [ ] Consider whether `intake/` should remain visible only through README links or get a clearly marked landing page.

## Front Matter / Metadata

- [ ] Add consistent `status` front matter to research concept notes: `seed`, `active`, `stable`, or `archived`.
- [ ] Add consistent `thread` front matter to major research notes.
- [ ] Normalize remaining tags if new tag pages are added.
- [ ] Add short descriptions to major section landing pages if needed for future indexes.

## Content Development

- [ ] Adapt `intake/ai-assisted-research/AI_ASSISTANCE_LEVELS.md` into a public research note on AI-assisted research software and epistemic control.
- [ ] Adapt `intake/ai-assisted-research/AI_PROMPTS.md` into a reusable prompt/process document if it remains broadly useful.
- [ ] Turn `intake/ai-assisted-research/AI.md` into a case study rather than publishing it raw.
- [ ] Expand `research/concepts/crop_lifecycle_temporal_modeling_notes.md` into a more stable public research note.
- [ ] Decide whether `research/concepts/Intrinsic-dimension-of-math.md` should become an essay, research note, or prototype plan.
- [ ] Consider a compact public Probability Prelim Survival Guide page that links the checklist, prompt, and solved problems.

## Build / Verification

- [ ] Install or repair local Ruby/Bundler support so `bundle exec jekyll build` can run locally.
- [ ] After Bundler is available, run a local Jekyll build after config/layout changes.
- [ ] Confirm GitHub Pages builds successfully after adding `jekyll-seo-tag`.
- [ ] Consider adding a lightweight GitHub Actions build check if Pages feedback is too slow.

## Housekeeping

- [ ] Keep `PROJECT_STATE.md` concise and current after structural changes.
- [ ] Keep `TODO.md` focused on repository/site work rather than every research idea.
- [ ] Avoid adding raw intake material directly to public navigation unless it is clearly labeled as source material.
- [ ] Re-check for literal mojibake only if VS Code, GitHub, or browser rendering shows real artifacts.
