---
title: Pilot Study for Epistemic Control
date: 2026-06-04
description: A pilot study design for measuring whether structured human-AI coding modes preserve developer understanding during an AI-accelerated ETL project.
project: epistimic-control-ai-coding
status: draft
tags:
  - epistemic-control
  - pilot-study
  - ai-assisted-coding
  - software-engineering
  - human-ai-collaboration
repos:
  - https://github.com/josephweaver/josephweaver.github.io
---

# Pilot Study: Maintaining Epistemic Control During AI-Assisted Software Development

## Motivation

AI coding agents can significantly accelerate software development. However, as AI participation increases, an important question emerges:

> Can a developer maintain epistemic control over a growing software system while benefiting from AI acceleration?

For the purposes of this study, epistemic control refers to the developer's ability to:

* reason about system behavior,
* predict the consequences of changes,
* identify and explain critical invariants,
* debug failures,
* reconstruct important architectural components from memory,
* and maintain an accurate internal model of the system.

The objective of this project is not to evaluate AI capability. Rather, it is to investigate whether specific Human-AI interaction patterns can preserve human understanding while still providing meaningful development acceleration.

---

## Project Context

The experimental environment is the development of a distributed ETL (Extract, Transform, Load) framework.

The ETL framework includes:

* a controller service,
* worker processes,
* workflow execution infrastructure,
* variable resolution and configuration systems,
* and future orchestration capabilities.

The ETL framework itself is not the research contribution. It serves as a realistic software engineering project in which epistemic control can be observed and measured over time.

---

## Human-AI Coding Interaction (HCI) Framework

Each coding session is conducted using an explicitly declared Human-AI Coding Interaction (HCI) mode. The HCI framework is documented separately.

An HCI specification has the form:

```text
EC Level / Objective Scope / Change Budget
```

Example:

```text
EC-3 / feature / file(1)+test+doc
```

Meaning:

* The AI is working toward a feature-level objective.
* The AI may modify one production code file at a time.
* Associated tests and documentation may also be updated.
* The AI must stop and report before continuing.
* The human reviews each implementation slice.

The HCI framework is intended to regulate the tradeoff between development velocity and epistemic control.

---

## Epistemic Control Audit

Following each significant coding session, an Epistemic Control Audit is performed. The audit protocol is documented separately.

The audit evaluates five dimensions:

1. Architecture Comprehension
2. Data Flow Tracing
3. Failure Prediction
4. Invariant Recognition
5. Reconstruction Ability

A surprise penalty is also applied when system behavior differs from the developer's expectations.

The resulting Epistemic Control Score is intended to estimate the quality of the developer's internal model of the software system.

Importantly, the audit does not measure:

* syntax memorization,
* code trivia,
* implementation success alone,
* or confidence.

Instead, it attempts to measure predictive understanding and causal reasoning.

---

## Working Hypothesis

The working hypothesis is:

> AI-assisted software development introduces a tradeoff between development velocity and epistemic control.

As AI autonomy increases, implementation speed may improve, but the developer's internal model of the system may degrade.

This project investigates whether explicit Human-AI Coding Interaction constraints can preserve epistemic control while still providing meaningful AI acceleration.

More specifically:

> Smaller, reviewable implementation slices are expected to preserve epistemic control more effectively than larger autonomous changes.

---

## Initial Experimental Design

This effort is currently a pilot study.

### Current Status

```text
n = 1 completed audit
```

### Initial Target

```text
n = 10 coding sessions
```

Each session records:

* HCI mode used,
* session duration,
* files modified,
* lines added/deleted,
* components touched,
* Epistemic Control Score,
* qualitative observations.

The objective of the pilot is not statistical significance. The objective is to determine whether the HCI framework and audit process produce meaningful and repeatable measurements.

---

## Research Questions

The pilot is intended to explore the following questions:

1. Can epistemic control be measured in a repeatable way during AI-assisted software development?

2. Do different HCI modes produce observable differences in epistemic control?

3. Is there a practical balance between AI acceleration and retained human understanding?

4. Which forms of AI assistance allow a developer to remain an effective steward of a growing software system?

---

## Expected Outcomes

This pilot study is intended to produce:

* a practical HCI framework for AI-assisted development,
* an audit protocol for assessing epistemic control,
* an initial dataset of audited development sessions,
* and preliminary evidence regarding the relationship between AI autonomy and retained human understanding.

If meaningful patterns emerge, the study could later be expanded to include additional developers and more formal experimental design.

At its core, this project is an attempt to understand how humans can continue to maintain epistemic control over complex software systems while increasingly capable AI agents participate in their construction.
