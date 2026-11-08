# STT 961 — Lecture Compilation Instructions

I want to compile my STT 961 lecture notes **topic by topic**, using three sources:

1. **Handwritten lecture notes (PDF):** My transcription of what the professor wrote on the board, primarily in white. My annotations are in blue.
2. **Lecture transcript (TXT/SRT):** A recording transcription of what the professor said, which may contain speech-recognition errors.
3. **Textbook (van der Vaart & Wellner, 1996):** The corresponding chapter or section, used to verify mathematical correctness and identify necessary corrections.

**Important:** The handwritten notes and lecture transcript determine what belongs in the document. The textbook is an authoritative reference for verification, not a source of additional lecture topics.

## Workflow

1. Examine the handwritten notes and transcript to identify the lecture's topics in their original order.
2. Process **one topic per response**, stopping at a natural conceptual boundary.
3. Produce a self-contained Markdown snippet that I can copy into my lecture document.
4. Wait until I say **"next"** before proceeding.
5. At the end of the lecture, explicitly state that no further topics remain based on the handwritten notes and transcript.
6. Once all topics are compiled, I will provide the combined Markdown file for a final mathematical verification and formatting pass.

Do not introduce topics merely because they appear in the textbook.

## Markdown Structure

Each topic should follow this structure:

```markdown
# N. Topic Title — van der Vaart & Wellner §X.X,
  Lemma/Theorem X.X.X (if applicable)

## Professor Wrote (verbatim)

[Transcription of the handwritten white notes,
 including definitions, equations, theorems,
 and proofs.]

*Correction: My notes contained [...]. Corrected
against van der Vaart & Wellner (1996), p. X.*

---

## Professor Said (Paraphrased)

[Paragraphs capturing additional information
from the lecture transcript.]
```

### 1. Professor Wrote (verbatim)

- Transcribe the professor's mathematical development from my white handwritten notes as faithfully as possible.
- Preserve the ordering, notation, definitions, statements, and proof steps.
- Format mathematics using `$...$` for inline expressions and `$$...$$` for display equations.
- Do not unnecessarily rewrite, expand, or simplify the mathematics.
- Correct substantive mathematical errors using the textbook.
- My handwritten notes may contain transcription errors. **Assume an error originated in my note-taking, not with the professor**, unless evidence establishes otherwise.
- Do not silently correct substantive mathematical statements.
- Include the relevant van der Vaart & Wellner section and theorem/lemma number in the topic heading when a direct correspondence exists.
- Do not invent textbook references.

### 2. Corrections and Textbook Clarifications

Place corrections or clarifications **immediately after the specific portion of the Professor Wrote section to which they apply**, before moving to the next section.

Use small italic text beginning with an asterisk.

Distinguish between:

- **Correction:** A substantive mathematical or transcription error that was changed. State what my notes originally contained, what was changed, and the textbook reference.
- **Textbook clarification:** An important condition or qualification confirmed by the textbook but not explicitly written in my notes.

Only include these annotations when meaningful. Do not report inconsequential changes in punctuation, formatting, LaTeX syntax, or notation normalization.

When a handwritten expression is ambiguous, compare it with the transcript and textbook. If the ambiguity cannot be resolved, say so rather than inventing a correction.

### 3. Professor Said (Paraphrased)

Use the lecture transcript to capture **information the professor said that was not already adequately represented in the written notes**.

- Write in cohesive paragraphs, not bullet lists.
- Preserve the professor's intended meaning and conceptual emphasis.
- Include motivations, interpretations, qualifications, connections, and comments about proofs or homework when relevant.
- Avoid repeating the mathematical statements already reproduced in the preceding section unless necessary for context.
- Correct obvious speech-recognition errors using mathematical context and the textbook.
- Do not introduce independent explanations or interpretations.
- Do not add textbook material merely because it is interesting or useful.
- Use **bold emphasis** sparingly for concepts the professor explicitly emphasized.

My blue handwritten annotations generally represent my attempts to record what the professor was saying. Do not create a separate section for them. Incorporate a blue annotation into the paraphrased section only if it provides a correct, distinct observation not otherwise captured by the transcript. Do not present my speculative observations as statements made by the professor.

## Topic Titles and Numbering

Number the topics consecutively:

```markdown
# 1. Outer Expectation and Outer Probability — §1.2

# 2. Measurable Cover Function —
  Lemma 1.2.1

# 3. Classical Fubini — §1.2

# 4. Generalized Fubini —
  Lemma 1.2.6
```

These are examples, not topics to reuse automatically.

Use the same heading convention throughout the document. Keep theorem and lemma numbering from the textbook distinct from the lecture topic numbering.

Do not put the lecture date in individual topic headings.

## Final Compilation

After completing the individual topics, I will upload the combined Markdown document.

Perform a final pass to:

1. Compare all definitions, theorems, equations, and proofs against the supplied van der Vaart & Wellner chapter or section.
2. Correct substantive mathematical errors and document them at the relevant location.
3. Distinguish textbook clarifications from actual corrections.
4. Remove duplicated sections and accidental repeated content.
5. Number all topic headings consistently.
6. Add a **brief, linked table of contents** at the beginning of the document.
7. Add applicable textbook section, lemma, and theorem references to headings.
8. Ensure valid Markdown and LaTeX formatting.
9. Preserve the distinction between what the professor wrote and what the professor said.
10. Provide the final edited document as a **downloadable `.md` file**, together with a concise summary of substantive changes.

## Boundaries

- Do not add independent mathematical explanations.
- Do not create summaries, TL;DR sections, flashcards, study questions, or tests of understanding.
- Do not expand the lecture to cover additional textbook material.
- Do not remove meaningful professor commentary just because it is absent from the textbook.
- Do not confuse a missing assumption in my notes with an error made by the professor.
- Do not proceed to the next topic until prompted.
- Prioritize **faithfulness to the lecture, mathematical correctness, and a clean reference document** over completeness of textbook coverage.

## Files I Will Supply

For each lecture, I will provide:

- Handwritten notes: `MM-DD.pdf`
- Lecture transcript: `YYYY-MM-DD.stt961.txt` or `.srt`
- Relevant van der Vaart & Wellner chapter or section (PDF)

Please begin with the **first mathematical topic** and produce only its Markdown snippet. Continue one topic at a time when I say "next".