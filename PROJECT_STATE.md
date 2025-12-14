# Project state

## Purpose
- Personal knowledge base + blog rendered with Jekyll/GitHub Pages; Markdown-heavy content organized into topical folders.
- Public site lives at https://josephweaver.github.io/ (blog-first landing; About moved to its own page).

## Build / theme
- `_config.yml` uses `remote_theme: pages-themes/cayman@v0.2.0` with `jekyll-remote-theme` plugin; Markdown via kramdown + MathJax (math enabled by default for `probability/`).
- `_layouts/default.html` defines the page chrome: sidebar navigation (Blog, About, Probability, Research, Fiction) with collapsible sections/subsections, resizable width (localStorage `sttSidebarWidth`), and MathJax v3 config. Loads `assets/css/custom.css` plus inline styles per page.
- `assets/css/custom.css` supplies typography/colors/layout shell; page-level styles live inline in `index.html` and `about.html`.
- Assets: `assets/documents/` (resume + biosketch PDFs), `assets/images/1618685561588.jfif` (portrait), and other media folders.

## Content & navigation
- Home `index.html`: blog-focused hero + cards; only linked post is `_posts/2025-12-08-hello-absurd.md`. Other cards describe planned series but are static placeholders.
- About `about.html`: former homepage; hero layout with portrait, contact, LinkedIn, and links to resume/biosketch PDFs.
- Blog `_posts/2025-12-08-hello-absurd.md`: meta update introducing the new layout; text has mojibake/encoding artifacts (e.g., `I?Tll`).
- Probability: `probability/README.md` landing; subfolders `STT881/`, `STT882/`, and `prelim/` (2018-2025 prelim question writeups). Math rendering handled by layout defaults.
- Research: `research/README.md` and `research/concepts/README.md` (both placeholder landings); content includes `ai-homework.md`, `wind-flow-sim.md`, `convariance-tensor.md`, and `concepts/ai-homework/{concepts.md, discovery-ready.md (empty)}`.
- Fiction: `fiction/README.md`; `fiction/games/README.md` + `space-voxel.md`; deeper `fiction/games/space-voxel-details/` docs (`build-ui.md`, `missile.md`, `Resource-graph.md`, `Sourcing.md`, `transport.md`).
- Standalone notes not linked in sidebar: `math.md` (mojibake present), `durrett.probability.md`, `real-analysis.md`, `STT882.notes.md`, `trigonometry.md`, `experiments.md`, `vc.md`, plus `LICENSE`, minimal `README.md`, and `troubleshooting.txt` (git config reminder).

## Known issues / follow-ups
- Fix encoding glitches in `_posts/2025-12-08-hello-absurd.md` and `math.md` (likely CP1252 artifacts like `?T`/`?`).
- Populate placeholder landing pages for Probability, Research, Fiction, Research Concepts, and Games with real summaries/links.
- Expose standalone math/probability notes (math/real-analysis/durrett/STT882/etc.) via navigation or an index page; currently only discoverable by direct URL.
- Add actual blog posts or remove placeholder cards on `index.html` to avoid implying missing links; currently only one post exists.
- Expand `README.md` with project purpose and GitHub Pages build notes; consider noting resume/biosketch locations.
- Fill `research/concepts/ai-homework/discovery-ready.md` or remove if unnecessary.
