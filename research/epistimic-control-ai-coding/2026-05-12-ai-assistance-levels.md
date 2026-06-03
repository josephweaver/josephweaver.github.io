---
title: AI Assistance Patterns for Research Software Work
date: 2026-05-12
project: epistimic-control-ai-coding
status: draft
repos:
  - https://github.com/josephweaver/josephweaver.github.io
---

# AI Assistance Patterns for Research Software Work

## Purpose

Research now depends on code. As AI coding tools become more capable,
researchers need language that is more precise than "AI helped write the code."

This document proposes workflow patterns for AI-assisted research software
centered on preserving **epistemic control**. In plain terms, the researcher
should still be able to explain what the code is doing, why they trust it, and
how they checked it.

The patterns below describe different handoffs between human judgment and AI
assistance. They are not a ladder where more automation means better practice.
They describe different handoff patterns, and the right choice depends on task
risk, review quality, and how much understanding the researcher needs to
preserve.

This document itself was drafted and revised using *Human-Applied AI
Implementation*: AI proposed text and structure, while the researcher reviewed,
edited, redirected, and accepted changes manually.

## At a Glance

The table frames the main tradeoff: AI can speed the work, but different
handoff patterns preserve researcher understanding differently.

| Workflow mode | Speed tendency | Understanding tendency | Main safeguard |
| --- | --- | --- | --- |
| *No AI Use* | often slowest | strongest direct understanding | ordinary review and tests |
| *Planning Guidance* | can speed planning without replacing implementation | usually remains high because implementation stays human-led | researcher checks assumptions and boundaries |
| *Specification Guidance* | can speed design for bounded tasks | depends on translating the plan into code | researcher implements and checks fit |
| *Human-Applied AI Implementation* | often much faster for bounded tasks | may support sufficient understanding if edits are small and reconstructed | manual acceptance plus focused checks |
| *AI-Applied Implementation* | can be very fast for bounded edits | understanding can lag behind implementation | focused review before acceptance |
| *Fully Autonomous Implementation* | can be fastest across broad work | understanding may be weakest or delayed | strong tests, records, and willingness to reject |

These are workflow tendencies, not measured benchmarks or calibrated cognitive
scores.

## Working Hypothesis

*Human-Applied AI Implementation* may be a useful middle path for many research
software tasks. The AI provides implementation-ready material, but the
researcher manually reviews, adapts, applies, checks, and accepts it.

This pattern may preserve much of the speed benefit of AI-generated code while
supporting sufficient understanding. Here, sufficient understanding means the
researcher can explain the relevant data flow, assumptions, checks, failure
modes, and expected behavior well enough to use, modify, or reject the change
responsibly.

The hypothesis only holds when the workflow includes safeguards: bounded edits,
clear intent, focused checks, and a final reconstruction in the researcher's own
words.

For example, a researcher modifying a small climate-data ETL workflow might ask
AI to help add a precipitation aggregation check. In *Planning Guidance*, AI
suggests separating validation, aggregation, and output review. In
*Specification Guidance*, AI identifies the likely transformation script and
sketches the aggregation logic. In *Human-Applied AI Implementation*, AI
proposes a small patch and focused check; the researcher applies it manually,
runs the check, and explains the new behavior before continuing. In
*AI-Applied Implementation*, AI edits the files directly and returns the change
for review. The difference is not the research goal, but where the handoff
occurs and how much epistemic control the researcher keeps during the change.

## Human-AI Authorship and Reuse

*Human-Applied AI Implementation* is sometimes criticized as copy/paste
programming. That concern is valid when generated code is accepted without
understanding or checks. However, responsible software work has never required
typing every line by hand.

Research software already depends on code the researcher did not personally
write: libraries, statistics packages, examples, lab templates, older project
code, and Stack Overflow-style snippets. The relevant standard is not personal
authorship. It is whether the researcher understands the accepted code's
inputs, outputs, assumptions, limits, and failure modes.

AI-generated code should be held to at least that standard. Unlike mature
libraries, it usually lacks stable documentation, versioning, tests, community
review, and stable interfaces unless the researcher adds those safeguards. It
may be useful, but it is not a contract.

This authorship question leads directly to the workflow modes: each mode changes
where the handoff occurs and what the researcher must check before accepting
the work.

## Workflow Modes

### *No AI Use*

AI role:

- none

Researcher role:

- design, implement, check, and maintain the work

Main risk:

- slower progress and fewer quick comparisons of possible approaches

### *Planning Guidance*

AI answers the question: **what should we do next?**

AI role:

- frame the next task by suggesting scope boundaries, sub-tasks, assumptions,
  and likely risks

Researcher role:

- decide whether the framing matches the research goal
- check whether the breakdown preserves links between data, methods, and outputs

Main risk:

- AI can speed up strategic framing, but control is lost if the framing is
  accepted without checking the real goal, constraints, and assumptions. A wrong
  planning handoff can send later work toward the wrong problem.

### *Specification Guidance*

AI answers the question: **how should this approved task be implemented and checked?**

AI role:

- translate an approved task into an implementation plan by identifying likely
  files or notebooks, needed behavior, checks, and structure

Researcher role:

- turn the plan into working code
- catch design problems while coding

Main risk:

- AI can speed up technical planning, but control is lost if a plausible
  specification is passed forward without checking fit to the codebase, data,
  methods, and acceptance criteria. The team may build the specified thing
  correctly, while the specification itself is wrong.


### *Human-Applied AI Implementation*

AI role:

- provide implementation-ready material, such as small code blocks, replacement
  instructions, notebook cells, test edits, commented-out code, or patches for
  manual review

Researcher role:

- read each proposed change before applying it
- manually apply or adapt the code
- run focused tests or checks
- review the resulting changes
- explain the resulting behavior before continuing

Main value:

- keeps much of the speed benefit of AI-generated code
- creates a deliberate acceptance step before code enters the project
- exposes file boundaries, behavior, and checks to the researcher
- may support sufficient understanding for modest-risk, testable changes

Main risk:

- manual acceptance can become mechanical if edits are too large or poorly
  explained
- seeing the code can be mistaken for understanding the code

Useful safeguards:

- keep edits small enough to understand before applying
- state the intent before each edit
- split large edits by file or function
- label uncertain recommendations as assumptions
- run focused checks after each sub-task
- reconstruct the final behavior before moving on

This is the central workflow pattern in this framework: not fully manual
coding, but also not unreviewed automation.

### *AI-Applied Implementation*

AI role:

- directly edit the project for a bounded task
- possibly run tests and summarize changed files

Researcher or reviewer role:

- review the resulting changes
- check behavior
- accept, revise, or reject the work

Main risk:

- understanding may lag behind implementation
- research workflow decisions may be hidden inside code changes

Useful safeguards:

- restrict to well-bounded changes
- require focused tests and reconstruction summaries
- avoid mixing feature work with broad cleanup

### *Fully Autonomous Implementation*

AI role:

- plan, edit, test, and move across broader work with few human checkpoints

Researcher or reviewer role:

- review the completed result
- reconstruct enough understanding after the work has already happened
- decide what to accept, revise, or reject

Main risk:

- the researcher may lose epistemic control
- review may become too large or too late to be meaningful
- hidden assumptions can be difficult to find after the fact

Useful safeguards:

- reserve for low-risk, well-specified, or disposable work
- require strong tests and reproducible outputs
- keep project records of decisions and assumptions
- restart if the reviewer cannot reconstruct the behavior

## Software-Development Translation

For software developers, these modes map onto familiar handoff patterns that
existed before LLMs.

| Research-software mode | Traditional software-development analog |
| --- | --- |
| *Planning Guidance* | business requirements, product goals, work breakdown |
| *Specification Guidance* | technical specifications, acceptance criteria, design notes, pseudocode |
| *Human-Applied AI Implementation* | Google or Stack Overflow-style snippets, documentation examples, cookbook code, reviewed suggested patches |
| *AI-Applied Implementation* | supervised AI edits, bounded generated patch returned for review |
| *Fully Autonomous Implementation* | outsourced implementation with after-the-fact review |

The question is not whether AI produced text or code. The question is whether
the handoff pattern matched the risk of the task, and whether the reviewer kept
enough understanding to check and maintain the result.

## Outstanding Questions

- How much understanding comes from reading, applying, testing, debugging, or
  explaining code in one's own words?
- What evidence is enough to trust AI-assisted research software?
- How should the acceptable assistance pattern change when code affects
  scientific claims, data cleaning, model assumptions, or reproducibility?
- Can reconstruction prompts separate real understanding from familiarity with
  generated text?
- When does *Human-Applied AI Implementation* stop being appropriate?

## Research Use and Cautions

This is an exploratory framework based on personal observation, not formal
measurement. The observation base includes long experience with manual coding
and pre-AI handoff patterns, about one year of *Human-Applied AI Implementation*,
and about one month of *AI-Applied Implementation* on a large ETL pipeline for
research data processing.

The framework may support more precise disclosure than "AI helped write code."
For example:

- planning used *Planning Guidance*
- implementation used *Human-Applied AI Implementation*
- acceptance required focused tests and reconstruction of the accepted changes
- design decisions were recorded in project notes

This kind of disclosure describes both where AI was used and how human review
controlled the result.

The acceptable workflow depends on research risk, review quality, tests,
project records, and the researcher's ability to explain the accepted work. AI
handoffs can introduce hidden assumptions, but the practical response is not to
avoid AI. It is to choose the handoff pattern that preserves enough epistemic
control for the task.

The goal is not to avoid AI assistance or to maximize automation. The goal is
to preserve **epistemic control**: enough understanding, evidence, and notes for
the researcher to trust, explain, and revise the software that supports their
research.
