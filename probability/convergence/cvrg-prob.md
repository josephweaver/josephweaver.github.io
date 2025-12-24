
## Convergence in Probability
$$
X_n \xrightarrow[n\to\infty]{p} X
$$

### Definition

A sequence $X_n$ converges to $X$ in probability if
$$
\forall \varepsilon > 0,\quad
P(|X_n - X| > \varepsilon) \to 0
\quad \text{as } n \to \infty.
$$

This means that for any fixed tolerance $\varepsilon$, the probability that $X_n$ deviates from $X$ by more than $\varepsilon$ becomes negligible.

---

### Interpretation

Convergence in probability means:

> The sequence is *usually close* to the limit, but not necessarily eventually close along almost every sample path.

Key contrasts with almost sure convergence:
- No single null set where convergence holds forever.
- Deviations may occur infinitely often, but with vanishing probability.
- This is a **distribution-level** notion, not a pathwise one.

Heuristically:
- a.s. convergence = “eventually always close”
- in probability = “close with high probability”

---

### How Convergence in Probability Typically Arises

#### 1. Variance going to zero (Chebyshev)

If
$$
\mathrm{Var}(X_n) \to 0
\quad \text{and} \quad
\mathbb{E}[X_n] \to \mu,
$$
then
$$
X_n \xrightarrow{p} \mu.
$$

This is the most common mechanism behind the **Weak Law of Large Numbers**.

Mental trigger: shrinking variance ⇒ convergence in probability.

---

#### 2. Weak Law of Large Numbers (WLLN)

If $X_1,X_2,\dots$ are i.i.d. with $\mathbb{E}[X_1]=\mu<\infty$, then
$$
\frac{1}{n}\sum_{k=1}^n X_k
\xrightarrow{p}
\mu.
$$

This captures stabilization of averages without pathwise guarantees.

---

#### 3. Almost sure convergence implies probability convergence

If
$$
X_n \xrightarrow{\text{a.s.}} X,
$$
then automatically
$$
X_n \xrightarrow{p} X.
$$

This implication is often used implicitly when downgrading modes of convergence.

---

#### 4. Slutsky-type arguments

If
- $X_n \xrightarrow{p} X$, and
- $Y_n \xrightarrow{p} c$ (constant),

then
$$
X_n + Y_n \xrightarrow{p} X + c,
\qquad
X_n Y_n \xrightarrow{p} cX.
$$

Convergence in probability is stable under algebraic operations.

---

### Relationship to Other Modes of Convergence

- Strength hierarchy:
  $$
  X_n \xrightarrow{\text{a.s.}} X
  \;\Rightarrow\;
  X_n \xrightarrow{p} X
  \;\Rightarrow\;
  X_n \xrightarrow{d} X.
  $$

- Convergence in probability does **not** imply almost sure convergence.
- Convergence in distribution does **not** imply convergence in probability unless the limit is constant.

---

### Expectations and Convergence in Probability

Convergence in probability **alone** does not justify
$$
\mathbb{E}[X_n] \to \mathbb{E}[X].
$$

To exchange limits and expectations, one needs additional structure:
- Uniform integrability, or
- Dominated convergence via a subsequence argument.

---

### Key Facts to Internalize

- Convergence in probability controls likelihood of deviation, not paths.
- It is the natural mode of convergence for LLNs and Slutsky arguments.
- It behaves well under continuous transformations (via the Continuous Mapping Theorem).
- It is weaker than almost sure convergence but stronger than convergence in distribution.

---

### One-line Summary

Convergence in probability means the sequence is close to the limit with high probability, and it typically arises from variance control, the Weak Law of Large Numbers, or as a consequence of almost sure convergence.
