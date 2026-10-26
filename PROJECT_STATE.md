# Project state

## Purpose

I maintain a public notebook for scientific explorations, collected notes, literary and game-design work, daily activity, and observations. The public site is [josephweaver.github.io](https://josephweaver.github.io/).

## Content structure

The five main sections are peers under `content/`, described by [content/README.md](content/README.md):

- `content/research/`: scientific explorations that may lead to publishable material.
- `content/notes/`: notes from sources, classes, books, and papers on statistics, mathematics, agriculture, and other interests. This was formerly `probability/`.
- `content/fiction/`: literary work, role-playing games, and computer-game designs.
- `content/worklog/`: daily work, output locations, experiments, observations, and restart notes. This was formerly nested inside Research.
- `content/posts/`: observations and thoughts. These are regular Markdown pages, formerly Jekyll `_posts`.

Shared images, documents, and CSS remain in root `assets/`. Root `index.html` and `about.html` provide the home and profile pages. Reusable process notes stay in `docs/`; outside source material awaiting adaptation stays in `intake/`.

## Rendering and navigation

- `_config.yml` sets `content_root: content` and gives content pages the shared default layout. Notes also inherit the math flag.
- README files become their directory landing pages, with or without YAML front matter. Markdown without front matter also renders; its first heading supplies a title unless metadata supplies one.
- `_includes/directory-items.html` discovers direct pages and subfolders recursively. Folder labels come from README titles. Folders without a README remain expandable.
- `_layouts/default.html` caches the shared navigation tree, then marks the current page and opens its ancestor folders for each render. README landing pages also list their immediate children.
- `_includes/breadcrumbs.html` links the current page to its parent README pages.
- Relative Markdown links resolve to rendered URLs. Content-specific permalink overrides were removed so URLs follow source directories and filenames; no legacy redirects were added.
- Home lists dated pages from every content section, discovers section cards from their README files, and retains project cards and `pinned` markers. Former posts have explicit dates matching their filenames.
- Templates stay accessible through direct links and are omitted from navigation and the recent feed. Other pages can use `nav_exclude: true` when appropriate.
- MathJax, resizable navigation, edit-on-GitHub links, and optional Giscus discussions remain in the shared layout. `other-topics.html` still links to Notes and Fiction.

## Build and verification

The site uses Jekyll 3.10 through `github-pages`, the Cayman theme, and GitHub Pages-supported plugins declared in `_config.yml`. `Gemfile.lock` supports Windows and Linux. Ruby and build dependencies are available in Ubuntu-24.04 under WSL for local verification.

```sh
bundle install
bundle exec jekyll build
bundle exec ruby scripts/test_navigation.rb
python3 scripts/check_site.py _site
```

The navigation regression check builds an isolated fixture with a new section four levels deep, a folder without a README, plain Markdown, relative links, hidden pages, dated entries, and a `/preview` base URL. The rendered-site checker inspects local links, assets, and heading anchors across the home page, About, and content pages.

Local dependencies, private files, verification scripts, and generated output are excluded from publication. The pre-existing `content/notes/STT997/HW5.html` export is excluded because `HW5.md` produces that output URL.

## Working references

- [Contribution workflow](CONTRIBUTION.md)
- [Worklog conventions](content/worklog/README.md) and [template](content/worklog/TEMPLATE.md)
- [24-System landing page](content/fiction/24system/README.md) and [project state](content/fiction/24system/PROJECT_STATE.md)
- [Epistemic Control in AI-Assisted Programming](content/research/epistimic-control-ai-coding/README.md)
- [Follow-up backlog](TODO.md)

Standalone root notes such as `math.md`, `STT882.notes.md`, `experiments.md`, and `vc.md` remain outside the five main sections. Their eventual organization is separate follow-up work.
