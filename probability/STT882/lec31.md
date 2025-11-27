# 31 **Brownian Motion Construction Using Hilbert Spaces**

---

## Last Step: Karhunen–Loève Expansion–Style Construction

We represent Brownian motion on $[0,1]$ as

$$
B(t) = \sum_{k=0}^\infty S_k(t)\, Z_k,
$$

where

- $Z_k \overset{\mathrm{iid}}{\sim} N(0,1)$,
- $S_k(t)$ are special deterministic functions forming an orthonormal system in $L^2[0,1]$,
- The dyadic indexing uses  
  $$
  2^n \le k < 2^{n+1},\qquad k' = k - 2^n,\quad k'=0,1,\ldots,2^n-1.
  $$

For each dyadic block:

$$
0 \le t \le 1,\qquad
0 \le S_k(t) \le \frac{2^{-n/2}}{2}.
$$

### Covariance Check

$$
\sum_{k=0}^\infty S_k(t_1) S_k(t_2)
= t_1 \wedge t_2
= \operatorname{Cov}\big(B_{t_1}, B_{t_2}\big),
$$
and  
$$
E(B_t)=0.
$$

Thus the finite-dimensional distributions agree with standard Brownian motion.

---

## Need to Prove the Series is Continuous

We need to show:

$$
B(t)=\sum_{k=0}^{\infty} S_k(t) Z_k
\quad \text{has continuous sample paths}.
$$

### Basic Uniform Convergence Criterion

Suppose:

- $f_k \in C[0,1]$,
- $\max_{0\le x\le 1} |f_k(x)| \le a_k$,
- $\sum_{k=1}^\infty a_k < \infty$.

Then the series $\sum_{k=1}^\infty f_k(x)$ converges uniformly and defines a continuous function.

Apply to partial block sums:

$$
\sum_{k=2^n}^{2^{n+1}-1} S_k(t) Z_k
\le
\frac{C(\omega)}{2} \sqrt{n+1}\, 2^{-n/2} < \infty,
$$

because, from last time, for $\omega\in\Omega$,

$$
|Z_k(\omega)| \le C(\omega)\sqrt{\log k},\qquad k\ge 2,
$$
and if $2^n \le k < 2^{n+1}$,

$$
|Z_k(\omega)|\le C(\omega)\sqrt{n+1}.
$$

Since

$$
\sqrt{n+1}\,2^{-n/2}
$$

is absolutely summable, the series converges uniformly on $[0,1]$, giving *continuous* sample paths.

Thus the Hilbert–space expansion constructs Brownian motion.

---

# Next Section: Markov Processes  
## Markov Property for Brownian Motion

Let $t_0 \ge 0$. Consider the increment process

$$
X(h) = B(t_0 + h) - B(t_0), \qquad h\ge 0.
$$

### Distributional Properties

- $X(h) \sim N(0,h)$,
- $E[X(h)] = 0$,
- $\operatorname{Cov}(X(h_1), X(h_2)) = h_1 \wedge h_2$,
- $\{X(h)\}_{h\ge 0}$ has continuous sample paths.

Hence $\{X(h)\}_{h\ge 0}$ is **standard Brownian motion**, independent of $\mathcal{F}_{t_0}$.

Thus

$$
B(t_0 + h) = B(t_0) + X(h).
$$

---

# Canonical Setup

$$
\Omega = C[0,\infty), \qquad B_t(\omega)=\omega(t).
$$

Let

$$
\mathcal{F}^0_t = \sigma\{B_s : 0\le s\le t\},
$$
and let $W = P_0$ be Wiener measure.

For any $x\in\mathbb{R}$, define a shifted measure $P_x$ by

$$
P_x(A) = P_0(A - x),\qquad A\in \mathcal{F}.
$$

Then

$$
\text{Law}\{B(t_0 + h)\mid\mathcal{F}^0_{t_0}\}
= P_{B(t_0)}.
$$

---

# Shift Operator

For $s\ge 0$,

$$
\theta_s(\omega)(t)=\omega(s+t), \qquad t\ge 0.
$$

Then under $P_x$,

$$
\text{Law of } \{B(t_0+h)\}_{h\ge 0}
= \text{Law of } \theta_{t_0}(\omega)
= P_{B(t_0)}.
$$

---

# Filtration Regularity

Define the right-continuous modification

$$
\mathcal{F}^+_t = \bigcap_{s>t} \mathcal{F}^0_s.
$$

Then

- $\mathcal{F}^0_t \subset \mathcal{F}^+_t$,
- $\mathcal{F}^+_t$ is right-continuous,
- Typically one works with $\mathcal{F}_t = \mathcal{F}^+_t$.

---

# π–λ System Argument (Monotone Class Theorem)

Let $\mathcal{A}$ be a $\pi$-system of sets in $\Omega$.  
Let $\mathcal{H}$ be a class of random variables satisfying:

1. $A\in\mathcal{A} \Rightarrow 1_A\in\mathcal{H}$,
2. $f,g\in\mathcal{H} \Rightarrow f+g\in\mathcal{H}$,
3. If $f_n\in\mathcal{H}$, $f_n\ge 0$, $f_n\uparrow f$, and $f_n$ bounded, then $f\in\mathcal{H}$,
4. $1\in\mathcal{H}$.

Then

$$
\mathcal{H} \supset \{f\text{ bounded, measurable w.r.t. }\sigma(\mathcal{A})\}.
$$

This proves extensions of identities from simple function classes to all bounded measurable functions.

---
