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
# Human-AI Coding Interaction (HCI) Specification

## Overview

An HCI specification defines three independent dimensions:

```text
EC Level / Objective Scope / Change Budget
```

Example:

```text
EC-3 / feature / file(1)+test+doc
```

Meaning:

* Human supervises each implementation slice.
* AI is working toward a single feature.
* AI may modify one production code file.
* AI may also modify associated tests and documentation.
* AI must stop and report before continuing.

---

# 1. Epistemic Control (EC)

Epistemic Control defines who is responsible for understanding, planning, validating, and directing the work.

## EC-5: Human Controlled

### Human Role

* Defines objectives.
* Designs solution.
* Writes code.
* Executes tests.
* Validates results.

### AI Role

* Answers questions.
* Explains concepts.
* Reviews code when requested.

AI does not directly author implementation changes.

---

## EC-4: Human Directed

### Human Role

* Defines objectives.
* Designs implementation.
* Applies changes.
* Executes tests.
* Validates results.

### AI Role

* Generates code snippets.
* Suggests tests.
* Explains implementation details.

Human remains responsible for integrating changes.

---

## EC-3: Human Supervised Execution

### Human Role

* Defines objectives.
* Reviews each implementation slice.
* Approves continuation.
* Maintains understanding of accepted changes.

### AI Role

* Implements approved work.
* Updates tests and documentation when permitted.
* Reports impacts, risks, and test results.

AI must stop at review boundaries.

---

## EC-2: Human Intended Autonomy

### Human Role

* Defines objectives and constraints.
* Reviews milestones.

### AI Role

* Plans implementation.
* Executes changes.
* Maintains tests and documentation.
* Determines intermediate implementation steps.

Human understands goals but may not inspect every change.

---

## EC-1: Human Reviewed Autonomy

### Human Role

* Reviews outcomes.
* Accepts or rejects results.

### AI Role

* Plans work.
* Implements work.
* Tests work.
* Determines execution strategy.

Human evaluates completed work rather than supervising each step.

---

## EC-0: Fully Autonomous

### Human Role

* Defines mission or desired outcome.

### AI Role

* Plans objectives.
* Determines implementation strategy.
* Executes changes.
* Tests changes.
* Validates changes.
* Determines next actions.

Human acts primarily as stakeholder.

---

# 2. Objective Scope

Objective Scope describes what the AI is attempting to accomplish.

It does NOT describe how much code may be modified.

---

## line

One source line.

---

## block

One contiguous code block.

Examples:

* if statement
* loop
* match branch

---

## function

One function or method.

Examples:

```python
def tokenize(...)
```

```go
func ProcessJob(...)
```

---

## class

One class, struct, or equivalent type.

Examples:

```python
class Tokenizer
```

```go
type Worker struct
```

---

## module

One cohesive software module.

Examples:

```text
tokenizer
parser
database
scheduler
```

A module may span multiple files.

---

## feature

One user-visible capability.

Examples:

```text
OAuth Login
Export to CSV
Password Reset
Raster Import
```

A feature may span multiple modules and files.

---

## application

One executable application or service.

Examples:

```text
frontend
controller
worker
```

---

## system

Multiple cooperating applications.

Examples:

```text
controller + worker
frontend + backend
ETL platform
```

---

## project

An entire software project.

Examples:

```text
QSmith
Kingdom of Illusions
Replication Core
```

---

## repository

Entire repository, including all projects.

---

# 3. Change Budget

Change Budget defines how much code may be modified before review or completion.

Budget limits are independent of Objective Scope.

For example:

```text
EC-3 / feature / file(1)+test+doc
```

means:

* Objective is a feature.
* Only one production file may be changed before stopping.

---

## file(N)

Maximum number of production code files that may be modified.

Examples:

```text
file(1)
file(3)
file(10)
```

Examples:

```text
file(1)
```

One production file.

```text
file(3)
```

Up to three production files.

---

## loc(N)

Approximate limit on changed lines of code.

Examples:

```text
loc(50)
loc(150)
loc(500)
```

Used to limit review burden.

---

## function(N)

Maximum number of functions modified.

Examples:

```text
function(1)
function(5)
```

---

## module(N)

Maximum number of modules modified.

Examples:

```text
module(1)
module(3)
```

---

# Budget Modifiers

Budget modifiers do not count against primary production-code budgets.

---

## +test

AI may modify tests associated with modified production code.

Examples:

```text
file(1)+test
file(3)+test
```

If one production file is modified, corresponding test files may also be updated.

Test files do not count toward file(N).

---

## +doc

AI may modify supporting documentation associated with modified production code.

Examples:

* README.md
* DESIGN.md
* ARCHITECTURE.md
* API documentation

Documentation files do not count toward file(N).

## +cleanup

AI may make bounded follow-up edits outside the primary production-code budget when those edits are required to preserve consistency after an approved change.

Cleanup edits are allowed only when they are a direct consequence of the approved objective.

Allowed cleanup includes:

* Updating call sites after a function signature change.
* Updating interface implementations after an interface change.
* Updating imports after code is moved or extracted.
* Updating mocks, stubs, or fixtures affected by the change.
* Updating dependency injection or wiring required by the change.
* Fixing compile errors caused by the approved change.
* Updating tests affected by the approved change.

Cleanup does not include:

* Opportunistic refactoring.
* Unrelated bug fixes.
* Style-only rewrites.
* Adding new features.
* Redesigning adjacent modules.
* Expanding the original objective.

Cleanup test:

```text
If the approved change were reverted, would this cleanup edit still be necessary?
```

If the answer is no, the edit may qualify as cleanup.

If the answer is yes, the edit is outside cleanup scope and requires review or a new HCI specification.

Cleanup files do not count against file(N), but AI must report all cleanup files modified and explain why each was necessary.

---

## +newfile

AI may create new files required to support the approved objective.

New files do not count against file(N) when they primarily contain newly introduced types, interfaces, structs, classes, adapters, tests, or documentation created as part of the approved design.

Allowed new files include:

* New class, struct, or interface files.
* New adapter or implementation files.
* New test files.
* New documentation files.
* New configuration templates directly required by the approved change.

For example:

```text
EC-3 / feature / file(1)+test+doc+cleanup+newfile
```

may allow AI to modify one existing production file while also creating files such as:

```text
target_environment.go
local_environment.go
target_environment_test.go
```

New files are exempt only when they support the approved objective. They may not be used to smuggle in unrelated functionality.

AI must report all new files created and explain their purpose.


---

# Examples

## One-File-Test-Report

```text
EC-3 / feature / file(1)+test+doc
```

Meaning:

* Work toward one feature.
* Modify one production file.
* Update tests and docs as needed.
* Report results.
* Stop for review.

---

## Three-File Feature Slice

```text
EC-3 / feature / file(3)+test+doc
```

Meaning:

* Work toward one feature.
* Modify up to three production files.
* Update tests and docs as needed.
* Stop for review.

---

## Autonomous Module Development

```text
EC-2 / module / file(10)+test+doc
```

Meaning:

* Build or modify one module.
* Up to ten production files may change.
* Human reviews milestones.

---

## Autonomous Project Refactor

```text
EC-1 / project / file(25)+test+doc
```

Meaning:

* AI may operate anywhere within the project.
* Up to twenty-five production files may change.
* Human reviews completed work.

---

## Repository-Wide Autonomous Operation

```text
EC-0 / repository / file(100)+test+doc
```

Meaning:

* AI operates across the repository.
* Large-scale changes permitted.
* Human acts primarily as stakeholder.

```
```
