# 16 — Radon–Nikodym, Lebesgue Decomposition, and Kakutani


Goal: Prove the Radon–Nikodym theorem in the simple setting of measures on  
$(0,1], \mathcal{B}$, following Durrett §5.5.3, p. 206.

We work with two finite measures $\mu$ and $\gamma$, and define
$$
\rho = \frac{\mu + \gamma}{2}.
$$

---

## 1. Dyadic σ–fields and the martingale $X_n$

Define the dyadic intervals
$$
I_{n,k} = \left( \frac{k-1}{2^n}, \frac{k}{2^n} \right],\qquad k=1,\dots,2^n.
$$

Let
$$
\mathcal{F}_n = \sigma\{ I_{n,k} : 1 \le k \le 2^n\}
\quad\text{and}\quad 
X_n(t)= \frac{\mu(I_{n,k})}{\rho(I_{n,k})},\ t\in I_{n,k}.
$$

Facts:

1. $\{X_n,\mathcal{F}_n\}$ is a martingale in the probability space $((0,1],\mathcal{B},\rho)$.  
2. $0\le X_n \le 2$.  
3. By MGCT,
   $$
   X_n \to X \quad \rho\text{-a.s.}
   $$

---

## 2. Key identity relating $\mu$, $\gamma$, and $\rho$

Since $\rho = (\mu+\gamma)/2$, for any Borel $A$,
$$
\int_A X_n\, d\rho = \int_A X_n\, \frac{d\mu + d\gamma}{2}
= \frac12\left[\int_A X_n\, d\mu + \int_A X_n\, d\gamma\right].
$$

But by definition of $X_n$,
$$
\int_A X_n\, d\rho = \mu(A).
$$

Therefore,
$$
\mu(A)
= \frac12\left[\int_A X_n\, d\mu + \int_A X_n\, d\gamma\right].
$$

Solve for the term with $d\mu$:
$$
\int_A (2-X_n)\, d\mu = \int_A X_n\, d\gamma.
$$

---

## 3. Goal (intuition of Radon–Nikodym)

We want
$$
(2-X)\, d\mu = X\, d\gamma,
$$
which gives formally
$$
d\mu = \frac{X}{2-X}\, d\gamma,
$$
whenever $X<2$.  
If $X=2$ on a set, $\mu$ may have a singular component there.

Thus the RN derivative should be
$$
\frac{d\mu}{d\gamma} = \frac{X}{2-X} \quad\text{on } \{X<2\}.
$$

---

## 4. Dominated Convergence and Simple Functions

Let $Y_n = X_n/(2-X_n)$.  
On $\{X<2\}$, $Y_n\to Y := X/(2-X)$ a.s.

Then for any $A\in\mathcal{B}$,
$$
\mu(A) = \lim_{n\to\infty} \int_A Y_n\, d\gamma
       = \int_A Y\, d\gamma.
$$

This gives the Radon–Nikodym derivative:
$$
\frac{d\mu}{d\gamma} = Y.
$$

---

## 5. Lebesgue Decomposition via $X$

Define
$$
M_r(A) = \int_A Y\, d\gamma, 
\qquad
M_s(A) = \mu(A) - M_r(A).
$$

Then:

- $M_r \ll \gamma$,  
- $M_s \perp \gamma$,  
- $\mu = M_r + M_s$.

The singular part is supported on $\{X=2\}$, since $X=2$ is precisely where the formula for the density breaks down.

---

## 6. Example: Pure Point Mass

Example in notes:  
Let $\mu = \delta_{1/2}$.  
Then $X_n(t) = \mu(I_{n,k}) / \rho(I_{n,k})$ is only nonzero for intervals containing $1/2$.  
Limit $X = 2\cdot 1_{\{1/2\}}$.  
Thus all mass is singular: $M_s = \mu$, $M_r = 0$.

---

## 7. Kakutani Product Measure Criterion

Consider product measures:
$$
\mu = \bigotimes_{k=1}^\infty \mu_k, 
\quad
P = \bigotimes_{k=1}^\infty P_k.
$$

Define the finite–dimensional Radon–Nikodym approximations:
$$
Y_n = \prod_{k=1}^n \frac{d\mu_k}{dP_k}.
$$

Then $Y_n\to Y$ a.s., and exactly one of the following holds:

1. $E_P(Y)=0$: then  
   $$
   \mu \perp P.
   $$

2. $E_P(Y)=1$: then  
   $$
   \mu \ll P.
   $$

Kakutani’s criterion:

- Mutual absolute continuity iff  
  $$
  \prod_{k=1}^\infty E_P\left(\sqrt{\frac{d\mu_k}{dP_k}}\right) > 0.
  $$

- Mutual singularity iff  
  $$
  \prod_{k=1}^\infty E_P\left(\sqrt{\frac{d\mu_k}{dP_k}}\right) = 0.
  $$

This is exactly the statement on the last page of your notes.

---

# Summary

- Construct a martingale $X_n$ by dyadic partitioning.  
- Use MGCT to get limit $X$.  
- Show $(2-X)\, d\mu = X\, d\gamma$.  
- Obtain Radon–Nikodym derivative $d\mu/d\gamma = X/(2-X)$ on $\{X<2\}$.  
- Singular mass sits where $X=2$.  
- Kakutani's theorem characterizes absolute continuity vs. singularity for infinite product measures.

