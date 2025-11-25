
# Lecture 3: Multivariate CLT in $\mathbb{R}^d$
STT 882  
Jan 20, 2025

This chapter summarizes the content of Lecture 3 (STT 882, 2025‑01‑17), reconstructed from the handwritten notes. All math uses GitHub‑friendly `$...$` and `$$...$$` syntax.

---

## 1. Convergence Theorem in $\mathbb{R}^d$

Let $X_n, X_\infty$ be random vectors in $\mathbb{R}^d$ with characteristic functions
$\varphi_{X_n}(t)$ and $\varphi_{X_\infty}(t)$.

**Continuity (convergence) theorem**

$$
X_n \Rightarrow X_\infty
\quad\Longleftrightarrow\quad
\varphi_{X_n}(t) \longrightarrow \varphi_{X_\infty}(t)
\quad \forall t \in \mathbb{R}^d.
$$

So convergence in distribution is equivalent to pointwise convergence of characteristic
functions.

---

## 2. Cramér–Wold Device

To check convergence in distribution of random vectors it is enough to check all
one‑dimensional projections.

Let $X_n, X_\infty \in \mathbb{R}^d$. Then

$$
X_n \Rightarrow X_\infty
\quad\Longleftrightarrow\quad
t \cdot X_n \Rightarrow t \cdot X_\infty
\quad \forall t \in \mathbb{R}^d.
$$

Equivalently, for each fixed $t$,
$$
\varphi_{t\cdot X_n}(1) \longrightarrow \varphi_{t\cdot X_\infty}(1).
$$

The slogan your professor wrote: **“Reduce problem to 1 dimension.”**

---

## 3. Basic Multivariate CLT (i.i.d. case)

Let $\{Z_k\}_{k\ge1}$ be i.i.d. $\mathbb{R}^d$‑valued random vectors with

- $E(Z_k) = 0$,
- covariance matrix
  $$
  \Gamma(Z) = [\Gamma_{i,j}]_{1\le i,j\le d},
  \qquad
  \Gamma_{i,j} = E(\varepsilon_i \varepsilon_j),
  $$
  where $Z_k = (\varepsilon_1,\dots,\varepsilon_d)$,
- finite second moment:
  $$
  E\|Z_k\|^2 = E\Big[\sum_{j=1}^d \varepsilon_j^2\Big] < \infty.
  $$

Define the partial sums
$$
S_n = \sum_{k=1}^n Z_k.
$$

Then the multivariate CLT says
$$
\frac{S_n}{\sqrt{n}} \Rightarrow G,
\qquad
G \sim N\big(0,\Gamma(Z)\big).
$$

---

## 4. Gaussian Vectors as Linear Transforms

A $d$‑dimensional normal vector can be written as a linear transformation of
an i.i.d. standard normal vector.

Let
$$
\vec Z =
\begin{pmatrix}
Z_1\\
\vdots\\
Z_d
\end{pmatrix},
\qquad
Z_i \stackrel{iid}{\sim} N(0,1),
$$
and let $A$ be a $d\times d$ matrix.

Define
$$
G = A \vec Z.
$$

Then
$$
\Gamma(G)
= E\big(G G^\top\big)
= E\big(A \vec Z \vec Z^\top A^\top\big)
= A\,E(\vec Z \vec Z^\top)\,A^\top
= A\,I\,A^\top
= A A^\top.
$$

So any covariance matrix of a Gaussian vector can be represented as $A A^\top$.

---

## 5. Properties of Covariance Matrices

From the construction above:

1. **Symmetry**:  
   $$
   \Gamma(X) = \Gamma(X)^\top, \quad
   a_{ij} = a_{ji}.
   $$

2. **Positive semidefinite**: for all $t\in\mathbb{R}^d$,
   $$
   t^\top \Gamma(X) t
   = \operatorname{Var}(t\cdot X)
   = E\big[(t\cdot X)^2\big]
   \ge 0.
   $$

3. **Eigen-decomposition**: there exists an orthogonal matrix $O$ and diagonal
   $D = \operatorname{diag}(\lambda_1,\dots,\lambda_d)$ such that
   $$
   \Gamma(X) = O D O^\top.
   $$

   If we set
   $$
   E = \operatorname{diag}(\sqrt{\lambda_1},\dots,\sqrt{\lambda_d}),
   $$
   then $E E^\top = D$, and
   $$
   A = O E
   \quad\Rightarrow\quad
   A A^\top = O E E^\top O^\top = O D O^\top = \Gamma(X).
   $$

This is the spectral (eigenvalue) representation of a covariance matrix.

---

## 6. Checking the CLT via Projections

Using Cramér–Wold, we reduce the vector CLT to the one‑dimensional CLT.

For any fixed $t\in\mathbb{R}^d$,
$$
t\cdot S_n
= \sum_{k=1}^n t\cdot X_k.
$$

By the 1‑dimensional CLT,
$$
\frac{t\cdot S_n}{\sqrt{n}}
\Rightarrow N(0,\sigma_t^2),
\qquad
\sigma_t^2 = t^\top \Gamma t.
$$

Thus each scalar projection converges to a normal variable with variance $t^\top\Gamma t$, so by Cramér–Wold:

$$
S_n \Rightarrow G \sim N(0,\Gamma).
$$

---

## 7. General Multivariate CLT (Triangular Array)

Let $\{X_{n,k}\}_{1\le k\le n}$ be independent $\mathbb{R}^d$‑valued random vectors
for each $n$ (a triangular array).

Assume:

1. **Mean zero**:
   $$
   E(X_{n,k}) = 0.
   $$

2. **Covariance sums converge**:
   $$
   \Gamma(S_n) = \sum_{k=1}^n \Gamma_{n,k} \longrightarrow \Gamma,
   $$
   where $\Gamma_{n,k} = \operatorname{Cov}(X_{n,k})$ and convergence is entrywise
   for the matrix.

3. **Lindeberg condition**:
   $$
   L_n(\varepsilon)
   =
   \sum_{k=1}^n E\big(\|X_{n,k}\|^2;\ \|X_{n,k}\| > \varepsilon\big)
   \longrightarrow 0
   \quad\text{for all } \varepsilon > 0.
   $$

4. **Finite second moments**:
   $$
   E\|X_{n,k}\|^2 < \infty
   \quad\text{for } 1\le k\le n.
   $$

Then
$$
S_n = \sum_{k=1}^n X_{n,k}
\Rightarrow N(0,\Gamma).
$$

This is the multivariate Lindeberg–Feller CLT.

---

## 8. Characteristic Function and Density of $N(\mu,\Gamma)$

If $G \sim N(\mu,\Gamma)$ in $\mathbb{R}^d$, then for every $t\in\mathbb{R}^d$:

$$
\varphi_G(t)
= E\big[e^{i\,t^\top G}\big]
= \exp\!\left(
  i\, t^\top \mu
  - \frac{1}{2} t^\top \Gamma t
\right).
$$

If $\Gamma$ is invertible, then $G$ has density

$$
f_G(x)
=
(2\pi)^{-d/2} \, |\Gamma|^{-1/2}
\exp\!\left\{
  -\frac{1}{2} (x-\mu)^\top \Gamma^{-1}(x-\mu)
\right\},
\qquad x\in\mathbb{R}^d.
$$

---

## 9. Multinomial $\Rightarrow$ Independent Poisson Limits

Consider a multinomial vector with $d+1$ outcomes:

$$
X_n = (X_{n,1},\dots,X_{n,d},X_{n,d+1})
\sim \operatorname{Multinomial}\big(n;\, p_{n,1},\dots,p_{n,d},q_n\big),
$$

where
$$
q_n = 1 - \sum_{k=1}^d p_{n,k}.
$$

Assume:

- $n p_{n,k} \to \lambda_k$ for $k=1,\dots,d$,
- hence $p_{n,k} \to 0$ and $q_n \to 1$.

We are mainly interested in the first $d$ coordinates. Define

$$
Y_n =
\begin{pmatrix}
X_{n,1} \\
\vdots \\
X_{n,d}
\end{pmatrix}.
$$

Then for each $k = 1,\dots,d$,

$$
Y_n^{(k)} \Rightarrow \operatorname{Poisson}(\lambda_k),
$$

and jointly,

$$
Y_n \Rightarrow (Y^{(1)},\dots,Y^{(d)}),
\qquad
Y^{(k)} \stackrel{ind}{\sim} \operatorname{Poisson}(\lambda_k).
$$

In words, the counts in the “rare” cells of a multinomial become *asymptotically independent Poisson* random variables.

The professor notes a standard limit:

$$
\prod_{k=1}^n (1 + a_{n,k}) \longrightarrow e^a
\quad\text{if}\quad
\sum_{k=1}^n a_{n,k} \longrightarrow a,
$$

and uses this to show that the **characteristic function of the limit factorizes**, which gives asymptotic independence.

---

## 10. Key Exam‑Level Takeaways

1. **Continuity theorem in $\mathbb{R}^d$**: convergence of c.f.’s $\Leftrightarrow$ weak convergence.
2. **Cramér–Wold device**: vector convergence $\Leftrightarrow$ convergence of all linear projections.
3. **Multivariate CLT**:
   - i.i.d. version: $\frac{1}{\sqrt{n}}\sum Z_k \Rightarrow N(0,\Gamma)$.
   - triangular‑array version with Lindeberg condition.
4. **Gaussian structure**:
   - $G = A Z$ with $Z\sim N(0,I)$, $\Gamma = A A^\top$.
   - c.f. and density formulas.
5. **Multinomial $\to$ Poisson limit**:
   - $n p_{n,k} \to \lambda_k$ implies $X_{n,k} \Rightarrow \operatorname{Poisson}(\lambda_k)$.
   - Coordinates become asymptotically independent.

These are exactly the tools you will use for many multivariate limit problems.
