# AI Behavior Guide for ETL Controller

## Purpose

This file defines how AI assistants should work in this repository.

The goal is to use AI for acceleration while preserving:

- human understanding
- reproducible engineering decisions
- small, focused context windows
- maintainable code
- clear project handoff between sessions

The intended productivity target is about **2x faster with high
understanding**, not 10x faster with poor understanding. If speed and
understanding conflict, choose understanding.

LLMs are tools for exploration, implementation support, and review. They are
not a substitute for understanding the controller architecture or validating
changes with tests.

## Secondary Objective

This repository also supports development of a broader AI-use standard for
research software.

The standard should balance development speed with human understanding,
reproducibility, interpretability, diagnostics, and defensible research
practice. This objective is aligned with the local fellowship proposal:

`C:\Joe Local Only\College\2026 Summer AI\Responsible AI-Assisted Research with Interpretable Statistical Modeling.pdf`

For this project, that means AI assistance should produce not only working
code, but also reusable evidence about what responsible AI-assisted development
looks like in practice.

Useful evidence includes:

- small implementation slices with clear review boundaries
- test-first or test-paired changes
- concise reconstruction summaries
- documented assumptions and tradeoffs
- versioned templates for pipeline specs, validation, and handoff notes
- examples where added complexity was accepted or rejected based on clear
  criteria

The goal is to refine a transferable workflow that other research projects can
adapt, not just to finish this controller quickly.

## Core Principle

AI output is useful only after it has been understood, checked, and integrated
with the existing design.

All code and architecture decisions in this project should be:

- explainable without the AI conversation
- recoverable from repository files
- verified with focused tests
- consistent with the documented controller model

## Context-Loading Rules

This repository contains large design documents. Reading all of them at the
start of every session wastes tokens and can push the assistant into context
limits.

Default startup context should be:

1. `PROJECT_STATE.md`
2. `README.md`
3. this file, `AI.md`
4. only the source/test files relevant to the current task

Read the larger design documents only when the task needs them:

- `DESIGN.md`: overall architecture or major design decisions
- `PIPELINE_MODEL.md`: pipeline graph, runs, executions, fanout, dependencies
- `STATE_MACHINE.md`: run, execution, attempt, worker, and cancellation states
- `API_CONTRACT.md`: worker/controller/runtime API behavior
- `TARGET_MODEL.md`: local, HPCC, SLURM, or target-adapter behavior
- `DB_MODEL.md`: persistence schema or repository changes
- `OUTPUT_CONTRACT.md`: output staging, validation, and commit behavior
- `LOGGING_MODEL.md`: logging, streaming, or log indexing behavior
- `VARIABLE_MODEL.md`: variable resolution behavior
- `CODE_STRUCTURE.md`: package layout questions
- `TESTING_STRATEGY.md`: test ownership and coverage scope
- `IMPLEMENTATION_PLAN.md`: build order and milestone planning
- `DEVELOPMENT.md`: coding style and implementation ground rules

When possible, search within documents using targeted terms instead of reading
entire files.

## Project Handoff Rule

`PROJECT_STATE.md` is the primary handoff file.

After any meaningful implementation slice, update it with:

- what changed
- which files changed
- what tests were run
- what remains next
- any important design decision made during the session

The file should stay concise. It should let a future assistant resume work
without rereading the full design set.

## Allowed AI Uses

AI may be used freely for:

- summarizing current project state
- locating relevant files
- proposing implementation plans
- drafting focused code changes
- writing or updating tests
- reviewing code for bugs and missing coverage
- explaining existing modules
- keeping handoff notes current
- simplifying or clarifying documentation

Treat all AI output as a proposal until validated.

## Human-In-The-Loop Rule

This project should use AI as a pair-programming accelerator, not as an
autonomous implementation engine.

For non-trivial code changes, the assistant must work in one narrow slice at a
time. A slice should be small enough that the maintainer can read the changed
files, understand the behavior, and explain the core flow before continuing.

Default non-trivial implementation workflow:

1. create or confirm a git branch for the slice
2. assistant gives a short implementation brief before code changes
3. assistant proposes exact code edits or test edits in Markdown
4. maintainer makes the code changes locally
5. maintainer runs the focused tests and shares failures or success
6. assistant reviews the resulting `git diff`
7. maintainer and assistant update `PROJECT_STATE.md` when the slice is complete
8. open a pull request for final review and verification

The default is **AI proposes, maintainer codes, AI reviews**. Direct assistant
editing is allowed only when the maintainer explicitly asks for it, or when the
change is trivial and clearly below the split threshold below.

The assistant should optimize for:

- clear implementation steps
- reviewable diffs
- test-backed behavior
- maintainer understanding

The assistant should avoid:

- large autonomous feature batches
- broad refactors mixed with feature work
- moving to a second feature slice before the first is understood
- hiding important design decisions inside code changes

## Slice Size Rule

Prefer horizontal slices over deep vertical feature slices while the controller
architecture is still being learned.

A slice should usually touch one layer at a time, for example:

- persistence model/schema/accessors plus repository tests
- compiler or submission behavior plus focused service tests
- daemon planning behavior plus daemon tests
- worker loop/API behavior plus worker/API tests
- documentation or handoff updates

Split a proposed slice if it is expected to:

- touch more than five files
- cross more than one major layer, such as persistence plus compiler plus worker
  runtime
- require both schema changes and worker/controller API changes
- produce a diff the maintainer cannot explain without rereading the AI
  conversation

When a larger vertical feature is needed, decompose it into horizontal commits
or branches. For example, explicit queue items should be implemented as:

1. database model/schema/accessors plus tests
2. submission/compiler queue population plus tests
3. worker queue consumption plus tests

The five-file threshold is a warning sign, not a hard law. If exceeding it is
unavoidable, the assistant must say why before implementation continues.

## Understanding Gate

Before making a non-trivial code change, the assistant should provide a short
implementation brief:

- intended behavior change
- files expected to change
- design rule or document being followed
- test plan
- expected slice boundary and whether it crosses the five-file threshold

When using the default guided workflow, the brief should also include:

- exact files to edit
- suggested insertion points
- focused test command
- stop condition for the slice

After the maintainer makes the change, the assistant should review the diff and
provide a reconstruction summary:

- changed files
- how the flow works
- tests run
- assumptions or tradeoffs
- questions the maintainer should be able to answer before continuing

The assistant should not proceed to another implementation slice until the
maintainer explicitly approves continuation.

Good continuation signals include:

- "continue"
- "I understand, next slice"
- "that makes sense, proceed"
- "review my diff"
- "tests passed, update PROJECT_STATE"

If the maintainer asks conceptual questions, answer those before writing more
code.

## Learning Ledger

When a slice introduces an important concept, update `PROJECT_STATE.md` with a
short learning note or decision note.

Examples:

- new controller state concept
- new persistence boundary
- new worker/controller contract behavior
- change in queue, dependency, or fanout semantics

The goal is to leave a compact trail of understanding, not a transcript.

## Implementation Rules

Follow `DEVELOPMENT.md`.

Important defaults:

- prefer simple, explicit code
- keep module boundaries clear
- centralize variable handling through the variable system
- keep controller state authoritative
- keep workers generic and controller-only
- avoid broad refactors during narrow feature work
- add tests near the changed module
- preserve existing behavior unless the task explicitly changes it

For code changes, the assistant should:

1. inspect the relevant implementation and tests first
2. propose the smallest coherent change
3. let the maintainer make the change by default
4. review the maintainer's diff before moving on
5. run or request focused tests
6. run or request broader tests when the change touches shared behavior
7. update `PROJECT_STATE.md` when the project state has advanced

## Verification Standard

Before considering work complete:

- tests relevant to the change should pass
- new behavior should be covered by tests when practical
- state transitions should be checked explicitly
- persistence changes should be tested against SQLite when relevant
- worker/controller API changes should be tested at the service or route layer

If tests cannot be run, the final note must say so and explain why.

## Design Ownership

The assistant may suggest architecture, but the repository documents remain the
source of truth.

When proposing a change that could affect architecture, check the relevant
design document first. If the implementation intentionally diverges from the
document, update the document or record the decision in `PROJECT_STATE.md`.

## Responsible Research Alignment

When this controller supports statistical or scientific research workflows, AI
assistance should reinforce these principles:

- AI assists research judgment; it does not replace it
- models, pipelines, and controller behavior should remain inspectable
- diagnostics and validation are core outputs, not cleanup tasks
- uncertainty, failure modes, and assumptions should be recorded explicitly
- template-driven workflows should make good practice easier to repeat
- version control or equivalent audit trails should preserve code,
  documentation, and workflow changes

For implementation work, this means the assistant should prefer changes that
make state, provenance, validation, and failure behavior easier to inspect.

## Token Discipline

To reduce token use:

- start from `PROJECT_STATE.md`, not the full design set
- avoid pasting large file contents into summaries
- use `rg` to find specific symbols, TODOs, and design terms
- read narrow code regions instead of entire modules when possible
- prefer reviewing `git diff` over rereading whole files after maintainer edits
- propose compact code blocks instead of directly editing broad areas
- summarize findings in `PROJECT_STATE.md` at the end of each work slice
- keep AI-facing project state current and concise

The assistant should not load every Markdown design document unless the task is
explicitly a broad architecture review.

## Branch And Pull Request Workflow

Each non-trivial slice should happen on a named git branch. Branch names should
describe the layer and behavior, such as:

- `queue-items-db`
- `queue-items-submit-populate`
- `queue-items-worker-consume`

At slice completion, the assistant should help prepare a pull request summary
with:

- behavior changed
- files changed by layer
- tests run
- residual risks or deferred behavior
- what the maintainer should understand before merge

The pull request should be the final verification boundary for the slice.

## Current Project Direction

At the time this guide was created, the next known high-value implementation
slice was:

1. make the controller queue explicit
2. fan out `foreach` and `foreach_glob` into queue items
3. add a controller-side target periscope for target-visible filesystem state
4. keep worker behavior unchanged: pull one concrete assignment and report
   completion

Check `PROJECT_STATE.md` before relying on this list, because it may become
stale after later implementation work.

## Final Responsibility

AI can accelerate the work, but project ownership stays with the researcher and
maintainer.

Before accepting AI-assisted code or design:

- can the behavior be explained without the AI conversation?
- are the assumptions clear?
- is the change tested?
- does it fit the controller architecture?
- is the handoff state documented?

If any answer is no, the work is not done.
