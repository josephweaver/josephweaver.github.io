# Joseph Weaver Public Notebook

This repository is the source for my [GitHub Pages site](https://josephweaver.github.io/). I use it for research, collected notes, creative work, a daily worklog, and observations.

The [notebook landing page](content/README.md) describes the five main sections:

- [Research](content/research/README.md): scientific explorations that may lead to publishable material.
- [Notes](content/notes/README.md): notes from sources, classes, books, and papers on statistics, mathematics, agriculture, and other interests.
- [Fiction](content/fiction/README.md): literary work, role-playing games, and computer-game designs.
- [Worklog](content/worklog/README.md): what I did each day, where the work went, and how to resume it.
- [Posts](content/posts/README.md): my observations and thoughts.

## Repository structure

```text
.
+-- content/
|   +-- README.md       # notebook landing page
|   +-- research/      # scientific explorations and projects
|   +-- notes/         # collected notes and study material
|   +-- fiction/       # literary work and game designs
|   +-- worklog/       # daily work and restart notes
|   `-- posts/         # dated observations and thoughts
+-- assets/            # shared images, documents, and CSS
+-- _includes/         # recursive navigation and breadcrumbs
+-- _layouts/          # Jekyll page layout
+-- docs/              # reusable prompts and process notes
+-- intake/            # outside material awaiting adaptation
+-- scripts/           # site verification tools
+-- index.html         # recent activities and section/project links
+-- about.html         # profile
+-- _config.yml        # Jekyll settings
+-- CONTRIBUTION.md    # intake and publication workflow
`-- PROJECT_STATE.md   # current structure and implementation notes
```

## Adding and organizing content

I add Markdown files beneath `content/` and use folders to group them. A folder's `README.md` is its landing page, rendered at that folder's URL. Its title supplies the folder label. The sidebar follows the directory tree at any depth, and landing pages list their immediate children automatically. A new folder with a README appears without editing the layout or a navigation list. Folders without a README remain expandable in the sidebar.

Markdown without front matter also renders. The first heading supplies a title when I have not set one explicitly. YAML front matter remains useful for metadata:

```yaml
---
title: A descriptive title
date: 2026-10-26
status: exploring
tags: [relevant-topic]
---
```

The home page lists dated content from all five sections. I add a `date` when I want an entry included there; dated filenames alone are ordinary page names. Posts now live in `content/posts/` and use the same page conventions as the other sections.

For research projects, I use `content/research/<project>/README.md` with `project`, optional `summary`, and relevant tags. An empty `pinned` file puts a project first in the home-page project list. Dated research articles can share the project's metadata.

For daily work, I start with the [worklog template](content/worklog/TEMPLATE.md) and follow the [worklog conventions](content/worklog/README.md). An entry can be unfinished, negative, or exploratory.

I prefer relative Markdown links to files within this repository. Jekyll converts links to Markdown files, including README landing pages, to the rendered URLs. Shared assets stay at the root in `assets/`; when linking relatively from a nested page, I account for the full source path.

## Site and build

The site uses GitHub Pages/Jekyll and the Cayman theme. The shared layout provides folder navigation, breadcrumbs, sibling links, MathJax, edit-on-GitHub links, and optional Giscus discussions. URLs follow the content folders and filenames.

The configuration enables GitHub Pages-supported plugins for README landing pages, Markdown without front matter, relative links, and titles from headings. [Gemfile](Gemfile) supplies the build dependencies.

With Ruby and Bundler available:

```sh
bundle install
bundle exec jekyll build
bundle exec ruby scripts/test_navigation.rb
python3 scripts/check_site.py _site
```

For a local preview:

```sh
bundle exec jekyll serve
```

On Windows, I can run these commands in WSL. Local dependencies and build output are ignored by Git and excluded from the site.

## Working documents

[CONTRIBUTION.md](CONTRIBUTION.md) describes how I capture, adapt, and cross-link outside material. Raw material stays in `intake/` until it is useful as a public note or reference. [PROJECT_STATE.md](PROJECT_STATE.md) records the current site structure; [TODO.md](TODO.md) tracks follow-up work, and [STRATEGY_SESSION.md](STRATEGY_SESSION.md) provides a prompt for longer planning sessions.
