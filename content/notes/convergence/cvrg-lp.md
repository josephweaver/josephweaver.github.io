## $L^p$ Convergence
$$
X_n \xrightarrow[n\to\infty]{L^p} X
\qquad (p \ge 1)
$$

### Definition

A sequence $X_n$ converges to $X$ in $L^p$ if
$$
\mathbb{E}\!\left[ |X_n - X|^p \right] \to 0.
$$

This defines a metric convergence in the Banach space $L^p$.

---

### Interpretation

$L^p$ convergence means:

> The $p$-th moment of the error $X_n - X$ vanishes.

It is a **strong, quantitative** notion of convergence that controls both
magnitude and probability of deviations.

Heuristically:
- $L^1$: average error goes to zero
- $L^2$: mean-square error goes to zero

---

### Relationship to Other Modes of Convergence

For $p \ge 1$,
$$
X_n \xrightarrow{L^p} X
\;\Rightarrow\;
X_n \xrightarrow{p} X.
$$

For $p > q \ge 1$,
$$
X_n \xrightarrow{L^p} X
\;\Rightarrow\;
X_n \xrightarrow{L^q} X.
$$

$L^p$ convergence does **not** imply almost sure convergence in general.

---

### How $L^p$ Convergence Typically Arises

#### 1. Dominated Convergence

If
- $X_n \to X$ a.s., and
- $|X_n - X|^p \le Y$ with $\mathbb{E}[Y] < \infty$,

then
$$
X_n \xrightarrow{L^p} X.
$$

This is the most common mechanism for proving $L^p$ convergence.

---

#### 2. Uniform Integrability (for $p=1$)

If
- $X_n \to X$ in probability, and
- $\{|X_n|\}$ is uniformly integrable,

then
$$
X_n \xrightarrow{L^1} X.
$$

This is a standard route in martingale and empirical process theory.

---

#### 3. Variance Control (for $p=2$)

If
$$
\mathbb{E}\!\left[(X_n - X)^2\right] \to 0,
$$
then
$$
X_n \xrightarrow{L^2} X.
$$

This is common in Hilbert space arguments and orthogonal decompositions.

---

## Special Case: $L^1$ Convergence

$$
X_n \xrightarrow{L^1} X
\quad \Longleftrightarrow \quad
\mathbb{E}|X_n - X| \to 0.
$$

### Interpretation

- Controls **expected absolute error**.
- Guarantees convergence of expectations:
  $$
  \mathbb{E}[X_n] \to \mathbb{E}[X].
  $$

### Key Tools
- Uniform integrability,
- Dominated convergence,
- Martingale convergence in $L^1$.

---

## Special Case: $L^2$ Convergence

$$
X_n \xrightarrow{L^2} X
\quad \Longleftrightarrow \quad
\mathbb{E}[(X_n - X)^2] \to 0.
$$

### Interpretation

- Controls **mean squared error**.
- Natural geometry: inner product space.

### Useful Identity

$$
\mathbb{E}[(X_n - X)^2]
=
\mathrm{Var}(X_n - X)
+
(\mathbb{E}[X_n - X])^2.
$$

This decomposition is often used in proofs.

### Key Tools
- Orthogonality and projections,
- Pythagorean identity,
- Conditional expectation as an $L^2$ projection.

---

### Common Pitfalls

- $X_n \xrightarrow{p} X$ does **not** imply $L^p$ convergence.
- Almost sure convergence alone is insufficient for $L^p$ convergence.
- $L^p$ convergence requires moment control.

---

### One-line Summary

$L^p$ convergence means the $p$-th moment of the error goes to zero; it implies convergence in probability and provides quantitative control, with $L^1$ governing expectations and $L^2$ governing mean-square error.
