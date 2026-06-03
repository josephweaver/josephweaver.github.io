# Project state

## Purpose
- Public research notebook + teaching archive + systems lab rendered with Jekyll/GitHub Pages.
- Public site lives at https://josephweaver.github.io/.
- Markdown-heavy content is organized into public sections (`research/`, `probability/`, `fiction/`, `_posts/`) plus `intake/` for raw outside material that may later be adapted.

## Sub-Project Reference
- Active tabletop design work lives in `fiction/24system/`.
- Start with:
  - `fiction/24system/README.md` (system overview + file index)
  - `fiction/24system/PROJECT_STATE.md` (latest design decisions and next steps)

## Build / theme
- `_config.yml` uses `remote_theme: pages-themes/cayman@v0.2.0` with `jekyll-remote-theme` and `jekyll-seo-tag`; includes site metadata (`title`, `description`, `author`, `url`, `repository`, `timezone`). Markdown via kramdown + MathJax (math enabled by default for `probability/`).
- `_layouts/default.html` defines the page chrome: sidebar navigation (Blog, About, Other Topics, Research) with collapsible Research subsections, resizable width (localStorage `sttSidebarWidth`), MathJax v3 config, sibling prev/next links (per folder), edit-on-GitHub links top/bottom of articles, and optional Giscus comments when `site.giscus` is configured. Loads `assets/css/custom.css` plus inline styles per page.
- `assets/css/custom.css` supplies typography/colors/layout shell; page-level styles live inline in `index.html` and `about.html`.
- Assets: `assets/documents/` (resume + biosketch PDFs), `assets/images/1618685561588.jfif` (portrait), and other media folders.

## Content & navigation
- Home `index.html`: starts directly with recent research notes drawn from `project` + `date` front matter, then lists current research projects from `research/<project-name>/README.md`. Pinned projects are detected through an empty `pinned` marker file. Links to About, Research, and Other Topics remain available lower on the page.
- `other-topics.html`: gateway page for Teaching/Probability and Fiction sections, replacing direct home/sidebar emphasis on those sections.
- About `about.html`: former homepage; hero layout with portrait, contact, LinkedIn, and links to resume/biosketch PDFs.
- Root `README.md`: public map for the repository, including research, probability, blog/working notes, systems/design notes, intake workflow, and build notes.
- `CONTRIBUTION.md`: personal workflow for capture -> intake -> triage -> adapt -> publish -> cross-link.
- `STRATEGY_SESSION.md`: prompt for starting future long-term technical/research strategy sessions.
- `TODO.md`: practical backlog for site/repository organization, navigation, metadata, content promotion, and build verification.
- Probability: `probability/README.md` is now a real landing page for the probability study archive; subfolders include `STT881/`, `STT882/`, `STT996/`, `STT997/`, `MTH868/`, `distributions/`, `convergence/`, `high-dimensional/`, and `prelim/` (2018-2025 prelim question writeups). Math rendering handled by layout defaults.
- Research: `research/README.md` now maps current threads and includes `research/epistimic-control-ai-coding/` as the canonical active project folder structure. Active research project folders use `README.md`, optional `pinned`, and dated `YYYY-MM-DD-title.md` article files with matching `date` front matter.
- Intake: `intake/ai-assisted-research/` contains raw outside material on AI-assisted research workflow (`AI.md`, `AI_ASSISTANCE_LEVELS.md`, `AI_PROMPTS.md`). Intake is staging material, not assumed site-ready.
- Fiction: `fiction/README.md`; active subprojects include `fiction/24system/`, `fiction/space-voxel/`, `fiction/whisper/`, `fiction/president-rock/`, and `fiction/Oort-Factor/`.
- Standalone root notes include `math.md`, `STT882.notes.md`, `experiments.md`, `vc.md`, plus `LICENSE` and `troubleshooting.txt`.

## Recent organization work
- Added `research/epistimic-control-ai-coding/` as the canonical active research project example.
- Retooled `index.html` to use the research hierarchy for recent article and current-project cards.
- Added `other-topics.html` and simplified home/sidebar navigation so Probability and Fiction are routed through Other Topics.
- Removed the home-page hero panel so the landing page starts with posts.
- Replaced placeholder root `README.md` with a public repository map.
- Added `CONTRIBUTION.md` to document the intake/adaptation workflow.
- Added `STRATEGY_SESSION.md` for future strategy-collaboration sessions.
- Replaced placeholder landing pages for `research/README.md`, `research/concepts/README.md`, and `probability/README.md` with understated browsing maps.
- Added `_config.yml` site metadata and `jekyll-seo-tag`.
- Normalized obvious tag inconsistencies in public posts and one prelim page to lowercase/kebab-case.
- Checked for literal mojibake/control-character issues with `rg`; no real matches found. Earlier apostrophe rendering issues appear to have been a shell display decoding issue, not file corruption.

## Known issues / follow-ups
- See `TODO.md` for the fuller working backlog.
- Decide whether to update `fiction/README.md` into the same understated map style used by Research and Probability.
- Expose standalone root notes (`math.md`, `STT882.notes.md`, `experiments.md`, `vc.md`) via an index page or move them into clearer sections.
- Add consistent front matter for status/thread names to research and concept notes.
- Decide whether curated AI-assisted research pages should be promoted from `intake/ai-assisted-research/` into `research/ai-assisted-research/` and/or `docs/`.
- Fill `research/concepts/ai-homework/discovery-ready.md` or remove if unnecessary.
- Consider a tag or thread index once front matter is consistent.
- Local Jekyll build was not verified in this session because `bundle` was not available in PATH.
