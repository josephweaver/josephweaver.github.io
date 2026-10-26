---
title: AI Prompt for Human-applied Ai-Codeing
date: 2026-05-12
description: Reusable prompts for starting AI-assisted research software sessions with explicit context, workflow goals, and review expectations.
project: epistimic-control-ai-coding
status: draft
tags:
  - prompts
  - ai-assisted-coding
  - workflow-design
  - epistemic-control
repos:
  - https://github.com/josephweaver/josephweaver.github.io
---

## To Start an AI Workflow Improvement Session

Read PROJECT_STATE.md, README.md, and AI.md. Then review my current proposed changes to AI-facing workflow or prompt files.

Tell me:
1. whether the proposal aligns with AI.md,
2. where the wording may cause ambiguous or overly broad AI behavior,
3. suggested replacement language that would produce clearer, more reviewable responses,
4. any places where the prompt conflicts with the narrow-slice, human-in-the-loop workflow.

Do not edit files unless I explicitly ask.

## To Start a Coding Session

Read PROJECT_STATE.md, README.md, and AI.md.

Internally decide which source, test, or design files are needed. Keep inspection narrow to preserve token budget. Do not list inspected files unless I ask. Internally identify relevant focused tests, but do not provide test commands unless I ask.

Then tell me:
1. a 3-5 bullet current-state summary from PROJECT_STATE.md,
2. the parent slice goal you recommend,
3. whether the work appears to be:
   - a single-component slice, or
   - a multi-component vertical slice that should be split into sub-slices,
4. the first component-level sub-slice you recommend,
5. the focused behavior that should be tested for that sub-slice.

As the last step, check the current git status. If there are unrelated uncommitted changes, report them briefly and ask me whether to continue. If it is safe to proceed, choose an appropriate branch name for the parent slice, create a new git branch with that name, and switch to it. Use one branch for all sub-slices in this parent slice.

Do not code yet. Use bullets where applicable. Be concise, but do not replace the answer with a TL;DR. Include only decision-relevant details. Do not explain internal file-inspection steps or list files inspected unless I ask. Start the response with the recommended parent slice intent.

## To Start a Guided Sub-Slice

Use the active branch for the parent slice. Do not create a new branch. Do not edit files.

Use this prompt for either the first sub-slice or the next approved sub-slice in the parent slice.

If the parent goal is a multi-component vertical slice, work only on the current component-level sub-slice. If I ask to start the next sub-slice, first confirm the previous sub-slice is complete enough to move on, then prepare only the next component-level sub-slice.

Give me the implementation brief required by AI.md for the current sub-slice, including:
1. the parent slice goal,
2. the current sub-slice boundary,
3. which component/layer this sub-slice owns,
4. whether this sub-slice is expected to touch more than five files,
5. the exact files I should edit,
6. the minimal code/test edits you propose, in small copy/paste-ready blocks with file paths and insertion points,
7. the focused behavior I should verify in VS Code tests,
8. the stop condition for this sub-slice.

Keep proposed edits small enough that I can understand each block before applying it. Before each block, state the intent in one sentence. If an edit is large, split it into multiple blocks by file or function. Label uncertain recommendations as assumptions rather than established project facts.

After proposing edits, give me a short reconstruction checklist: the 3-5 behavior points I should be able to explain after applying the changes.

I will copy/paste the edits locally, run tests, then ask you to review my diff.
Do not continue to the next sub-slice until I explicitly say to continue.

## To Checkpoint the Current Parent Slice

Review the current branch, git diff, and PROJECT_STATE.md.

Summarize:
1. parent slice goal,
2. completed sub-slices,
3. current sub-slice status,
4. unresolved decisions or risks,
5. next exact prompt I should use when resuming.

Keep this concise and decision-focused. Do not edit files unless I ask.

## To Triage Test Failures

I ran tests in VS Code and got failures. I will paste the failing output.

Read the failure output and current diff. Tell me:
1. the most likely cause,
2. whether the failure is in implementation, test expectation, or slice boundary,
3. the smallest change I should make,
4. whether this affects the current sub-slice stop condition.

Do not propose broad refactors. Do not edit files unless I ask.

## To Resolve a Design Question

Read the relevant project docs only as needed.

Help me decide the smallest architecture-consistent answer to this question:
<question>

Tell me:
1. what AI.md or the design docs imply,
2. the simplest acceptable decision,
3. tradeoffs or risks,
4. whether PROJECT_STATE.md should record the decision.

Do not code.

## To Abort or Pause the Current Slice Safely

Read PROJECT_STATE.md, README.md, AI.md, and inspect the current git status and diff.

Do not discard, revert, reset, or overwrite any changes.

Help me preserve the current work in case I want to retry this slice later.

First, on the active slice branch:
1. summarize which files are changed,
2. identify whether the changes appear related to the active slice,
3. propose a concise pause/abort commit message,
4. after I approve, commit the current work on the active branch.

Then switch back to main.

After returning to main:
1. decide whether PROJECT_STATE.md should mention the paused or abandoned branch,
2. if yes, propose a short note that says the branch is reference-only and not accepted implementation,
3. after I approve, update PROJECT_STATE.md and commit that documentation-only change directly to main.

Do not merge the paused or abandoned branch. Do not delete the branch, stash changes, reset changes, or start a replacement slice unless I explicitly ask.

## To Review My Sub-Slice Changes

Please review my current git diff for the current sub-slice within the active parent slice. Prioritize:
1. bugs or behavior regressions,
2. missing or weak tests,
3. architectural mismatch with AI.md and PROJECT_STATE.md,
4. whether the sub-slice stayed within its intended component/layer boundary,
5. whether this sub-slice is complete enough to move to the next sub-slice.

Tell me:
1. findings that should be fixed before continuing,
2. test coverage gaps or focused behavior I should verify in VS Code tests,
3. whether PROJECT_STATE.md needs a learning note yet or should wait until the parent slice is complete,
4. whether it is safe to ask for the next guided sub-slice.

Keep user-facing output focused on decisions, risks, requested edits, and verification behavior. Do not explain internal file-inspection steps or list files inspected unless I ask.

Do not make code changes unless I explicitly ask.

## To Finalize a Parent Slice

All intended sub-slices for the active parent slice are complete, and tests passed.

Please review the final git diff for the parent slice. Prioritize:
1. bugs or behavior regressions,
2. missing or weak tests,
3. architectural mismatch with AI.md, PROJECT_STATE.md, and relevant design docs,
4. unrelated changes that should not be included,
5. whether PROJECT_STATE.md accurately captures the completed parent slice.

Help me update PROJECT_STATE.md with:
1. what changed,
2. key files changed,
3. focused behavior tested,
4. important assumptions, tradeoffs, or learning notes,
5. what remains next.

Then draft a concise pull request summary for the parent slice, including:
1. behavior changed,
2. files changed by component/layer,
3. tests run or verified in VS Code,
4. residual risks or deferred behavior,
5. what I should understand before merge.

After the final commit is made and the pull request is created, switch back to main.

If I try to continue coding in this conversation after the parent slice has been finalized, remind me that I should start a new conversation for the next parent slice.

Do not make code changes unless I explicitly ask. Documentation-only updates to PROJECT_STATE.md are allowed after I approve the proposed text.
