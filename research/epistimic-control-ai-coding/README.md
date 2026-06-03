---
title: Epistemic Control in AI-Assisted Programming
project: epistimic-control-ai-coding
status: active
summary: Research notes and workflow experiments on maintaining human understanding while using AI-assisted software development tools.
repos:
  - https://github.com/josephweaver/josephweaver.github.io
---

# Epistemic Control in AI-Assisted Programming

Research notes and workflow experiments exploring how humans maintain understanding while using AI-assisted software development tools.

## Core Idea

AI-assisted programming is not binary. There exists a spectrum between:

- fully manual implementation
- fully autonomous AI development

Different tasks require different levels of human oversight and understanding.

This project refers to that requirement as **epistemic control**: the degree to which a human understands, verifies, and can reason about what an AI system has produced.

## Research Focus

This repository explores:

- human-AI software development workflows
- verification and reproducibility
- AI-assisted research software engineering
- implementation trust and validation
- epistemic drift in long AI-generated sessions
- reconstruction and review techniques
- bounded vs autonomous AI implementation

## Workflow Modes

Current working framework includes:

- *Planning Guidance*
- *Specification Guidance*
- *Human-Applied AI Implementation*
- *AI-Applied Implementation*
- *Fully Autonomous Implementation*

The central hypothesis is that carefully constrained human-AI workflows may preserve sufficient understanding while still providing substantial productivity gains.

## Included Notes

- [AI Use Compact for SMART Fellowship](2026-05-18-ai-use-compact-SMART-fellowship.md): compact governing AI usage in research and engineering activities associated with graduate research and fellowship work.
- [AI Assistance Levels](2026-05-12-ai-assistance-levels.md): working framework describing different AI-human handoff patterns and their epistemic tradeoffs.
- [AI Prompts](2026-05-12-ai-prompts.md): prompt patterns for research software workflows.
- [AI Usage Policy for Research](2026-04-25-ai-use.md): draft policy document defining responsible AI usage in research workflows.

## Folder Convention

This folder is the canonical structure for active research project pages in this site:

```text
research/<project-name>/
+-- README.md
+-- pinned
+-- YYYY-MM-DD-article-name.md
`-- YYYY-MM-DD-next-article.md
```

The empty `pinned` file marks this project as pinned in research and home-page listings. Dated article filenames provide a stable human-readable sort key; article front matter should also include the canonical `date`.

## Guiding Principle

> AI-assisted exploration -> human understanding -> independent verification -> reproducible result

The goal is not to eliminate AI assistance or maximize automation.

The goal is to preserve enough epistemic control for humans to responsibly trust, explain, reproduce, and maintain the resulting systems.
