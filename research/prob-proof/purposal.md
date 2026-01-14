# A Learned Prior for Tactic Selection in Smooth Manifold Proofs
**Two-page dissertation pitch (draft)**  
**Subtitle:** Data-driven priors from existing proofs to guide machine-checked automation in a restricted subdomain.

## 1. Problem and Motivation
Machine-checked mathematics has reached the point where substantial parts of advanced theory can be formalized, but producing proofs remains high-friction. A major bottleneck is *tactic selection*: given a current proof state, which next proof move is likely to make progress while keeping the proof short and readable? This dissertation proposes a statistical view of proof automation: learn a conditional distribution \(p(a \mid s)\) over proof actions \(a\) given a formal proof state \(s\), and use this learned distribution as a *prior* to guide proof search.

The goal is not merely to close goals, but to return proofs that are (i) correct by machine checking, (ii) concise, and (iii) aligned with standard mathematical technique in a restricted domain.

## 2. Why Smooth Manifolds (Restricted Subdomain)
Smooth manifold theory is a coherent subdomain with repeatable proof patterns and a well-developed formal library. It also aligns with the standard instructional arc of a manifold course: implicit/inverse function theorems, smooth manifolds and maps, tangent spaces and differentials, submersions and constant rank, vector bundles and partitions of unity, vector fields and flows, differential forms and Lie derivatives, integration and Stokes’ theorem, and de Rham cohomology. :contentReference[oaicite:0]{index=0}

This structure makes the domain suitable for learning an action prior at a level that remains interpretable: many proofs follow recognizable “technique chains” such as “reduce to coordinates”, “apply constant rank / implicit function pattern”, and “glue local constructions with partitions of unity”.

## 3. Core Research Questions
1. **Action modeling:** Can we estimate a stable, predictive \(p(a \mid s)\) from existing machine-checked manifold proofs, where \(a\) ranges over tactic-level or technique-level proof actions?
2. **Search:** Does using the learned prior to guide proof search increase the fraction of goals solved within a fixed budget compared to unguided or heuristic baselines?
3. **Proof quality:** Can we optimize for *readability* (short, standard, non-brittle scripts) rather than only success rate?
4. **Generalization:** How well does a learned prior trained on one slice of manifold theory transfer to adjacent slices (e.g., from tangent bundle material to differential forms)?

## 4. Proposed Contributions
**C1. A proof-trace dataset for smooth manifold theory.**  
Create an extraction pipeline that transforms an existing proof corpus into sequences of (proof-state summary, action) pairs, including successful/failed action attempts when available. Provide curated subcorpora aligned with course-level topic slices (charts/diffeomorphisms; tangent spaces/constant rank; bundles/partitions of unity; forms/Stokes/cohomology). 

**C2. Action abstractions and technique classes for manifold proofs.**  
Define a hierarchical action vocabulary:
- low-level actions (intro, simp, rw, apply, refine, have, cases, ext, etc.),
- higher-level technique labels (coordinate reduction, constant rank/IFT pattern, bundle pullback arguments, local-to-global gluing, form identity manipulations).
This supports interpretability and reduces brittleness relative to predicting exact tactic strings.

**C3. Learned-prior guided proof search with a readability objective.**  
Integrate the learned \(p(a\mid s)\) into a controlled search procedure (e.g., beam search). Score candidate proof paths by a multi-objective criterion combining:
- model likelihood (prior score),
- proof length,
- complexity/brittleness penalties (excessive rewriting, unstable instantiations),
- alignment with common technique chains (domain “style”).

**C4. Empirical evaluation methodology for learned proof priors.**  
Provide experimental protocols and metrics that quantify tradeoffs among success rate, computational budget, and proof quality in a mathematically meaningful restricted domain.

## 5. Approach and Methods
### 5.1 Data and Trace Extraction
- **Corpus selection:** start with a restricted slice strongly aligned with early manifold topics (implicit/inverse function theorems, smooth maps, tangent spaces, submersions, level set and constant rank). 
- **Trace format:** each step records a compact representation of the goal and context (state features), plus the action taken and resulting subgoals.
- **Normalization:** canonicalize actions into stable templates to reduce superficial variation (e.g., lemma-family labels, rewrite/simp sets).

### 5.2 Modeling \(p(a\mid s)\)
- **Baselines:** frequency priors, logistic/multinomial models over coarse action classes, and simple tree/linear models over state features.
- **Masked-step (skip-gram / cloze) training:** train the model to predict a missing action in an existing proof given surrounding context, encouraging learning of standard technique transitions rather than memorizing exact scripts.
- **Outputs:** ranked lists of likely next actions at multiple abstraction levels (technique class → action template → concrete tactic attempt).

### 5.3 Guided Search and Machine Checking
- **Search loop:** maintain a frontier of candidate states; expand each with top-k actions from the learned prior.
- **Validation:** each proposed action is accepted only if it is machine-checked and produces a valid next state.
- **Scoring:** combine prior score with length and readability penalties to select the “best” completed proof among candidates.

## 6. Evaluation Plan
**Prediction:** top-k accuracy for next-action prediction on held-out lemmas; calibration of predicted probabilities.  
**Automation:** fraction of held-out goals solved under fixed step/time budgets, comparing:
- unguided search,
- heuristic-guided search,
- learned-prior guided search.  
**Quality:** proof length distributions, tactic complexity metrics, and stability proxies (e.g., sensitivity to minor context changes).  
**Ablations:** remove technique abstraction; vary k/beam width; vary domain slice.  
**Generalization:** train on one topic slice (e.g., tangent spaces/constant rank) and test on adjacent slices (e.g., bundles/partitions of unity; forms).

## 7. Feasibility and Milestones
**Phase 1 (Weeks 1–4): Feasibility spike.**  
- Extract traces for ~50–200 lemmas in an early-topic slice.
- Define a first action taxonomy (10–30 labels).
- Train a baseline predictor that beats frequency and improves guided search on a small held-out set.

**Phase 2: Dataset + baselines.**  
- Expand trace corpus; refine state features and action templates.
- Establish robust baselines and evaluation harness.

**Phase 3: Prior-guided search + readability.**  
- Implement multi-objective scoring; study the tradeoff frontier (success vs. readability).
- Produce interpretable “technique traces” as explanations.

**Phase 4: Thesis results and extensions.**  
- Extend to later manifold topics (forms, Stokes, de Rham cohomology) and quantify transfer across slices. 

## 8. Risks and Mitigations
- **Trace brittleness / action variability:** use action abstraction, lemma-family labeling, and multiple granularity outputs.
- **Search blow-up:** restrict domain slice; beam search with strong pruning; focus on technique-class guidance first.
- **Limited novelty:** emphasize statistical framing (priors/calibration/generalization) and proof-quality optimization, not only raw success.
- **Domain complexity:** start with early manifold topics (charts/tangent spaces/constant rank) before forms/cohomology. 
