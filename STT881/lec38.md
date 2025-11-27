# **Lecture 38 — Lindeberg–Feller CLT via Characteristic Functions and Truncation**


This lecture gives:

The full Taylor expansion bounds for characteristic functions,

A full CF-based proof of the Lindeberg–Feller CLT,

A deep truncation example where the variance is infinite but CLT holds after normalization by 
𝑛
log
⁡
𝑛
nlogn
	​

,

And finally Paul Lévy’s criterion for the domain of attraction of the normal law.
This lecture returns to the **characteristic function method**, proving the **Lindeberg–Feller CLT** directly from Taylor expansion.  
We then analyze a heavy–tailed example where variance is infinite, showing how truncation recovers a CLT with a nonstandard normalization.

---

# 1. Key Taylor Bounds for $e^{ix}$

(Page 1 begins with recalling the fundamental bounds.)

For all real $x$:

$$
\vert e^{ix} - 1\vert  \le \vert x\vert  \wedge 2.
$$

This follows from:

$$
\vert \int_0^x e^{iu}\,du\vert  = \vert \frac{e^{ix}-1}{i}\vert  \le \vert x\vert .
$$

**Second-order bound**:

$$
\vert e^{ix} - (1 + ix)\vert  \le \frac{x^2}{2} \wedge 2\vert x\vert .
$$

**Third-order bound (used for CLT)**:

$$
\boxed{
\vert e^{ix} - \left(1 + ix - \frac{x^2}{2}\right)\vert 
\,\le\,
\frac{\vert x\vert ^3}{6} \wedge x^2.
}
\tag{1}
$$

This 3rd-order control is the backbone of the Lindeberg–Feller CF proof.

---

# 2. Apply Taylor to Characteristic Functions

Replace $x$ with $tX$, take expectations:

$$
\varphi_X(t)
= E[e^{itX}].
$$

Using (1):

$$
\boxed{
\vert 
\varphi_X(t) - \left(1 + it\,E[X] - \frac{t^2E[X^2]}{2}\right)
\vert 
\le
E\!\left[
\frac{\vert tX\vert ^3}{6} \wedge t^2 X^2
\right].
}
\tag{2}
$$

If $E[X]=0$, this simplifies to:

$$
\vert \varphi_X(t) - \left(1 - \frac{t^2E[X^2]}{2}\right)\vert 
\le
E\!\left[
\frac{\vert t\vert ^3\vert X\vert ^3}{6} \wedge t^2 X^2
\right].
\tag{3}
$$

(Page 1 highlights this with the star $(*)$.)

---

# 3. Lindeberg–Feller CLT via Characteristic Functions

We have a triangular array:

$$
\{X_{n,m}\}_{1\le m\le n}, \qquad
E[X_{n,m}] = 0,
\qquad
\sum_{m=1}^n E[X_{n,m}^2] = 1.
$$

Let:

$$
S_n = \sum_{m=1}^n X_{n,m},
\qquad
\varphi_n(t) = E[e^{itS_n}].
$$

Define:

$$
Z_{n,m}(t)=\varphi_{X_{n,m}}(t),
\qquad
\sigma_{n,m}^2 = E[X_{n,m}^2].
$$

We approximate each $Z_{n,m}(t)$ by a “Gaussian-like” term:

$$
w_{n,m}(t)
=
1 - \frac{t^2\sigma_{n,m}^2}{2}.
\tag{4}
$$

Since $\sigma_{n,m}^2\to0$ uniformly under Lindeberg (recall from Lecture 35:  
$\max_m\sigma_{n,m}^2\to0$), we may treat (4) as a good 2nd-order CF approximation.

---

# 3.1 Bounding the error term

(Page 1 bottom → page 2 top.)

Using (3):

$$
\vert Z_{n,m}(t) - w_{n,m}(t)\vert 
\le
E\!\left[
\frac{\vert t\vert ^3\vert X_{n,m}\vert ^3}{6} \wedge t^2 X_{n,m}^2
\right].
$$

Split on $\vert X_{n,m}\vert  \le \varepsilon$:

- If $\vert X_{n,m}\vert \le \varepsilon$, then  
  $\vert X_{n,m}\vert ^3 \le \varepsilon X_{n,m}^2$.

- If $\vert X_{n,m}\vert >\varepsilon$, use the Lindeberg term.

Thus:

$$
\vert Z_{n,m}-w_{n,m}\vert 
\le 
\frac{\varepsilon \vert t\vert ^3}{6} E[X_{n,m}^2]
+
t^2 E[X_{n,m}^2;\,\vert X_{n,m}\vert >\varepsilon].
\tag{5}
$$

Sum over $m=1,\dots,n$:

$$
\sum_{m=1}^n \vert Z_{n,m}-w_{n,m}\vert 
\le 
\frac{\varepsilon \vert t\vert ^3}{6}
+
t^2 L_n(\varepsilon),
\tag{6}
$$

where

$$
L_n(\varepsilon) = \sum_{m=1}^n E[X_{n,m}^2;\ \vert X_{n,m}\vert >\varepsilon].
$$

Under Lindeberg: $L_n(\varepsilon)\to0$.  
Thus the RHS of (6) → $\varepsilon \vert t\vert ^3/6$.  
Then send $\varepsilon\to0$.  
(Page 2: the full computation matches this.)

---

# 3.2 From products to sums

Characteristic function of sum:

$$
\varphi_n(t)
= \prod_{m=1}^n Z_{n,m}(t).
$$

Since $\vert Z_{n,m}\vert \le1$ and $\vert w_{n,m}\vert \le1$, the inequality (page 2):

$$
\vert \prod_{m=1}^n Z_{n,m}-\prod_{m=1}^n w_{n,m}\vert 
\le
\sum_{m=1}^n \vert Z_{n,m}-w_{n,m}\vert 
\tag{7}
$$

holds.

But

$$
\prod_{m=1}^n
\left(1 - \frac{t^2\sigma_{n,m}^2}{2}\right)
\to 
\exp\left(-\frac{t^2}{2}\right),
\tag{8}
$$

because $\sum \sigma_{n,m}^2 =1$ and $\max_m\sigma_{n,m}^2\to0$.  
(Page 2 includes the standard lemma: if $\sum a_{n,m}\to a$, $\max \vert a_{n,m}\vert \to0$, then $\prod (1+a_{n,m})\to e^a$.)

Thus:

$$
\varphi_n(t)
\to e^{-t^2/2}.
$$

By **Continuity Theorem**,  

$$
S_n \Rightarrow N(0,1).
$$

This proves the **Lindeberg–Feller CLT** via characteristic functions.

---

# 4. Heavy-Tailed Example: Truncation Necessary

(Pages 2–3.)

Let $X_1,X_2,\dots$ be iid, symmetric ($X\overset d= -X$), with tail:

$$
P(\vert X\vert \ge x)=x^{-2}, \qquad x\ge1,
$$

and $P(\vert X\vert <1)=0$.

Then:

- $E[X]=0$ (symmetry),
- $E[X^2]=\infty$ (see page 2 computation),
- No classical CLT can hold under $\sqrt{n}$ scaling.

### We apply truncation.

Let

$$
C_n = \sqrt{n\log\log n},
\qquad
Y_{n,m} = X_m\,\mathbf{1}_{\vert X_m\vert \le C_n}.
$$

Define:

$$
S_n = \sum_{m=1}^n X_m,
\qquad
T_n = \sum_{m=1}^n Y_{n,m}.
$$

---

# 4.1 Approximation quality

(Page 3 top.)

$$
P(S_n \ne T_n)
\le 
n\,P(\vert X\vert >C_n)
=
\frac{n}{C_n^2}
=
\frac{1}{\log\log n}
\to 0.
$$

So $S_n$ and $T_n$ differ with vanishing probability.

---

# 4.2 Compute variance of $T_n$

Since density behaves like $2y^{-3}$ for large $y$, the truncated second moment is:

$$
E[Y_{n,m}^2]
= \int_{1}^{C_n} y^2 \cdot \frac{2}{y^3}\,dy
= 2\int_1^{C_n} y^{-1}\,dy
= 2\log C_n
\sim \log n.
$$

Hence:

$$
\mathrm{Var}(T_n)
= n\,\mathrm{Var}(Y_{n,m})
\sim n\log n.
$$

(Page 3 matches this exactly: “Var($T_n$) = n\log(n)”.)

---

# 4.3 Apply Lindeberg–Feller to $T_n$

We check Lindeberg for the triangular array $Y_{n,m}/\sqrt{n\log n}$.  
The same calculations as above show the Lindeberg condition holds.

Thus:

$$
\frac{T_n}{\sqrt{n\log n}} \Rightarrow N(0,1).
$$

Since $S_n - T_n$ is negligible relative to $\sqrt{n\log n}$, we conclude:

$$
\boxed{
\frac{S_n}{\sqrt{n\log n}} \Rightarrow N(0,1).
}
$$

This is a **nonstandard CLT**, valid even though $E[X^2]=\infty$.

---

# 5. Paul Lévy: Domain of Attraction of the Normal Law

(Page 3 bottom.)

A sequence of iid variables $X_k$ is in the **domain of attraction of the normal law** if there exist sequences $a_n$, $b_n>0$ such that:

$$
\frac{S_n - a_n}{b_n} \Rightarrow N(0,1).
$$

Lévy’s criterion:

$$
\boxed{
\frac{y^2\,P(\vert X\vert >y)}{E[X^2;\,\vert X\vert >y]}
\;\xrightarrow[y\to\infty]{}\; 0.
}
\tag{9}
$$

This is equivalent to being in the Gaussian domain of attraction.

Our example satisfies this with the normalization $b_n=\sqrt{n\log n}$.

---

# **Cheat–Sheet Summary — Lecture 38**

- Third-order Taylor bound for CFs:
  $$
  \vert e^{ix}-(1+ix-x^2/2)\vert \le \vert x\vert ^3/6 \wedge x^2.
  $$
- CF bound:
  $$
  \vert \varphi_X(t)-(1 - t^2E[X^2]/2)\vert \le E[(\vert tX\vert ^3/6)\wedge t^2X^2].
  $$
- Lindeberg–Feller CLT follows by approximating:
  $$
  \prod_{m=1}^n \varphi_{X_{n,m}}(t)
  \approx
  \prod_{m=1}^n \left(1 - t^2\sigma_{n,m}^2/2\right)
  \to e^{-t^2/2}.
  $$
- Heavy-tail truncation example:
  $$
  \frac{S_n}{\sqrt{n\log n}} \Rightarrow N(0,1)
  \quad\text{even though }E[X^2]=\infty.
  $$
- Lévy’s necessary and sufficient condition for normal attraction:
  $$
  \frac{y^2 P(\vert X\vert >y)}{E[X^2;\vert X\vert >y]}\to 0.
  $$

