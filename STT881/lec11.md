# 11 — Uniform Integrability (UI)

Lecture 11 continues the theme of Uniform Integrability (UI), showing:

Why integrability of a single dominating function implies UI,

A classical counterexample showing UI does not always come from DCT hypotheses,

The main theorem relating UI + a.s. convergence to convergence of expectations,

Characterizations of UI and how to check it,

A very important sufficient condition: bounded in 
𝐿
𝑝
L
p
 for some 
𝑝
>
1
p>1 implies UI,

A two-part characterization: (i) bounded expectations, (ii) tight tails on sets of small probability.

We work on a probability space $(\Omega, \mathcal{F}, P)$ with $P(\Omega)=1$.

---

# 1. Basic Claim: Integrable Domination Implies Tail Vanishing

Suppose:
$$
Y \ge 0, \quad \mathbb{E}[Y] < \infty.
$$

**Claim:**  
$$
\mathbb{E}\big( Y \, \mathbf{1}_{\{Y > M\}} \big) \xrightarrow[M\to\infty]{} 0.
$$

### Reason (page 1):
- The sets $\{Y > M\}$ decrease to the empty set.
- Thus:
  $$
  Y\mathbf{1}_{\{Y > M\}} \downarrow 0 \quad \text{a.e.}
  $$
- By the Monotone Convergence Theorem (or Dominated Convergence since $Y \mathbf{1}_{\{Y>M\}} \le Y$):
  $$
  \mathbb{E}[Y\mathbf{1}_{\{Y>M\}}] \to 0.
  $$

This is the fundamental mechanism behind UI.

---

# 2. Definition of Uniform Integrability (UI)

A family $\{X_n\}_{n\ge 1}$ is **uniformly integrable** if:
$$
\phi(M) = \sup_{n\ge 1} \mathbb{E}\big[ |X_n| \mathbf{1}_{\{|X_n|>M\}} \big]
     \xrightarrow[M\to\infty]{} 0.
$$

The graphical note on **page 3** shows that UI prevents the “mass” of $X_n$ from drifting to arbitrarily large values at high magnitude.

---

# 3. Dominating Function Implies UI

**Observation (page 1):**  
If $|X_n| \le Y$ for all $n$ and $\mathbb{E}[Y] < \infty$, then:
$$
|X_n| \mathbf{1}_{\{|X_n| > M\}}
\le 
Y \mathbf{1}_{\{Y > M\}}.
$$

Thus
$$
\phi(M)
\le \mathbb{E}[Y\mathbf{1}_{\{Y>M\}}] \to 0.
$$

Hence:
$$
\boxed{
|X_n|\le Y\in L^1 \quad \Longrightarrow \quad \{X_n\} \text{ is UI}.
}
$$

---

# 4. A Counterexample: UI Without DCT Domination

On **page 1–2**, the notes give a classical counterexample showing UI does **not** imply existence of a dominating integrable $Y$, nor DCT.

Let $\Omega=[0,1]$ with Lebesgue measure.  
Define the disjoint intervals:
$$
I_n = \left(\frac{1}{2^{n+1}}, \frac{1}{2^n}\right].
$$

Define:
$$
X_n(x) = \frac{2^n}{n} \, \mathbf{1}_{I_n}(x).
$$

### Properties:

1. **Almost sure convergence:**  
   $$
   X_n(x) \to 0 \quad \text{a.s.}
   $$
   because the intervals move toward 0 and shrink.

2. **Expectations:**  
   $$
   \mathbb{E}[X_n] 
   = \frac{2^n}{n} \cdot |I_n|
   = \frac{2^n}{n} \cdot \frac{1}{2^{n+1}}
   = \frac{1}{2n}
   \to 0.
   $$

3. **UI holds:**  
   One checks that $\sup_n \mathbb{E}[X_n] < \infty$ and the tail mass goes to zero; hence $\{X_n\}$ is UI.

4. **But no DCT domination:**  
   A smallest dominating function would be:
   $$
   Y(x) = \sum_{n=1}^\infty \frac{2^n}{n} \mathbf{1}_{I_n}(x),
   $$
   and
   $$
   \mathbb{E}[Y]
   = \sum_{n=1}^\infty \frac{2^n}{n}\cdot \frac{1}{2^{n+1}}
   = \frac{1}{2} \sum_{n=1}^\infty \frac{1}{n}
   = \infty.
   $$
   So no integrable $Y$ dominates them.

Thus UI does **not** reduce to DCT.

---

# 5. Main Theorem: UI + a.s. Convergence ⇒ $L^1$ Convergence

As written on **pages 2–3**:

**Theorem.**  
If:

1. $X_n \to X$ a.s.,  
2. $\{X_n\}$ is UI,

then:
$$
\mathbb{E}|X_n - X| \to 0.
$$

### Consequences:

$$
\mathbb{E}[X_n] \to \mathbb{E}[X].
$$

This is the central reason UI is so important in probability theory.

---

# 6. Sufficient Condition: $L^p$–Boundedness Implies UI for $p>1$

From page 2:

If
$$
\sup_n \mathbb{E}|X_n|^p < \infty
\quad\text{for some } p>1,
$$
then $\{X_n\}$ is UI.

### Proof (as in notes):
For any $M>0$, by Hölder/Markov:
$$
\mathbb{E}\big(|X_n|\mathbf{1}_{\{|X_n|>M\}}\big)
\le
\mathbb{E}\left(\frac{|X_n|^p}{M^{p-1}}\right)
=
\frac{\mathbb{E}|X_n|^p}{M^{p-1}}
\le
\frac{C}{M^{p-1}}
\to 0.
$$

Thus:
$$
\boxed{
L^p \text{ boundedness for } p>1 \quad \Longrightarrow \quad \text{UI}.
}
$$

This condition appears frequently in martingale theory and in proving tightness of random variables.

---

# 7. A Deep Characterization of UI

From **pages 2–3**, we have the following equivalence:

A family $\{X_n\}\subset L^1$ is UI **iff**:

1. **Uniformly bounded expectations:**  
   $$
   \sup_n \mathbb{E}|X_n| < \infty.
   $$

2. **Tight control on small-probability sets:**  
   For every $\varepsilon>0$ there exists $\delta>0$ such that for every measurable set $A$ with $P(A)<\delta$,
   $$
   \sup_n \mathbb{E}\big(|X_n|\mathbf{1}_A\big) \le \varepsilon.
   $$

This version is extremely useful in probability theory (e.g., Prokhorov-type ideas and martingale convergence).

---

# 8. Corollaries

From **page 3**:

- If $\{X_n\}$ and $\{Y_n\}$ are UI, then $\{X_n + Y_n\}$ is UI.
- If $X_n \to X$ in $L^1$, then $\{X_n\}$ is UI.
- If $\sup_n \mathbb{E}|X_n| < \infty$ and $X=0$ with $\mathbb{E}|X_n|\to 0$, then $\{X_n\}$ is UI (detailed proof given in the notes).

---

# 9. Final Result of Lecture 11

The lecture concludes with:

> If $X_n \to X$ a.s. and $\{X_n\}$ is UI, then not only  
> $\mathbb{E}|X_n - X| \to 0$,  
> but also  
> $$
> \lim_{M\to\infty} \phi(M) = 0,
> $$
> confirming the family is uniformly integrable.

This completes the key structural properties of UI necessary for advanced probability.

