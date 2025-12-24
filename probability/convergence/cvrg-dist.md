## Convergence in Distribution
$$
X_n \xrightarrow[n\to\infty]{d} X
$$

### Definition

A sequence $X_n$ converges in distribution to $X$ if
$$
F_{X_n}(x) \to F_X(x)
\quad \text{for all continuity points } x \text{ of } F_X,
$$
where $F_{X_n}$ and $F_X$ are the distribution functions of $X_n$ and $X$.

Equivalently (and more robustly):

For every bounded, continuous function $f$,
$$
\mathbb{E}[f(X_n)] \to \mathbb{E}[f(X)].
$$

This formulation is often the most useful in proofs.

---

### Interpretation

Convergence in distribution means:

> The distributions of $X_n$ converge to the distribution of $X$, even if the random variables themselves do not converge on a common probability space.

Key points:
- No pathwise or sample-wise meaning is required.
- $X_n$ and $X$ do **not** need to be defined on the same probability space.
- Only the laws matter.

Heuristically:
- a.s. convergence = paths converge
- in probability = values are usually close
- in distribution = histograms converge

---

### How Convergence in Distribution Typically Arises

#### 1. Central Limit Theorem (CLT)

The most common source.

If $X_1,X_2,\dots$ are i.i.d. with $\mathbb{E}[X_1]=\mu$ and $\mathrm{Var}(X_1)=\sigma^2<\infty$, then
$$
\sqrt{n}(\bar X_n - \mu)
\xrightarrow{d}
N(0,\sigma^2).
$$

Mental trigger: normalized sums $\Rightarrow$ CLT $\Rightarrow$ convergence in distribution.

---

#### 2. Slutsky’s Theorem

If
- $X_n \xrightarrow{d} X$, and
- $Y_n \xrightarrow{p} c$ (constant),

then
$$
X_n + Y_n \xrightarrow{d} X + c,
\qquad
X_n Y_n \xrightarrow{d} cX.
$$

This is a primary tool for manipulating limits in distribution.

---

#### 3. Continuous Mapping Theorem (CMT)

If
$$
X_n \xrightarrow{d} X
$$
and $f$ is continuous, then
$$
f(X_n) \xrightarrow{d} f(X).
$$

This is how nonlinear transformations of CLT limits are justified.

---

#### 4. Delta Method

If
$$
\sqrt{n}(X_n - \theta) \xrightarrow{d} N(0,\sigma^2)
$$
and $g$ is differentiable at $\theta$, then
$$
\sqrt{n}(g(X_n) - g(\theta))
\xrightarrow{d}
N\!\left(0, (g'(\theta))^2\sigma^2\right).
$$

This is a refined application of the Continuous Mapping Theorem.

---

### Additional Characterizations of Convergence in Distribution

#### Characteristic Functions (Lévy’s Continuity Theorem)

Let
$$
\varphi_{X_n}(t) = \mathbb{E}[e^{itX_n}], 
\qquad
\varphi_X(t) = \mathbb{E}[e^{itX}].
$$

Then
$$
X_n \xrightarrow{d} X
\quad \Longleftrightarrow \quad
\varphi_{X_n}(t) \to \varphi_X(t)
\quad \text{for all } t \in \mathbb{R}.
$$

This result is known as **Lévy’s Continuity Theorem**.

Characteristic functions are often used to:
- prove the Central Limit Theorem,
- analyze sums of independent random variables,
- establish Gaussian or stable limits without explicit densities.

Mental trigger: independence + sums + scaling ⇒ characteristic functions.

---

#### Discrete Special Case

If \(X_n\) and \(X\) are discrete random variables with countable support, then
$$
X_n \xrightarrow{d} X
\quad \Longleftrightarrow \quad
P(X_n = x) \to P(X = x)
\quad \text{for all } x.
$$

This criterion is **only valid in the purely discrete setting**.

It does not apply to continuous random variables, since in that case
$$
P(X = x) = 0 \quad \text{for all } x.
$$

Thus, pointwise convergence of probabilities is a special case, not a general definition of convergence in distribution.

### Important Caution

Convergence in distribution is **not** defined by pointwise probabilities in general.

Valid general characterizations are:
- convergence of distribution functions at continuity points,
- convergence of expectations against bounded continuous test functions,
- convergence of characteristic functions.

Pointwise convergence of probabilities applies only in the discrete case.



### Relationship to Other Modes of Convergence

- Strength hierarchy:
  $$
  X_n \xrightarrow{\text{a.s.}} X
  \;\Rightarrow\;
  X_n \xrightarrow{p} X
  \;\Rightarrow\;
  X_n \xrightarrow{d} X.
  $$

- Convergence in distribution does **not** imply convergence in probability.
- If the limit $X$ is a constant, then
  $$
  X_n \xrightarrow{d} c
  \;\Rightarrow\;
  X_n \xrightarrow{p} c.
  $$

---

### Expectations and Convergence in Distribution

Convergence in distribution **alone** does not imply
$$
\mathbb{E}[X_n] \to \mathbb{E}[X].
$$

To pass expectations through the limit, one needs:
- uniform integrability, or
- additional moment control.

This is a common source of mistakes.

---

### Key Facts to Internalize

- Convergence in distribution is the weakest standard mode of convergence.
- It is invariant under changes of probability space.
- It is the natural language of asymptotic theory (CLT, invariance principles).
- It is stable under continuous transformations and Slutsky-type operations.

---

### One-line Summary

Convergence in distribution means the laws of $X_n$ converge to the law of $X$, and it most commonly arises through the Central Limit Theorem, Slutsky’s theorem, and continuous mappings.
