# Research-First Landing Page Retool

## Goal

Retool the site so the home page surfaces current work, active research directions, and updates that point back to project repositories or project pages.

Use `research/epistimic-control-ai-coding/` as the canonical example for active research project folders.

The intended public structure is:

```text
/
+-- index.html
+-- research/
    +-- README.md
    +-- epistimic-control-ai-coding/
    |   +-- README.md
    |   +-- pinned
    |   +-- YYYY-MM-DD-article-name.md
    |   +-- YYYY-MM-DD-next-article.md
    +-- project2name/
        +-- README.md
        +-- YYYY-MM-DD-article-name.md
```

## Pinned Projects

- Use `pinned` as the marker file name.
- If `/research/<project-name>/pinned` exists, that project should appear before unpinned projects.
- Pinned projects should still be sorted by last contribution within the pinned group.

## Content Model

- Each active research direction should live under `research/<project-name>/`.
- Each research project folder should have a landing page, preferably `README.md`, that lists content in that research direction.
- Use `research/epistimic-control-ai-coding/README.md` as the model for project landing pages.
- Project pages should include links to relevant repos when available.
- Updates/articles/posts should be able to reference a research project.
- A project should be able to expose:
  - title
  - short summary
  - status, such as `active`, `paused`, `draft`, or `archived`
  - repository links
  - tags/topics
  - last contribution date
  - pinned status

## Research Index Page

- Update `research/README.md` into a true research-topic index.
- It should list research topics/projects with a short description for each.
- Ordering rule:
  - pinned projects first
  - then remaining projects by last contribution date, newest first
- Each listed project should link to its project landing page.
- Include a small list of recent items under each project when practical.

## Project Landing Pages

- Add or standardize `research/<project-name>/README.md` pages.
- Each project landing page should list all content in that research direction.
- Project content should be ordered by last contribution date, newest first.
- Include repo references near the top when the project has code, data, demos, or external documentation.
- Keep project pages useful even when some notes are rough or speculative.

## Home Page Behavior

- Retool `index.html` so the main page draws from the `research/` hierarchy, not only from `_posts/`.
- Show recent articles, notes, and project updates in a single stream ordered by last contribution date.
- Each item should link to:
  - the article/note/update itself
  - the parent research project
  - any related repository, if declared
- Keep a small section for conventional blog posts, but make current research activity the main signal.
- Remove or replace static placeholder roadmap cards once dynamic current-work sections exist.

## Ordering And Data Source

- Decide how to calculate "last contribution":
  - use the `YYYY-MM-DD` date prefix in article/note filenames as the sorting date
  - store the same date in article front matter as the canonical machine-readable date
  - sort from most recent to oldest
  - keep the date prefix consistent for all items that should appear in ordered research/project lists
  - use project metadata only for project-level summaries, repo links, status, and pinned state
- Avoid relying on runtime filesystem scans that GitHub Pages/Jekyll cannot perform safely.
- Consider adding `_data/research.yml` as the project registry if pure folder discovery becomes awkward.

## Implementation Tasks

- Audit existing `research/` folders and decide which should become first-class project folders.
- Create a metadata convention for project pages and research notes.
- Add pinned marker support or equivalent metadata.
- Build or update a research index template.
- Update the home page to render current work from research metadata and posts.
- Add example metadata to at least two research projects before scaling the pattern.
- Use `research/epistimic-control-ai-coding/` as the first implemented reference project.
- Update `README.md` and `PROJECT_STATE.md` after the new structure is implemented.
- Verify locally with Jekyll if `bundle` is available, or document the build limitation if it is not.

## Suggested First Projects To Convert

- `research/epistimic-control-ai-coding/`
- `research/ai-homework/`
- `research/prob-proof/`
- a new folder for agricultural/geospatial modeling, if current concept notes should be grouped there
- a new folder for representation learning/intrinsic structure, if current concept notes should be grouped there

## Design Notes

- Keep the site markdown-first and easy to maintain.
- Prefer explicit metadata over clever discovery if that makes GitHub Pages builds more predictable.
- Preserve rough research notes, but make their status visible.
- The home page should answer: "What is Joseph currently working on, and where can I follow the thread?"
