# 7 — Integral Properties, Jensen, Hölder, and the $L^p$ Triangle Inequality
Lecture 7 finishes the fundamental properties of the integral, proves Jensen’s inequality, and derives Hölder’s inequality and the 
𝐿
𝑝
L
p
 triangle inequality.


We work on a σ-finite measure space $(\Omega, \mathcal{F}, \mu)$.

A function $f$ is **integrable** if:
$$
\int_\Omega \vert f\vert \, d\mu < \infty.
$$

Recall:
$$
\vert f\vert  = f^{+} + f^{-}, \quad
f^+ = f\vee 0, \quad
f^- = -(f\wedge 0),
$$
and
$$
I(f) = I(f^+) - I(f^-).
$$

---

# 1. Basic Properties of the Integral

If $f,g$ are integrable, then:

### (1) Monotonicity
$$
f \ge g \implies I(f) \ge I(g).
$$

### (2) Homogeneity
$$
I(af) = a\, I(f), \quad a\in\mathbb{R}.
$$

### (3) Additivity
$$
I(f+g) = I(f) + I(g).
$$

### (4) Absolute value inequality
$$
\vert I(f)\vert  \le I(\vert f\vert ).
$$

Proof (page 1):

$$
\vert I(f)\vert  = \vert I(f^+) - I(f^-)\vert  
      = \max\{ I(f^+) - I(f^-),\; I(f^-) - I(f^+)\}
      \le I(f^+) + I(f^-)
      = I(\vert f\vert ).
$$

---

# 2. Jensen’s Inequality

Assume $\mu(\Omega) = 1$.  
Let $\varphi : \mathbb{R} \to \mathbb{R}$ be **convex**.  
Assume $f, \varphi(f)$ are integrable.

To prove:
$$
\varphi(I(f)) \le I(\varphi(f)).
$$

### Key fact (supporting line characterization of convexity)

For any convex $\varphi$, for every $x_0\in\mathbb{R}$, there exists an affine map:
$$
\ell(x) = a + b x
$$
such that:

1. $\ell(x) \le \varphi(x)$ for all $x$,  
2. $\ell(x_0) = \varphi(x_0)$.

This is the tangent (supporting) line.

### Proof

Let $x_0 = I(f)$.  
Let $\ell(x) = a + bx$ be the supporting line at $x_0$.  
Then for all $x$:
$$
\varphi(x) \ge \ell(x).
$$

Thus:
$$
I(\varphi(f)) \ge I(\ell(f))
= \int_\Omega (a + b f)\, d\mu
= a + b I(f)
= \ell(I(f))
= \varphi(I(f)),
$$
since $\ell(I(f)) = \varphi(I(f))$ by construction.

Therefore:
$$
\boxed{\varphi(I(f)) \le I(\varphi(f)).}
$$

---

# 3. Connection to AM ≥ GM

Take a discrete probability space $\Omega = \{1,\dots,n\}$,  
$\mu(\{k\}) = 1/n$.

Let $f(k) = x_k > 0$.  
Apply Jensen to $\varphi(x) = \log x$ (concave; or apply convexity to $-\log x$):

$$
\log(I(f)) \ge I(\log f).
$$

This yields:

$$
\log\left(\frac{1}{n}\sum_{k=1}^n x_k\right)
\ge \frac{1}{n}\sum_{k=1}^n \log(x_k)
= \log\left( \prod_{k=1}^n x_k^{1/n} \right).
$$

Exponentiate:

$$
\frac{1}{n}\sum_{k=1}^n x_k
\ge \left( \prod_{k=1}^n x_k \right)^{1/n}.
$$

This is the classical **AM–GM inequality**.

---

# 4. Young’s Inequality (Used for Hölder)

Let $p,q \ge 1$ with:
$$
\frac{1}{p} + \frac{1}{q} = 1.
$$

For $x,y > 0$,
$$
xy \le \frac{x^p}{p} + \frac{y^q}{q}.
$$

Proof (page 2):

Take
$$
x_1 = x^p,\quad x_2 = y^q,\quad
\omega_1 = \frac{1}{p},\quad \omega_2 = \frac{1}{q}.
$$

Using Jensen's inequality for the exponential or the convex function $u\mapsto e^u$ or directly via AM–GM on $(x^p)^{1/p}$ and $(y^q)^{1/q}$:

$$
x y = (x^p)^{1/p}(y^q)^{1/q}
\le \frac{x^p}{p} + \frac{y^q}{q}.
$$

---

# 5. Hölder’s Inequality

Let $f,g$ be measurable. If $\vert f\vert ^p$ and $\vert g\vert ^q$ are integrable, then:
$$
\int_\Omega \vert f g\vert \, d\mu
\le
\left( \int_\Omega \vert f\vert ^p\, d\mu \right)^{1/p}
\left( \int_\Omega \vert g\vert ^q\, d\mu \right)^{1/q}.
$$

### Proof outline (page 2)

Normalize:
$$
F = \frac{\vert f\vert }{\vert f\vert _{L^p}}, 
\qquad
G = \frac{\vert g\vert }{\vert g\vert _{L^q}},
$$
so that:
$$
\vert F\vert _{L^p} = 1,
\quad
\vert G\vert _{L^q} = 1.
$$

Apply Young’s inequality pointwise to $F(\omega)$ and $G(\omega)$:
$$
\vert F G\vert 
\le \frac{\vert F\vert ^p}{p} + \frac{\vert G\vert ^q}{q}.
$$

Integrate:
$$
\int \vert FG\vert 
\le \frac{1}{p}\int \vert F\vert ^p + \frac{1}{q}\int \vert G\vert ^q
= \frac{1}{p}\cdot 1 + \frac{1}{q}\cdot 1 = 1.
$$

Undo the normalization:
$$
\int \vert fg\vert 
\le
\vert f\vert _{L^p} \vert g\vert _{L^q}.
$$

Thus:
$$
\boxed{
\vert fg\vert _{L^1} 
\le \vert f\vert _{L^p}\vert g\vert _{L^q}.
}
$$

---

# 6. Triangle Inequality in $L^p$

For $p \ge 1$, the space:
$$
L^p(\Omega,\mathcal{F},\mu)
= \left\{ f : \int \vert f\vert ^p < \infty \right\}
$$
satisfies:
$$
\vert f + g\vert _{L^p}
\le
\vert f\vert _{L^p} + \vert g\vert _{L^p}.
$$

### Sketch of proof

Start with:
$$
\vert f+g\vert ^p \le (\vert f\vert +\vert g\vert )^p.
$$

Use convexity of $t\mapsto t^p$ or Minkowski’s inequality (derived by applying Hölder to $\vert f+g\vert ^{p-1}$):

$$
\int \vert f+g\vert ^p
\le
\left( \vert f\vert _{L^p} + \vert g\vert _{L^p} \right)^p.
$$

Taking $p$-th roots:

$$
\boxed{
\vert f+g\vert _{L^p}
\le \vert f\vert _{L^p} + \vert g\vert _{L^p}.
}
$$

This completes the construction of the $L^p$ norm.

