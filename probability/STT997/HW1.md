# STT 997 — Homework 1

> Joseph M. Weaver  
> 2026-01-23

## Question 1

> If  
> $$
K(x,x') = \phi(\|x - x'\|)
> $$
> is a valid kernel for $x,x' \in \mathbb{R}^d$, show that
> $$
K_1(x,x') = \theta_1 \, \phi(\theta_2 \|x - x'\|)
> $$
> is a valid kernel for any constants $\theta_1 > 0$, $\theta_2 > 0$.

### Claim
$K_1(x,x')$ is a valid kernel.

### Solution

$$
K_1(x,x') = \theta_1 \phi(\theta_2 \|x - x'\|)
$$

Since $\theta_2 > 0$, let $\tilde{x} = \theta_2 x \in \mathbb{R}^d$ and
$\tilde{x}' = \theta_2 x' \in \mathbb{R}^d$. Then

$$
K_1(x,x') = \theta_1 \phi(\|\tilde{x} - \tilde{x}'\|)
= \theta_1 K(\tilde{x}, \tilde{x}')
$$

Let
$$
\mathbf{K}_1 = [K_1(x_i,x_j)]_{i,j=1}^n
= \theta_1 [K(\tilde{x}_i,\tilde{x}_j)]_{i,j=1}^n
= \theta_1 \mathbf{K}.
$$

Since $\mathbf{K} \succeq 0$, scaling by $\theta_1 > 0$ preserves positive
semidefiniteness. Therefore $\mathbf{K}_1 \succeq 0$, and $K_1$ is a valid kernel.

---

## Question 2

> Show that if $K_i(x,x')$ is a kernel in $x \in \mathbb{R}^d$, $i=1,2$, then
> $$
K(x,x') = K_1(x,x') + K_2(x,x')
> $$
> is a valid kernel.

### Claim

$$
\mathbf{K} = [K(x_i,x_j)]_{i,j=1}^n \succeq 0
$$

### Solution

Let
$$
\mathbf{K} = [K(x_i,x_j)]_{i,j=1}^n
= [K_1(x_i,x_j) + K_2(x_i,x_j)]_{i,j=1}^n
= \mathbf{K}_1 + \mathbf{K}_2.
$$

Since $\mathbf{K}_1 \succeq 0$ and $\mathbf{K}_2 \succeq 0$, and the set of
positive semidefinite matrices is closed under addition, we have
$$
\mathbf{K} \succeq 0.
$$

Thus $K$ is a valid kernel.

---

## Question 3

> Show that
> $$
K(x,x') = \exp\!\left(-\|x-x'\|^{2\alpha}\right)
> $$
> is a valid kernel for $\alpha \in [0,1]$ but not for $\alpha > 1$.

### Claim

For $\alpha \in [0,1]$, $K(x,x')$ is valid.

### Solution

Let $h = x - x'$. Then
$$
K(x,x') = \exp(-\|h\|^{2\alpha}).
$$

Let $\psi(t) = e^{-t^\alpha}$. By Schoenberg’s theorem, $K$ is positive
definite if $\psi$ is completely monotone.

Complete monotonicity means
$$
(-1)^n \psi^{(n)}(t) \ge 0.
$$

Let $u = t^\alpha$, so that $\psi(u) = e^{-u}$. The function $e^{-u}$ is
completely monotone. Moreover,
$$
\frac{d^n}{dt^n} t^\alpha = (\alpha)_n t^{\alpha-n},
$$
where $(\alpha)_n$ denotes the falling factorial.

For $0 < \alpha \le 1$, separating the sign yields
$$
(-1)^n |(\alpha)_n| t^{\alpha-n},
$$
which preserves complete monotonicity.

Since $u' \ge 0$ and $u \in C^\infty$, $u$ is a Bernstein function. A
standard result from real analysis states that the composition of a completely
monotone function with a Bernstein function is again completely monotone. The
proof of this result is outside the scope of this course.

Thus $\psi(t) = e^{-t^\alpha}$ is completely monotone for $0 < \alpha \le 1$,
and by Schoenberg’s theorem,
$$
\exp(-\|x-x'\|^{2\alpha})
$$
is a valid kernel for $0 < \alpha \le 1$, and not valid for $\alpha > 1$.

---

## Question 4

> Given any $n$ locations in $\mathbb{R}^d$,
> $$
s_1, s_2, \ldots, s_n,
> $$
> and any set of $n$ values $y_i$, $i=1,\ldots,n$, show that there are numerous
> Gaussian processes $Y(s)$ such that $Y(s_i) = y_i$.

### Solution

Define a prior Gaussian process with arbitrary mean and covariance:
$$
\begin{pmatrix}
Y(s_*) \\
Y(S)
\end{pmatrix}
\sim \mathcal{N}\!\left(
\begin{pmatrix}
m_* \\
\mathbf{m}
\end{pmatrix},
\begin{pmatrix}
K(s_*,s_*) & K(s_*,S)^\top \\
K(S,s_*) & K(S,S)
\end{pmatrix}
\right),
$$
where $S = (s_1,\ldots,s_n)^\top$.

Let
$$
Y(S) = \mathbf{y} = (y_1,\ldots,y_n)^\top.
$$

Then
$$
\mathbb{E}[Y(s_*) \mid Y(S)=\mathbf{y}]
= m_* + K(s_*,S)^\top K(S,S)^{-1}(\mathbf{y}-\mathbf{m}),
$$
and
$$
\mathrm{Var}(Y(s_*) \mid Y(S)=\mathbf{y})
= K(s_*,s_*) - K(s_*,S)^\top K(S,S)^{-1} K(S,s_*).
$$

Moreover,
$$
\mathrm{Cov}(Y(s_*),Y(s_i)\mid Y(S)=\mathbf{y}) = 0,
$$
since all $Y(s_i)$ are degenerate under the conditioning.

Thus, for any prior GP, conditioning on $Y(S)=\mathbf{y}$ produces a new GP
that passes through the data. Since the prior was arbitrary, the resulting
process is arbitrary, and hence there are infinitely many such GPs.

---

## Question 5

> Discuss how the statement in the previous question impacts model fitting.

Since we have infinitely many Gaussian processes that interpolate the same data,
exact fit criteria does not identify a unique model, but instead a family of
models indexed by the parameters of our prior. Furthermore, the choice of prior
kernel controls the uncertainty as we move farther from the observed points.



## Question 6

> What questions do you have for spatial statistics?  List at least two question.

1) For large spatiotemporal geospatial datasets, how should space and time be encoded in a Gaussian process when the goal is to learn how covariates relate to the response, rather than simply to predict missing values? Are there important modeling choices that matter for inference but not for prediction, especially when trying to separate long-term patterns from short-term variability?

2) When spatiotemporal datasets grow to billions of observations, do Gaussian process models remain viable, or does the framework fundamentally break down? What are the main bottlenecks at this scale, and what practical workarounds or related modeling approaches are used when full GPs are no longer feasible?

3) In Gaussian process regression, how does multicollinearity among covariates affect model behavior and stability? Does it resemble the issues seen in linear models, where interpretation is difficult but predictions remain stable, or does it behave more like flexible models such as random forests or neural networks? Given the kernel-based formulation, can GPs implicitly perform something like dimensionality reduction, or is preprocessing still important?
