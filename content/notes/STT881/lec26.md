# **Lecture 26 — Kolmogorov’s 0–1 Law and Maximal Inequalities**

This lecture introduces Kolmogorov’s 0–1 Law, Kolmogorov’s maximal inequality, and Lévy’s maximal inequality for symmetric random walks.

## 1. Kolmogorov’s 0–1 Law

Let $\{X_i\}_{i\ge1}$ be independent random variables.

### Tail σ–Fields
For each $n\ge1$, define the tail σ–field

$$
\mathcal{F}_{[n,\infty)} = \sigma(X_n, X_{n+1},\dots).
$$

Define the **tail σ–field**

$$
\mathcal{I} = \bigcap_{n=1}^\infty \mathcal{F}_{[n,\infty)}.
$$

### Theorem (Kolmogorov 0–1 Law)
If $A\in \mathcal{I}$, then

$$
P(A) \in \{0,1\}.
$$

Thus tail events occur with probability either zero or one.

---

### Sketch of the Proof (as in notes, page 1)

For each $n$,

- $\mathcal{F}_n = \sigma(X_1,\dots,X_n)$,
- $\mathcal{F}_{[n+1,\infty)} = \sigma(X_{n+1}, X_{n+2},\dots)$.

Because the variables are independent,

$$
\mathcal{F}_n \ \text{and}\  \mathcal{F}_{[n+1,\infty)}
\quad\text{are independent.}
$$

Since $\mathcal{I}\subseteq\mathcal{F}_{[n+1,\infty)}$,
$\mathcal{I}$ is independent of $\mathcal{F}_n$ for every $n$.

Furthermore,

$$
\sigma(X_1, X_2,\dots)
= \sigma\left(\bigcup_n \mathcal{F}_n\right)
$$

so $\mathcal{I}$ is independent of itself:

$$
A\in\mathcal{I}
\ \Rightarrow\ 
P(A\cap A)=P(A)P(A),
$$

so $P(A)=P(A)^2$.  
Hence $P(A)=0$ or $1$.

---

### Example
Let $S_n = \sum_{k=1}^n X_k$.  
The event
$$
\{S_n \text{ converges}\}
$$
is a tail event, so the probability of convergence is **0 or 1** (no intermediate values).

---

## 2. Kolmogorov’s Maximal Inequality

Let $\{X_i\}_{1\le i\le n}$ be independent, mean‐zero variables with finite variances:

$$
E[X_i]=0,\qquad E[X_i^2]<\infty.
$$

Let

$$
S_k = \sum_{i=1}^k X_i,\qquad k=1,\dots,n.
$$

### Theorem (Kolmogorov Maximal Inequality)
For any $x>0$,

$$
P\Big(\max_{1\le k\le n} \vert S_k\vert  \ge x\Big)
\le \frac{E[S_n^2]}{x^2}.
$$

This is **stronger than Chebyshev's inequality**, because it controls the *maximum* of partial sums.

---

### Proof (following your notes, pages 1–2)

Let

$$
A_k = \big\{ \vert S_k\vert \ge x,\ \vert S_j\vert <x \text{ for } j<k \big\}.
$$

The events $A_k$ are disjoint and

$$
\bigcup_{k=1}^n A_k = \left\{\max_{1\le k\le n}\vert S_k\vert \ge x\right\}.
$$

Compute:

$$
E[S_n^2]
= \sum_{k=1}^n \int_{A_k} S_n^2\, dP
\ge x^2 \sum_{k=1}^n P(A_k)
= x^2\, P\left(\max_{1\le k\le n}\vert S_k\vert \ge x\right).
$$

Why the inequality holds:

On $A_k$, the decomposition $S_n = S_k + (S_n - S_k)$ gives:

$$
E\big[S_k(S_n-S_k) \mathbf{1}_{A_k}\big]
= E\big[S_k \mathbf{1}_{A_k}\big]\, E[S_n-S_k]
= 0,
$$

using independence and $E[S_n-S_k]=0$.

Thus

$$
E[S_n^2]
\ge \sum_k \int_{A_k} S_k^2\, dP
\ge x^2 \sum_k P(A_k),
$$

as desired.

---

## 3. Lévy’s Maximal Inequality (Symmetric Case)

Let $\{X_k\}_{1\le k\le n}$ be independent and **symmetric**:

$$
X_k \stackrel{d}{=} -X_k,
$$

equivalently $P(X_k \ge 0) \ge \tfrac12$.

Let $S_k = X_1 + \cdots + X_k$.

### Claim (from notes, pages 2–3)

$$
P\left(\max_{1\le k\le n} S_k \ge t\right)
\le 2\, P(S_n \ge t),\qquad t>0.
$$

And also

$$
P\left(\max_{1\le k\le n} \vert S_k\vert \ge t\right)
\le 2\, P(\vert S_n\vert \ge t).
$$

These inequalities are central tools in proving the LIL and many fluctuation results.

---

### Proof outline

Use symmetry:  
$S_n - S_k = X_{k+1}+\dots+X_n$ is independent of $S_k$, and symmetric.

Key steps (see page 3 diagram):

1.  
   $$
   \{\max_k S_k \ge t\}
   = \bigcup_k \{S_k\ge t,\ S_j<t \text{ for } j<k\}.
   $$

2. On the event $\{S_k\ge t,\ S_j<t\ \forall j<k\}$, by symmetry,

   $$
   P(S_n - S_k \ge 0) = \frac12.
   $$

3. Replace indicators using independence:

   $$
   P(\max_k S_k \ge t)
   \le 2\, P(S_n\ge t).
   $$

A parallel argument gives the two-sided inequality.

---

# **Cheat-Sheet Summary — Lecture 26**

- **Kolmogorov 0–1 Law:** Any tail event for independent variables has probability 0 or 1.
- **Maximal inequality (Kolmogorov):**  
  $$
  P(\max_{k\le n}\vert S_k\vert \ge x) \le E[S_n^2]/x^2.
  $$
- **Lévy maximal inequality (symmetric case):**  
  $$
  P(\max_{k\le n} S_k \ge t) \le 2 P(S_n \ge t).
  $$
  $$
  P(\max_{k\le n} \vert S_k\vert \ge t) \le 2 P(\vert S_n\vert \ge t).
  $$

These inequalities are foundational for the **Law of the Iterated Logarithm** and more advanced results.

