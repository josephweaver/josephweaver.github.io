# **Lecture 39 — Poisson Convergence & Domains of Attraction**

We study two distinct but related limit behaviors:

1. **Poisson convergence** (Law of Rare Events),
2. Lindeberg–Feller CLT and truncation,
3. Lévy’s criterion for **domain of attraction of the normal law**,
4. The Berry–Esseen quantitative CLT.

---

# 1. A CLT Example: Harmonic Means of Rare Events

(Page 1 of notes.)

Let $\{Y_k\}_{k\ge1}$ be independent with:

$$
P(Y_k = 1) = \frac{1}{k},
\qquad
P(Y_k = 0) = 1-\frac{1}{k}.
$$

Then:

$$
S_n = \sum_{k=1}^n Y_k.
$$

Compute expectation:

$$
E[S_n] = \sum_{k=1}^n \frac{1}{k} \sim \log n.
$$

Variance:

$$
\mathrm{Var}(S_n)
= \sum_{k=1}^n \left(\frac{1}{k}-\frac{1}{k^2}\right)
\sim \log n.
$$

Thus the natural normalization is:

$$
\frac{S_n - \log n}{\sqrt{\log n}} \Rightarrow N(0,1).
$$

### Writing as a triangular array

Define:

$$
X_{n,k}
= \frac{Y_k - \frac{1}{k}}{\sqrt{\log n}},
\qquad 1\le k\le n.
$$

Then:

$$
S_n - \log n
= \sqrt{\log n}\sum_{k=1}^n X_{n,k}.
$$

The Lindeberg condition holds trivially because:

$$
\vert Y_k - 1/k\vert \le 1,
\qquad
\vert X_{n,k}\vert  \le \frac{1}{\sqrt{\log n}}\to0.
$$

Thus $\max_{1\le k\le n}\vert X_{n,k}\vert \to0$, which implies Lindeberg.

So the **Lindeberg–Feller CLT applies** and yields the above normal limit.

---

# 2. Truncation Example for Arrays with Infinite Moments

(Page 1 → page 2.)

Consider iid $\{X_{n,m}\}_{m=1}^n$ for each fixed $n$, but with a **heavy-tailed** distribution that changes with $n$. Suppose:

$$
P\left(X_{n,1} = \pm \frac{1}{\sqrt n}\right)
= \frac12 - \frac{1}{2n^2},
$$

and with very small probability:

$$
P\left(X_{n,1} = \pm \frac{4^k}{\sqrt n}\right)
=
\frac{1}{2n^2 2^k},\qquad k=1,2,3,\dots
$$

You can see on page 1–2 that:

$$
\sum_{k=1}^\infty \frac{1}{2^k} = 1,
$$

so this defines a probability distribution.

But:

$$
E\vert X_{n,1}\vert  = \infty,
\qquad
E[X_{n,1}^2] = \infty,
$$

by the diverging tail contributions (page 2).

Thus we **cannot** apply the CLT directly.

---

## 2.1 Define truncation

Define the “good” variables:

$$
Y_{n,m}
=
X_{n,m}\mathbf{1}_{\vert X_{n,m}\vert \le 1/\sqrt n}.
$$

Then from page 2:

$$
Y_{n,1} =
\begin{cases}
0, & \text{with prob } 1/n \$$4pt]
\pm\,1/\sqrt n, &\text{with prob } \frac12 - \frac{1}{2n^2}.
\end{cases}
$$

Compute:

$$
E[Y_{n,1}] = 0,
$$

$$
E[Y_{n,1}^2]
= \frac{1}{n}\Big(\frac{1}{2}-\frac{1}{2n^2}\Big)
= \frac{1}{n} - \frac{1}{n^3}.
$$

Thus:

$$
\sum_{m=1}^n \mathrm{Var}(Y_{n,m})
= 1 - \frac{1}{n^2} \to 1.
$$

So the triangular array $\{Y_{n,m}\}$ satisfies Lindeberg and hence:

$$
T_n = \sum_{m=1}^n Y_{n,m}
\Rightarrow N(0,1).
$$

---

## 2.2 Compare $T_n$ and $S_n = \sum_{m=1}^n X_{n,m}$

Page 2–3:

$$
P(S_n \neq T_n)
\le
n\,P(\vert X_{n,1}\vert >1/\sqrt n)
=
\frac{n}{n^2}
=
\frac1n
\to 0.
$$

Thus:

$$
S_n - T_n \xrightarrow{P} 0.
$$

By Slutsky:

$$
\boxed{
S_n \Rightarrow N(0,1).
}
$$

This is the same structure as in Lecture 38: **truncation recovers CLT even when raw moments diverge**.

---

# 3. Lévy’s Domain of Attraction Criterion

(Page 3.)

We say iid $X_1,X_2,\dots$ are in the **domain of attraction of the normal law** if there exist constants $a_n\in\mathbb R$, $b_n>0$ such that:

$$
\frac{S_n - a_n}{b_n} \Rightarrow N(0,1).
$$

Paul Lévy’s condition:

$$
\boxed{
\frac{y^2 P(\vert X\vert >y)}
     {E[X^2;\,\vert X\vert \le y]}
\;\xrightarrow[y\to\infty]{}\;
0.
}
\tag{Lévy}
$$

This is both *necessary and sufficient* for the normal domain of attraction.

Your notes comment:

> “If does not hold, forget about truncation.”

i.e., no normalization (even nonlinear) will yield a CLT-like limit without severe modifications.

---

# 4. Berry–Esseen Theorem

(Page 3.)

If $X_1,X_2,\dots$ iid with:

$$
E[X]=0, \quad \mathrm{Var}(X)=1,\quad E\vert X\vert ^3<\infty,
$$

then:

$$
\vert 
F_n(x) - \Phi(x)
\vert 
\le
\frac{3E\vert X\vert ^3}{\sqrt n},
\qquad
\forall x\in\mathbb R,
$$

where:

$$
F_n(x)=P\left(\frac{S_n}{\sqrt n}\le x\right),
\qquad
\Phi(x)=P(Z\le x),\ Z\sim N(0,1).
$$

Notes emphasize:

- “Convergence is **uniform**, not pointwise.”  
- $\sup \vert F_n-\Phi\vert \sim 1/\sqrt n$.

---

# 5. Poisson Convergence (Law of Rare Events)

(Page 3–4.)

If:

$$
Y \sim \mathrm{Poisson}(\lambda),\qquad P(Y=k) = e^{-\lambda}\frac{\lambda^k}{k!},
$$

then:

### **Classical result:**
$$
\mathrm{Bin}(n, \lambda/n) \Rightarrow \mathrm{Poisson}(\lambda).
$$

---

# 5.1 General Poisson Convergence Theorem

(Page 4.)

Let $\{X_{n,m}\}_{1\le m\le n}$ be independent Bernoulli variables:

$$
P(X_{n,m}=1) = p_{n,m},
\qquad
P(X_{n,m}=0) = 1 - p_{n,m}.
$$

Assume:

1.  
   $$
   \sum_{m=1}^n p_{n,m} \to \lambda\ge0.
   $$

2.  
   $$
   \max_{1\le m\le n} p_{n,m} \to 0.
   $$

Then:

$$
S_n = \sum_{m=1}^n X_{n,m}
\Rightarrow \mathrm{Poisson}(\lambda).
$$

This is the **Poisson limit for triangular arrays**.

---

# 5.2 Proof via characteristic functions

CF of Bernoulli:

$$
\varphi_{X_{n,m}}(t)
=
1 + p_{n,m}(e^{it}-1).
$$

Thus:

$$
\varphi_{S_n}(t)
=
\prod_{m=1}^n
\big(1 + p_{n,m}(e^{it}-1)\big).
$$

Set:

$$
a_{n,m}=p_{n,m}(e^{it}-1).
$$

If conditions (1)–(3) of the triangular-array lemma hold:

1. $\sum_{m=1}^n a_{n,m} \to \lambda(e^{it}-1)$,  
2. $\sup_n \sum_m \vert a_{n,m}\vert <\infty$,  
3. $\max_m \vert a_{n,m}\vert \to 0$,

then:

$$
\varphi_{S_n}(t)
\to
\exp\left(\lambda(e^{it}-1)\right),
$$

the CF of Poisson$(\lambda)$.

Thus:

$$
S_n \Rightarrow \mathrm{Poisson}(\lambda).
$$

---

# **Cheat–Sheet Summary — Lecture 39**

- Rare-event sum $S_n=\sum Y_k$ with $P(Y_k=1)=1/k$ satisfies a CLT:
  $$
  \frac{S_n-\log n}{\sqrt{\log n}} \Rightarrow N(0,1).
  $$

- Heavy-tailed triangular arrays may require **truncation** to satisfy Lindeberg.  
  If $S_n-T_n\to0$ in probability and $T_n\Rightarrow N(0,1)$, then $S_n\Rightarrow N(0,1)$.

- **Lévy’s criterion**:  
  $$
  \frac{y^2 P(\vert X\vert >y)}{E[X^2;\vert X\vert \le y]}\to 0
  \iff X\ \text{in Gaussian DOA}.
  $$

- **Berry–Esseen** gives uniform CLT rate  
  $\sup\vert F_n-\Phi\vert \le 3E\vert X\vert ^3/\sqrt n$.

- **Poisson convergence theorem**:  
  If $\sum p_{n,m}\to\lambda$ and $\max p_{n,m}\to0$, then  
  $$
  S_n=\sum X_{n,m} \Rightarrow \mathrm{Poisson}(\lambda).
  $$

