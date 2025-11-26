
# Lecture 1: Random Vectors, Multinomial Example, and Multivariate Normal
STT 882  
Jan 6, 2025

---

## 1. Random vectors in $\mathbb{R}^d$

Let $d \ge 2$. A **random vector** in $\mathbb{R}^d$ is

$$
X =
\begin{pmatrix}
X_1 \\
\vdots \\
X_d
\end{pmatrix}.
$$

For real numbers $a_i \le b_i$ define the rectangle (box)

$$
A = \prod_{i=1}^d [a_i, b_i]
= [a_1,b_1]\times\cdots\times[a_d,b_d] \subset \mathbb{R}^d.
$$

Then

$$
P(X \in A)
=
P\big( X_1 \in [a_1,b_1],\,\dots,\,X_d \in [a_d,b_d] \big).
$$

Rectangles like this will be used repeatedly when we talk about joint distributions and inversion formulas later.

---

## 2. Example: Multinomial random vector

### 2.1 Setup

This generalizes the binomial distribution (which has 2 outcomes) to **$d$ outcomes**.

Suppose we perform $n$ independent trials. Each trial results in one of the $d$ outcomes

$$
O_1,\dots,O_d
$$

with probabilities

$$
p_1,\dots,p_d \ge 0,
\qquad
\sum_{i=1}^d p_i = 1.
$$

Define the **count vector**

$$
Z =
\begin{pmatrix}
Z_1 \\
\vdots \\
Z_d
\end{pmatrix},
$$

where $Z_i$ is the **number of times** outcome $O_i$ occurs in the $n$ trials.

We write

$$
Z \sim \operatorname{Multinomial}(n; p_1,\dots,p_d).
$$

Each coordinate takes values
$$
Z_i \in \{0,1,\dots,n\}.
$$

---

### 2.2 Construction via one–hot vectors

Let

$$
Y_k \in \mathbb{R}^d,\qquad k=1,\dots,n,
$$

be independent random vectors with

$$
P(Y_k = e_i) = p_i,\quad i=1,\dots,d,
$$

where $e_i$ is the $i$th standard basis vector in $\mathbb{R}^d$:
it has a $1$ in position $i$ and $0$ elsewhere.

Then

$$
Z = \sum_{k=1}^n Y_k,
$$

and the $i$th coordinate is

$$
Z_i = \sum_{k=1}^n Y_{k,i},
$$

the number of times we observe outcome $i$.

From this we see immediately that

$$
Z_i \sim \operatorname{Binomial}(n,p_i),
\qquad 1\le i\le d.
$$

---

### 2.3 Multinomial pmf

For integers $n_1,\dots,n_d \ge 0$ with $\sum_{i=1}^d n_i = n$,

$$
P\!\left(
Z =
\begin{pmatrix}
n_1\\
\vdots\\
n_d
\end{pmatrix}
\right)
=
\frac{n!}{\prod_{i=1}^d n_i!}
\prod_{i=1}^d p_i^{\,n_i}.
$$

This is the **multinomial probability mass function**.

---

## 3. Covariance matrix of the multinomial

People are especially interested in the covariance structure of $Z$, which is captured by a $d\times d$ matrix.

### 3.1 Definition

The **covariance matrix** of $Z$ is

$$
\Gamma(Z)
=
\big[\,\Gamma_{ij}\,\big]_{1\le i,j\le d},
\qquad
\Gamma_{ij} = \operatorname{Cov}(Z_i, Z_j).
$$

We can compute:

- For the diagonal entries,
  $$
  \Gamma_{ii}
  = \operatorname{Var}(Z_i)
  = n p_i (1-p_i),
  \qquad 1\le i\le d.
  $$

- For $i\neq j$, we will find $\Gamma_{ij}<0$.

### 3.2 Computation using Bernoulli variables

Write each coordinate as a sum of Bernoulli variables.

For fixed $i$,

$$
Z_i = \sum_{k=1}^n \varepsilon_k^{(i)},
\qquad
\varepsilon_k^{(i)} \sim \operatorname{Bernoulli}(p_i),
$$

where $\{\varepsilon_k^{(i)}\}_{k=1}^n$ are independent across $k$.

Similarly, for $j$,

$$
Z_j = \sum_{k=1}^n \delta_k^{(j)},
\qquad
\delta_k^{(j)} \sim \operatorname{Bernoulli}(p_j),
$$

where $\{\delta_k^{(j)}\}_{k=1}^n$ are independent across $k$.

Within the same trial $k$, exactly **one** outcome occurs, so at most one of the
$\varepsilon_k^{(i)}, \delta_k^{(j)},\dots$ can be $1$.

Now compute the covariance:

$$
\begin{aligned}
\operatorname{Cov}(Z_i,Z_j)
&=
\operatorname{Cov}\Big(
\sum_{k=1}^n \varepsilon_k^{(i)},
\sum_{l=1}^n \delta_l^{(j)}
\Big) \\
&= \sum_{k=1}^n \sum_{l=1}^n
   \operatorname{Cov}\big(\varepsilon_k^{(i)}, \delta_l^{(j)}\big).
\end{aligned}
$$

For $k\ne l$ the random variables are independent, so the covariance is $0$.
Thus only the terms with $k=l$ remain:

$$
\operatorname{Cov}(Z_i,Z_j)
= \sum_{k=1}^n
   \operatorname{Cov}\big(\varepsilon_k^{(i)}, \delta_k^{(j)}\big)
= n\,\operatorname{Cov}\big(\varepsilon_1^{(i)}, \delta_1^{(j)}\big).
$$

Within a single trial, either outcome $i$ occurs or outcome $j$ occurs or some other outcome occurs, but never both $i$ and $j$ simultaneously.  
Hence

$$
\varepsilon_1^{(i)}\delta_1^{(j)} = 0 \quad\text{always}.
$$

So

$$
E\big[\varepsilon_1^{(i)}\delta_1^{(j)}\big] = 0,
$$

and therefore

$$
\begin{aligned}
\operatorname{Cov}\big(\varepsilon_1^{(i)}, \delta_1^{(j)}\big)
&= E\big[\varepsilon_1^{(i)}\delta_1^{(j)}\big]
   - E\big[\varepsilon_1^{(i)}\big]E\big[\delta_1^{(j)}\big] \\
&= 0 - p_i p_j \\
&= -p_i p_j.
\end{aligned}
$$

Putting this together,

$$
\Gamma_{ij}
= \operatorname{Cov}(Z_i,Z_j)
= n (-p_i p_j)
= -n p_i p_j,
\qquad i\ne j.
$$

So the covariance matrix of the multinomial vector is

$$
\Gamma(Z)_{ij} =
\begin{cases}
n p_i(1-p_i), & i=j,\\[4pt]
- n p_i p_j, & i\ne j.
\end{cases}
$$

**Remark:** The off–diagonal covariances are negative because if one outcome’s count is higher, the others must be lower (the total number of trials $n$ is fixed).

---

## 4. Multivariate normal distribution

We now move to a continuous analogue: the **multivariate normal** (Gaussian) distribution.

### 4.1 Definition

A random vector $X\in\mathbb{R}^d$ is said to be **multivariate normal**
with mean vector $\mu\in\mathbb{R}^d$ and covariance matrix
$\Gamma$ (a $d\times d$ symmetric positive semidefinite matrix) if we write

$$
X \sim N_d(\mu,\Gamma)
\quad\text{or}\quad
X \sim \text{multivariate normal}(\mu,\Gamma),
$$

and:

- $E(X) = \mu$,
- $\Gamma = \operatorname{Cov}(X)
= \big[ \operatorname{Cov}(X_i,X_j) \big]_{1\le i,j\le d}$.

---

### 4.2 Linear representation $X = \mu + A Z$

One convenient way to construct a multivariate normal is:

- Let $Z = (Z_1,\dots,Z_d)^\top$ with $Z_i \stackrel{iid}{\sim} N(0,1)$.
- Let $A$ be a $d\times d$ matrix.

Define

$$
X = \mu + A Z.
$$

Then:

- $E(X) = \mu$,
- The covariance matrix is
  $$
  \Gamma
  = \operatorname{Cov}(X)
  = E\big[(X-\mu)(X-\mu)^\top\big]
  = A\,E[Z Z^\top]\,A^\top
  = A I A^\top
  = A A^\top.
  $$

Thus any symmetric positive semidefinite matrix $\Gamma$ can be written as $A A^\top$, and $X=\mu + A Z$ is a multivariate normal with that covariance.

**Remark:** $A A^\top$ is automatically symmetric and positive semidefinite.

---

### 4.3 Characterization via linear combinations

A very important fact:

> A random vector $X\in\mathbb{R}^d$ is **multivariate normal** if and only if  
> every linear combination $t^\top X$ is (univariate) normal
> for all $t\in\mathbb{R}^d$.

More precisely,

- If $X\sim N_d(\mu,\Gamma)$,
  then for any fixed $t\in\mathbb{R}^d$,
  $$
  t^\top X \sim N\big(t^\top\mu,\; t^\top\Gamma t\big).
  $$

- Conversely, if every scalar projection $t^\top X$ is normal
  (for all $t$), then $X$ is multivariate normal.

This is one of the two main ways to recognize (or define) multivariate normality.

---

## 5. Characterizing a distribution via linear forms

Multinomial and multivariate normal are two fundamental examples of random vectors.
We now ask: **How can we characterize the distribution of a general
random vector $X\in\mathbb{R}^d$?**

One way, which you saw in measure-theoretic probability, is via the joint CDF

$$
F_X(t_1,\dots,t_d)
=
P\big( X_1 \le t_1,\dots,X_d \le t_d \big).
$$

Another way is via the family of **linear forms** $t^\top X$.

For each $t\in\mathbb{R}^d$ and $u\in\mathbb{R}$,

$$
P(t^\top X \le u)
$$

describes the distribution of the random variable $t^\top X$.
Geometrically, in $\mathbb{R}^2$, the event $\{t^\top X \le u\}$ is a **half-plane**.

If we restrict to $t$ with $\|t\|_2 = 1$, then we are essentially looking at all
unit-direction projections.

---

## 6. Characteristic function of a random vector

For a random vector $X\in\mathbb{R}^d$, the **characteristic function** is defined by

$$
\varphi_X(t) = E\big[e^{i\,t^\top X}\big],
\qquad t\in\mathbb{R}^d.
$$

Note that this is just the 1-dimensional characteristic function of $t^\top X$,
evaluated at $1$:

$$
\varphi_X(t)
=
\varphi_{t^\top X}^{(1)}(1),
$$

where $\varphi_{t^\top X}^{(1)}$ denotes the univariate characteristic function
of the scalar random variable $t^\top X$.

The family $\{\varphi_X(t)\}_{t\in\mathbb{R}^d}$ completely determines
the distribution of $X$, and later lectures develop an inversion formula
that recovers $P(X\in A)$ for rectangles $A$ from $\varphi_X$.

---

## 7. Preview: Inversion formula and uniform trick

Your professor ends the lecture by foreshadowing a technique that will be fully developed later:

- Let $A = \prod_{i=1}^d (a_i,b_i)$ be an open rectangle.
- Let $U \sim \mathrm{Uniform}(A)$, with density
  $$
  f_U(u) = \frac{1}{\text{vol}(A)}, \quad u\in A,
  $$
  and $0$ otherwise.
- Let $X$ be independent of $U$ and define
  $$
  Y = X - U.
  $$

Then $Y$ is bounded and integrable, and its density at $0$ satisfies

$$
f_Y(0) = P(X \in A).
$$

Using characteristic functions, one can express $f_Y(0)$ as a limit of integrals
of $\varphi_X(t)\varphi_U(-t)$ over $[-T,T]^d$, which leads to the multivariate
**inversion formula**.

This is the key idea that will be used in subsequent lectures to compute
probabilities of events $X\in A$ using $\varphi_X$.

---

## 8. Big-picture takeaways from Lecture 1

1. A **random vector** in $\mathbb{R}^d$ is just a $d$-tuple of random variables.
2. The **multinomial** distribution generalizes the binomial; its covariance
   matrix has
   - diagonal entries $n p_i(1-p_i)$ and
   - off-diagonal entries $-n p_i p_j$.
3. A **multivariate normal** vector can be built as $X = \mu + A Z$ where
   $Z$ has iid $N(0,1)$ components and $\Gamma = A A^\top$.
4. The distribution of a random vector is characterized either by
   - the joint CDF $F_X$, or
   - the family of distributions of all linear forms $t^\top X$, or
   - the characteristic function $\varphi_X(t) = E[e^{i t^\top X}]$.
5. The inversion formula (developed later) allows you to recover probabilities
   like $P(X\in A)$ from $\varphi_X$ using a **uniform-subtraction trick**.

These notes line up with the handwriting in `01-06.pdf` and are ready to drop into a GitHub repo or VS Code workspace.
