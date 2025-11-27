# **Lecture 40 — Poisson Approximation in Total Variation**

This lecture gives a complete proof that, under the usual “law of rare events” assumptions,
a triangular array of Bernoulli random variables converges to a Poisson distribution **in total variation**, not just in distribution.

We also review dominated convergence for discrete measures, and develop the convolution inequalities needed for Poisson approximation.

---

# 1. Convergence in Distribution for Integer-Valued RVs

(Page 1.)

Suppose $X_n, X$ take values in $\mathbb Z$.  
Write:

$$
P_{n,k} := P(X_n = k), \qquad P_k := P(X = k).
$$

Assume:

- $P_{n,k} \to P_k$ for each $k\in\mathbb Z$,
- $\sum_{k\in\mathbb Z} P_{n,k} = 1$,  
- $\sum_{k\in\mathbb Z} P_k = 1$.

Then:

$$
\vert P_n - P\vert  := \sum_{k\in\mathbb Z} \vert P_{n,k} - P_k\vert  \xrightarrow{n\to\infty} 0.
$$

This implies convergence of the CDF at all continuity points:

$$
P(X_n\le k) - P(X\le k) \to 0,\qquad k\in\mathbb Z.
$$

*Reasoning:* Page 1 rewrites each term using positive/negative variations:

$$
P_k - P_{n,k} = (P_k - P_{n,k})^+ - (P_k - P_{n,k})^-.
$$

Summing:

$$
\sum_k (P_k - P_{n,k}) = 0
$$

because both are probability distributions.

Thus:

$$
\sum_k \vert P_{n,k}-P_k\vert 
= \sum_k (P_k - P_{n,k})^+ + \sum_k (P_k - P_{n,k})^-
= 2\sum_k (P_k - P_{n,k})^+.
$$

Page 1 uses the fact that each $P_{n,k}, P_k \le 1$, so dominated convergence applies on $\mathbb Z$.

---

# 2. Dominated Convergence on the Discrete Space $ \mathbb Z $

(Page 1–2.)

Let:

- $\Omega=\mathbb Z$,
- $\mathcal F$ = all subsets of $\mathbb Z$,
- $\mu(k)=1$ for each $k$,  
- So the integral $\int_\Omega f\,d\mu = \sum_{k\in\mathbb Z} f(k)$.

If:

1. $f_n(k)\to f(k)$ pointwise,
2. $\vert f_n(k)\vert \le g(k)$ with $\sum_k g(k)<\infty$,

then:

$$
\sum_k f_n(k) \to \sum_k f(k)
$$

by **Dominated Convergence**.

This justifies:

$$
P_{n,k}\to P_k \quad\Longrightarrow\quad 
\vert P_n-P\vert  = \sum_k \vert P_{n,k}-P_k\vert \to 0.
$$

---

# 3. Review: Product & Convolution of Measures

(Page 4.)

For probability measures $\mu_1,\mu_2$ on $\mathbb Z$:

- Product measure:
  $$
  (\mu_1\times \mu_2)(k,\ell) = \mu_1(k)\mu_2(\ell).
  $$

- Convolution:
  $$
  (\mu_1 * \mu_2)(m)
  = \sum_\ell \mu_1(\ell)\mu_2(m-\ell).
  $$

**Key inequality (page 4):**

$$
\vert \mu_1\times \mu_2 - \nu_1\times\nu_2\vert 
\le
\vert \mu_1-\nu_1\vert  + \vert \mu_2 - \nu_2\vert .
\tag{1}
$$

Then:

$$
\boxed{
\vert \mu_1 * \mu_2 - \nu_1 * \nu_2\vert 
\le
\vert \mu_1 - \nu_1\vert  + \vert \mu_2-\nu_2\vert .
}
\tag{2}
$$

(Proof on page 4: expansion of the double sum and regrouping.)

Repeated convolution generalizes this:

$$
\mu_1 * \cdots * \mu_n
\quad \text{is close to} \quad
\nu_1 * \cdots * \nu_n
\quad\text{if each pair } \mu_m,\nu_m \text{ are close in TV}.
$$

---

# 4. Poisson Approximation for Triangular Array of Bernoulli’s

(Page 3.)

Let:

$$
X_{n,m} \sim \mathrm{Ber}(p_{n,m}), \qquad 1\le m\le n.
$$

Define:

$$
S_n = \sum_{m=1}^n X_{n,m}.
$$

Assume (“law of rare events”):

1. $ \displaystyle \sum_{m=1}^n p_{n,m} \to \lambda $,
2. $ \displaystyle \max_{1\le m\le n} p_{n,m} \to 0 $.

Then:

$$
S_n \Rightarrow \mathrm{Poisson}(\lambda).
$$

This was proved earlier by characteristic functions.  
**Today: we prove convergence in total variation**.

Let:

$$
P_n(k) := P(S_n = k),
\qquad
Q_n(k) := P\!\left(\mathrm{Poisson}\!\left(\sum_m p_{n,m}\right)=k\right).
$$

Goal (page 3):

$$
\boxed{
\vert P_n - Q_n\vert 
\le
2\sum_{m=1}^n p_{n,m}^2.
}
\tag{3}
$$

Since:

$$
\sum_{m} p_{n,m}^2 \le \left(\max_m p_{n,m}\right) \sum_{m} p_{n,m}
\to 0,
$$

we obtain:

$$
\vert P_n - Q_n\vert  \to 0.
$$

Thus **Poisson convergence is uniform in total variation**.

---

# 5. Proof of the Total Variation Bound

(Page 3–4–5.)

Let:

$$
M_m := \mathrm{Ber}(p_{n,m}),
\qquad
\nu_m := \mathrm{Poisson}(p_{n,m}) \quad\text{(the “1-step Poisson”)}.
$$

Notice:

- $M_1 * M_2 * \cdots * M_n = P_n$,
- $\nu_1 * \nu_2 * \cdots * \nu_n = Q_n$.

Apply (2) repeatedly:

$$
\vert P_n - Q_n\vert 
\le
\sum_{m=1}^n \vert M_m - \nu_m\vert .
\tag{4}
$$

So the problem reduces to bounding:

$$
\vert M_m - \nu_m\vert 
\quad\text{for a single } p=p_{n,m}.
$$

---

## 5.1 Bound for One Bernoulli vs One Poisson

(Page 5.)

For a Bernoulli($p$) versus Poisson($p$), compute:

$$
M_m(0) = 1-p, \quad M_m(1)=p, \quad M_m(k)=0\ \text{for }k\ge2.
$$

$$
\nu_m(0)=e^{-p},\quad \nu_m(1)=pe^{-p},\quad 
\nu_m(k)=e^{-p}\frac{p^k}{k!},\ k\ge 2.
$$

Total variation:

$$
\vert M_m - \nu_m\vert 
=
\frac12\sum_{k=0}^\infty \vert M_m(k)-\nu_m(k)\vert .
$$

Summation (page 5):

$$
\vert 1-p - e^{-p}\vert  + \vert p - pe^{-p}\vert  + P(\mathrm{Poisson}(p)\ge2).
$$

Use:

$$
1 - p - e^{-p} = (1-e^{-p}) - p,
$$
$$
p - pe^{-p}= p(1-e^{-p}),
$$
$$
P(\mathrm{Poisson}(p)\ge2)
= 1 - e^{-p} - pe^{-p}.
$$

Summing:

$$
\vert M_m - \nu_m\vert 
\le
2p(1-e^{-p})
\le 2p^2,
$$

because $1-e^{-p} \le p$.

Thus:

$$
\vert M_m - \nu_m\vert \le 2p_{n,m}^2.
\tag{5}
$$

---

## 5.2 Combine (4) and (5)

$$
\vert P_n - Q_n\vert 
\le
\sum_{m=1}^n 2p_{n,m}^2
=
2\sum_{m=1}^n p_{n,m}^2.
$$

This is exactly the desired inequality (3).

Since $\sum p_{n,m}^2\to 0$ under the rare-event conditions, we conclude:

$$
\boxed{
\vert P_n - Q_n\vert  \to 0.
}
$$

Therefore, the Poisson limit holds in **total variation**, which is stronger than weak convergence.

---

# **Cheat–Sheet Summary — Lecture 40**

- On $\mathbb Z$, dominated convergence applies to sums $ \sum_k f_n(k) $.
- If $P_{n,k}\to P_k$ pointwise, then $ \vert P_n-P\vert \to 0 $.
- For independent Bernoulli($p_{n,m}$):

  $$
  S_n=\sum_{m=1}^n X_{n,m}
  $$

  and

  $$
  Q_n = \mathrm{Poisson}\!\left(\sum_m p_{n,m}\right),
  $$

  **Poisson approximation bound**:

  $$
  \vert P_n - Q_n\vert 
  \le
  2\sum_{m=1}^n p_{n,m}^2.
  $$

- Convolution inequality:

  $$
  \vert \mu_1*\mu_2 - \nu_1*\nu_2\vert 
  \le
  \vert \mu_1 - \nu_1\vert  + \vert \mu_2 - \nu_2\vert .
  $$

- Single-term approximation:

  $$
  \vert \mathrm{Ber}(p) - \mathrm{Pois}(p)\vert 
  \le
  2p^2.
  $$

- With $\max p_{n,m}\to 0$ and $\sum p_{n,m}\to\lambda$, we obtain:

  $$
  S_n \xRightarrow{\mathrm{TV}} \mathrm{Poisson}(\lambda).
  $$

