# Weak Laws of Large Numbers

The Weak Laws of Large Numbers are often remembered through a single canonical statement, that the average of i.i.d. random variables with finite mean converges in probability to that mean. While correct, this formulation is incomplete and can be actively misleading in exam settings. The weak law is **not** fundamentally about independence or identical distributions. Rather, it is about forcing normalized fluctuations to vanish, typically by **collapsing variance** or **controlling rare large deviations**. Below, organizes the weak laws by their underlying mechanisms and assumptions, starting with the most commonly encountered prelim tools and working toward more specialized results. At the end of this article there are summary information and possible review sheet entries you may want.

## Table of Contents

- [What is a Weak Law?](#what-do-we-mean-by-a-weak-law-of-large-numbers)
- [Canonical i.i.d. WLLN](#the-canonical-weak-law-classical-iid-formulation)
- [Variance Engine](#the-variance-engine-behind-weak-laws-chebyshevkhintchine)
- [L² Weak Law](#the-l2-weak-law-a-strengthened-variance-based-result)
- [Truncation & Triangular Arrays](#truncation-based-weak-laws-triangular-arrays)
- [i.i.d. Heavy-Tail WLLNs](#iid-weak-laws-under-heavy-tails-truncation-as-the-main-idea)
- [Decision Checklist](#which-weak-law-should-i-try-exam-decision-checklist)
- [Comparison Table](#comparison-of-weak-laws-of-large-numbers)
- [Cheat Sheet](#prelim-cheat-sheet-what-to-write-down-for-weak-laws)
- [Ultra-Summary](#ultra-summary-weak-law-formulas-one-glance-reference)


## What do we mean by a Weak Law of Large Numbers?

At a high level, a *Weak Law of Large Numbers (WLLN)* is any result asserting that a suitably normalized sum of random variables converges to a deterministic quantity **in probability**.

Concretely, a WLLN is a statement of the form
$$
\frac{S_n - a_n}{b_n} \xrightarrow{P} 0,
$$
where:
- $S_n = \sum_{k=1}^n X_{n,k}$ is a (possibly triangular) sum of random variables,
- $a_n$ is a centering sequence, typically $\mathbb{E}S_n$,
- $b_n > 0$ is a scaling sequence, often $n$,
- convergence is in probability.

Different weak laws correspond to different assumptions on:
- dependence structure (independent, uncorrelated, triangular arrays),
- moment conditions (finite variance, finite mean, or none),
- tail behavior (light tails vs heavy tails),
- normalization ($n$, $b_n$, or other scales).

The central task in any WLLN proof is to show that fluctuations of $S_n$ around its mean become negligible relative to the chosen scale.

## The canonical Weak Law (classical i.i.d. formulation)

The most familiar version of the Weak Law of Large Numbers is the following.

> **Classical i.i.d. Weak Law of Large Numbers**
>
> Let $X_1, X_2, \dots$ be i.i.d. random variables with
> $$
> \mathbb{E}\vert X_1\vert  < \infty.
> $$
> Let $S_n = X_1 + \cdots + X_n$ and $\mu = \mathbb{E}X_1$. Then
> $$
> \frac{S_n}{n} \xrightarrow{P} \mu .
> $$

This theorem serves as the standard reference point for weak laws and is often the first version encountered in probability courses.

However, despite its prominence, this result conceals the true structure of weak laws. Independence and identical distribution are sufficient assumptions, but they are not essential. Most weak laws used in proofs and prelim problems rely instead on variance control or truncation arguments, which apply far beyond the i.i.d. setting.

<details><summary><small>Durrett version (reference only)</small></summary>


> **Durrett, Theorem 2.2.9**
>
> Let $X_1, X_2, \dots$ be i.i.d. with $\mathbb{E}\vert X_1\vert  < \infty$.
> Let
> $$
> S_n = X_1 + \cdots + X_n, \quad \mu = \mathbb{E}X_1.
> $$
> Then
> $$
> \frac{S_n}{n} \xrightarrow{P} \mu.
> $$

This is the form referenced throughout Durrett and serves as the canonical i.i.d. weak law.
</details>


## The variance engine behind weak laws (Chebyshev–Khinchin)

Most variance-based weak laws of large numbers are consequences of a single, simple observation: if the variance of a centered quantity is small relative to its normalization, then the normalized quantity converges to zero in probability. This principle is the core engine behind Chebyshev-type weak laws and appears repeatedly in prelim problems, often without being named explicitly.

### Variance-Based Convergence Lemma (Chebyshev–Khinchin)

Let $\{Y_n\}$ be a sequence of random variables with finite expectations and finite variances, and let $\{b_n\}$ be a nonzero scaling sequence.

**Assume**
$$
\frac{\operatorname{Var}(Y_n)}{b_n^2} \longrightarrow 0 .
$$

**Then**
$$
\frac{Y_n - \mathbb{E}[Y_n]}{b_n} \xrightarrow{P} 0 .
$$

#### Proof sketch (what you actually do on an exam)

By Chebyshev’s inequality, for any $\varepsilon > 0$,
$$
P\!\left(\left|\frac{Y_n - \mathbb{E}Y_n}{b_n}\right| > \varepsilon\right)
\;\le\;
\frac{\operatorname{Var}(Y_n)}{\varepsilon^2 b_n^2}
\;\longrightarrow\; 0.
$$

That is the entire argument. No independence assumptions are required.

#### Why this matters

- This lemma is the **workhorse** behind finite-variance weak laws.
- Independence and identical distribution are not essential; variance control is.
- On prelims, this lemma is often used implicitly when bounding probabilities via Chebyshev.

Most variance-based WLLNs are obtained by choosing $Y_n = S_n$ and an appropriate normalization $b_n$.

<details>
<summary><small>Durrett formulation (alignment only)</small></summary>

> **Durrett Probability Theorem 2.2.4**
>
> Let $\mu_n = \mathbb{E}[S_n]$, $\sigma_n^2 = \operatorname{Var}(S_n)$.  
> If
> $$
> \frac{\sigma_n^2}{b_n^2} \longrightarrow 0,
> $$
> then
> $$
> \frac{S_n - \mu_n}{b_n} \xrightarrow{P} 0 .
> $$

</details>

This theorem is a direct application of the variance-based convergence lemma and serves as the abstract template for many weak laws of large numbers.


## The $L^2$ weak law (a strengthened variance-based result)

In some settings, variance control yields more than convergence in probability. When the normalized variance actually converges to zero at a rate of order $1/n$, the averages converge in $L^2$ as well. This is often referred to as an *$L^2$ weak law of large numbers*.

### What “$L^2$ weak law” means

A statement of the form
$$
\frac{S_n}{n} \to \mu \quad \text{in } L^2
$$
means
$$
\mathbb{E}\!\left[\left(\frac{S_n}{n} - \mu\right)^2\right] \longrightarrow 0.
$$

Since $L^2$ convergence implies convergence in probability, any $L^2$ weak law is automatically a weak law in the usual sense. The terminology emphasizes that the proof proceeds through second-moment bounds rather than tail or truncation arguments.


<details>
<summary><small>Durrett formulation (alignment only)</small></summary>
### $L^2$ weak law under uncorrelatedness

> **Durrett Probability Theorem 2.2.3 ( $L^2$ weak law )**
>
> Let $X_1, X_2, \dots$ be uncorrelated random variables with
> $$
> \mathbb{E}X_i = \mu, \qquad \operatorname{Var}(X_i) \le C < \infty.
> $$
> Let $S_n = X_1 + \cdots + X_n$. Then, as $n \to \infty$,
> $$
> \frac{S_n}{n} \to \mu \quad \text{in } L^2 \text{ and hence in probability}.
> $$
</details>
### Why this works

Because the variables are uncorrelated,
$$
\operatorname{Var}(S_n) = \sum_{i=1}^n \operatorname{Var}(X_i) \le nC.
$$
Therefore,
$$
\mathbb{E}\!\left[\left(\frac{S_n}{n} - \mu\right)^2\right]
= \frac{\operatorname{Var}(S_n)}{n^2}
\le \frac{C}{n}
\longrightarrow 0.
$$

This is a direct application of variance collapse, but strong enough to yield $L^2$ convergence rather than merely convergence in probability.

### Why this theorem is important on prelims

- Independence is **not** required; uncorrelatedness suffices.
- The proof is a one-line variance computation.
- It is often the fastest way to establish a weak law when second moments are uniformly bounded.
- It illustrates that the real driver of many weak laws is variance control, not i.i.d. structure.

This result should be viewed as a concrete, high-payoff corollary of the variance-based convergence principle.

At this point, variance-based arguments fail not because the idea breaks down, but because the random variables themselves are too wild to admit global second moments.

## Truncation-based weak laws (triangular arrays)

The variance-based weak laws rely on controlling the second moment of the full sum. When this is not possible, typically due to heavy tails or non-identically distributed variables, variance collapse may fail outright. Truncation-based weak laws address this problem by separating rare large fluctuations from a truncated core where variance control can still be applied.

The key idea is simple: write each summand as a sum of a bounded part and a rare large part. The bounded part admits variance estimates, while the large part is shown to occur with vanishing probability.

### The truncation strategy

Given random variables $X_{n,k}$, choose a truncation level $b_n \to \infty$ and define

$$
\hat X_{n,k} = X_{n,k} \mathbf{1}(\vert X_{n,k}\vert  \le b_n).
$$

Then decompose the sum

$$
S_n = \sum_{k=1}^n X_{n,k}
= \sum_{k=1}^n \hat X_{n,k}
+ \sum_{k=1}^n X_{n,k}\mathbf{1}(\vert X_{n,k}\vert  > b_n).
$$

A truncation-based weak law proceeds by verifying two facts:
1. **Large values are rare:** the probability that any $X_{n,k}$ exceeds $b_n$ goes to zero.
2. **The truncated sum has negligible variance:** after normalization, the variance of the truncated sum vanishes.

Once these are established, convergence in probability follows.

### Weak law for triangular arrays

This strategy is formalized by the triangular array weak law.

<details>
<summary><small>Durrett formulation (alignment only)</small></summary>

> **Durrett Probability Theorem 2.2.6 (Weak law for triangular arrays)**
>
> For each $n$, let $X_{n,k}$, $1 \le k \le n$, be independent. Let $b_n > 0$ with $b_n \to \infty$, and define
> $$
> \hat X_{n,k} = X_{n,k}\mathbf{1}(\vert X_{n,k}\vert  \le b_n).
> $$
> Suppose that, as $n \to \infty$,
> $$
> \text{(i)} \quad \sum_{k=1}^n P(\vert X_{n,k}\vert  > b_n) \to 0,
> $$
> and
> $$
> \text{(ii)} \quad b_n^{-2} \sum_{k=1}^n \mathbb{E}[\hat X_{n,k}^2] \to 0.
> $$
> Let $S_n = \sum_{k=1}^n X_{n,k}$ and $a_n = \sum_{k=1}^n \mathbb{E}[\hat X_{n,k}]$. Then
> $$
> \frac{S_n - a_n}{b_n} \xrightarrow{P} 0.
> $$

</details>

### How this fits with earlier weak laws

- This theorem **extends the variance engine** by applying it only to truncated variables.
- The probability of observing large summands is controlled separately.
- When applied to i.i.d. sequences, this theorem yields the classical WLLN under minimal assumptions.

### Why this matters on prelims

- This is the standard tool when variance is infinite or unavailable.
- The proof structure is modular: truncation + variance + probability bound.
- Many “mysterious” WLLNs are applications of this theorem with a specific choice of $b_n$.

Truncation-based weak laws should be viewed not as exceptional cases, but as the natural continuation of variance-based arguments when second moments fail.



## i.i.d. weak laws under heavy tails (truncation as the main idea)

The truncation-based weak laws for triangular arrays specialize naturally to the i.i.d. setting. In this case, the array structure disappears, but the underlying mechanism remains the same: large values are rare, and the truncated sum admits variance control.

These results clarify an important point that is often obscured in first encounters with the WLLN: **finite variance is not required**, and even finite expectation is not the minimal assumption for convergence in probability.

### Tail-controlled i.i.d. weak law

The weakest i.i.d. weak law in Durrett is formulated directly in terms of tail behavior rather than moments.

<details>
<summary><small>Durrett formulation (alignment only)</small></summary>

> **Durrett Probability Theorem 2.2.7**
>
> Let $X_1, X_2, \dots$ be i.i.d. random variables such that
> $$
> x \, P(\vert X_1\vert  > x) \longrightarrow 0 \quad \text{as } x \to \infty.
> $$
> Let $S_n = X_1 + \cdots + X_n$, and define
> $$
> \mu_n = \mathbb{E}\!\left[X_1 \mathbf{1}(\vert X_1\vert  \le n)\right].
> $$
> Then
> $$
> \frac{S_n}{n} - \mu_n \xrightarrow{P} 0.
> $$

</details>

#### Interpretation

- The condition $x P(\vert X_1\vert  > x) \to 0$ ensures that extreme values do not dominate the average.
- No moment assumptions are required.
- The centering constant $\mu_n$ reflects the fact that $\mathbb{E}X_1$ may not exist.

This theorem is a direct application of the truncation-based triangular array WLLN with truncation level $b_n = n$.

---

### Classical i.i.d. weak law as a corollary

When the random variables have a finite first moment, the truncation disappears asymptotically and the centering constant stabilizes.

<details>
<summary><small>Durrett formulation (alignment only)</small></summary>

> **Durrett Probability Theorem 2.2.9 (Classical i.i.d. WLLN)**
>
> Let $X_1, X_2, \dots$ be i.i.d. random variables with
> $$
> \mathbb{E}\vert X_1\vert  < \infty.
> $$
> Let $S_n = X_1 + \cdots + X_n$ and $\mu = \mathbb{E}X_1$. Then
> $$
> \frac{S_n}{n} \xrightarrow{P} \mu.
> $$

</details>

#### Why this follows immediately

If $\mathbb{E}\vert X_1\vert  < \infty$, then
$$
\mu_n = \mathbb{E}\!\left[X_1 \mathbf{1}(\vert X_1\vert  \le n)\right] \longrightarrow \mathbb{E}X_1 = \mu
$$
by dominated convergence. Combining this with the previous result yields the classical weak law.

---

### How to think about i.i.d. weak laws on prelims

- The classical i.i.d. WLLN is **not a starting point**, but an endpoint.
- Truncation is the underlying mechanism, even when it is invisible.
- If variance is finite, use variance-based weak laws.
- If variance fails but tails are controlled, use truncation.
- If only $\mathbb{E}\vert X\vert  < \infty$ is given, truncation + convergence of the centering constant completes the argument.

In short: **i.i.d. weak laws are special cases of truncation-based weak laws**, not a separate theory.

## Which Weak Law should I try? (exam decision checklist)

When asked to show convergence in probability of a normalized sum, proceed in the following order.

### Step 1: Identify the target form
Are you trying to show
$$
\frac{S_n - a_n}{b_n} \xrightarrow{P} 0
$$
for some centering $a_n$ and scaling $b_n$?
If yes, you are in WLLN territory.

---

### Step 2: Check for variance control (fastest path)

Ask:
- Can I compute or bound $\operatorname{Var}(S_n)$?
- Does $\operatorname{Var}(S_n) / b_n^2 \to 0$?

If **yes**, apply a **variance-based WLLN**:
- Chebyshev–Khinchin lemma
- Durrett 2.2.4
- If $\operatorname{Var}(S_n) = O(n)$, conclude $L^2$ convergence (Durrett 2.2.3)

> **Rule of thumb:**  
> If second moments exist and are manageable, stop here.

---

### Step 3: If variance fails, look for truncation

Ask:
- Are the variables heavy-tailed?
- Is variance infinite or unavailable?
- Are the variables not identically distributed?

If **yes**, try a **truncation-based WLLN**:
- Decompose into truncated + rare large parts
- Control rare events probabilistically
- Apply variance arguments to the truncated sum

This leads to:
- Triangular array WLLN (Durrett 2.2.6)
- i.i.d. heavy-tail WLLNs (Durrett 2.2.7, 2.2.9)

---

### Step 4: Specialize to i.i.d. if applicable

If variables are i.i.d.:
- Finite variance → variance-based WLLN
- Finite mean only → truncation-based i.i.d. WLLN
- Tail condition only → tail-based i.i.d. WLLN

> **Key insight:**  
> Independence simplifies verification, but is rarely essential.

---

### Final exam heuristic

- **Variance available?** Use Chebyshev.
- **Variance unavailable?** Truncate.
- **i.i.d. given?** Truncation becomes invisible.
- **Triangular array?** Same ideas, more bookkeeping.

Most WLLN proofs are one of these four patterns.

## Comparison of Weak Laws of Large Numbers

| Setting | Assumptions | Tool / Theorem | Convergence | Key Mechanism | Typical Use |
|------|------------|---------------|------------|---------------|-------------|
| Abstract variance control | $\operatorname{Var}(Y_n)/b_n^2 \to 0$ | Chebyshev–Khinchin lemma | In probability | Chebyshev | Generic normalization problems |
| Uncorrelated, bounded variance | $\mathbb{E}X_i=\mu$, $\operatorname{Var}(X_i)\le C$ | Durrett 2.2.3 | $L^2$ and probability | Variance collapse | Fastest prelim solution |
| General sums | $\operatorname{Var}(S_n)/b_n^2 \to 0$ | Durrett 2.2.4 | In probability | Variance scaling | Nonstandard normalizations |
| Triangular arrays | Independence + truncation conditions | Durrett 2.2.6 | In probability | Truncation + variance | Non-i.i.d., heavy tails |
| i.i.d., tail control | $xP(\vert X\vert>x)\to0$ | Durrett 2.2.7 | In probability | Truncation | Infinite mean allowed |
| i.i.d., finite mean | $\mathbb{E}\vert X\vert<\infty$ | Durrett 2.2.9 | In probability | Truncation (hidden) | Classical WLLN |

---

### How to read this table

- Rows are ordered from **most general mechanism** to **most familiar special case**.
- Independence appears late because it simplifies proofs, not because it drives convergence.
- Variance-based laws are faster but require stronger assumptions.
- Truncation-based laws are more robust and explain why the classical WLLN holds.

On prelims, most problems reduce to identifying which row applies.

## Prelim cheat-sheet: what to write down for Weak Laws

This section is **not** a summary of results. It is a checklist of formulas, inequalities, and patterns that are useful to have written down before the exam starts. The goal is to reduce cognitive load and speed up recognition under time pressure.

---

### Core probability inequalities (write these verbatim)

- **Chebyshev**
$$
P(\vert X - \mathbb{E}X\vert  > \varepsilon)
\le \frac{\operatorname{Var}(X)}{\varepsilon^2}
$$

- **Union bound (for truncation)**
$$
P\!\left(\max_{1\le k\le n} \vert X_{n,k}\vert  > b_n\right)
\le \sum_{k=1}^n P(\vert X_{n,k}\vert  > b_n)
$$

These two inequalities prove most WLLNs.

---

### Variance identities you should not re-derive on the exam

- **Uncorrelated sum**
$$
\operatorname{Var}\!\left(\sum_{i=1}^n X_i\right)
= \sum_{i=1}^n \operatorname{Var}(X_i)
$$

- **Sample mean**
$$
\operatorname{Var}\!\left(\frac{S_n}{n}\right)
= \frac{\operatorname{Var}(S_n)}{n^2}
$$

- **Bounded variance heuristic**
$$
\operatorname{Var}(S_n) = O(n)
\;\Rightarrow\;
\frac{S_n}{n} \to \mu \text{ in } L^2
$$

---

### Standard WLLN templates (recognition patterns)

- **Variance-based WLLN**
$$
\frac{\operatorname{Var}(S_n)}{b_n^2} \to 0
\;\Rightarrow\;
\frac{S_n - \mathbb{E}S_n}{b_n} \xrightarrow{P} 0
$$

- **Truncation decomposition**
$$
X = X\mathbf{1}(\vert X\vert \le b_n)
+ X\mathbf{1}(\vert X\vert >b_n)
$$

- **Tail condition (i.i.d.)**
$$
xP(\vert X\vert >x)\to 0
\quad\Rightarrow\quad
\text{WLLN via truncation}
$$

---

### Useful convergence facts to remember

- $L^2$ convergence $\Rightarrow$ convergence in probability
- Dominated convergence gives
$$
\mathbb{E}[X\mathbf{1}(\vert X\vert \le n)] \to \mathbb{E}X
\quad\text{if } \mathbb{E}\vert X\vert <\infty
$$
- Independence is **sufficient**, not **necessary**, for variance additivity

---

### Common normalizations to watch for

- $b_n = n$: averages
- $b_n = \sqrt{n}$: CLT scale (not WLLN)
- General $b_n$: check $\operatorname{Var}(S_n)/b_n^2$

If the problem gives a nonstandard normalization, it is often a hint to use a variance-scaling argument.

---

### Red flags (things to notice immediately)

- No variance assumption stated → consider truncation
- Triangular array notation $X_{n,k}$ → Durrett 2.2.6
- Only $\mathbb{E}\vert X\vert <\infty$ given → truncation-based i.i.d. WLLN
- Uncorrelated + bounded variance → $L^2$ weak law

---

### One-line exam mantra

> *WLLNs are proved by killing variance or killing rare events.*

If you can identify which of these the problem allows, the rest is bookkeeping.


## Ultra-summary: Weak Law formulas (one-glance reference)

This section is a **compression layer**. It is not meant for learning, only for rapid recall and alignment during an exam.

---

### Abstract WLLN template
$$
\frac{S_n - a_n}{b_n} \xrightarrow{P} 0
\quad\text{if fluctuations vanish at scale } b_n.
$$

---

### Variance-based weak laws

- **Chebyshev–Khinchin**
$$
\frac{\operatorname{Var}(Y_n)}{b_n^2} \to 0
\;\Rightarrow\;
\frac{Y_n - \mathbb{E}Y_n}{b_n} \xrightarrow{P} 0
$$

- **Uncorrelated, bounded variance ( $L^2$ WLLN )**
$$
\mathbb{E}X_i=\mu,\ \operatorname{Var}(X_i)\le C
\;\Rightarrow\;
\frac{S_n}{n}\to\mu \text{ in } L^2 \text{ and } P
$$

---

### Truncation-based weak laws

- **Triangular array**
$$
\sum_{k=1}^n P(\vert X_{n,k}\vert >b_n)\to0,\quad
b_n^{-2}\sum_{k=1}^n \mathbb{E}[\hat X_{n,k}^2]\to0
\;\Rightarrow\;
\frac{S_n-a_n}{b_n}\xrightarrow{P}0
$$

---

### i.i.d. weak laws

- **Tail-based**
$$
xP(\vert X\vert >x)\to0
\;\Rightarrow\;
\frac{S_n}{n}-\mu_n\xrightarrow{P}0
$$

- **Finite mean (classical WLLN)**
$$
\mathbb{E}\vert X\vert <\infty
\;\Rightarrow\;
\frac{S_n}{n}\xrightarrow{P}\mathbb{E}X
$$

---

### One-line decoding guide
- Variance available → variance-based WLLN  
- Variance fails → truncate  
- i.i.d. → truncation becomes invisible  
