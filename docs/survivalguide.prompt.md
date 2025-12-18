Create **one** markdown code block containing a complete Survival Guide entry for my Probability Prelim repo.

## 0) Output constraints
- Output MUST be a single fenced markdown code block (no extra commentary outside the code block).
- Use my writing style and preserve as much of my original wording as possible, only changing what is necessary for correctness and clarity.
- Be verbose and pedagogical. I want to be able to read this months later without re-solving the problem.

## 1) Jekyll front matter (required)
At the very top, include:

---
title: "{YYYY}-Q{question_number}: {short description}"
permalink: /probability/prelim/{YYYY}q{question_number}/
tags: [probability-prelim, {topic1}, {topic2}]
---

## 2) Short introduction (required)
Write a short high-level introduction that explains:
- What this problem is testing (1–3 bullets),
- The main tools likely needed (1–5 bullets),
- Any “pattern recognition” cues (optional).

## 3) Problem statement (required)
Copy the entire problem statement **verbatim** from the attached prelim PDF. 
- Preserve the part labels exactly (a), (b)(i), etc.
- Do not paraphrase.
- Use quote blocks or LaTeX blocks as needed for formatting.

## 4) Solutions by part (required)
For **each** part/subpart, create a section with this exact structure:

### Part (X) {optional short label}
**Claim.** (State the key thing you are proving/computing.)

**Proof.**
- Follow my handwritten solution’s structure when possible.
- Use my Mathpix markdown as the source of equations when available.
- If my solution has a gap, keep my approach but patch the gap explicitly (say what was missing and supply it).
- If my approach is fundamentally wrong, explain why and give the correct approach, but still point to what I was trying to do.

**Conclusion.** (1–3 sentences, the final result.)

**Key Takeaways.**
- Theorems/lemmas used (name + a one-line “what it gives”).
- Tricks/patterns (e.g., “turn this into a stopping time,” “apply optional stopping with bounded increments,” etc.).
- Common pitfalls (especially ones I exhibited).

## 5) End summary (required)
At the end, include:

## Master Key Takeaways
- (bullets)

## Cheat Sheet Entries to Extract
- (bullets, written as reusable mini-facts or templates)

## Notes on My Original Work
- Briefly list where my handwritten solution was strong vs. where it needed patching.

## Inputs you must use
- Attached prelim PDF for the verbatim problem statement.
- My handwritten solution (images/PDF).
- My Mathpix markdown transcription (preferred for equations).
