# Lecture 21 — Doob’s $L^p$ Inequality, BDG Inequality, and Uniform Integrability  
STT 882  
March 10, 2025

## Doob’s $L^p$ Inequality ($p>1$)

Let $\{X_n, \mathcal{F}_n\}_{n\ge 0}$ be an $L^p$ martingale with  
$$
E(|X_n|^p) < \infty,\quad p>1.
$$

Then
$$
E(|X_n|^p)
\;\le\;
E\!\left(\max_{1\le k\le n} |X_k|^p\right)
\;\le\;
C_p\, E(|X_n|^p),
$$
where $C_p = \left(\frac{p}{p-1}\right)^p$.

This is the standard Doob $L^p$ maximal inequality.

---

## Burkholder–Davis–Gundy (BDG) Inequality ($p\ge 1$)

Let $D_k = X_k - X_{k-1}$ be the martingale differences.  
Then for $p\ge 1$,
$$
\tilde C_p\, 
E\!\left( \left( \sum_{k=1}^n D_k^2 \right)^{p/2} \right)
\;\le\;
E\!\left( \max_{1\le k\le n} |X_k|^p \right)
\;\le\;
C_p\,
E\!\left( \left( \sum_{k=1}^n D_k^2 \right)^{p/2} \right).
$$

Special case $p=2$:
$$
E\left(\sum_{k=1}^n D_k^2\right)
= E(X_n^2),
$$
because martingale differences are orthogonal:
$$
E(D_k D_j)=0,\quad k\ne j.
$$

---

## Section 5: $p=1$ — Uniform Integrability and $L^1$ Convergence  
*(Durrett §5.5, p. 220)*

### Definition: Uniform Integrability (UI)

A family $\{X_n\}$ is **uniformly integrable** if  
$$
\lim_{\lambda\to\infty} \sup_n E(|X_n|\,; |X_n|>\lambda) = 0.
$$

Equivalent condition:

1. $\sup_n E|X_n| < \infty$, and  
2. For every $\varepsilon>0$ there exists $\delta>0$ such that  
   $$
   P(A) < \delta \quad \Rightarrow\quad 
   \sup_n E(|X_n|; A) < \varepsilon.
   $$

---

## Theorem (B): Conditional Expectations Form a UI Martingale

Let $X$ be an integrable r.v. on $(\Omega,\mathcal{F},P)$.  
Let $\mathcal{F}_n \uparrow \mathcal{F}_\infty \subseteq \mathcal{F}$.

Then  
$$
X_n := E(X \mid \mathcal{F}_n)
$$
is a **UI martingale**.

---

## Examples

1. If $\sup_n E|X_n|^p < \infty$ for some $p>1$, then $\{X_n\}$ is UI.  
2. If $|X_n|\le Z$ for some integrable $Z$, then $\{X_n\}$ is UI.

---

## Key Equivalence Theorem (TFAE)

Assume $X_n \xrightarrow{a.s.} X$ and $E|X_n|<\infty$.  
The following are equivalent:

1. $\{X_n\}$ is uniformly integrable.  
2. $X_n \xrightarrow{L^1} X$ and $E|X|<\infty$.  
3. There exists an integrable $X$ such that $X_n = E(X \mid \mathcal{F}_n)$ for all $n$  
   *(i.e., $\{X_n\}$ is the Doob martingale of $X$)*.

### Sketch of implications

- **(1 ⇒ 2):** Standard result: UI + $X_n\to X$ a.s. implies $X_n\to X$ in $L^1$.  
- **(2 ⇒ 3):** For any $A\in \mathcal{F}_n$:  
  $$
  E(X_n; A) = E(X; A)
  $$
  so $X_n = E(X \mid \mathcal{F}_n)$.  
- **(3 ⇒ 1):** Follows from Theorem (B).

---

## Additional Notes

- The lecture indeed continues directly from Lecture 21, expanding the Uniform Integrability discussion and proving the UI ⇔ $L^1$ convergence ⇔ Doob-martingale-of-$X$ equivalence.
- On page 1 of the handwritten notes, the transition from Doob $L^p$ inequality to BDG is explicit.  
- Pages 2 and 3 include the complete UI argument and the TFAE theorem.

