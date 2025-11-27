# **Lecture 34 — CLT Without Characteristic Functions**


We prove the classical CLT using **Taylor expansion** and a comparison between the sum of arbitrary iid mean-zero variables and the sum of iid normal variables.

---

## 1. Setup

Let \(X_1,X_2,\dots\) be iid with

$$
E[X]=0,\qquad E[X^2]=1,\qquad E[\vert X\vert ^3]<\infty.
$$

Let
$$
S_n = \frac{1}{\sqrt n}\sum_{k=1}^n X_k.
$$

Let \(Z_1,Z_2,\dots\) be iid \(N(0,1)\) and denote
$$
Z_n = \frac{1}{\sqrt n}\sum_{k=1}^n Z_k.
$$

We want to show:
$$
S_n \Rightarrow Z,\qquad Z\sim N(0,1).
$$

Goal: for all bounded \(C^3\) functions \(f\),

$$
E\big[f(S_n)\big] \to E\big[f(Z)\big].
\tag{1}
$$

By smoothing (Lecture 33), it suffices to check (1) for \(f\in C_B^3(\mathbb R)\).

---

## 2. Comparison Decomposition

Let
$$
T_m
= \frac{1}{\sqrt n}\Big( X_1+\cdots+X_{m-1} + Z_{m+1}+\cdots+Z_n \Big).
\tag{2}
$$

On page 1, the notes show the telescoping decomposition:

$$
E[f(S_n)] - E[f(Z_n)]
=
\sum_{m=1}^n 
\Big(
E f(T_m + X_m/\sqrt n)
-
E f(T_m + Z_m/\sqrt n)
\Big).
\tag{3}
$$

Each term replaces one \(X_m\) by one \(Z_m\) while holding all others fixed.

Let

$$
I_m = \Big\vert  E f(T_m + X_m/\sqrt n) - E f(T_m + Z_m/\sqrt n) \Big\vert .
$$

Then:

$$
\vert E f(S_n) - E f(Z_n)\vert 
\le \sum_{m=1}^n I_m.
\tag{4}
$$

We will bound each \(I_m\) using Taylor’s theorem.

---

## 3. Taylor Expansion to Third Order

(Page 1 middle.)

For \(f\in C^3\),

$$
f(x+h)
=
f(x)
+ f'(x)h
+ \frac{f''(x)}{2} h^2
+ \frac{f^{(3)}(\xi)}{6}h^3,
\qquad \vert \xi-x\vert <\vert h\vert .
\tag{5}
$$

Diagram on page 1 shows the geometric idea: the difference between the Taylor polynomial and \(f\) is controlled by \(\vert h\vert ^3\).

Let \(B=T_m\).  
Let \(Y = X_m/\sqrt n\) and \(W=Z_m/\sqrt n\).

Then:

$$
f(B+Y)
=
f(B)
+ f'(B)Y
+ \frac{f''(B)}{2}Y^2
+ R_Y,
$$

$$
f(B+W)
=
f(B)
+ f'(B)W
+ \frac{f''(B)}{2}W^2
+ R_W,
$$

where the remainders satisfy (page 1, formula labelled (B)):

$$
\vert R_Y\vert  \le C \vert Y\vert ^3,
\qquad 
\vert R_W\vert  \le C \vert W\vert ^3,
\tag{6}
$$
with
$$
C = \sup_x \frac{\vert f^{(3)}(x)\vert }{6} < \infty.
$$

---

## 4. The Comparison Lemma

(Page 1–2, boxed “Lemma”.)

**Lemma.**  
Let \(B,Y,W\) be real random variables such that:

- \(E[Y]=E[W]\),
- \(E[Y^2]=E[W^2]\),
- \(B\) is independent of both \(Y\) and \(W\).

Then for \(f\in C_B^3\):

$$
\Big\vert E f(B+Y) - E f(B+W)\Big\vert 
\le
C\, E(\vert Y\vert ^3 + \vert W\vert ^3).
\tag{7}
$$

**Proof sketch.**

Because of independence:

$$
E[f'(B)Y]=E[f'(B)]\,E[Y]=E[f'(B)]\,E[W]=E[f'(B)W],
$$

$$
E\Big[\frac{f''(B)}{2}Y^2\Big]
=
E\Big[ \frac{f''(B)}{2}W^2 \Big].
$$

Thus the quadratic Taylor terms cancel exactly (page 1 bottom, page 2 top).

Only the cubic remainders remain, giving (7).

---

## 5. Apply the Lemma to Each Term \(I_m\)

Here:

$$
Y = \frac{X_m}{\sqrt n}, \qquad W = \frac{Z_m}{\sqrt n}.
$$

Thus (page 2):

$$
I_m
\le
C\, E\Big(
\frac{\vert X_m\vert ^3}{n^{3/2}}
+
\frac{\vert Z_m\vert ^3}{n^{3/2}}
\Big).
\tag{8}
$$

Summing over \(m=1,\dots,n\):

$$
\sum_{m=1}^n I_m
\le
C\Big(
\frac{n E\vert X\vert ^3}{n^{3/2}}
+
\frac{n E\vert Z\vert ^3}{n^{3/2}}
\Big)
=
\frac{C(E\vert X\vert ^3 + E\vert Z\vert ^3)}{\sqrt n}
\to 0.
\tag{9}
$$

Since \(E\vert Z\vert ^3<\infty\), this goes to zero.

This proves (4) tends to zero.

---

## 6. Control of “Large” \(X_m\): Lindeberg–Type Step

On page 2–3 your notes add the truncation argument:

Split

$$
E\vert X\vert ^3
=
E\big[ \vert X\vert ^3 \mathbf{1}_{\vert X\vert \le \varepsilon\sqrt n} \big]
+
E\big[ \vert X\vert ^3 \mathbf{1}_{\vert X\vert > \varepsilon\sqrt n} \big].
$$

Using the comparison (page 2 bottom):

$$
\vert Y\vert ^2\wedge \vert Y\vert ^3
=
\frac{1}{n^{3/2}}\big( X^2\mathbf{1}_{\vert X\vert >\varepsilon\sqrt n} + \vert X\vert ^3\mathbf{1}_{\vert X\vert \le \varepsilon\sqrt n} \big).
$$

The second term vanishes because \(\varepsilon\sqrt n\to\infty\). For the first:

$$
E\big[X^2\,\mathbf{1}_{\vert X\vert >\varepsilon\sqrt n}\big]
\to 0
\quad\text{by dominated convergence},
$$

since \(E[X^2]=1\).  
The notes on page 3 show this as:

> “DCT … since \(E[X^2]=1\).”

Hence the whole remainder → 0.  
Thus the bound in (9) is in fact arbitrarily small for large \(n\).

---

## 7. Conclusion

Putting everything together:

$$
\vert E f(S_n) - E f(Z_n)\vert  \to 0
\quad\text{for all } f\in C_B^3(\mathbb R).
$$

Because \(Z_n\Rightarrow Z\) (by classical CLT for Gaussians), we have:

$$
E f(Z_n)\to E f(Z).
$$

Therefore:

$$
E f(S_n)\to E f(Z),
\qquad \forall f\in C_B^3.
$$

By the smoothing argument from Lecture 33 (approximating general bounded continuous \(f\) by smooth \(f_\sigma\)), this implies the full weak convergence:

$$
\boxed{
\frac{1}{\sqrt n}\sum_{k=1}^n X_k \Rightarrow N(0,1).
}
$$

---

# **Cheat–Sheet Summary — Lecture 34**

- Avoid characteristic functions: use **Taylor expansion** and **comparison variables**.
- Replace each \(X_m\) by \(Z_m\) and sum the errors.
- Linear and quadratic Taylor terms cancel thanks to  
  \(E[X_m]=E[Z_m]=0\), \(E[X_m^2]=E[Z_m^2]=1\).
- Remainder is controlled by third derivatives of \(f\) and by \(E\vert X\vert ^3\).
- Summed error is \(O(1/\sqrt n)\to 0\).
- Finally, \(Z_n\Rightarrow N(0,1)\) and smoothing gives the CLT.

