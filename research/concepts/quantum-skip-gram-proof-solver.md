# Quantum Skip-Gram Proof Solver (Lean/mathlib)

## Goal
Build a proof solver for a specific mathematical subdomain (e.g., Hilbert spaces) that learns *human-style* proof moves from Lean `mathlib` and uses them to propose the next likely action during proof search.

This is not a “find any proof” engine. The objective is to find *good* proofs:
- short (few steps),
- standard (uses common techniques),
- readable (high-level moves, not low-level term soup),
- robust (works with typical `mathlib` patterns).

## Core Idea
Combine two ingredients:

1) **Skip-gram training on proofs**
- Treat a proof as a sequence of “actions” (tactics, lemma applications, rewrites, structured moves).
- Train a model by *masking* a step and asking it to predict the missing step given the surrounding context.
- This pushes the model toward learning “what is the natural next move here”, capturing common proof idioms.

2) **Quantum-style branching proof search**
- At any proof state, there are many plausible next moves.
- Instead of committing early, explore multiple probabilistic branches in parallel.
- Keep a frontier of candidate partial proofs, score them, expand the best ones, prune the rest.
- Eventually return the best complete proof under a chosen optimality metric.

“Quantum” here means: we maintain and evolve a distribution over proof paths, not literal quantum computation.

## Vocabulary
### Proof State
A Lean goal state:
- local context (hypotheses, types, instances),
- target goal,
- implicit typeclass obligations.

### Action (a proof move)
An action is a structured “next step”, for example:
- `apply lemma_name` (with implicit/explicit arguments),
- `refine ...` skeleton,
- `have h : ... := ...`,
- rewriting: `simp [..]`, `rw [..]`, `ring`, `linarith`,
- subdomain-specific moves: orthonormal expansion, inner product identities, Cauchy–Schwarz, projection lemmas, etc.

We want actions at a level that reads like a standard mathlib proof.

## Data Representation
### Proof as a sequence
From existing `mathlib` proofs, extract sequences like:

- (state_0, action_0) -> state_1
- (state_1, action_1) -> state_2
- ...
- state_n is `⊢ True` / closed goal

Where:
- `state_i` is a compact representation of the goal and context,
- `action_i` is the next tactic/lemma step.

### Skip-gram objective
Train on tuples where one step is removed:

Given context window:
- states/actions around step k,
predict:
- action_k (or action_k’s “template class”)

Example: predict that the missing move is “apply Cauchy–Schwarz” instead of some brittle low-level rewriting.

## Model Outputs (what the NN should predict)
The model should output a ranked list of “likely next actions”, ideally in layers:

1) **Technique class** (high-level)
- “use Cauchy–Schwarz”
- “rewrite with inner product symmetry”
- “introduce an epsilon and use completeness”
- “reduce to norm inequality”
- “apply projection property”
- “simp using linearity”

2) **Concrete action template**
- `have := inner_mul_self_nonneg ...`
- `have h := norm_inner_le ...`
- `simp [real_inner_mul_left, ...]`
- `rw [inner_add_left, ...]`
- `apply le_trans ?_ ?_` then fill holes

3) **Fully instantiated Lean step**
A ready-to-run tactic line (best-effort), possibly with metavariables to be filled by subsequent search.

The key is that the top-k list contains human-recognizable proof moves.

## Quantum Branching Search (beam + scoring)
Maintain a priority queue / beam of partial proofs.

Each candidate contains:
- current Lean state,
- proof script so far,
- accumulated score.

At each expansion:
1) query NN for top-k next actions,
2) attempt actions in Lean (filter those that actually apply),
3) produce child candidates with updated states,
4) score each child and keep the best B.

### Scoring: “optimal proof”
Score a proof path by a weighted combination:
- shorter is better (penalize length),
- common techniques are better (reward higher prior probability / frequency),
- readability is better (penalize “ugly” low-level steps),
- stability is better (prefer simp/lemma moves that don’t require fragile term arguments),
- domain alignment is better (reward canonical Hilbert-space idioms).

A simple prototype score:
score(path) =
  + α * log P_model(actions | contexts)
  - β * (#steps)
  - γ * (ugliness_penalty)
  + δ * (technique_commonness_bonus)
  + ε * (subdomain_style_bonus)

Where:
- `ugliness_penalty` could include: too many `simp?` guesses, heavy `exact` terms, long chains of `rw`, etc.
- `style_bonus` could reward known “clean” patterns in Hilbert space proofs.

## “Transformation Graphs” link
Interpret the model’s “technique classes” as nodes in a transformation graph:
- nodes = proof techniques / rewrite schemas / lemma families,
- edges = likely transitions between techniques in successful proofs.

The solver is then a guided walk on this graph:
- local goal features determine which transformations are plausible,
- the NN provides probabilities for next transformation nodes,
- the search explores multiple walks and returns the best proof.

This graph is both:
- a learned search prior, and
- an explanation object (“the solver chose C–S then rewrote inner products then applied norm inequality”).

## Why Hilbert spaces as a subdomain
Hilbert space proofs in `mathlib` often reuse a relatively tight toolkit:
- inner product algebra, linearity, conjugate symmetry,
- norm identities and inequalities (C–S, triangle),
- orthogonal decomposition and projections,
- completeness arguments,
- bounded linear maps and adjoints.

This makes the action vocabulary learnable and the “technique graph” meaningful.

## Deliverables (prototype milestones)
1) **Proof trace extractor**
- Parse a curated set of Hilbert-space proofs in `mathlib`
- Extract (state, action) sequences.

2) **Action vocabulary + templates**
- Normalize actions into canonical forms (reduce syntax variance).

3) **Skip-gram model**
- Train to predict missing step / technique class.

4) **Guided beam search**
- NN proposes top-k actions
- Lean checks applicability
- Scoring + pruning.

5) **Explainable output**
- Return:
  - final Lean proof script,
  - technique trace (the transformation path),
  - score breakdown (why this proof was “optimal”).

## Design constraints (what we want to avoid)
- A solver that only works by brute-force low-level term search.
- Outputs that are technically correct but unreadable.
- Overfitting to exact lemma names without learning technique structure.
- A system that collapses into “simp until it works”.

## Summary
A Quantum Skip-Gram Proof Solver is:
- a learned next-action predictor trained by masking proof steps (skip-gram),
- combined with a probabilistic multi-branch proof search (quantum-style),
- optimized to output human-readable, standard, short `mathlib`-style proofs,
- explainable via a learned transformation graph of proof techniques.
