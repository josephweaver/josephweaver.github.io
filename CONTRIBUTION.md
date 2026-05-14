# Contribution Workflow

This repository is mostly a personal public notebook, so "contribution" means maintaining a workflow that helps future me understand what changed, why it matters, and where an idea belongs.

## Default Rule

Do not force rough material directly into the public site structure.

Use `intake/` for outside work, imported notes, AI-assisted drafts, project-specific guides, and material that needs synthesis before it becomes public-facing.

## Intake Path

```text
external work -> intake/ -> triage -> adapt -> publish -> cross-link
```

### 1. Capture

Place outside material in a topic folder under `intake/`.

Examples:

```text
intake/ai-assisted-research/
intake/geospatial-etl/
intake/probability-teaching/
```

Keep the original document intact unless it contains sensitive information that should not be committed.

### 2. Triage

For each intake item, decide what role it should play:

- `adapt`: turn into a public note or essay
- `reference`: keep as background source material
- `extract`: pull one useful section into another document
- `archive`: keep for continuity, but do not surface yet
- `discard`: remove if it is obsolete or misleading

Useful triage questions:

- What is the reusable idea?
- What is project-specific and should not be published as-is?
- Does this belong in `research/`, `docs/`, `_posts/`, or an existing project folder?
- What context would a reader need if they had never seen the original project?
- Does the document preserve enough provenance to explain where the idea came from?

### 3. Adapt

When promoting intake material, create a public-facing version in the right site section.

Common destinations:

```text
research/<thread>/README.md
research/<thread>/<note>.md
docs/<process-or-template>.md
_posts/YYYY-MM-DD-topic.md
```

Before publishing, remove or rewrite:

- local-only paths
- stale project names unless used as a case study
- instructions that only make sense inside another repository
- duplicated sections
- AI conversation residue
- claims that need caveats or verification

### 4. Publish

Public pages should usually have:

```yaml
---
title: Descriptive Title
status: seed | active | stable | archived
thread: short-thread-name
---
```

Use `seed` for early ideas, `active` for live work, `stable` for durable references, and `archived` for old material kept for context.

### 5. Cross-Link

After publishing a promoted note:

- link it from the nearest section `README.md`
- link related source material if useful
- add it to the root `README.md` only if it is a major entry point
- update `PROJECT_STATE.md` if the repo structure or active direction changed

## AI-Assisted Work

AI may help with triage, restructuring, summaries, and adaptation, but the public version should be understandable without the AI conversation.

For AI-assisted research material, preserve the main distinction:

- raw workflow guides belong in `intake/`
- reusable public frameworks belong in `research/`
- prompt templates and process checklists may belong in `docs/`

The goal is not to hide AI use. The goal is to make the handoff, assumptions, review steps, and human judgment clear.

## Commit Guidance

Prefer small commits with clear scope.

Good commit types:

- intake capture
- public map update
- research note adaptation
- navigation or landing-page update
- project-state update

Avoid mixing unrelated work, such as changing probability notes, fiction systems, and site navigation in one commit unless the commit is explicitly a broad organization pass.

## Done Criteria

A contribution is done when:

- the file is in the right layer: intake, research, docs, post, or project folder
- rough material is clearly marked or kept out of public navigation
- promoted material has enough context to stand alone
- important links are updated
- `PROJECT_STATE.md` is updated if the site structure or current direction changed
