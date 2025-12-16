# 19 — L² Martingales, Doob Decomposition, L² Inequality, and Kronecker Lemma

## L² Martingales

Let  
- $\{X_n, \mathcal{F}_n\}_{n\ge 0}$ be a martingale,  
- $X_0 = 0$,  
- $E(X_n^2) < \infty$ for all $n\ge 1$.

A submartingale is convex if $x \mapsto x^2$ is convex.  
We apply Doob’s decomposition to $X_n^2$.

---

## Doob Decomposition

Because $x \mapsto x^2$ is convex,  
$$
E(X_n^2 \mid \mathcal{F}_{n-1}) \ge X_{n-1}^2,
$$
so $\{X_n^2\}$ is a submartingale.

Hence there exist unique predictable $A_n$ and martingale $M_n$ such that  
$$
X_n^2 = M_n + A_n,\qquad A_0 = 0,\qquad A_n \uparrow,\quad A_n \in \mathcal{F}_{n-1}.
$$

The predictable quadratic variation is
$$
A_n = \sum_{k=1}^n E\big[(X_k - X_{k-1})^2 \mid \mathcal{F}_{k-1}\big].
$$

Taking expectations:  
$$
E(A_n) = E(X_n^2).
$$

Since $A_n \uparrow$, define  
$$
A_\infty = \lim_{n\to\infty} A_n \quad\text{a.s.}
$$
By MCT,
$$
E(A_\infty) = \sup_n E(X_n^2).
$$

> #### **Durrett Probability 4e - Theorem 5.2.10 Doob's Decomposition.**
>
> Any submartingale $X_n$, $n\ge 0$, can be written in a unique way as $X_n=M_n+A_n$, where $M_n$ is a martingale and $A_n$ is a predictable increasing sequence with $A_0=0$. 

---

## Doob’s $L^2$ Inequality

For martingales,
$$
E\left( \sup_{1\le k\le n} X_k^2 \right)
  \le 4\, E(X_n^2)
  = 4\,E(A_n).
$$

This is Doob’s $L^2$ maximal inequality (special case of the general $L^p$ inequality for $p>1$).

> **Durrett Probablity 4e - Theorem 5.4.3. $L^p$ Maximum Inequality**
>
> If $X_n$ is a submartingale then or $1<p<\infty$,
> $$
   \mathbb{E}(\bar{X}^p_n)\le (\frac{p}{1-p})^p \mathbb{E}(X^+_n)^p
> $$
> Consequently, if $Y_n$ is a martingale and $Y_n^*=\max_{0\le m\le n}\vert Y_n\vert^p$,
> $$
   \mathbb{E}(Y^*_n)\le (\frac{p}{1-p})^p \mathbb{E}[\vert Y_n\vert^p]
> $$

---

## Convergence Theorem (No independence assumed)

Let
$$
X_n = \sum_{k=1}^n D_k,
$$
where $D_k = X_k - X_{k-1}$.

Then $X_n$ converges a.s. to a finite r.v. on the event $\{A_\infty < \infty\}$.



### Proof Sketch
Define the stopping time
$$
T_a = \inf\{n : A_{n+1} > a\}.
$$

Then
$$
E\left(\sup_{m\le n} X_{m\wedge T_a}^2\right)
   \le 4E(A_{n\wedge T_a})
   \le 4a.
$$

Thus $\{X_{n\wedge T_a}\}$ is bounded in $L^2$, hence Cauchy, hence convergent a.s.  
Letting $a\to\infty$ yields convergence on $\{A_\infty<\infty\}$.

---

## Kronecker Lemma (Martingale Difference Version)

Let $f(x)\ge 1$ be increasing with  
$$
\int_1^\infty \frac{dx}{f(x)^2} < \infty.
$$

Let $\{D_k\}$ be martingale differences and define
$$
Y_n = \frac{1}{f(A_n)}\sum_{k=1}^n D_k.
$$

Then on $\{A_\infty = \infty\}$,
$$
Y_n \to 0 \quad\text{a.s.}
$$

> #### **Durrett Probability 4e - Theorem 2.5.5. Kronecker's Lemma.**
> 
> If $a_n\uparrow\infty$ and $\sum_{n=1}^\infty x_n/a_n$ converges then 
> $$
a^{-1}_n\sum_{m=1}^n x_m\to 0.
> $$

### Sketch
Expand using the martingale transform idea:
$$
E\big[Y_{n+1} - Y_n \mid \mathcal{F}_n\big]
   = 0.
$$

Compute quadratic variation and use MCT plus the integrability condition
$$
\sum \frac{E(D_k^2 \mid \mathcal{F}_{k-1})}{f(A_k)^2} < \infty.
$$

---

## Example (Application)

Suppose

- $E(D_k)=0$,
- $\sum_k E(D_k^2)=\infty$,
- $\sum_k E(D_k^2)/f(A_k)^2 < \infty$.

Then  
$$
\frac{\sum_{k=1}^n D_k}{f(A_n)} \to 0 \quad\text{a.s.}
$$

---

## Back to Borel–Cantelli II (martingale version)

If $B_n \in \mathcal{F}_n$, let $P_n = P(B_n \mid \mathcal{F}_{n-1})$.  
Then
$$
\sum_n P_n = \infty
\quad\Longleftrightarrow\quad
B_n \text{ i.o.}
$$

This mirrors earlier results from Lecture 16–17 but in the martingale framework.

---
