# **Lecture 25 — SLLN Completion, Weighted Triangular Arrays, Random Series**

## 1. Completing the SLLN Proof

We restate the goal:

Let $\{X_k\}_{k\ge1}$ be iid with  
$$
E\vert X\vert  < \infty, \qquad E[X] = \mu.
$$
Define
$$
S_n = \sum_{k=1}^n X_k.
$$
Then
$$
\frac{S_n}{n} \xrightarrow{a.s.} \mu.
$$

### Recap of the steps

**Step 1: Truncation**

Define  
$$
Y_k = X_k \mathbf{1}_{\{\vert X_k\vert \le k\}}.
$$

Since  
$$
\sum_{k=1}^\infty P(\vert X_k\vert  > k)
  = \sum_{k=1}^\infty P(\vert X\vert >k)
  \le E\vert X\vert  < \infty,
$$
**Borel–Cantelli I** gives  
$$
P(X_k \ne Y_k\ \text{i.o.}) = 0.
$$

Therefore, for all sufficiently large $k$, $Y_k = X_k$ a.s.

Let  
$$
T_n = \sum_{k=1}^n Y_k.
$$

If we prove that $T_n/n \to \mu$, the same holds for $S_n/n$.

---

**Step 2: Second-moment summability**

We showed last time:

$$
\sum_{k=1}^\infty \frac{E[Y_k^2]}{k^2} < \infty.
$$

This is essential for controlling block variances.

---

**Step 3: Block decomposition**

Define “block increments” for $n\ge1$:

$$
U_n = \sum_{k=2^n+1}^{2^{n+1}}
      \frac{Y_k - E[Y_k]}{2^n}.
$$

Then (as on page 1 of the PDF):

$$
\sum_{n=1}^\infty E[U_n^2]
  = \sum_{n=1}^\infty
      \sum_{k=2^n+1}^{2^{n+1}}
         \frac{\mathrm{Var}(Y_k)}{(2^n)^2}
  \le 4 \sum_{k=1}^\infty \frac{E[Y_k^2]}{k^2}
  < \infty.
$$

Hence, by Borel–Cantelli or the Kolmogorov square-summability lemma:

$$
U_n \xrightarrow{a.s.} 0.
$$

Consequently,

$$
\frac{T_{2^n} - E[T_{2^n}]}{2^n}
= \sum_{m=1}^{n-1} \frac{2^m}{2^n} U_m
\xrightarrow{a.s.} 0.
$$

(Since $2^m/2^n = 2^{m-n}\to 0$ for fixed $m$, and the series is a.s. summable.)

---

**Step 4: Compute the limit of the means**

Because $Y_k = X_k \mathbf{1}_{\{\vert X_k\vert \le k\}}$,

$$
E[Y_k] = E(X; \vert X\vert \le k) \xrightarrow{k\to\infty} E[X] = \mu.
$$

Then

$$
\frac{E[T_{2^n}]}{2^n}
= \frac{1}{2^n} \sum_{k=1}^{2^n} E[Y_k]
\xrightarrow{n\to\infty} \mu.
$$

Combining the two limits:

$$
\frac{T_{2^n}}{2^n}
= \frac{E[T_{2^n}]}{2^n}
  + \frac{T_{2^n}-E[T_{2^n}]}{2^n}
\xrightarrow{a.s.} \mu.
$$

---

**Step 5: Extend to all $n$**

For any $2^n \le m \le 2^{n+1}$,

$$
\frac{T_{2^n}}{2^{n+1}}
 \le \frac{T_m}{m}
 \le \frac{T_{2^{n+1}}}{2^n}.
$$

Since

$$
\frac{T_{2^n}}{2^n} \to \mu,
\qquad
\frac{T_{2^{n+1}}}{2^{n+1}} \to \mu,
$$

we squeeze the middle term and conclude:

$$
\boxed{
\frac{T_m}{m} \to \mu \quad a.s.
}
$$

Finally, since $S_m = T_m$ for all large $m$ a.s.,

$$
\boxed{
\frac{S_m}{m} \xrightarrow{a.s.} \mu.
}
$$

---

# **2. Weighted Convergence of Triangular Arrays**

Your notes introduce a general weighted convergence lemma (yellow text, page 1):

Let $a_{n,k}\ge 0$ be a *triangular array* of weights, with

1. $a_{n,k}\ge0$,
2. $\sum_{k=1}^n a_{n,k} = 1$,
3. $a_{n,k} \to 0$ for each fixed $k$.

Let $b_k \to b$. Then

$$
\sum_{k=1}^n a_{n,k} b_k \xrightarrow{n\to\infty} b.
$$

**Idea:** These arrays behave like approximate identities.  
This lemma is implicitly used in the argument converting block-convergence into full convergence.

---

# **3. Convergence of Random Series**

### Tail σ–fields

Given $\{X_k\}$, define the tail σ–field:

$$
\mathcal{F}_{[n,\infty)} = \sigma(X_n, X_{n+1}, \dots).
$$

Then

$$
\mathcal{T} = \bigcap_{n=1}^\infty \mathcal{F}_{[n,\infty)}
$$

is the **tail σ–field**.

### Characterization of convergence of ∑X_k

The event

$$
\{S_n \text{ converges}\} 
= \left\{
\forall \epsilon>0\ \exists N\ 
\text{such that } \vert S_l-S_m\vert <\epsilon\ 
\text{ for all } l>m\ge N
\right\}
$$

is a tail event: it depends only on $\{X_k:k\ge N\}$.

Hence it belongs to $\mathcal{T}$.

When the $X_k$ are iid, Kolmogorov’s 0–1 law applies:  
**the event of convergence of a random series has probability 0 or 1.**

---

### Example 1 (page 2)

Let $A_n$ be events such that

$$
X_n = \mathbf{1}_{A_n}.
$$

Then

$$
\sum X_n \text{ converges}
\quad\Longleftrightarrow\quad
\mathbf{1}_{A_n} \text{ occurs only finitely often}.
$$

Thus this reduces to Borel–Cantelli.

---

### Example 2

If $\sum E\vert X_n\vert  <\infty$ and the $X_n$ are independent, then

$$
\sum X_n \quad\text{converges a.s.}
$$

This is the classical Kolmogorov convergence criterion for random series.

---

# **Cheat-Sheet Summary — Lecture 25**

- The SLLN is obtained by:
  1. Truncation at level $k$: $Y_k = X_k1_{\{\vert X\vert \le k\}}$.
  2. BC I ensures truncation differs only finitely often.
  3. Prove $\sum E[Y_k^2]/k^2<\infty$.
  4. Use block decomposition $U_n$ to show $T_{2^n}/2^n \to \mu$.
  5. Squeeze intermediate values to conclude $S_n/n \to \mu$ a.s.

- Weighted triangular array lemma:  
  If weights sum to 1 and vanish on fixed indices, they preserve limits.

- Convergence of random series is a **tail event**, hence 0–1 when iid.

