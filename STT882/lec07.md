# 7 — H–S 0–1 Law, Applications, and Return-Time Results

---

## 1. Behavior of Boundary-Hitting Times

Let $\{X_k\}_{k\ge 1}$ be iid with  
- $E(X_1)=0$,  
- $E(X_1^2)=1$.

Define partial sums  
$$
S_n=\sum_{k=1}^n X_k.
$$

For $c>0$, define the hitting time
$$
T_c=\inf\{n\ge 1 : S_n > c\sqrt{n}\}.
$$

### Theorem
$$
E[T_c] =
\begin{cases}
\infty, & c\ge 1,\\[6pt]
<\infty, & c<1.
\end{cases}
$$

### First Step: Show $P(T_c<\infty)=1$ for all $c>0$

Using the CLT,
$$
\frac{S_n}{\sqrt{n}} \Rightarrow N(0,1).
$$

Hence for large $n$,
$$
P\left(\left|\frac{S_n}{\sqrt{n}}\right| > c\right)
\approx 
P(|Z|>c) > 0.
$$

Thus,
$$
P\left(\left|\frac{S_n}{\sqrt{n}}\right| > c \ \text{i.o.}\right) > 0.
$$

Since  
$$
\bigcup_{k\ge 1}\left\{\left|\frac{S_k}{\sqrt{k}}\right| > c\right\}
$$
is increasing in $k$,  
$$
P\left(\left|\frac{S_k}{\sqrt{k}}\right| > c\right) > 0
\quad\Rightarrow\quad
P(T_c<\infty)=1.
$$

---

## 2. Proving $E(T_c)=\infty$ for $c\ge 1$

Assume by contradiction that $E(T_c)<\infty$.

By **Wald’s Second Equation**,
$$
E(S_T^2)=E(X_1^2)\,E(T)=E(T).
$$

But at the stopping time $T_c$,
$$
S_{T_c} > c\sqrt{T_c} 
\quad\Rightarrow\quad 
S_{T_c}^2 > c^2 T_c.
$$

Then
$$
E(S_T^2) > E(c^2 T_c) = c^2 E(T_c) \ge E(T_c).
$$

This contradicts Wald’s equation, which gave  
$$
E(S_T^2) = E(T_c).
$$

Thus:
$$
E(T_c)=\infty \quad \text{for } c\ge 1.
$$

---

## 3. Hewitt–Savage 0–1 Law

Let $\{X_k\}$ be iid.  
Let $A$ be a **permutable event**, meaning:

> $\pi(A)=A$ for every finite permutation $\pi$ of the coordinates.

Then:
$$
P(A)\in\{0,1\}.
$$

### Examples

#### (1) Tail events  
Do not change if you permute a finite number of coordinates.  
Thus tail events satisfy the 0–1 law.

#### (2) Events of the form  
$$
\{ S_n \in B \ \text{i.o.}\}.
$$  
This describes behavior “infinitely often,” which is also permutation-invariant.

---

## 4. Applications of Hewitt–Savage 0–1 Law

Let $S_n=\sum_{k=1}^n X_k$.

There are four possible long-run behaviors for a random walk:

1. **$X_1\equiv 0$ a.s.**  
   Then $S_n=0$ for all $n$.

2. **$S_n \to +\infty$ a.s.**  
   Happens when $E(X_1)>0$ (by SLLN).

3. **$S_n \to -\infty$ a.s.**  
   Happens when $E(X_1)<0$.

4. **Oscillation:**  
   $$
   -\infty = \liminf_{n\to\infty} S_n
   < 
   \limsup_{n\to\infty} S_n
   = \infty.
   $$

Example for (4):

- If $X\stackrel{d}{=}-X$ (symmetric),
- and $E(X)=0$,  
- and $E(X^2)<\infty$,  
- and $X\not\equiv 0$,  

then
$$
P(S_n>\sqrt{n} \ \text{i.o.}) > 0.
$$

Since the event is permutable, H–S 0–1 law gives probability 1:
$$
P(S_n>\sqrt{n} \ \text{i.o.})=1.
$$

---

## 5. Consequences and Tail-Limit Argument

By H–S,
$$
\lim_{n\to\infty} S_n = C \quad\text{a.s., where } C\in[-\infty,\infty].
$$

Let  
$$
S_n' = S_{n+1} - X_1 = \sum_{k=2}^{n+1} X_k.
$$

Since $\{S_n'\}$ and $\{S_n\}$ have the same distribution,
$$
\limsup_{n\to\infty} S_n' = \limsup_{n\to\infty} S_n = C.
$$

Thus:
$$
C - X_1 = C.
$$

If $|C|<\infty$, this forces  
$$
X_1 = 0 \ \text{a.s.}
$$

Thus unless $X_1\equiv 0$, we must have:  
$$
C\in\{-\infty,\infty\},
$$  
and similarly for $\liminf$.

---

## 6. Proof Components for H–S 0–1 Law

Symmetric difference metric:
$$
A\Delta C\subseteq (A\Delta B)\cup (B\Delta C).
$$

If  
$$
P(A_n\Delta A)\to 0,
$$
then:

1. $P(A_n)\to P(A)$  
2. $P(A_n\cap A)\to P(A)$

If also  
$$
P(B_n\Delta A)\to 0,
$$
then
$$
P(A_n\cap B_n)\to P(A).
$$

This is used to show invariance under finite permutations forces probability $0$ or $1$.

---

# End of Lecture 8
