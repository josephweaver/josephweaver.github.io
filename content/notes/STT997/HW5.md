# Homework 05

Joseph M. Weaver
2026-02-27

---

For the first three problems in this homework, the kernel is assumed to be the linear kernel  
$K(x, x′) = x^\top x′, \; x, x′ \in \mathbb{R}^d.$

---

> **Problem 1: RKHS of the Linear Kernel**
>
> Let $K : \mathbb{R}^d \times \mathbb{R}^d \to \mathbb{R}$ be defined by  
> $K(x, x′) = x^\top x′.$
>
> (a) Define explicitly the reproducing kernel Hilbert space (RKHS) $H_K$ associated with $K$ and show that for every $f \in H$, there exists a $\beta \in \mathbb{R}^d$ such that $f(x) = x^\top \beta$. In addition, for two functions in $H$, $f(x) = x^\top \beta$ and $g(x) = x^\top \alpha$, the inner product is  
> $\langle f, g \rangle_H = \beta^\top \alpha.$

### Solution (1a)

**Claim 1:** For all $f \in H_K$, there exists $\beta \in \mathbb{R}^d$ such that  
$$
f(x) = x^\top \beta.
$$

Write
$$
f(x) = \sum_{i=1}^n c_i K(x_i, x)
      = \sum_{i=1}^n c_i x_i^\top x
      = \left( \sum_{i=1}^n c_i x_i \right)^\top x.
$$

Thus define
$$
\beta = \sum_{i=1}^n c_i x_i,
$$
so that
$$
f(x) = x^\top \beta.
$$

---

**Claim 2:** If $f(x) = x^\top \beta$ and $g(x) = x^\top \alpha$, then  
$$
\langle f, g \rangle_H = \beta^\top \alpha.
$$

Using bilinearity and the reproducing property,
$$
\langle f, g \rangle_H
= \left\langle \sum_i c_i K(x_i, \cdot), \sum_j d_j K(y_j, \cdot) \right\rangle_H
= \sum_{i,j} c_i d_j K(x_i, y_j).
$$

Since $K(x_i, y_j) = x_i^\top y_j$,
$$
\sum_{i,j} c_i d_j x_i^\top y_j
= \left( \sum_i c_i x_i \right)^\top
  \left( \sum_j d_j y_j \right)
= \beta^\top \alpha.
$$

---

> (b) Verify the reproducing property, namely that for any $f \in H_K$ and any $x \in \mathbb{R}^d$,
> $$
> f(x) = \langle f, K(x, \cdot) \rangle_{H_K}.
> $$

### Solution (1b)

Let $f(x) = \sum_{i=1}^n c_i K(x_i, x)$. Then

$$
\langle f, K(x, \cdot) \rangle_{H_K}
=
\left\langle
\sum_i c_i K(x_i, \cdot),
K(x, \cdot)
\right\rangle_{H_K}
=
\sum_i c_i
\langle K(x_i, \cdot), K(x, \cdot) \rangle_{H_K}.
$$

By the reproducing property,
$$
\langle K(x_i, \cdot), K(x, \cdot) \rangle_{H_K}
= K(x_i, x).
$$

Thus,
$$
\langle f, K(x, \cdot) \rangle_{H_K}
= \sum_i c_i K(x_i, x)
= f(x).
$$

---

> **Problem 2: Ridge Regression and Kernel Ridge Regression**
>
> Let $\{(x_i, y_i)\}_{i=1}^n$ be training data with $x_i \in \mathbb{R}^d$ and $y_i \in \mathbb{R}$, and let $\lambda > 0$ be a regularization parameter.
>
> (a) (Ridge regression: primal form) Consider the optimization problem
> $$
> \min_{\beta \in \mathbb{R}^d}
> \left\{
> \sum_{i=1}^n (y_i - x_i^\top \beta)^2
> + \lambda \|\beta\|_2^2
> \right\}.
> $$
>
> Derive the closed-form solution $\hat{\beta}$.

### Solution (2a)

Rewrite in matrix form:
$$
\|Y - X\beta\|_2^2 + \lambda \|\beta\|_2^2.
$$

Taking derivatives:
$$
\frac{\partial}{\partial \beta}
=
2X^\top (X\beta - Y)
+
2\lambda \beta
=
0.
$$

Thus,
$$
X^\top X \beta + \lambda \beta = X^\top Y,
$$
so
$$
\hat{\beta}
=
(X^\top X + \lambda I)^{-1} X^\top Y.
$$

---

> (b) (Kernel ridge regression) Let $K(x, x′) = x^\top x′$ and let $K \in \mathbb{R}^{n\times n}$ be the kernel matrix with entries $K_{ij} = K(x_i, x_j)$. Consider
> $$
> \min_{f \in H_K}
> \left\{
> \sum_{i=1}^n (y_i - f(x_i))^2
> + \lambda \|f\|_{H_K}^2
> \right\}.
> $$
>
> By the Representer Theorem, the solution has the form
> $$
> \hat{f}(x) = \sum_{i=1}^n \alpha_i K(x_i, x).
> $$
>
> Derive the expression for $\hat{\alpha}.$

### Solution (2b)

Using the representer form, write

$$
f(x_i) = (K\alpha)_i.
$$

Thus the objective becomes

$$
\|Y - K\alpha\|_2^2
+
\lambda \alpha^\top K \alpha.
$$

Taking derivatives:

$$
-2K(Y - K\alpha)
+
2\lambda K\alpha
=
0.
$$

Rearranging,

$$
(K + \lambda I)\alpha = Y.
$$

Hence,

$$
\hat{\alpha}
=
(K + \lambda I)^{-1} Y.
$$

---

> (c) Show that the kernel ridge regression predictor can be written as
> $$
> \hat{f}(x) = x^\top \hat{\beta},
> $$
> where $\hat{\beta}$ coincides with the ridge regression solution obtained in part (a).
>
> *Hint:* Apply the SVD of an $n \times d$ matrix $X$ to derive
> $$
> X^\top (XX^\top + \lambda I_n)^{-1}
> =
> (X^\top X + \lambda I_d)^{-1} X^\top.
> $$

### Question 2(c)

**Claim:** $\hat{f}(x) = x^\top \hat{\beta}.$

Let $X = U \Sigma V^\top$. Then

$$
XX^\top = U \Sigma V^\top V \Sigma U^\top = U \Sigma^2 U^\top,
$$

$$
X^\top X = V \Sigma U^\top U \Sigma V^\top = V \Sigma^2 V^\top.
$$

Now compute
$$
X^\top (XX^\top + \lambda I_n)^{-1}.
$$

Using the SVD,

$$
X^\top (XX^\top + \lambda I_n)^{-1}
=
V \Sigma U^\top
\left( U \Sigma^2 U^\top + \lambda U U^\top \right)^{-1}.
$$

Since $U^{-1} = U^\top$, we factor:

$$
\left( U \Sigma^2 U^\top + \lambda U U^\top \right)^{-1}
=
\left( U (\Sigma^2 + \lambda I) U^\top \right)^{-1}
=
U (\Sigma^2 + \lambda I)^{-1} U^\top.
$$

Thus,

$$
X^\top (XX^\top + \lambda I_n)^{-1}
=
V \Sigma U^\top U (\Sigma^2 + \lambda I)^{-1} U^\top
=
V \Sigma (\Sigma^2 + \lambda I)^{-1} U^\top.
$$

Similarly,

$$
(XX^\top + \lambda I_n)^{-1} X^\top
=
\left( V \Sigma^2 V^\top + \lambda V V^\top \right)^{-1}
V \Sigma U^\top.
$$

Factoring,

$$
=
\left( V (\Sigma^2 + \lambda I) V^\top \right)^{-1}
V \Sigma U^\top
=
V (\Sigma^2 + \lambda I)^{-1} \Sigma U^\top.
$$

Since $\Sigma$ and $(\Sigma^2 + \lambda I)^{-1}$ commute (both diagonal),

$$
\Sigma (\Sigma^2 + \lambda I)^{-1}
=
(\Sigma^2 + \lambda I)^{-1} \Sigma.
$$

Therefore,

$$
X^\top (XX^\top + \lambda I_n)^{-1}
=
(X^\top X + \lambda I_d)^{-1} X^\top.
$$

---

Thus,

$$
\hat{f}(x)
=
k(x)^\top (K + \lambda I)^{-1} Y
=
x^\top X^\top (XX^\top + \lambda I)^{-1} Y
=
x^\top (X^\top X + \lambda I)^{-1} X^\top Y
=
x^\top \hat{\beta}.
$$

---

> **Problem 4**
>
> (a) Show for $D = [0,1]^2$ and the exponential or Gaussian kernel $K$, the constant function $f(x) = 1$, $\forall x \in D$, is not in the RKHS associated with $K$.

### Solution (4a)

Assume for contradiction that

$$
1
=
\int_D K(x, x') dx'
\quad \text{for all } x \in D.
$$

Let $x_0 = (0,0)$ and $x_{1/2} = (1/2,1/2)$.

Since Gaussian/exponential kernels depend on $\|x - x'\|$,
points near the center have more nearby mass than points at the boundary.

Thus
$$
\int_D K(x_0, x') dx'
\neq
\int_D K(x_{1/2}, x') dx'.
$$

Therefore the integral cannot be constant on $D$, a contradiction.

Hence the constant function is not in the RKHS.

---

> (b) Discuss how to generalize the Representer Theorem to better fit the data (i.e., to achieve smaller SSE). Derive explicit solutions if possible.

### Question 4(b)

We generalize by introducing an intercept term $b \in \mathbb{R}$ and solve

$$
\min_{f \in H_K,\, b \in \mathbb{R}}
\sum_{i=1}^n (y_i - f(x_i) - b)^2
+
\lambda \|f\|_{H_K}^2.
$$

By the Representer Theorem,

$$
f(x) = \sum_{j=1}^n \alpha_j K(x, x_j).
$$

Thus the objective becomes

$$
\|Y - K\alpha - b\mathbf{1}\|_2^2
+
\lambda \alpha^\top K \alpha.
$$

---

#### Gradient with respect to $\alpha$

$$
\nabla_\alpha
=
2(-K)(Y - K\alpha - b\mathbf{1})
+
2\lambda K\alpha.
$$

Setting equal to zero,

$$
-2K(Y - K\alpha - b\mathbf{1})
+
2\lambda K\alpha
=
0.
$$

Rearranging,

$$
KY
=
K(K+\lambda I)\alpha
+
bK\mathbf{1}.
$$

---

#### Gradient with respect to $b$

$$
\nabla_b
=
2\mathbf{1}^\top (Y - K\alpha - b\mathbf{1}).
$$

Setting equal to zero,

$$
\mathbf{1}^\top Y
=
\mathbf{1}^\top K\alpha
+
nb.
$$

---

#### Combine the two equations

These conditions can be written as the linear system

$$
\begin{bmatrix}
K + \lambda I & \mathbf{1} \\
\mathbf{1}^\top & 0
\end{bmatrix}
\begin{bmatrix}
\alpha \\
b
\end{bmatrix}
=
\begin{bmatrix}
Y \\
0
\end{bmatrix}.
$$

Thus,

$$
\hat{y}(x)
=
\sum_{j=1}^n \hat{\alpha}_j K(x, x_j)
+
\hat{b}.
$$
