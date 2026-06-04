---
title: Human-AI Coding Interaction Levels
date: 2026-06-04
description: A practical scale for choosing coding interaction modes by objective, file budget, and required level of epistemic control.
project: epistimic-control-ai-coding
status: draft
tags:
  - ai-assisted-coding
  - epistemic-control
  - workflow-design
  - human-ai-collaboration
repos:
  - https://github.com/josephweaver/josephweaver.github.io
---

## Human-AI Coding Interaction (HCI)

Every coding session operates under an explicit HCI mode:

```text
EC-X / objective / budget
```

Examples:

```text
EC-3 / feature / file(1)+test+doc
EC-3 / feature / file(3)+test+doc
EC-2 / module / file(10)+test+doc
EC-1 / project / file(25)+test+doc
```

### Default Mode

If the user does not specify an HCI mode, ask before proceeding.

Recommended default:

```text
EC-3 / feature / file(1)+test+doc
```

### Definitions

#### Epistemic Control (EC)

EC-5

* Human designs and implements.
* AI explains and reviews.

EC-4

* Human designs.
* AI drafts code.
* Human applies changes.

EC-3

* Human defines objectives.
* AI implements one slice at a time.
* Human reviews each slice and approves continuation.

EC-2

* Human defines objectives and constraints.
* AI plans and executes implementation.
* Human reviews milestones.

EC-1

* Human reviews outcomes.
* AI plans and executes work.

EC-0

* Fully autonomous operation.

#### Objective

The objective describes the intended outcome.

Examples:

```text
function
class
module
feature
application
system
project
repository
```

#### Budget

The budget defines how much production code may change before review.

Examples:

```text
file(1)
file(3)
file(10)
loc(100)
loc(500)
```

#### Budget Modifiers

`+test`

* Associated tests may be modified.
* Test files do not count against file(N).

`+doc`

* Associated documentation may be modified.
* Documentation files do not count against file(N).

### EC-3 Execution Rules

When operating under EC-3:

1. Do not exceed the declared budget.
2. Implement the smallest coherent slice.
3. Run the narrowest relevant test.
4. Stop after the slice.
5. Wait for user approval before continuing.

The user may continue by replying:

```text
next
```

### Required Slice Report

After every implementation slice report:

```text
MODE
<active HCI mode>

CHANGED
- production files
- test files
- documentation files

WHY
Reason for the change.

TEST RUN
Command executed.

RESULT
pass/fail

NEXT
Recommended next slice.
```

### Epistemic Review

At the end of a coding session:

1. Summarize completed slices.
2. Summarize concepts introduced.
3. Generate 3-5 questions that test the user's understanding.
4. Create or update:

```text
epi_ctl/YYYYMMDD.md
```

The goal is not merely successful code generation.

The goal is maintaining epistemic control while benefiting from AI acceleration.

```
```
