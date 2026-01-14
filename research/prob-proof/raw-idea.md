# A Learned Prior for Tactic Selection in Smooth Manifold Proofs
**Subtitle:** Data-driven priors from existing proofs to guide machine-checked automation in a restricted subdomain.

## Motivation
Interactive theorem proving has made substantial portions of modern mathematics formally checkable, but writing proofs remains high-friction. A major bottleneck is *tactic selection*: given a current proof state, what is the next reasonable move that leads to a correct and readable proof?

This dissertation proposes a statistical approach: learn a conditional distribution \(p(a \mid s)\) over proof actions \(a\) given a formal proof state \(s\), using existing proof corpora. The learned prior guides a search procedure that explores multiple candidate proof paths and returns proofs optimized for correctness and interpretability.

## Why Smooth Manifolds
Smooth manifold theory is a natural restricted domain for this project because it features a relatively stable library of proof techniques that repeatedly occur across topics: charts and coordinate reductions, tangent maps and bundle arguments, constant rank and implicit function theorem patterns, local-to-global constructions via partitions of unity, and differential-form identities. This aligns directly with the topics and proof emphasis of MTH 868 (implicit/inverse function theorem, smooth manifolds and maps, tangent spaces and differentials, submersions and constant rank, bundles and partitions of unity, vector fields and flows, differential forms, Lie derivatives and the Cartan magic formula, integration and Stokes’ theorem, de Rham cohomology, Poincaré lemma/duality, and Gauss–Bonnet applications). :contentReference[oaicite:0]{index=0}

## Core Research Question
Can a learned prior over proof actions, trained on an existing library of machine-checked smooth-manifold proofs, improve proof automation in a restricted subdomain while preserving human-style structure (short, standard, readable proofs)?

## Proposed Contributions
1. **A proof-trace dataset for smooth manifolds.**  
   Build an extraction pipeline that converts existing library proofs into sequences of (proof-state summary, action) pairs. The dataset will support both supervised prediction and search-based evaluation.

2. **Action abstractions and “technique classes” for manifold proofs.**  
   Define a hierarchy of proof actions from low-level tactics to higher-level technique labels (e.g., “reduce to coordinates”, “apply constant rank theorem pattern”, “glue with partitions of unity”, “use pullback/wedge identities”). This enables learning at a level that supports interpretability and transfer.

3. **Learned-prior guided proof search with a readability objective.**  
   Use the learned \(p(a \mid s)\) as a prior within a controlled search procedure (e.g., beam search). Optimize not only for closing goals but also for proof quality metrics (length, tactic complexity, reliance on brittle steps, and adherence to canonical technique patterns).

## Methodological Overview
### Data
- Curate a subcorpus of proofs aligned with smooth manifold theory (charts, tangent bundles, submersions/regular values, bundles, forms, integration/cohomology).
- Extract proof traces: each step records a representation of the current goal/context and the next action actually used in the corpus.

### Models
- **Baseline:** predict coarse technique class from state features.
- **Intermediate:** predict action templates (e.g., apply a lemma family; simplify with a relevant simp set).
- **Skip-gram / masked-step training:** randomly mask actions in a proof and train the model to predict the missing action given surrounding context, encouraging learning of common proof idioms.

### Search and Validation
- Maintain a frontier of candidate proof states.
- Expand states using top-k actions from the learned prior.
- Validate each attempted action by machine checking; only successful transitions survive.
- Score candidates by a combined objective:
  - success likelihood (model score),
  - proof length,
  - “readability” penalties (excessive low-level rewriting, unstable steps),
  - preference for canonical technique sequences in manifold proofs.

## Evaluation Plan
1. **Prediction quality:** accuracy/top-k of next-action or technique-class prediction on held-out theorems.
2. **Automation success:** fraction of held-out goals solved under fixed search budgets (time/steps).
3. **Proof quality:** length distributions and tactic-complexity/readability metrics compared to baselines.
4. **Ablations:** remove learned prior, remove technique abstraction, vary domain slices (charts-only vs forms/cohomology).
5. **Generalization:** test transfer across neighboring topics within the syllabus arc (e.g., from tangent bundle material to forms/integration) to quantify how domain-restricted the learned prior must be.

## Feasibility and Milestones
- **Phase 1 (feasibility spike):** build trace extraction and a small action taxonomy; reproduce/validate traces on a limited manifold subcorpus.
- **Phase 2 (baselines):** train technique-class predictors; measure gains over simple heuristics (e.g., frequency priors).
- **Phase 3 (guided search):** integrate the learned prior into search; evaluate success rate and proof quality.
- **Phase 4 (thesis-level results):** refine technique abstractions, extend domain coverage across major syllabus themes, and produce publishable empirical findings.

## Broader Impacts
- A reusable dataset and methodology for learning distributions over proof actions in a mathematically meaningful subdomain.
- Improved tooling for formalization workflows: faster iteration, better tactic suggestions, and proofs that remain readable for humans.
- Educational value: a technique-centered map of common proof moves in manifold theory, aligned with the course topics and proof-writing objectives. :contentReference[oaicite:1]{index=1}
