# 8 **Hewitt–Savage 0–1 Law, Symmetric Difference Basics, Conditioning**

---

## 1. Basics of Symmetric Difference

Let $A, B, C$ be events. Recall the symmetric difference
$$
A \triangle B = (A \cap B^c) \cup (A^c \cap B).
$$

### (1) Triangle Property  
$$
P(A \triangle B) \le P(A \triangle C) + P(C \triangle B).
$$

### (2) Convergence in Symmetric Difference  
If
$$
P(A_n \triangle A) \to 0,
$$
then  
$$
P(A_n) \to P(A)
$$
and  
$$
P(A_n \cap A) \to P(A).
$$

### (3) Two sequences converging to the same event  
If  
$$
P(A_n \triangle A) \to 0 \quad\text{and}\quad P(B_n \triangle A) \to 0,
$$
then  
$$
P(A_n \cap B_n) \to P(A).
$$

### Proof sketch (from board):
$$
P(A_n \triangle A)
 = P(A_n) - P(A_n \cap A)
 + P(A) - P(A_n \cap A)
 \to 0
$$
implies each term converges to the correct limit.

---

## 2. Hewitt–Savage 0–1 Law

Let $\{X_k\}_{k\ge 1}$ be iid random variables.  
Let
$$
A \in \sigma(X_1, X_2, \ldots)
$$
be a **permutable event**:

> **Definition.**  
> $A$ is permutable if  
> $$
> \pi(A) = A \quad\text{for every finite permutation }\pi.
> $$

### Theorem (Hewitt–Savage 0–1 Law)
If $A$ is permutable, then  
$$
P(A) \in \{0,1\}.
$$

### Example  
Take  
$$
A = \bigl\{ \limsup_{n\to\infty} S_n > 55 \bigr\},
$$
where $S_n = \sum_{k=1}^n X_k$.  
This event does not change if you permute finitely many $X_k$,  
so $P(A) \in \{0,1\}$.

---

## 3. Proof Sketch of Hewitt–Savage (from lecture)

Choose approximations  
$$
A_n \in \sigma(X_1,\dots,X_n)
\quad\text{such that}\quad
P(A_n \triangle A) \to 0.
$$

Since $A_n \to A$ in symmetric difference:
$$
P(A_n) \to P(A).
$$

If $A$ is permutable, choose a finite permutation $\pi_n$ that moves  
$\{1,\dots,n\}$ to $\{n+1,\dots,2n\}$.

Then:
$$
P(\pi_n(A_n) \triangle A) = P(A_n \triangle A) \to 0.
$$

Because $\pi_n(A_n)$ and $A_n$ depend on disjoint sets of iid variables,
they are **independent**, and:
$$
P(\pi_n(A_n) \cap A_n)
= P(\pi_n(A_n))P(A_n)
= P(A_n)^2
\to P(A)^2.
$$

But also,
$$
P(\pi_n(A_n) \cap A_n) \to P(A).
$$

Thus,
$$
P(A) = P(A)^2
\quad\Rightarrow\quad P(A)\in\{0,1\}.
$$

---

## 4. Beginning of Conditional Expectation (Durrett, Ch. 5)

We work on a probability space $(\Omega, \mathcal{F}_0, P)$  
with $\mathcal{F} \subset \mathcal{F}_0$.

Let $X$ be integrable, $E|X|<\infty$.

### Definition  
A random variable $Y$ is **the conditional expectation of $X$ given $\mathcal{F}$** if:

1. $Y$ is $\mathcal{F}$-measurable.
2. For all $A \in \mathcal{F}$,
   $$
   E[X \mathbf{1}_A] = E[Y \mathbf{1}_A].
   $$

Notation: $Y = E(X\mid \mathcal{F})$.

### Useful Equivalent Form  
For every bounded $\mathcal{F}$-measurable $Z$,
$$
E[XZ] = E[YZ].
$$

---

## 5. Examples & Properties

### Uniqueness (a.s.)
If $Y$ and $Y'$ both satisfy the definition, then  
$$
Y = Y' \quad\text{a.s.}
$$

### Example 1  
If $X$ is already $\mathcal{F}$-measurable, then
$$
E(X\mid \mathcal{F}) = X.
$$

### Example 2  
If $X$ is independent of $\mathcal{F}$, then
$$
E(X\mid \mathcal{F}) = E(X).
$$

**Proof sketch:**  
For any bounded $Z \in \mathcal{F}$,
$$
E(XZ) = E(X)E(Z) = E(E(X)Z).
$$
Thus $E(X)$ satisfies the defining property.

---

## 6. Radon–Nikodym Viewpoint

Given measure space $(\Omega,\mathcal{F}_0)$.  
Let $\mu$ be sigma-finite and absolutely continuous w.r.t $P$:
$$
\mu \ll P.
$$

If $A \in \mathcal{F}_0$ and $P(A)=0$, then $\mu(A)=0$.

### Density Example  
If $(X,Y)$ has joint density $f_{X,Y}(x,y)$, then
$$
f_{Y\mid X=x}(y) = \frac{f_{X,Y}(x,y)}{f_X(x)}
$$
and
$$
E(Y \mid X=x) = \int_{-\infty}^{\infty} y\, f_{Y\mid X=x}(y)\,dy.
$$

---

## End of Lecture 9

