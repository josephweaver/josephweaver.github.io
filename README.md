# Joseph Weaver Public Notebook

This repository is the source for my GitHub Pages site:

<https://josephweaver.github.io/>

It is a public research notebook, teaching archive, and systems lab. The site collects working notes on probability, Bayesian and geospatial modeling, AI-assisted research workflows, infrastructure design, and experimental systems. Some pages are polished essays. Many are active notes, sketches, or project state files meant to preserve continuity over time.

The organizing theme is practical work under uncertainty: statistical reasoning, reproducible infrastructure, representation learning, and human-centered AI systems.

## Main Areas

### Research

[`research/`](research/) contains concept notes and early research threads.

Current recurring themes include:

- Bayesian crop-risk modeling and agricultural temporal systems
- Sentinel, PRISM, SSURGO, and geospatial data infrastructure
- intrinsic dimension, latent structure, and representation learning
- AI-human workflow design for education and research
- proof tooling, tactic priors, and formalization workflows
- provenance, ownership, and traceability in learned systems

Start with:

- [`research/epistimic-control-ai-coding/README.md`](research/epistimic-control-ai-coding/README.md)
- [`research/epistimic-control-ai-coding/2026-06-03-epi-ctl-ai-coding.md`](research/epistimic-control-ai-coding/2026-06-03-epi-ctl-ai-coding.md)
- [`research/concepts/2026-05-14-crop_lifecycle_temporal_modeling_notes.md`](research/concepts/2026-05-14-crop_lifecycle_temporal_modeling_notes.md)
- [`research/concepts/2025-12-31-Intrinsic-dimension-of-math.md`](research/concepts/2025-12-31-Intrinsic-dimension-of-math.md)
- [`research/concepts/2026-04-17-GaussianPCA.md`](research/concepts/2026-04-17-GaussianPCA.md)
- [`research/ai-homework/README.md`](research/ai-homework/README.md)
- [`research/prob-proof/raw-idea.md`](research/prob-proof/raw-idea.md)

### Probability

[`probability/`](probability/) is a probability and statistics study archive. It includes course notes, distribution references, convergence notes, prelim solutions, and exam-strategy material.

This section is partly a teaching resource and partly a record of how I organize mathematical recognition under pressure.

Start with:

- [`probability/prelim/pre-prelim-checklist.md`](probability/prelim/pre-prelim-checklist.md)
- [`probability/prelim/README.md`](probability/prelim/README.md)
- [`probability/distributions/summary.md`](probability/distributions/summary.md)
- [`probability/convergence/README.md`](probability/convergence/README.md)
- [`docs/survivalguide.prompt.md`](docs/survivalguide.prompt.md)

### Blog And Working Notes

[`_posts/`](_posts/) contains dated public posts. These are usually short reflections, project updates, or attempts to distill lessons from active work.

The posts are not meant to be a content funnel. They are checkpoints: what I was thinking about, what changed, and which ideas deserve more work.

### Systems And Experimental Design

Several notes use games, simulations, or fiction as systems-design laboratories. These are not separate from the technical work; they often explore the same questions through mechanics, constraints, and world models.

Start with:

- [`fiction/space-voxel/ai-graph-modeling.md`](fiction/space-voxel/ai-graph-modeling.md)
- [`fiction/space-voxel/README.md`](fiction/space-voxel/README.md)
- [`fiction/24system/README.md`](fiction/24system/README.md)
- [`fiction/whisper/README.md`](fiction/whisper/README.md)

### Intake

[`intake/`](intake/) is a staging area for material developed outside this site that may later become public research notes, essays, docs, or project pages.

Intake documents are not assumed to be polished or site-ready. They may contain project-specific assumptions, local workflow details, duplicated ideas, or rough language. Their purpose is to preserve useful external work until it can be adapted into the site's public structure.

Current intake threads include:

- [`intake/ai-assisted-research/`](intake/ai-assisted-research/) for AI-assisted research workflow notes, prompt patterns, and responsible research software practices.

## How To Read This Repository

The site is intentionally markdown-first and git-native.

Useful expectations:

- `intake/` is raw source material waiting to be triaged.
- `README.md` files are maps or project entry points.
- Active research project folders use `research/<project-name>/README.md`, optional `pinned`, and dated `YYYY-MM-DD-title.md` article files with matching `date`, `project`, `status`, and `tags` front matter.
- `PROJECT_STATE.md` files capture current status and next steps.
- `CONTRIBUTION.md` records the intake-to-publication workflow.
- `STRATEGY_SESSION.md` is a prompt for starting future long-term strategy sessions.
- `TODO.md` tracks practical repository and site-improvement backlog items.
- Research concept notes may be speculative unless marked otherwise.
- Probability notes often prioritize retrieval, exam readiness, and reusable proof patterns.
- Fiction and game-system notes often encode serious systems thinking in a different medium.

Some pages are rough. That is deliberate. The goal is to make long-running thought inspectable, not to make every intermediate artifact look finished.

## Repository Structure

```text
.
+-- _posts/            # dated public posts
+-- _layouts/          # Jekyll layout and navigation
+-- assets/            # documents, images, CSS
+-- docs/              # reusable prompts and process notes
+-- intake/            # raw external material staged for later adaptation
+-- probability/       # probability notes, prelim work, references
+-- research/          # research concepts and active idea threads
+-- fiction/           # systems/worldbuilding/game-design labs
+-- other-topics.html  # gateway to teaching/probability and fiction sections
+-- CONTRIBUTION.md    # personal workflow for intake and publication
+-- STRATEGY_SESSION.md # prompt for future strategy-collaboration sessions
+-- TODO.md            # practical repository/site backlog
+-- index.html         # site landing page
+-- about.html         # public profile
+-- _config.yml        # GitHub Pages/Jekyll config
`-- PROJECT_STATE.md   # current repo/site state
```

## Site And Build Notes

This is a GitHub Pages/Jekyll site using the Cayman remote theme with a custom default layout.

The layout provides:

- sidebar navigation for Recent Activities, Other Topics, Research, and About
- MathJax support for probability and research notes
- previous/next links within folders
- optional Giscus page discussions
- edit-on-GitHub links when repository metadata is available

Local build dependencies are defined in [`Gemfile`](Gemfile). On Windows, Ruby is installed at `C:\Ruby33-x64`, Bundler installs gems into `vendor/bundle/`, and `tzinfo-data` supports local timezone handling.

Useful local build command:

```powershell
$env:Path='C:\Ruby33-x64\bin;' + $env:Path
$env:SSL_CERT_FILE='C:\Ruby33-x64\bin\etc\ssl\cert.pem'
bundle exec jekyll build
```

Local build artifacts and dependency folders are ignored by git: `.bundle/`, `vendor/bundle/`, `_site/`, `.sass-cache/`, `.jekyll-cache/`, and `.jekyll-metadata`.

## Intake Workflow

The default path for outside material is:

```text
external work -> intake/ -> triage -> adapted public page -> cross-links
```

Use `intake/` when an idea is worth preserving but not yet ready to become part of the public site structure. During triage, decide whether the material should become:

- a research note under `research/`
- a durable process document under `docs/`
- a dated post under `_posts/`
- a project page under an existing section
- an archived reference that stays in `intake/`

When promoting intake material, preserve the original if it contains useful context, but adapt the public version so it can stand alone without private paths, project-specific assumptions, or hidden conversation history.

## Current Direction

The next improvements are organizational rather than cosmetic:

- make research threads easier to browse
- keep front matter consistent for status, tags, and thread names
- improve discoverability of exploratory notes
- turn the strongest concept notes into stable public essays or reproducible prototypes
- keep `PROJECT_STATE.md` aligned with the current site structure

This repository is meant to remain an evolving notebook: part research archive, part infrastructure lab, part teaching aid, and part record of how ideas become systems.
