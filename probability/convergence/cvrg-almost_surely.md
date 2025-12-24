## Almost Sure Convergence (a.s.)

$$
X_n \xrightarrow[n\to\infty]{\text{a.s.}} X
$$

### Definition

Almost sure convergence means
$$
P\!\left(
\lim_{n\to\infty} X_n = X
\right) = 1.
$$

Equivalently,
$$
P\!\left(
\limsup_{n\to\infty} |X_n - X| > 0
\right) = 0.
$$

An equivalent ε–formulation, useful for proofs, is:
$$
\forall \varepsilon > 0,\quad
P\!\left(
|X_n - X| > \varepsilon \text{ infinitely often}
\right) = 0.
$$

This formulation connects directly to Borel–Cantelli arguments.

---

### Interpretation

Almost sure convergence means:

> Pointwise convergence for almost every outcome, except on a null set.

That is, there exists a null set $N$ with $P(N)=0$ such that
$$
X_n(\omega) \to X(\omega)
\quad \text{for all } \omega \notin N.
$$

Key points to internalize:
- The exceptional set may depend on the sequence.
- No uniformity over $\omega$ is required.
- The null set is allowed to be different for different limits.

Almost sure convergence is stronger than convergence in probability, but weaker than uniform convergence.

---

### How Almost Sure Convergence Typically Arises

#### 1. Borel–Cantelli arguments

If, for every $\varepsilon > 0$,
$$
\sum_{n=1}^\infty P(|X_n - X| > \varepsilon) < \infty,
$$
then
$$
P(|X_n - X| > \varepsilon \text{ i.o.}) = 0,
$$
and hence $X_n \to X$ almost surely.

Mental trigger: summable tail probabilities imply a.s. convergence.

This mechanism underlies:
- Kolmogorov’s two- and three-series theorems,
- truncation arguments,
- many martingale convergence proofs.

---

#### 2. Strong Law of Large Numbers (SLLN)

For i.i.d. random variables with finite mean,
$$
\frac{1}{n}\sum_{k=1}^n X_k
\xrightarrow{\text{a.s.}}
\mathbb{E}[X_1].
$$

This is a standard black-box source of a.s. convergence.

Mental trigger: i.i.d. variables + averages + finite mean.

---

#### 3. Pathwise (sample-path) arguments

One shows convergence for each fixed $\omega$, except possibly on a null set, using deterministic analysis tools such as:
- monotonicity,
- continuity of sample paths,
- explicit bounds holding pointwise.

Common in stochastic process problems (e.g. Brownian motion).

---

#### 4. Martingale convergence

If $(M_n,\mathcal{F}_n)$ is a martingale with
$$
\sup_n \mathbb{E}|M_n| < \infty,
$$
then
$$
M_n \to M \quad \text{a.s.}
$$

This provides another major route to almost sure convergence.

---

### Key Facts to Remember

- Strength hierarchy:
  $$
  X_n \xrightarrow{\text{a.s.}} X
  \;\Rightarrow\;
  X_n \xrightarrow{p} X
  \;\Rightarrow\;
  X_n \xrightarrow{d} X.
  $$

- Almost sure convergence alone does not justify exchanging limits and expectations; this requires additional structure such as monotonicity (MCT), domination (DCT), or uniform integrability (UI).

- Each almost sure statement comes with its own null set.

- Almost sure convergence describes eventual behavior: for almost every outcome,
  the sequence eventually stays close to the limit.

---

### One-line Summary

Almost sure convergence means sample-path convergence except on a null set, and it most often arises via Borel–Cantelli arguments, the Strong Law of Large Numbers, martingale convergence, or direct pathwise analysis.

