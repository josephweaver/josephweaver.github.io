# **Lecture 30 — Lévy Modulus of Continuity and Haar Basis Construction of Brownian Motion**
STT 882  
April 2, 2025

## 1. Lévy Modulus of Continuity (wrap-up)

Recall from last time:

- We worked with **dyadic rationals**
  \[
  Q_2 = \left\{\frac{k}{2^n} : k=0,\dots,2^n,\ n\in\mathbb N\right\}.
  \]

- For each sample point \(\omega\), there exists a random \(N(\omega)\) such that for all integers \(n > N(\omega)\) and all
  \[
  s,t\in[0,1]\cap Q_2,\quad 0\le s<t\le 1,\quad t-s<2^{-n},
  \]
  we have the increment bound
  \[
  |B_t - B_s|
    \le 3\,(b n)^{1/2}\,2^{-n/2},
  \]
  where
  \[
  b = 2(1+\varepsilon) C_N(2),\qquad \varepsilon>0,
  \]
  and \(C_N(2)\) is the constant coming from the tail estimates used before.

### 1.1 Oscillation function

Define the **oscillation of \(B\)** at scale \(\delta\) (on dyadic rationals) by
\[
\operatorname{osc}(\delta)
  = \sup\Big\{|B_t - B_s|
      : |t-s|<\delta,\ s,t\in Q_2,\ 0\le s,t\le 1\Big\}.
\]

If \(n>N(\omega)\) and \(2^{-n+1}<\delta\le 2^{-n+2}\) then
\[
\operatorname{osc}(\delta)
   \le 3\,(b n)^{1/2}\,2^{-n/2}.
\]

Use that
\[
n \le \log_2\frac{1}{\delta} + C,
\qquad
2^{-n} \le 2\delta,
\]
to rewrite as
\[
\operatorname{osc}(\delta)
  \le 3\big[b\,\log_2(1/\delta)\big]^{1/2}\,(2\delta)^{1/2}
  \le C(\varepsilon)\,\sqrt{\delta\log(1/\delta)},
\]
where \(C(\varepsilon)\) is a constant depending only on \(\varepsilon\).

### 1.2 Final Lévy estimate (dyadic version)

We obtain the Lévy modulus of continuity on the dyadic rationals:
\[
\limsup_{\delta\downarrow 0}
   \frac{\operatorname{osc}(\delta)}
        {\sqrt{\,\delta\log(1/\delta)\,}}
   \le C(\varepsilon),
   \quad\text{a.s.}
\]

Letting \(\varepsilon\) be small gives the **qualitative form**
> For almost every \(\omega\), there exists \(\delta_0(\omega)>0\) and a constant \(K(\omega)\) such that  
> \[
> |B_t(\omega) - B_s(\omega)|
>    \le K(\omega)\sqrt{|t-s|\log\frac{1}{|t-s|}},
>    \quad 0<|t-s|<\delta_0(\omega),
> \]
> whenever \(s,t\in Q_2\).

This is Lévy’s modulus of continuity (proved here first on dyadic rationals).

---

## 2. Extension from Dyadic Rationals to All \(t\in[0,1]\)

So far the bounds are for \(s,t\in Q_2\).  

To extend Brownian motion to all \(t\in[0,1]\), we proceed as follows.

Fix \(\omega\). For each \(t\in[0,1]\), choose any sequence of dyadic rationals
\[
t_n \in Q_2,\qquad t_n\to t.
\]

The Lévy modulus bound shows that \(\{B_{t_n}(\omega)\}\) is a Cauchy sequence, so the limit
\[
\widetilde B_t(\omega) := \lim_{n\to\infty} B_{t_n}(\omega)
\]
exists and is independent of the approximating sequence.

Define
\[
B(t) := \widetilde B_t,\qquad 0\le t\le 1.
\]

Then:

- \(B(t)\) has continuous sample paths on \([0,1]\),  
- For \(t\in Q_2\), we recover the original process,  
- The finite-dimensional distributions are unchanged,  
so this is a continuous version of Brownian motion.

---

## 3. Another Construction of Brownian Motion:
### Reproducing Kernel Hilbert Space / Haar Basis

Now we present **another way to construct Brownian motion on \([0,1]\)**.

### 3.1 Hilbert space setup

Let
\[
H = L^2[0,1]
  = \left\{f:[0,1]\to\mathbb R :
      \|f\|^2 = \int_0^1 f(x)^2\,dx < \infty\right\}
\]
with inner product
\[
\langle f,g\rangle = \int_0^1 f(x)g(x)\,dx.
\]

Think of \(H\) as the infinite-dimensional analogue of \(\mathbb R^n\) with the usual dot product.

For Brownian motion we want
\[
\operatorname{Cov}(B_s,B_t) = s\wedge t.
\]

Define, for each \(t\in[0,1]\),
\[
A_t(x) := \mathbf 1_{[0,t]}(x)\in H.
\]

Then
\[
\langle A_s, A_t\rangle
   = \int_0^{s\wedge t} 1\,dx
   = s\wedge t.
\]

So the covariance structure of Brownian motion is encoded by the map
\[
t \mapsto A_t \in H.
\]

---

## 4. Orthonormal Systems and Haar Basis

In a Hilbert space, we can choose a complete orthonormal system (CON).

There exists a sequence \(\{H_k\}_{k\ge0}\subset H\) such that

1. \(\|H_k\|=1\) for all \(k\),  
2. \(\langle H_i,H_j\rangle = 0\) if \(i\ne j\),  
3. For any \(f\in H\),
   \[
   \sum_{k=0}^\infty \langle f,H_k\rangle^2 = \|f\|^2
   \quad\text{(Parseval)}.
   \]

We call \(\{H_k\}\) a **complete orthonormal system** (COS).

**Examples of COS** in \(L^2[0,1]\):

- Trigonometric system: \(\cos(2\pi k x)\), \(\sin(2\pi k x)\), \(k\ge1\).  
- **Haar system** (this is the one we use here).

### 4.1 Haar functions (schematic)

On \([0,1]\):

- \(H_0(t) = 1\), \(0\le t\le1\).

- \(H_1\) is \(+1\) on \([0,\tfrac12)\) and \(-1\) on \([\tfrac12,1]\).

- In general, at level \(m\), there are \(2^{m-1}\) Haar functions which are piecewise constant with support on dyadic intervals of length \(2^{-m+1}\), taking the values \(+1\) and \(-1\) on halves of their support.

The collection \(\{H_k\}_{k\ge0}\) forms an orthonormal basis of \(L^2[0,1]\).

---

## 5. Representing the Covariance with Haar Functions

For any fixed \(t\in[0,1]\),
\[
A_t(x) = \mathbf 1_{[0,t]}(x)
       = \sum_{k=0}^\infty \langle A_t, H_k\rangle\, H_k(x)
\]
in \(L^2[0,1]\).  

Define
\[
S_k(t) := \int_0^t H_k(x)\,dx
        = \langle A_t, H_k\rangle.
\]

Then,
\[
A_t(x) = \sum_{k=0}^\infty S_k(t)\,H_k(x),
\]
and by Parseval,
\[
\sum_{k=0}^\infty S_k(s)S_k(t)
   = \langle A_s, A_t\rangle
   = s\wedge t.
\]

---

## 6. Series Representation of Brownian Motion

Let \(\{Z_k\}_{k\ge0}\) be i.i.d. \(N(0,1)\) random variables.

Define a process on \([0,1]\):
\[
B(t) = \sum_{k=0}^\infty S_k(t) Z_k,\qquad 0\le t\le1.
\]

For fixed \(t\), this is a Gaussian series with mean zero and variance
\[
\operatorname{Var}(B(t))
  = \sum_{k=0}^\infty S_k(t)^2
  = \|A_t\|^2
  = t.
\]

For \(s,t\in[0,1]\),
\[
\operatorname{Cov}(B(s),B(t))
  = \sum_{k=0}^\infty S_k(s)S_k(t)
  = s\wedge t.
\]

Hence \(\{B(t)\}_{0\le t\le1}\) is a **Gaussian process with the correct covariance**, so it has the finite-dimensional distributions of Brownian motion.

---

## 7. Continuity of the Series

We still need to know that the series
\[
\sum_{k=0}^\infty S_k(t) Z_k
\]
converges uniformly in \(t\) and gives a continuous function.

Key facts (sketched in the notes):

1. For each \(k\),
   \[
   S_k(t) = \int_0^t H_k(x)\,dx
   \]
   is piecewise linear with small support (mostly disjoint supports across levels).

2. There is a Gaussian tail bound: for almost every \(\omega\),
   \[
   |Z_k(\omega)|\le C(\omega)\sqrt{\log k},\qquad k\text{ large}.
   \]

3. Using these and the structure of \(S_k\), one shows
   \[
   \sum_{k=0}^\infty \sup_{0\le t\le1}
         |S_k(t) Z_k|
      <\infty\quad\text{a.s.},
   \]
   which implies **uniform convergence** of the partial sums
   \[
   \sum_{k=0}^N S_k(t)Z_k
   \]
   to a continuous limit on \([0,1]\).

Thus the process \(B\) defined by the Haar expansion has **continuous sample paths** and the correct covariance, so it is a version of standard Brownian motion.

> This is a constructive way to build Brownian motion from an orthonormal basis of \(L^2[0,1]\), using the reproducing kernel (covariance) structure.

---

# **End of Lecture 30**
