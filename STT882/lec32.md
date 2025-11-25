# Lecture 32 — Markov Property of Brownian Motion
STT 882  
April 9, 2025

Let  
- $\Omega = C[0,\infty)$  
- $B_t(\omega) = \omega(t)$  
- $\mathcal{F}_t^0 = \sigma\{B_s: 0 \le s \le t\}$ the natural filtration  
- $\{P_x\}_{x\in\mathbb{R}}$ a family of probability measures with  
  - $P_x(B_0 = x)=1$  
  - $P_x(A)=P_0(A - x)$  
  so $P_x$ is the distribution of Brownian motion starting at $x$.

The laws $P_x$ differ only in initial conditions.

---

## Markov Property (Main Statement)

For any bounded measurable functional  
$$
Y : C([0,\infty)) \to \mathbb{R},
$$
and for any $t \ge 0$,  
$$
E^{x}\big( Y\circ \theta_t \,\big|\, \mathcal{F}_t^0 \big)
\;=\;
E^{B_t^x}(Y)
\qquad\text{a.s.}
$$

### Shift operator
Define the shift map
$$
\theta_t(\omega)(s)=\omega(t+s),\quad s\ge 0.
$$

Then
- $Y\circ\theta_t$ depends only on the increments after time $t$.
- By independent increments of Brownian motion, these increments are independent of $\mathcal{F}_t^0$.

---

# Examples of $Y$

1. **Integral functional**
   $$
   Y=\int_0^1 B_s\,ds.
   $$

2. **Cylinder functional**
   $$
   Y=\prod_{k=1}^d f_k(B_{h_k}),
   \qquad
   0<h_1<\cdots<h_d,
   \quad f_k:\mathbb{R}\to\mathbb{R} \text{ bounded}.
   $$

Then
$$
Y\circ\theta_t = \prod_{k=1}^d f_k\big(B_{t+h_k}\big).
$$

---

# Lemma (Lehenthal's Lemma)

If  
- $X$ is $\mathcal{F}$-measurable,  
- $\vec{Y}=(Y_1,\dots,Y_d)$ is independent of $\mathcal{F}$,  
- $f:\mathbb{R}^{d+1}\to\mathbb{R}$ is bounded measurable,

then
$$
E\big[ f(X,\vec{Y}) \mid \mathcal{F} \big]
 = g(X),
\quad
g(x)=E\big[f(x,\vec{Y})\big].
$$

This is a direct application of Fubini and independence.

---

# Proof of Markov Property for Cylinder Sets

Let
- $X = B_t^x$,
- $Y_k = B_{t+h_k}^x - B_t^x$ (increments),
- $\vec{Y} = (Y_1,\dots,Y_d)$.

Because Brownian increments are independent of $\mathcal{F}_t^0$,
$$
Y_k \perp\!\!\!\perp \mathcal{F}_t^0.
$$

Take  
$$
f(x,\vec{y}) = \prod_{k=1}^d f_k(x+y_k).
$$

Then by the lemma,
$$
E^x\big( Y\circ\theta_t \mid \mathcal{F}_t^0 \big)
 = 
g(B_t^x),
$$
where
$$
g(x)=E^x\Big[\prod_{k=1}^d f_k(B_{h_k})\Big].
$$

Thus
$$
E^x( Y\circ\theta_t \mid \mathcal{F}_t^0 )
=
E^{B_t^x}(Y),
$$
establishing the Markov property.

---

# Example: Hitting Time After a Shift

Let  
$$
T_0=\inf\{t\ge 0 : B_t=0\},
\qquad
R=\inf\{t>1 : B_t=0\}.
$$

Then
$$
Y = \mathbf{1}_{\{T_0>1\}}\circ\theta_1
    = \mathbf{1}_{\{R>1+t\}}.
$$

Using Markov property,
$$
P_x(R>1+t)
=
\int_{-\infty}^\infty P_1(x, y)\, P_y(T_0>t)\, dy,
$$
where
$$
P_1(x,y) = p_t(x,y)=\frac{1}{\sqrt{2\pi t}}
  \exp\!\left(-\frac{(y-x)^2}{2t}\right)
$$
is the Brownian transition density.

---

# Example: Last Zero Before Time 1

Let
$$
L=\sup\{t\le 1: B_t = 0\}.
$$

Then for $0\le t\le 1$,
$$
P_0(L\le t)
=
\int_{-\infty}^{\infty}
  p_t(0,y)\,
  P_y(T_0>1-t)\, dy.
$$

Note:
$$
\mathbf{1}_{\{T_0>1-t\}}\circ\theta_t
=
\mathbf{1}_{\{L\le t\}}.
$$

---

# Summary

- Brownian motion has the **strong Markov property**.
- Conditioning future functionals after time $t$ depends **only on $B_t$**.
- The shift operator $\theta_t$ encodes this.
- Lévy’s lemma makes the proof work for cylinder sets.
- Examples: hitting times and last zero before 1.

