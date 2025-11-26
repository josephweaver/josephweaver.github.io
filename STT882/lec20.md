# 20 — L² Martingales, BCII+, Polya Scheme, Extensions
STT 882  
March 8, 2025

## Setup: L² Martingales
Let  
- $X_0 = 0$  
- $\{X_n, \mathcal{F}_n\}_{n\ge 0}$ be a martingale  
- $E(X_n^2) < \infty$

Define increments  
$$
D_k = X_k - X_{k-1}
$$
and the predictable increasing process
$$
A_n = \sum_{k=1}^n E(D_k^2 \mid \mathcal{F}_{k-1}), \qquad A_0 = 0.
$$

Then
- $A_n$ is $\mathcal{F}_{n-1}$-measurable,
- $A_n \uparrow A_\infty$,
- $X_n^2 = M_n + A_n$ is the Doob decomposition.

Doob’s $L^2$ inequality:
$$
E(A_\infty) = E\!\left( \sup_{n\ge0} |X_n|^2 \right) \le 4 E(A_\infty).
$$

---

## Convergence of Series Using Martingales
Let
$$
X_n = \sum_{k=1}^n (1_{B_k} - P_k),
$$
where $B_k \in \mathcal{F}_k$ and $P_k = P(B_k \mid \mathcal{F}_{k-1})$.

Then $X_n$ is a martingale with increments  
$$
D_k = 1_{B_k} - P_k, \qquad E(D_k \mid \mathcal{F}_{k-1}) = 0.
$$

Variance:
$$
E(D_k^2 \mid \mathcal{F}_{k-1}) = P_k(1 - P_k).
$$

Thus
$$
A_n = \sum_{k=1}^n P_k(1-P_k).
$$

---

# Extended Borel–Cantelli II (BCII+)
If $B_k \in \mathcal{F}_k$, then  
$$
\{B_k \text{ i.o.}\}
\quad=\quad
\left\{ \sum_{k=1}^\infty P_k = \infty \right\}
\quad \text{a.s.}
$$

More precisely:

### If
$$
\sum_{k=1}^\infty P_k(1-P_k) < \infty,
$$
then  
$$
\sum_{k=1}^\infty (1_{B_k} - P_k)
\quad\text{converges a.s.}
$$

### If
$$
A_\infty = \sum_{k=1}^\infty P_k(1-P_k) = \infty,
$$
then using SLLN for martingales,
$$
\frac{X_n}{A_n} \xrightarrow[n\to\infty]{\text{a.s.}} 0,
$$
hence
$$
\frac{\sum_{k=1}^n 1_{B_k}}{\sum_{k=1}^n P_k} \xrightarrow[n\to\infty]{\text{a.s.}} 1.
$$

---

## Where Is This Used? Polya Scheme

### Classical Polya Urn
Initial:
- $r$ red,  
- $g$ green.

Each draw:
1. Draw one ball.
2. Observe its color.
3. Replace it *and add $c$* balls of the same color.

Let  
- $G_n =\#$ green after $n$ steps  
- $R_n =\#$ red after $n$ steps  
- Total: $G_n + R_n = g + r + nc$

The fraction of greens:
$$
X_n = \frac{G_n}{G_n + R_n}.
$$

Conditioning on $\mathcal{F}_{n}$:
$$
P(B_{n+1}\text{ is green}) = X_n.
$$

Thus $\{X_n\}$ is a martingale.

As $n\to\infty$,
$$
X_n \xrightarrow{\text{a.s.}} X,
$$
where
$$
X \sim \mathrm{Beta}\!\left(\frac{g}{c},\,\frac{r}{c}\right).
$$

---

## Another Example: Friedman’s Urn  
Same philosophy but with slightly altered reinforcement (add 1 to opposite color).  
Still:
- Define indicators $D_n = 1_{B_n}$.
- Show $X_n = G_n/(G_n + R_n)$ is a martingale.
- Use BCII+ to show almost sure convergence.

---

## Doob $L^2$ Maximal Inequality (Alternate Version)
For an $L^2$ martingale $\{X_n\}$:
$$
E\!\left( \sup_{n\ge 0} |X_n| \right)
\le
3\, E\!\left( \sqrt{A_\infty} \right).
$$

### Corollary
If $E(\sqrt{A_\infty}) < \infty$, then:
1. $X_n \to X$ a.s. (MGCT)
2. $E|X_n - X| \to 0$ (DCT + UI)

---

## Extension of Wald’s First Equation

Let $\{\xi_k\}$ be iid with:
- $E(\xi_k)=0$,
- $E(\xi_k^2) < \infty$.

Let the stopping time $T$ satisfy:

### If $\mathbb{E}(T)<\infty$
then
$$
E(S_T) = 0,
\qquad S_T = \sum_{k=1}^T \xi_k.
$$

### New version:
Even if **$E(T)=\infty$** but  
$$
E\sqrt{T} < \infty,
$$
then **still**
$$
E(S_T)=0.
$$

Reason:
- $S_{T\wedge n}$ is uniformly integrable because  
  $$
  A_{T\wedge n} = \sigma^2 (T\wedge n),
  $$
  so
  $$
  E\sqrt{A_\infty} = \sigma\, E\sqrt{T} < \infty.
  $$

Thus
$$
E(S_T) = \lim_{n\to\infty} E(S_{T\wedge n}) = 0.
$$

---

## Summary
- Extended BCII shows when $\sum P_k = \infty$ implies $B_k$ infinitely often.
- Polya urn process uses martingale fraction-of-green to derive Beta-limit.
- Doob $L^2$ inequality gives strong control of martingale maxima.
- Wald’s equation extends to cases with infinite expectation of $T$, provided square-root integrability.

