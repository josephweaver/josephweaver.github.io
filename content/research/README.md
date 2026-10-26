---
title: Research
description: I explore scientific questions and ideas that may lead to publishable material.
tags:
  - research-index
  - project-map
---

# Research

This section collects research notes, speculative concepts, and project sketches. Most pages are working documents rather than finished papers. The common thread is an interest in statistical, computational, and AI-assisted systems that remain inspectable under uncertainty.

## Current Threads

### Epistemic Control AI Coding

Notes on AI-assisted coding, research control, prompt practice, and responsible acceleration. This folder is the canonical example for active research project structure: a project `README.md`, optional `pinned` marker, and dated article files.

- [Project landing page](epistimic-control-ai-coding/README.md)
- [AI Use Compact for SMART Fellowship](epistimic-control-ai-coding/2026-05-18-ai-use-compact-SMART-fellowship.md)
- [AI Assistance Levels](epistimic-control-ai-coding/2026-05-12-ai-assistance-levels.md)
- [AI Prompts](epistimic-control-ai-coding/2026-05-12-ai-prompts.md)
- [AI Usage Policy for Research](epistimic-control-ai-coding/2026-04-25-ai-use.md)

### Agricultural And Geospatial Modeling

Notes on crop-risk modeling, temporal field behavior, remote sensing, and geospatial infrastructure.

- [Crop Lifecycle Temporal Modeling Notes](concepts/2026-05-14-crop_lifecycle_temporal_modeling_notes.md): early notes on Sentinel-1, Sentinel-2, PRISM, and SSURGO as temporal signals for management and lifecycle embeddings.
- [Wind Flow Simulation](concepts/2025-12-07-wind-flow-sim.md): early notes on atmospheric dynamics and simulation structure.

### Representation Learning And Intrinsic Structure

Notes that connect geometry, uncertainty, embeddings, and high-dimensional learning.

- [NN-Mitosis](nn-mitosis/README.md): covariance and backpropagation-based Fisher diagnostics for adaptive node splitting and merging, with VC dimension informing hidden-layer size.
- [NN-Geometric-Initialization](nn-geometric-initialization/README.md): geometric initialization of node weights and biases using PCA, clustering, and lines or hyperplanes.
- [Intrinsic Geometry of Mathematics](concepts/2025-12-31-Intrinsic-dimension-of-math.md): a speculative note on mathematical corpora, intrinsic dimension, and latent geometry.
- [Scale-Aware Uncertain PCA](concepts/2026-04-17-GaussianPCA.md): a toy idea for treating numerical precision as uncertainty inside linear algebra.
- [Gaussian Smoothing Neural Networks](concepts/2025-12-24-gaussian-smoothing-neural-networks.md): a neural architecture concept based on Gaussian aggregation and smoothing.
- [Hybrid Gaussian-ReLU Neural Networks](concepts/2025-12-24-hybrid-gaussian-relu-networks.md): follow-up notes on combining smooth statistical structure with ReLU-style switching.

### AI-Assisted Learning And Research Workflows

Notes on AI systems, teaching workflows, and research traceability.

- [AI Homework](ai-homework/README.md): a concept document for an instructor-controlled AI tutoring system.
- [AI Homework Intake](ai-homework/INTAKE.md): rough seed workflow for turning problems into guided tutoring objects.

Related raw source material is staged in the [AI-assisted research intake](../../intake/ai-assisted-research/AI.md) before it is adapted into public research notes.

### Proof Tooling And Mathematical Automation

Notes on learned priors, tactic selection, and formal proof traces.

- [Learned Prior for Tactic Selection](prob-proof/raw-idea.md): research sketch for smooth-manifold proof automation.
- [Proposal Draft](prob-proof/purposal.md): more formal version of the same idea.

## How To Read This Section

- Use [`concepts/`](concepts/README.md) for early-stage ideas and speculative frameworks.
- Use project subfolders, such as [`epistimic-control-ai-coding/`](epistimic-control-ai-coding/README.md), [`ai-homework/`](ai-homework/README.md), and [`prob-proof/`](prob-proof/README.md), for more focused threads.
- In active project folders, use `YYYY-MM-DD-title.md` filenames plus matching `date` front matter for article ordering.
- Add an empty `pinned` file when a project should appear above unpinned projects.
- Treat status labels and file context seriously: some notes are seeds, not claims.
- Expect ideas to move from rough notes to clearer public writeups over time.
