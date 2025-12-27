# **Lecture 22 — Extended Borel–Cantelli II and Applications**

## 1. Extended Borel–Cantelli II (Pairwise Independence Version)

**Theorem (Durrett Thm. 2.3.8).**  
Let $\{A_k\}_{k\ge 1}$ be **pairwise independent** events (not necessarily mutually independent).  
Assume

$$
\sum_{k=1}^\infty P(A_k) = \infty.
$$

Then

$$
\frac{\sum_{m=1}^n \mathbf{1}_{A_m}}
     {\sum_{m=1}^n P(A_m)}
\xrightarrow{a.s.} 1.
$$

This is a **stronger form** of BC II: it replaces full independence with only pairwise independence.

---

## 2. Example: Pairwise Independent but Not Mutually Independent

The notes use a classical symmetric Bernoulli example:

Let $r_1, r_2, r_3$ satisfy

- $r_1, r_2$ i.i.d. symmetric Bernoulli,  
- define $r_3 = r_1 \cdot r_2$.

Then:

- Any pair $(r_i, r_j)$ is independent.
- But $(r_1, r_2, r_3)$ are **not** jointly independent.

For example (page 1):

$$
P(r_1=1, r_2=1, r_3=-1) = 0,
$$

but marginal probabilities suggest it would be $1/8$ if they were mutually independent.

This example shows why theorem 2.3.8 is genuinely stronger than classical BC II.

---

## 3. Proof of Extended BC II (Pairwise Independent Case)

Let

$$
S_n = \sum_{m=1}^n \mathbf{1}_{A_m}, \qquad
\mu_n = \mathbb{E}[S_n] = \sum_{m=1}^n P(A_m).
$$

Since indicators are pairwise independent:

$$
\mathrm{Var}(S_n)
= \sum_{m=1}^n P(A_m)\bigl(1-P(A_m)\bigr)
\le \mu_n.
$$

By Chebyshev:

$$
P(\vert S_n - \mu_n\vert  > \delta \mu_n)
\le \frac{\mathrm{Var}(S_n)}{\delta^2 \mu_n^2}
\le \frac{1}{\delta^2 \mu_n}.
$$

Since $\mu_n \to \infty$, the RHS is summable along a subsequence.

---

## 4. Constructing a Subsequence $\{n_k\}$

Goal: choose $n_k$ such that

$$
k^2 \le \mu_{n_k} \le k^2 + 1.
$$

Why can we do this?

- $\mu_n$ increases to $\infty$,
- increments satisfy $0 \le \mu_{n+1} - \mu_n = P(A_{n+1}) < 1$,
- so $\mu_n$ crosses each interval $[k^2, k^2+1)$.

Thus the sequence $\{n_k\}$ exists.

---

## 5. Apply Chebyshev to the Subsequence

For this subsequence:

$$
P\left(
   \vert S_{n_k} - \mu_{n_k}\vert 
   > \delta(k^2 + 1)
 \right)
\le
\frac{1}{\delta^2 (k^2 + 1)}.
$$

Since

$$
\sum_{k=1}^\infty \frac{1}{k^2 + 1} < \infty,
$$

Borel–Cantelli I gives:

$$
\frac{S_{n_k} - \mu_{n_k}}{k^2 + 1} \xrightarrow{a.s.} 0.
$$

Thus:

$$
\frac{S_{n_k}}{\mu_{n_k}} \xrightarrow{a.s.} 1.
$$

Given that

$$
\frac{k^2}{k^2+1} \le \frac{\mu_{n_k}}{k^2+1} \le 1,
$$

we conclude:

$$
\frac{S_{n_k}}{\mu_{n_k}} \xrightarrow{a.s.} 1.
$$

---

## 6. Passing from Subsequence to Full Sequence

For any $n_k \le n \le n_{k+1}$:

$$
\frac{S_{n_k}}{\mu_{n_{k+1}}}
\le
\frac{S_n}{\mu_n}
\le
\frac{S_{n_{k+1}}}{\mu_{n_k}}.
$$

The left and right ratios both converge to 1 almost surely.  
This traps the middle ratio, so:

$$
\frac{S_n}{\mu_n} \xrightarrow{a.s.} 1.
$$

This completes the proof of the extended BC II.

---

## 7. Application: **Record Values**

Let $\{X_i\}$ iid with a continuous distribution.  
Define the **record event**:

$$
A_k = \{ X_k > \max(X_1, \dots, X_{k-1}) \}.
$$

Classical fact:  
Because all orderings of $\{X_1,\dots,X_k\}$ are equally likely, the probability that $X_k$ is the new maximum is

$$
P(A_k) = \frac{1}{k}.
$$

Thus

$$
\sum_{k=1}^\infty P(A_k)
= \sum_{k=1}^\infty \frac{1}{k}
= \infty.
$$

### Pairwise independence of $\{A_k\}$

Your notes show (pages 2–3) that:

- $A_j$ and $A_k$ (with $j<k$) are pairwise independent.
- Intuitively: whether $X_j$ is the max among the first $j$ values is unrelated to whether $X_k$ is the max among the first $k$ values.

Formally:

$$
P(A_j \cap A_k)
= \frac{(j-1)!(k-j)!}{k!}
= \frac{1}{j k}
= P(A_j) P(A_k).
$$

Hence the extended BC II applies.

### Conclusion

$$
\frac{\#\{\text{records up to } n\}}{\sum_{k=1}^n 1/k}
= \frac{\sum_{k=1}^n \mathbf{1}_{A_k}}
       {H_n}
\xrightarrow{a.s.} 1,
$$

where $H_n$ is the $n$-th harmonic number.

Since $H_n \sim \log n$,

$$
\boxed{
\text{Number of record values up to } n \sim \log n \quad (a.s.).
}
$$
