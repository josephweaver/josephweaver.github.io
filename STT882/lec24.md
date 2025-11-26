# 24 — Backwards Martingales, Exchangeability, de Finetti


## Backwards Martingale (BMG)

We have a filtered probability space  
$(\Omega, \mathcal{F}_n, P)$ with  
$\mathcal{F}_0 \supset \mathcal{F}_1 \supset \mathcal{F}_2 \supset \cdots$  
(i.e., **decreasing filtration**).

A sequence $\{X_n, \mathcal{F}_n\}_{n\ge 0}$ is a **backwards martingale** if  

$$
E(X_n \mid \mathcal{F}_{n+1}) = X_{n+1}, \qquad n\ge 0.
$$

Assume $E|X_n|<\infty$ for all $n$.

### Backwards Martingale Convergence Theorem (BMCT)

If $\mathcal{F}_n \downarrow \mathcal{F}_\infty := \bigcap_{n\ge 0}\mathcal{F}_n$, then

$$
X_n \xrightarrow[n\to\infty]{\text{a.s.},\,L^1} X_\infty,
\quad\text{where}\quad 
X_\infty = E(X_0 \mid \mathcal{F}_\infty).
$$

Also,

$$
E(X_n) \to E(X_\infty).
$$

---

## Application 1: Dominated Convergence for Conditional Expectations

Suppose:

- $Y_n \to Y$ a.s.
- $|Y_n| \le Z$ with $E(Z)<\infty$.
- Filtration increases: $\mathcal{F}_n \uparrow \mathcal{F}_\infty$.

Then

$$
E(Y_n \mid \mathcal{F}_n) \xrightarrow[n\to\infty]{\text{a.s.}} E(Y \mid \mathcal{F}_\infty).
$$

To prove, add the step:

$$
E_{\mathcal{F}_n}(Y_n - Y) \to 0 \quad \text{a.s.}
$$

Let $W_n = Y_n - Y$.  
Then $|W_n| \le 2Z$ and $W_n \to 0$.  

Use:

$$
|E(W_n \mid \mathcal{F}_n)| \le E(|W_n|\mid \mathcal{F}_n)
       \le E\left( \sup_{k\ge N} |W_k| \mid \mathcal{F}_n \right)
       \xrightarrow[N\to\infty]{} 0.
$$

---

## Application 2: SLLN via Backwards Martingales

Let $\{\xi_k\}$ be i.i.d. with $E|\xi_1|<\infty$.  
Let $S_n=\sum_{k=1}^n \xi_k$.

Define the **tail σ-field**:

$$
\mathcal{F}_n = \sigma(S_n, S_{n+1}, \ldots).
$$

This is a decreasing filtration.  
By the Hewitt–Savage 0–1 law, $\mathcal{F}_\infty$ is trivial.

Compute:

$$
E(\xi_1 \mid \mathcal{F}_n) = \frac{S_n}{n}.
$$

Thus:

$$
\frac{S_n}{n} = E(\xi_1 \mid \mathcal{F}_n)
\quad\text{is a backwards martingale}.
$$

By BMCT:

$$
\frac{S_n}{n} \xrightarrow[n\to\infty]{\text{a.s.}} 
E(\xi_1 \mid \mathcal{F}_\infty) = E(\xi_1).
$$

This proves the **Strong Law of Large Numbers**.

---

## From i.i.d. to Exchangeable Sequences

A sequence $\{X_n\}$ is **exchangeable** if

$$
(X_{\pi_1}, X_{\pi_2},\ldots) \overset{d}{=} (X_1, X_2, \ldots)
$$

for every finite permutation $\pi$ of $\{1,\ldots,n\}$.

Define the **exchangeable σ-field**:

$$
\mathcal{E}_n = \{A : \pi(A) = A \text{ for all permutations of } 
\{1,\ldots,n\}\}.
$$

These satisfy:

$$
\mathcal{E}_n \downarrow \mathcal{E}_\infty.
$$

For any bounded measurable $\varphi : \mathbb{R}^k \to \mathbb{R}$, define the average over permutations:

$$
A_n(\varphi) = \frac{1}{n!}\sum_{\pi\in S_n}
\varphi(X_{\pi_1},\ldots,X_{\pi_k}).
$$

Then $A_n(\varphi)$ is a backwards martingale in $n$, hence:

$$
A_n(\varphi) \xrightarrow[n\to\infty]{\text{a.s.}} 
E\left( \varphi(X_1,\ldots,X_k)\mid \mathcal{E}_\infty \right).
$$

Given $\mathcal{E}_\infty$, the coordinates become **independent**:

$$
E_{\mathcal{E}_\infty}
\left[ \sum_{k=1}^n f_k(X_k) \right]
= \sum_{k=1}^n
E_{\mathcal{E}_\infty}(f_k(X_k)).
$$

This leads to **de Finetti’s theorem**:

---

## de Finetti’s Theorem

If $\{X_n\}$ is exchangeable, then conditional on  
$\mathcal{E}_\infty$, the sequence is **i.i.d.**

Example (Page 3 of the PDF):

For binary exchangeable sequences $X_n\in\{0,1\}$,

$$
P(X_1=\dots=X_k=1,\ X_{k+1}=\dots=X_n=0)
= \int_0^1 \theta^k (1-\theta)^{n-k} \, dF(\theta),
$$

where $F$ is some mixing distribution on $[0,1]$.

---

## Summary

- **Backwards martingales** converge a.s. and in $L^1$ to their limit in the tail σ-field.
- Using BMG gives a clean proof of the **SLLN**.
- Exchangeable sequences yield a backwards-martingale argument for symmetric expectations.
- The limit conditional σ-field $\mathcal{E}_\infty$ turns exchangeable sequences into **conditionally i.i.d.**, giving **de Finetti’s theorem**.

