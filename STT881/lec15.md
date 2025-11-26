# 15 — Lebesgue Decomposition, Radon–Nikodym, and Probability Measures

Lecture 15 covers:

Lebesgue Decomposition Theorem: splitting any σ-finite measure 
𝜈
ν into an absolutely continuous part and a singular part relative to 
𝜇
μ.

Radon–Nikodym Theorem: existence of densities for absolutely continuous measures.

Examples:

mixture of Lebesgue measure with a point mass at 
1
/
2
1/2 (page 1),

the Cantor distribution as a purely singular measure (pages 1–2),

modification to create mixed singular + absolutely continuous parts.

Jacobian connection: Change-of-variable formula as a Radon–Nikodym derivative (page 2 diagram).

Random variables, joint distributions, densities (page 2),

Measurability of RVs, vectors of RVs, and limits (page 3).

---

# 1. Lebesgue Decomposition Theorem

Given a measurable space $(\Omega,\mathcal{F})$ and **σ-finite** measures  
$$
\mu,\ \nu,
$$
the **Lebesgue decomposition theorem** states:

> There exist unique measures  
> $$
> \nu = \nu_r + \nu_s
> $$
> such that:
> 
> 1. $ \nu_r \ll \mu $   (absolutely continuous w.r.t. $ \mu $),  
> 2. $ \nu_s \perp \mu $ (singular w.r.t. $ \mu $).

The diagram on *page 1* shows a rectangle partitioned into the “regular/AC” part and “singular” part  
:contentReference[oaicite:2]{index=2}.

### Singular part
$$
\nu_s \perp \mu 
\quad \Longleftrightarrow\quad 
\exists A\in\mathcal{F}\ \text{such that }\ 
\nu_s(A^c)=0,\ \mu(A)=0.
$$

### Absolutely continuous part  
(“functions of overlap” in the handwritten note)

$$
\nu_r(B) = \int_B g\, d\mu
\quad\text{for some measurable } g.
$$

The function $g$ is the **Radon–Nikodym derivative**:
$$
g = \frac{d\nu}{d\mu}.
$$

If $ \nu_s = 0$, then $ \nu \ll \mu $.

---

# 2. Radon–Nikodym Theorem

> **Theorem.**  
> If $ \nu \ll \mu$ and $\mu$ is σ-finite, then  
> $$
> \exists\ g \ge 0,\ \text{measurable},\quad 
> \nu(B)=\int_B g\, d\mu,\ \forall B\in\mathcal{F}.
> $$

Your notes reference Appendix A.4 of Durrett.

---

# 3. Example 1 (page 1): A Mixed Measure on $[0,1]$

Let:

- $ \Omega=[0,1]$,  
- $ \mathcal{F}=\mathcal{B}([0,1])$,  
- $ \mu = $ Lebesgue measure,  
- $ \delta_{\{1/2\}} $ = point mass at $1/2$.

Define:
$$
\nu = \tfrac12 \mu \;+\; \tfrac12 \delta_{\{1/2\}}.
$$

Then:

- Absolutely continuous part:  
  $$
  \nu_r = \tfrac12 \mu, \qquad \frac{d\nu_r}{d\mu} = \tfrac12.
  $$
- Singular part:  
  $$
  \nu_s = \tfrac12 \delta_{\{1/2\}}.
  $$

Because $\delta_{\{1/2\}}$ lives entirely on a $\mu$-null set.

---

# 4. Example 2 (pages 1–2): Cantor Distribution As Purely Singular

Let $\{X_k\}_{k\ge1}$ be i.i.d. random variables with:

$$
P(X_k = 0) = P(X_k = 2) = \tfrac12.
$$

Define a random variable $V$ on $[0,1]$ via *base 3* expansion:

$$
V = \sum_{k=1}^{\infty} \frac{X_k}{3^k}.
$$

Then:

- $0 \le V \le 1$,
- The distribution of $V$ is supported on the **Cantor set** $C$,  
- $P(V \in C) = 1$, but  
- $\mu(C)=0$.

Thus the distribution $\nu$ of $V$ satisfies:

$$
\nu_s = \nu,\qquad \nu_r = 0.
$$

It is **purely singular** with respect to Lebesgue measure.

### Mixed modification
Your notes define:

$$
\nu_2 = \tfrac12 \nu + \tfrac12 \mu.
$$

Then:

- Absolutely continuous part:
  $$
  \nu_{2,r} = \tfrac12 \mu,\qquad g = \tfrac12.
  $$
- Singular part:
  $$
  \nu_{2,s} = \tfrac12 \nu.
  $$

The graph on *page 2* shows how adding Lebesgue measure yields a continuous distribution function that still carries Cantor singular mass  
:contentReference[oaicite:3]{index=3}.

---

# 5. Change of Variables, Jacobian, and RN Derivative

On *page 2*, the notes draw the diagram of:

$$
x = r\cos\theta,\qquad y = r\sin\theta.
$$

The Jacobian matrix:

$$
J =
\begin{bmatrix}
\frac{\partial x}{\partial \theta} & \frac{\partial x}{\partial r} \\
\frac{\partial y}{\partial \theta} & \frac{\partial y}{\partial r}
\end{bmatrix},
\qquad
\det J = r = AD - BC.
$$

The scribbled note says:

> “Jacobian = Radon–Nikodym derivative.”

Indeed, in the change-of-variable formula:
$$
dx\,dy = r\, dr\, d\theta,
$$
the factor $r$ *is* the Radon–Nikodym derivative of the pushforward of Lebesgue measure under the transformation.

Formally:
$$
\frac{d(\mu\circ f^{-1})}{d\lambda} = |\det J_f|.
$$

---

# 6. Probability Review (page 2–3)

A probability space:

$$
(\Omega,\mathcal{F},P),\qquad P(\Omega)=1.
$$

A **random variable** is a measurable map $X:\Omega\to\mathbb{R}$:

$$
X^{-1}(B) \in \mathcal{F},\quad B\in\mathcal{B}(\mathbb{R}).
$$

### Distribution of $X$:
$$
\mu_X(A) = P(X\in A),
\quad A\in\mathcal{B}(\mathbb{R}).
$$

If $X$ has density $g$ w.r.t. Lebesgue measure:
$$
\frac{d\mu_X}{dx} = g.
$$

Examples (page 2):

- Uniform$(0,1)$
- Exponential$(\lambda)$
- Normal$(0,1)$, Normal$(\mu,\sigma^2)$.

---

# 7. Random Vectors and Measurability (page 3)

A random vector
$$
\mathbf{X}=(X_1,\ldots,X_d):\Omega\to\mathbb{R}^d
$$
is measurable iff:
$$
\mathbf{X}^{-1}(B) \in \mathcal{F}\quad \forall B \in \mathcal{B}(\mathbb{R}^d).
$$

To check measurability, it suffices to check rectangles:

$$
B = \prod_{i=1}^d (a_i,b_i].
$$

### Function of a random vector

If $f:\mathbb{R}^d \to \mathbb{R}$ is Borel measurable and  
$\mathbf{X}$ is measurable, then:

$$
f(\mathbf{X})\ \text{is a real-valued random variable}.
$$

Example (page 3):
$$
f(x_1,\ldots,x_d)=\sum_{k=1}^d x_k,
\quad
f(\mathbf{X})=\sum_{k=1}^d X_k.
$$

### Limits of random variables

If $\{X_k\}$ are RVs, then:

- $ \inf_k X_k$ is an RV,
- $ \sup_k X_k$ is an RV,
- $ \liminf_k X_k$ and $ \limsup_k X_k$ are RVs.

This uses only closure of measurability under countable operations.

---

# 8. Summary of Lecture 15

- Any σ-finite measure decomposes *uniquely* as  
  $ \nu = \nu_r + \nu_s $ with $ \nu_r \ll \mu$, $ \nu_s\perp\mu $.  
- The Radon–Nikodym derivative $g = d\nu/d\mu$ represents densities.  
- The Cantor distribution provides a canonical example of a purely singular measure.  
- Jacobians in multivariable calculus *are* Radon–Nikodym derivatives of pushforward measures.  
- Random variables and vectors are measurable maps; their distributions arise from pushforward measures.  
- Measurability is stable under composition, sums, limits, sup, inf.

