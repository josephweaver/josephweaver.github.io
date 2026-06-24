---

title: Epistemic Control, Ownership, and the Wrong Question
date: 2026-06-24
description: A hypothesis that software ownership depends more on strategic understanding and operational control than implementation recall, and a proposal for measuring retention in AI-assisted development.
project: epistimic-control-ai-coding
status: draft
tags:
  - ai-assisted-coding
  - epistemic-control
  - software-engineering
  - human-ai-collaboration
  - software-maintainability
  - developer-productivity
repos:
  - https://github.com/josephweaver/josephweaver.github.io
---

# Epistemic Control, Ownership, and the Wrong Question

![Epistemic Control and Ownership]({{ '/assets/images/ec-hypothetical-memory-curve.2.png' | relative_url }})

For the last several weeks I have been running what I call *Epistemic Control Audits* on my own AI-assisted software development sessions. The original question behind those audits was simple: 
> am I still in control of my software when AI writes most of the code? 

At first, I assumed the answer would be measured by how much implementation I could reconstruct from memory. I now think that assumption may be wrong.

## The Observation

Over the course of my career I have repeatedly returned to codebases months or years after writing them. When I come back, I rarely remember exact method names, configuration fields, implementation details, or file layouts. What I do remember is the architecture, the major abstractions, the data flow, and where to start looking when something breaks. Despite forgetting many implementation details, I am usually still able to modify, debug, and extend the system.

That raises an uncomfortable question: 
> if I cannot remember the implementation, have I actually lost ownership? 

My experience suggests the answer is no.

## Three Forms of Understanding

The audits eventually led me to separate three distinct forms of understanding: Strategic Understanding, Operational Control, and Implementation Recall. Strategic Understanding is the architectural mental model of the system. It concerns the system's structure, invariants, design rationale, data flow, and expected failure modes. This is the knowledge that lets a developer explain why the system exists in its current form and what must remain true for it to work.

Operational Control is the ability to operate within the system. It includes defect localization, debugging, navigation, modification planning, and the ability to identify which code is relevant to a change or failure. A developer with Operational Control may not remember every implementation detail, but they know how to re-enter the system, where to look, and how to make progress without flailing.

Implementation Recall is different. It concerns exact code, configuration details, file names, APIs, and implementation specifics. This is memory, not necessarily ownership. Historically, software engineering often treats these forms of understanding as if they were the same thing. I am increasingly convinced they are not.

## A Hypothesis

My current hypothesis is that ownership depends mainly on Strategic Understanding and Operational Control:

```text
Strategic Understanding
+
Operational Control
=
Ownership
```

Implementation Recall is useful, but it may be optional:

```text
Implementation Recall
```

In other words, ownership may persist even after implementation details are forgotten.

## A More Interesting Prediction

My original assumption was that all forms of understanding should decay together. The audits suggest something else may be happening. A hypothetical retention pattern might look like this:

| Review | Strategic Understanding | Operational Control | Implementation Recall |
| ------ | ----------------------: | ------------------: | --------------------: |
| T      |                    100% |                 75% |                   60% |
| T+3    |                     95% |                 82% |                   40% |
| T+14   |                     90% |                 84% |                   25% |
| T+180  |                     80% |                 78% |                   10% |

Two aspects of this prediction are important. First, Implementation Recall begins incomplete. Even immediately after development, developers often cannot reconstruct every implementation detail. Second, Operational Control may actually improve before it declines. As details fade, the system compresses into a more durable mental model. Developers stop remembering code and start remembering structure.

If this prediction is correct, then forgetting implementation details is not necessarily evidence of lost ownership. It may be a normal part of knowledge consolidation.

## The Retention Problem

Most evaluations of AI-assisted development happen immediately after coding. That measures comprehension, but ownership is a long-term property. To address this, the audit protocol is evolving into a longitudinal study. Each development session can be reviewed at several intervals:

| Review | Purpose                 |
| ------ | ----------------------- |
| T      | Immediate comprehension |
| T+3    | Consolidation           |
| T+14   | Medium-term retention   |
| T+180  | Long-term ownership     |

The goal is not to measure how much is remembered. The goal is to measure what survives.

## A Falsifiable Prediction

The model makes a concrete prediction. Strategic Understanding should decay slowly, Operational Control should remain stable or improve during early consolidation, and Implementation Recall should decay rapidly. If longitudinal audits do not show this pattern, then the model is wrong. That is exactly what future data should test.

## Why This Matters

Most discussions of AI-assisted software development focus on productivity, velocity, code generation, and feature throughput. These are important, but they ignore a critical question: what happens six months later?

Software engineering has always been constrained less by implementation than by maintenance. If AI dramatically reduces implementation cost, then ownership and maintainability may become the limiting factors. The challenge is not writing software. The challenge is ensuring someone still understands enough to safely evolve it later.

## Conclusion

The question I started with was whether the developer can remember the code. The question I am interested in now is whether the developer can still navigate, debug, and improve the system months later. Those are not the same question.
