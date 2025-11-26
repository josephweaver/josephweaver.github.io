# 13 — Upcrossing Lemma, Doob's Inequality, and MGCT
STT 882  
Feb 12, 2025

---

## Upcrossing Lemma (Doob)
Let $\{X_n, \mathcal{F}_n\}_{n\ge 0}$ be a submartingale.  
Fix $a < b$.

Define a sequence of stopping times:
- $T_0 = 1$
- $T_{2k-1} = \inf\{n > T_{2k-2} : X_n \le a\}$, for $k \ge 1$
- $T_{2k}   = \inf\{n > T_{2k-1} : X_n \ge b\}$

The number of upcrossings of $[a,b]$ before time $n$ is:
$$
U_n^{a,b} = \sup\{k : T_{2k} \le n\}.
$$

### Upcrossing Bound
$$
(b-a)\,E[U_n^{a,b}] 
    \le E[(X_n-a)^+] - E[(X_0-a)^+]
    \le E[X_n^+] + |a|.
$$

(See diagram in notes illustrating two upcrossings.)

---

## Doob's Inequality (Submartingale)
If $\{X_n\}$ is a submartingale, then for any $\lambda > 0$,
$$
\lambda\, P\left(\sup_{k\le n} X_k \ge \lambda\right) 
    \le E[X_n^+].
$$

A sketch of the proof uses the upcrossing lemma and predictable processes.

---

## Predictable Process $H_m$
Define:
$$
H_m = \sum_{k\ge 1} 
\left( 
    \mathbf{1}_{\{T_{2k}\ge m\}} 
    - \mathbf{1}_{\{T_{2k-1} > m\}}
\right).
$$

- $H_m$ is measurable with respect to $\mathcal{F}_{m-1}$.  
- Therefore $H_m$ is **predictable**.

Using integration-by-parts for discrete stochastic integrals:
$$
(b-a) U_n^{a,b} \le (H\cdot X)_n.
$$

---

## Issue With Downcrossings
If we downward-cross, we “re-enter the market”.  
Fix with truncated process:
$$
Y_k = a + (X_k - a)^+
= 
\begin{cases}
X_k, & X_k > a,\\
a,   & X_k \le a.
\end{cases}
$$

Then:
- $ \{Y_k\} $ is also a submartingale.
- Upcrossings of $X$ correspond to modified upcrossings of $Y$.

Thus,
$$
(b-a) U_n^{a,b}(X) \le (H \cdot Y)_n.
$$

Define $K_m = 1 - H_m$.  
Then:
$$
(H\cdot Y)_n + (K\cdot Y)_n = Y_n - Y_0.
$$
$$
E[(K\cdot Y)_n] \ge 0,\qquad (K\cdot Y)_0=0.
$$

Thus,
$$
(b-a) E[U_n^{a,b}] 
    \le E[Y_n - Y_0].
$$

---

# Martingale Convergence Theorem (MGCT)

Let $\{X_n,\mathcal{F}_n\}$ be a submartingale.  
Assume:
$$
\sup_n E[X_n^+] < \infty.
$$

Then:
1. $X_n \to X$ a.s.
2. $E|X| < \infty$.

---

## Example 1 — Simple Symmetric Random Walk

Let
$$
S_n = \sum_{k=1}^n \varepsilon_k,
\qquad 
P(\varepsilon_k = \pm 1)=1/2,
\qquad S_0 = 0.
$$

Let
$$
T = \inf\{n : S_n = 1\}.
$$

The stopped process $\{S_{T \wedge n}\}$ is a submartingale and
$$
\sup_n E[(S_{T\wedge n})^+] \le 1.
$$

Thus, by MGCT:
$$
S_{T\wedge n} \xrightarrow{a.s.} S_T = 1,
\qquad 
P(T < \infty) = 1.
$$

But:
$$
E(S_{T\wedge n}) = 0 \quad\forall n,
\qquad 
E(S_T) = 1.
$$

So $\{S_{T\wedge n}\}$ is **not uniformly integrable (UI)**.

---

## Example 2 — Exponential Martingale

Let $Z_k$ i.i.d. $N(0,1)$.  
Define:
$$
S_n = \sum_{k=1}^n Z_k,
\qquad 
Y_n = e^{S_n - \frac{n}{2}}.
$$

Using the mgf of the normal:
$$
E[e^{Z_1}] = e^{1/2}.
$$

Compute:
$$
E[Y_n|\mathcal{F}_{n-1}] 
= Y_{n-1} E[e^{Z_n - 1/2}]
= Y_{n-1}.
$$

Thus $\{Y_n\}$ is a nonnegative martingale.

- By MGCT: $Y_n \to Y$ a.s.
- Since $E(Y_n)=1$, the limit satisfies $E(Y)=1$.

But:
$$
Y_n 
= e^{S_n - n/2}
= e^{n\left(\frac{S_n}{n} - \frac12\right)}.
$$

By the Strong Law of Large Numbers:
$$
\frac{S_n}{n} \to 0 \quad a.s.
$$

Hence:
$$
Y_n = e^{-n/2 + o(n)} \to 0 \quad a.s.
$$

Thus:
$$
Y = 0 \quad \text{a.s.}
$$
but
$$
E(Y)=1.
$$

**Conclusion:** $\{Y_n\}$ is **not uniformly integrable**.

---

# Summary
- The upcrossing lemma provides control over oscillations of a submartingale.
- Doob’s inequality links the supremum of a submartingale to its terminal value.
- MGCT guarantees almost sure convergence under a mild integrability condition.
- However, without **uniform integrability**, expectation may not pass to the limit.

