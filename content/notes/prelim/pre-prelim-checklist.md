
# Review Sheet 

This review sheet covers key concepts and formulas in probability that are essential for prelimary exam.  The idea is to read prior to exam to bring to mind common techniques used in preliminary probability problems.

## Framing the Box: “What do I know? What do I show?”

Before doing any algebra, explicitly frame the problem.

---

### Question 1: What do I know?

List only:
- Given assumptions (distribution, filtration, growth conditions)
- Results proved in earlier parts
- Standard tools that match those assumptions

Nothing else.

---

### Question 2: What do I show?

State the target **in its final form**, not loosely.

Examples:
- Show an expectation identity
- Show convergence in probability
- Show a martingale property
- Show integrability

This determines which lemmas are even relevant.

---

### Define the Box

> The box is the intersection of:
> - *What I know*
> - *What I must show*

Only tools that live in this intersection are allowed.

---

### Guided Algebra Rule (inside the box)

> Use minimal algebraic transformations to move from  
> **what I know → what I must show**.

Do not expand the box.  
Do not import new ideas.

---

### Key Insight

> Prelims test *recognition under constraints*, not creativity.

Out-of-the-box thinking comes later.

# Pre-prelim - Test-Day Checklist

Meditate on;
- Slow down and write the full expression for 
  - lim,E,∑,∫,P




# Probability Prelim — Test-Day Execution Checklist

This checklist is designed to **separate sense-making from execution**.  
The goal is to contain the search space of each problem so the final answer is clean, correct, and graded on recognition rather than exploration.

---

## 0. Physical Setup (Before Reading Any Problem)

- ☐ Split paper **physically**:
  - **Scrap paper** (left stack)
  - **Final answer paper** (right stack)
- ☐ Decide now: **scrap paper will never be graded**
- ☐ Commit to the rule: *no exploratory writing on final paper*

---


## 0.5 Global Triage Pass (All Problems, Scrap Paper Only)

**Purpose:** decide *which problems are worth solving* before solving anything.

- ☐ Allocate **30–45 minutes total** for this entire phase
- ☐ Use **one separate scrap page per problem**
- ☐ Hard rule: **no solving, no calculations**

For **each problem**, do the following:

### 0.5.1 Skeleton Rewrite
- ☐ Rewrite only the **problem skeleton**:
  - Objects involved (r.v.’s, processes, filtrations)
  - What each part (a), (b), (c) is asking, in plain language

---

### 0.5.2 Identify the Governing Theorem(s)
Write short phrases like:
- “Borel–Cantelli + truncation”
- “Martingale convergence + UI”
- “Optional stopping with bounded increments”
- “Tightness + subsequence argument”

If you cannot name a theorem, note that explicitly.

---

### 0.5.3 Part Dependency Map
- ☐ Write arrows showing structure:

```{text}
(a) → (b) → (c)
```

or

```{text}
(a) standalone
(b) independent
(c) uses only (b)
```


Unclear structure is a warning sign.

---

### 0.5.4 Viability Classification (Mandatory)
At the bottom of the page, write **exactly one**:

- **DO WELL**  
  “I know how this finishes. I can make this clean.”

- **MOSTLY KNOW**  
  “I see the path, but details may be slow or tricky.”

- **AVOID**  
  “I don’t see the theorem or the box.”

Do **not** argue with this classification later.

---

## 0.6 Commit to a Plan (Still Scrap Paper)

- ☐ Select **3–4 problems** labeled **DO WELL / MOSTLY KNOW**
- ☐ Order them by confidence
- ☐ Decide *in advance* which problems you will likely skip

This decision prevents mid-exam thrashing.

## 1. First Pass on a New Problem (Scrap Paper Only)

- ☐ Rewrite the **entire problem statement** verbatim
- ☐ Identify the probability universe:
  - Random variables / processes involved
  - Filtration (if any)
  - Mode of convergence / limit regime
- ☐ Circle or underline:
  - What is **given**
  - What is **fixed**
  - What is **to be shown** including **hint**.

---

## 2. Build the “Box” (Scrap Paper)

### 2.1 Known Facts You Are Allowed to Use
Write short, factual implications without proof:
- ☐ Limit facts (e.g. `P(Z > a_n) = 1/n ⇒ a_n → ∞`)
- ☐ Standard theorems (BC, UI ⇒ L¹, martingale convergence, etc.)
- ☐ Distributional or tail bounds relevant to the problem

> These are **tools**, not arguments.  
> If it’s not here, don’t use it later.

---

### 2.2 Part Structure Map
Before solving anything, write:
- ☐ What part (a) *constructs*
- ☐ What part (b) *proves about that construction*
- ☐ What part (c) *uses from (a)/(b)*

Example:
```{text}
(a) defines $Y_n$
(b) shows $Y_n$ is UI / bounded / martingale
(c) uses (b) to pass to the limit or define $T$
```

---

### 2.3 The One-Sentence Plan
- ☐ Write one sentence:
  - “This problem is about ______ using ______.”

If you cannot write this sentence, **do not move to final paper yet**.

---

## 3. Transition Rule (Critical)

Only move to final paper if:
- ☐ The role of each part is clear
- ☐ You know which theorem finishes each part
- ☐ No new ideas are being generated

If you are still discovering, **stay on scrap paper**.

---

## 4. Writing the Final Answer (Final Paper Only)

- ☐ Write as if **recalling** a solution, not inventing one
- ☐ Keep proofs linear and forward-moving
- ☐ Invoke only facts already listed on scrap paper
- ☐ Use minimal but sufficient justification

### Absolutely Do NOT Include:
- ☐ Exploratory reasoning
- ☐ Alternative approaches
- ☐ Meta-comments (“we might try”, “one could also”)
- ☐ General facts not explicitly used

---

## 5. If You Get Stuck Mid-Proof

- ☐ Stop writing on final paper immediately
- ☐ Return to scrap paper
- ☐ Re-check:
  - What exactly is being shown
  - Which theorem is supposed to apply
- ☐ Resume final paper **only after clarity returns**

---

## 6. End-of-Problem Sanity Check

Before moving on:
- ☐ Each part actually answers what was asked
- ☐ No unused lemmas or side results
- ☐ Notation is consistent
- ☐ Conclusion is explicitly stated

---

## Mental Reminder

> The exam is testing **finite recognition**, not creative synthesis.  
> Scrap paper is for exploration.  
> Final paper is for execution.

# Writing Partial Solutions on a Probability Prelim

This guide explains **when** to write a partial solution, **what** to include, and **how to stop** so that the work helps rather than hurts your final outcome.

The goal of a partial is **signal**, not completion.

---

## 1. When to Write a Partial (Decision Rule)

Write a partial solution **only if** at least one of the following is true:

- ☐ You can correctly identify the **core theorem** the problem is about
- ☐ You can correctly set up the **main object** (martingale, truncation, stopping time, etc.)
- ☐ You can reduce the problem to a **single missing step**
- ☐ You can prove a clean sub-claim that is clearly necessary for the full solution

If none of these are true, **leave the problem blank**.

---

## 2. What a High-Signal Partial Looks Like

A good partial solution typically contains **one** of the following:

### 2.1 Correct Construction
- Definition of the right sequence, process, or stopping time
- Correct filtration and measurability statements
- Clear statement of why the construction is relevant

Example:
> “Define \( Y_n = X_n \mathbf{1}_{\{\|X_n\| \le a_n\}} \). Then \( (Y_n) \) is adapted to \( \mathcal{F}_n \) and satisfies …”

---

### 2.2 Correct Theorem Identification
- Explicit naming of the theorem that finishes the problem
- Clear indication of which hypothesis remains to be checked

Example:
> “By the Martingale Convergence Theorem, it suffices to show uniform integrability.”

---

### 2.3 Correct Reduction
- The problem is reduced to a single estimate or condition
- The remaining work is clearly mechanical or standard

Example:
> “Thus it remains to verify that  
> \( \sum_n \mathbb{P}(\|X_n\| > a_n) < \infty \).”

---

## 3. What to Exclude from a Partial (Critical)

A partial solution must **not** include:

- ❌ Guessing or speculative steps
- ❌ Multiple alternative approaches
- ❌ Long calculations without a clear target
- ❌ Incorrect or unjustified statements
- ❌ Apologies or disclaimers (“due to time”, “sketch only”, etc.)

If you feel the urge to explain why you stopped, **stop earlier**.

---

## 4. How to End a Partial Correctly

End partial solutions with **mathematical forward-pointing language**, not meta-commentary.

Good stopping points:
- “It suffices to show that …”
- “Assuming uniform integrability, we conclude …”
- “The remaining step is to verify …”

Bad stopping points:
- “The rest is omitted.”
- “I ran out of time.”
- “This is only a sketch.”

Let the grader decide what is missing.

---

## 5. Length Rule

- ☐ Aim for **¼–½ page maximum**
- ☐ One clean idea is better than three muddy ones
- ☐ Stop as soon as you lose certainty

A short, correct partial beats a long, uncertain one.

---

## 6. Mental Model

> A partial solution is a **correct doorway**, not a hallway.  
> Show that you know where the proof lives, then stop.

---

## 7. Final Reminder

- Never label your work as “partial”
- Never argue against yourself
- Never trade correctness for volume

Your job is to provide **evidence of recognition**.  
The grader decides how much credit it deserves.



# Algebraic Forcing Moves (Prelim Survival Sheet)

> **Goal:**  
> Before invoking a theorem, *use algebra to force the expression into a known form*.

If you are stuck, do **not** search for a theorem.  
Search for an **algebraic rewrite**.

---

## 0. Meta-Rule (read this first)

> **If a theorem is applicable, the expression can usually be rewritten to show it.**

Most prelim problems are unlocked by **reshaping**, not by inventing new ideas.

---

## 1. Pull Out One Factor (create a product)

**When to try:**  
- Polynomial moments  
- Gaussian expectations  
- Anything with an “extra” variable

**Move:**
$$
Z^{n+1} = Z \cdot Z^n
$$

**Purpose:**  
- Create $Z f(Z)$ to trigger Gaussian IBP / Stein  
- Create a product where a derivative or conditioning applies

**Mental cue:**  
> “There’s one too many powers. Pull one out.”

---

## 2. Add and Subtract the Same Term (create cancellation)

**When to try:**  
- Convergence proofs  
- Slutsky-type arguments  
- Martingales / conditional expectations

**Move:**
$$
X_n = (X_n - Y_n) + Y_n
$$

**Purpose:**  
- Separate a small error from a known limit  
- Reduce to a known convergence statement

**Mental cue:**  
> “Split it into what I control and what I know.”

---

## 3. Write as a Difference (expose telescoping)

**When to try:**  
- Sums indexed by $n$  
- Martingales  
- Series / partial sums

**Move (generic):**
$$
a_n = (a_n - a_{n-1}) + a_{n-1}
$$

**Purpose:**  
- Create telescoping sums  
- Identify increments or martingale differences

**Mental cue:**  
> “Can this be written as a change plus the past?”

---

## 4. Multiply and Divide by the Same Quantity (normalize)

**When to try:**  
- Asymptotics  
- Tail bounds  
- Extreme value problems

**Move:**
$$
P(Z > x+y/x)
=
P(Z > x)\,
\frac{P(Z > x+y/x)}{P(Z > x)}
$$

**Purpose:**  
- Isolate a ratio with a limit  
- Reduce to a known asymptotic

**Mental cue:**  
> “Normalize by the dominant term.”

---

## 5. Write as an Indicator or Integral (change viewpoint)

**When to try:**  
- Expectations with events  
- Conditioning  
- Stopping times

**Moves:**
$$
E[X; A] = E[X \mathbf{1}_A],
\qquad
X = \int \mathbf{1}_{\{X>t\}}\,dt
$$

**Purpose:**  
- Convert probabilistic statements into algebra  
- Apply Fubini, monotone convergence, conditioning

**Mental cue:**  
> “Can I turn this into an indicator?”

---

## 6. Group Terms to Match a Known Identity

**When to try:**  
- Variances and covariances  
- Orthogonality  
- Quadratic forms

**Move (example):**
$$
ab = \tfrac12\big[(a+b)^2 - a^2 - b^2\big]
$$

**Purpose:**  
- Trigger variance identities  
- Expose squares or cancellations

**Mental cue:**  
> “Is there a square hiding here?”

---

## 7. Product Rule Forcing (create derivatives)

**When to try:**  
- Gaussian problems  
- IBP arguments  
- Orthogonal polynomials

**Move:**
$$
h = fg \quad\Rightarrow\quad h' = f'g + fg'
$$

**Purpose:**  
- Apply Stein / IBP to a product  
- Move derivatives between terms

**Mental cue:**  
> “Combine terms so the derivative knows what to do.”

---

## 8. Final Exam Reminder (box this)

$$
\boxed{
\textbf{Do algebra first.}
\quad
\text{The theorem comes second.}
}
$$

If you are stuck:
1. Pull out a factor  
2. Add and subtract  
3. Rewrite as a product or difference  

**Do not invent. Reshape.**

## Lemma-Guided Decomposition (Search Technique)

**Purpose:**  
Use a *known lemma* to guide how you rewrite an expression, instead of simplifying blindly.

This is **not** an algebra trick.  
This is a *search strategy*.

---

### When to Use

- You know a lemma should apply (Stein, optional stopping, Slutsky, DCT, etc.)
- The expression does not obviously match the lemma
- The result involves multiple terms (A, B, C)

---

### Core Idea

> **Keep the lemma’s target form in mind and decompose the expression to find it.**

Do not ask: *“How do I simplify this?”*  
Ask instead: *“Which part could match the lemma?”*

---

### Procedure

1. **Recall the lemma’s input shape**  
   (example: Stein → `E[h'(Z)] = E[Z h(Z)]`)

2. **Label the terms** in the expression as `A`, `B`, `C`  
   Do *not* simplify yet.

3. **Evaluate each term**:
   - Could this be `E[h'(Z)]`?
   - Could this be `E[Z h(Z)]`?

4. **Rearrange the identity** to isolate the lemma-compatible term  
   Example:
   \[
   C = A - B \quad\Rightarrow\quad A = B + C
   \]

5. **Apply the lemma to that term**  
   The remaining terms must come from algebraic structure
   (product rule, chain rule, conditioning, etc.).

---

### Mental Cue

> **“I’m not simplifying. I’m searching for the lemma’s shape.”**

---

### Example: Gaussian / Stein

- Goal: apply Stein’s lemma
- Stein applies to exactly one term
- Decompose into `A`, `B`, `C`
- Rearrange until one term matches Stein
- The rest is bookkeeping

---

### Why This Works

- Lemmas apply to *specific forms*
- Algebra is used to **manufacture** those forms
- Recognition comes *before* computation

---

### Warning

If you simplify too early, you may destroy the structure  
the lemma needs to see.

**Search first. Simplify second.**
