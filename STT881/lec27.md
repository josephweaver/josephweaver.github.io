# **Lecture 27 — A.s. Convergence via Variance Summability & Kolmogorov’s 3–Series Theorem**
This lecture contains:

Kolmogorov’s convergence criteria via variance summability

A uniform maximal bound implying Cauchy convergence almost surely

Kolmogorov’s Three–Series Theorem (full statement)

Interpretation and proof sketch
## 1. Convergence of ∑ Xₙ under Variance Summability

Let $\{X_n\}_{n\ge1}$ be independent. Write

$$
S_n = \sum_{k=1}^n X_k.
$$

### Theorem (Durrett 2.5.3)

Assume $E[X_n]=0$.

1. **If**  
   $$
   \sum_{n=1}^\infty E(X_n^2) < \infty,
   $$
   **then**  
   $$
   \sum_{n=1}^\infty X_n \quad \text{converges a.s.}
   $$

2. **If**  
   $$
   \sum_{n=1}^\infty \operatorname{Var}(X_n) < \infty,
   $$
   **then**  
   $$
   \sum_{n=1}^\infty \bigl(X_n - E[X_n]\bigr)
   \quad\text{converges a.s.}
   $$

### Remark (From the note on page 1)

No moment assumptions beyond finite variance are needed.  
If $\sum E[X_n^2]<\infty$, then automatically $E\bigl(\sum X_n^2\bigr) < \infty$ and

$$
\sum X_n^2 < \infty \quad \text{a.s.}
$$

---

## 2. Proof of Statement (1)

We show that $\{S_n\}$ is a **Cauchy sequence almost surely**.

Let $M<N$ and consider:

$$
S_N - S_M = \sum_{k=M+1}^N X_k.
$$

By independence and Chebyshev:

$$
P\!\left(
\max_{M\le m\le N} \vert S_m - S_M\vert  > \epsilon
\right)
\;\le\;
\frac{\operatorname{Var}(S_N - S_M)}{\epsilon^2}
=
\frac{\sum_{k=M+1}^N \operatorname{Var}(X_k)}{\epsilon^2}.
$$

Letting $N\to\infty$:

$$
P\!\left(
\sup_{m\ge M} \vert S_m - S_M\vert  > \epsilon
\right)
\le
\frac{\sum_{k=M+1}^\infty \operatorname{Var}(X_k)}{\epsilon^2}
\;\xrightarrow[M\to\infty]{}\; 0,
$$

because $\sum\operatorname{Var}(X_k)$ converges.

Now define the nonnegative random variables:

$$
W_M = \sup_{m\ge M} \vert S_m - S_M\vert .
$$

- The sequence $W_M$ is **monotone decreasing**.  
- We have $W_M \xrightarrow{P} 0$.  
- A monotone sequence converging in probability must converge almost surely.

Hence:

$$
W_M \downarrow W,\qquad W=0 \ \text{a.s.}
$$

So

$$
\sup_{n,m\ge M}\vert S_n - S_m\vert  \;\xrightarrow{M\to\infty}{a.s.}\; 0.
$$

Thus $\{S_n\}$ is a.s. Cauchy, hence convergent almost surely.

---

# **3. Kolmogorov’s Three–Series Theorem**

This is one of the most important convergence theorems for independent random variables.

Let $\{X_k\}_{k\ge1}$ be independent.  
Fix a truncation constant $A>0$, and define:

$$
Y_k = X_k \, \mathbf{1}_{\{\vert X_k\vert \le A\}},
\qquad
M_k = E[Y_k].
$$

The theorem gives necessary and sufficient conditions for the random series

$$
\sum_{k=1}^\infty X_k
$$
to converge almost surely.

### Theorem (Kolmogorov’s Three–Series Theorem)

The series $\sum_{k=1}^\infty X_k$ converges a.s. **iff** all three series below converge:

1. **Large jumps are rare:**
   $$
   \sum_{k=1}^\infty P(\vert X_k\vert  > A) < \infty.
   $$

2. **The expected truncated values sum:**
   $$
   \sum_{k=1}^\infty M_k
   \quad\text{converges}.
   $$

3. **The truncated variances sum:**
   $$
   \sum_{k=1}^\infty \operatorname{Var}(Y_k) < \infty.
   $$

These conditions do not depend on the choice of $A>0$.

---

## 4. Interpretation (from diagrams and notes on pages 1–2)

### Condition (1): “Rare large jumps”
The event $\vert X_k\vert >A$ must occur only finitely many times (Borel–Cantelli II).  
This ensures the sequence behaves like the truncated version except for finitely many terms.

### Condition (2): “Truncated drift converges”
Since the truncated series differs from the original series only on a finite set (from condition (1)), the sum of expectations must converge for the overall drift not to diverge.

### Condition (3): “Summable fluctuations”
This matches Theorem 2.5.3: if the **variances** of the truncated increments sum, then the truncated centered series

$$
\sum (Y_k - M_k)
$$

converges almost surely.

---

## 5. Proof Sketch (matching notes on pages 1–2)

Assume conditions (1)–(3).

- **(3)** implies  
  $$
  \sum_{k=1}^\infty (Y_k - M_k)
  \quad\text{converges a.s.}
  $$
  by the variance summability theorem proved above.

- **(2)** implies  
  $$
  \sum_{k=1}^\infty M_k
  \quad\text{converges},
  $$
  a deterministic series.

- **(1)** implies via Borel–Cantelli II that $\vert X_k\vert >A$ occurs only finitely often.  
  Thus:
  $$
  X_k = Y_k \quad\text{for all but finitely many }k.
  $$

Hence:

$$
\sum X_k
\quad\text{converges a.s.}
$$

Conversely, if $\sum X_k$ converges a.s., each of the three conditions must hold.

---

# **Cheat-Sheet Summary — Lecture 27**

- A central criterion:
  $$
  \sum \operatorname{Var}(X_n) < \infty
  \quad\Rightarrow\quad
  \sum X_n \text{ converges a.s.}
  $$

- The key idea:  
  Uniform tail probability  
  $$
  P(\sup_{m\ge M}\vert S_m - S_M\vert >\epsilon)
  $$
  goes to 0, making $\{S_n\}$ a.s. Cauchy.

- **Kolmogorov’s Three–Series Theorem:**  
  The series $\sum X_k$ converges a.s. **iff**:
  1. Large jumps occur only finitely often.  
  2. Truncated expectations are summable.  
  3. Truncated variances are summable.

This theorem is the *complete* classification of almost sure convergence for series of independent random variables.

