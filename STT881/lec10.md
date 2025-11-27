

# 10 — MCT for Series, Fatou Applications, Change of Variables, Uniform Integrability

Lecture 10 covers four major topics:

An application of MCT to infinite series of non-negative measurable functions,

A tricky Fatou-based argument showing 
𝐿
𝑝
L
p
 convergence from pointwise convergence + norm convergence,

The change-of-variable formula for pushforward measures,

Uniform integrability, its definition, and its key convergence theorem


---

# 1. Example: MCT Applied to Infinite Series

Suppose $g_k \ge 0$ are measurable.  
Define the partial sums:
$$
S_n(x) = \sum_{k=1}^n g_k(x).
$$

Clearly (page 1 of PDF):
$$
S_{n+1}(x) = S_n(x) + g_{n+1}(x) \ge S_n(x).
$$

Thus $S_n \uparrow S := \sum_{k=1}^\infty g_k$.

**By the Monotone Convergence Theorem:**
$$
\int S_n \, d\mu
\;\uparrow\;
\int S \, d\mu.
$$

Since $\int S_n = \sum_{k=1}^n \int g_k$, we obtain:
$$
\boxed{
\int \Big( \sum_{k=1}^\infty g_k \Big)\, d\mu
=
\sum_{k=1}^\infty \int g_k\, d\mu.
}
$$

This gives **term-by-term integration for non-negative series**.

---

# 2. A Fatou-Type Trick for Proving $L^p$ Convergence

We are given (page 1):

- $p \ge 1$,
- $f_n \to f$ almost everywhere,
- $\\vert f_n\\vert _p \to \\vert f\\vert _p < \infty$.

Goal:
$$
\\vert \,f_n - f\,\\vert _p \to 0.
$$

This is not trivial: convergence in $L^p$ does *not* generally follow from a.e. convergence and convergence of norms, unless convexity is exploited.

### Step 1: A convexity inequality

Page 1 contains the inequality:
$$
\left( \frac{\vert x\vert  + \vert y\vert }{2} \right)^p
\le \frac{\vert x\vert ^p + \vert y\vert ^p}{2}, \qquad p \ge 1.
$$

Algebraic rearrangement gives:
$$
2^{p-1}\,( \vert x\vert ^p + \vert y\vert ^p ) - \vert x - y\vert ^p \ge 0,
\qquad x,y \in \mathbb{R}.
$$

Apply this to $x = f$, $y = f_n$:
$$
2^{p-1}(\vert f\vert ^p + \vert f_n\vert ^p) - \vert f - f_n\vert ^p \ge 0.
$$

Thus for all $n$:
$$
\vert f - f_n\vert ^p
\le
2^{p-1}(\vert f\vert ^p + \vert f_n\vert ^p).
$$

### Step 2: Apply Fatou to the difference

Rearrange to match Fatou’s lemma (page 1):
$$
2^{p}\,\vert f\vert ^p
\le
\liminf_{n\to\infty}
\left[
2^{p-1}(\vert f\vert ^p + \vert f_n\vert ^p) - \vert f - f_n\vert ^p
\right].
$$

Integrate and use Fatou:
$$
2^{p}\int \vert f\vert ^p
\le
\liminf_n 
\left[
2^{p-1} \big( \int\vert f\vert ^p + \int\vert f_n\vert ^p \big)
- \int \vert f - f_n\vert ^p
\right].
$$

But $\\vert f_n\\vert _p^p = \int\vert f_n\vert ^p \to \\vert f\\vert _p^p$. Plugging this in yields the right-hand side approaching:
$$
2^{p} \int \vert f\vert ^p - \limsup_n \int \vert f - f_n\vert ^p.
$$

Hence:
$$
2^{p}\int\vert f\vert ^p
\le
2^{p}\int\vert f\vert ^p - \limsup_n \int\vert f - f_n\vert ^p.
$$

This forces:
$$
\limsup_n \int\vert f - f_n\vert ^p = 0,
$$
so
$$
\boxed{
\\vert f_n - f\\vert _p^p = \int\vert f_n - f\vert ^p \to 0.
}
$$

Thus *convergence of norms + pointwise a.e. convergence implies full $L^p$ convergence*.

---

# 3. Change of Variable Formula via Pushforward Measures

Your notes (page 2) emphasize that **there is no general change-of-variables formula without defining the correct measure on the target space**.

Setup:

- $(\Omega_1,\mathcal{F}_1,\mu_1)$,
- $(\Omega_2,\mathcal{F}_2)$,
- $\varphi: \Omega_1 \to \Omega_2$ measurable.

We want a formula such that:
$$
\int_{\Omega_1} f(\varphi(\omega))\, d\mu_1(\omega)
=
\int_{\Omega_2} f(y)\, d\mu_2(y).
$$

But **what is** $\mu_2$?  
From page 2:

### Definition (Pushforward measure)
$$
\boxed{
\mu_2(B) = \mu_1(\varphi^{-1}(B)), \quad B \in \mathcal{F}_2.
}
$$

Then for all measurable $f \ge 0$:
$$
\int_{\Omega_1} f\circ\varphi \ d\mu_1
=
\int_{\Omega_2} f\ d\mu_2.
$$

This is the **valid general change-of-variables formula**.

### Example (from the handwritten notes)
Let:

- $\Omega_1 = \Omega$ (probability space),
- $\Omega_2 = \mathbb{R}$,
- $\varphi = X$ a random variable.

Then the pushforward is:
$$
\mu_2 = P_X,
\qquad
P_X((a,b]) = P(a < X \le b).
$$

If $F_X$ is the CDF,  
$$
P_X((a,b]) = F_X(b) - F_X(a).
$$

Thus:
$$
\mathbb{E}[f(X)] = \int_{\mathbb{R}} f(x)\, dP_X(x),
$$
and if $P_X$ is absolutely continuous with density $f_X$, this becomes:
$$
\mathbb{E}[f(X)] = \int_{\mathbb{R}} f(x) f_X(x) \, dx.
$$

---

# 4. Uniform Integrability (UI)

Your notes (page 3) introduce the **Definition**:

Let $(\Omega,\mathcal{F},P)$ be a probability space.  
A family $\{X_n\}$ is **uniformly integrable** (UI) if:
$$
\phi(M)
:= 
\sup_{n\ge 1} \mathbb{E}\left( \vert X_n\vert  \, \mathbf{1}_{\{\vert X_n\vert  \ge M\}} \right)
\longrightarrow 0
\quad\text{as } M\to\infty.
$$

Intuition (illustrated by the shaded diagram on page 3):  
UI controls the **tails** uniformly in $n$.  
The area above $M$ is forced to vanish uniformly.

### Key Result

If:

- $X_n \to X$ almost surely,  
- $\{X_n\}$ is uniformly integrable,

then:
$$
\boxed{
\mathbb{E}\vert X_n - X\vert  \to 0.
}
$$

Equivalently:
$$
\mathbb{E}[X_n] \to \mathbb{E}[X].
$$

### Sufficient Condition for UI

If there exists an integrable random variable $Y$ such that:
$$
\vert X_n\vert  \le Y \quad\text{for all } n,
$$
then $\{X_n\}$ is UI.

This is the classical **dominating integrable envelope** criterion.

---

# 5. Connecting DCT and UI

The notes remark (bottom of page 2 and page 3):

- DCT requires a single dominating integrable function $g$.  
- UI generalizes DCT to sequences where domination need not hold pointwise.  
- UI + a.e. convergence implies convergence in $L^1$, hence convergence of expectations.

Thus:

\vert  Tool \vert  Condition \vert  Guarantees \vert 
\vert ------\vert -----------\vert ------------\vert 
\vert  **DCT** \vert  $\vert X_n\vert \le g$ and $X_n\to X$ a.e., $g\in L^1$ \vert  $\mathbb{E}X_n\to\mathbb{E}X$ \vert 
\vert  **UI** \vert  tail control only \vert  $\mathbb{E}X_n\to\mathbb{E}X$ \vert 

