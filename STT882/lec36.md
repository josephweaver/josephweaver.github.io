# 36 — Scaling of Hitting Times, Stability, and Zero Set Structure
STT 882  
April 18, 2025

## **1. Review: Distribution of the First Hitting Time $T_a$**

Recall
$$
T_a = \inf\{t>0 : B_t = a\},\quad a>0.
$$

From the reflection principle,
$$
P_0(T_a < t) = 2 P_0(B_t > a)
           = 2P\!\left(Z > \frac{a}{\sqrt t}\right),
$$
where $Z\sim N(0,1)$.

Differentiate to obtain the density:
$$
f_{T_a}(t)
= \frac{\partial}{\partial t} P_0(T_a < t)
= \frac{a}{\sqrt{2\pi t^3}} \exp\!\left(-\frac{a^2}{2t}\right),\qquad t>0.
$$

As $t\to\infty$,  
$\exp(-a^2/(2t))\to 1$ but $t^{-3/2}\to 0$, so $f_{T_a}(t)\to 0$.

The expectation diverges:
$$
E[T_a] = \int_0^\infty t\, f_{T_a}(t)\,dt = \infty.
$$

---

## **2. Scaling Argument for $T_a \overset{D}{=} a^2 T_1$**

Instead of differentiating the reflection-principle expression, use Brownian scaling.

Define
$$
X_t = a\, B_t.
$$
Then
$$
\mathrm{cov}(X_{t_1}, X_{t_2}) = a^2 (t_1 \wedge t_2).
$$

Define the hitting time for $X_t$:
$$
S = \inf\{t : X_t = a\}.
$$
But $X_t = a B_t$, so
$$
S = \inf\{t : B_t = 1\} = T_1.
$$

Now scale time:
$$
Y_t = B(a^2 t),\qquad t\ge 0.
$$

Then the covariance of $Y_t$ is
$$
E[Y_{t_1}Y_{t_2}] = a^2 (t_1\wedge t_2),
$$
the same as $X_t$. By uniqueness of Gaussian processes, the finite-dimensional distributions match.

Let
$$
\tilde S = \inf\{t : Y_t = a\}.
$$

Since $Y_t = B(a^2 t)$,
$$
Y_{\tilde S} = a \iff B(a^2\tilde S) = a \iff a^2 \tilde S = T_a.
$$

Thus
$$
T_a = a^2 \tilde S,
\qquad \tilde S \overset{D}{=} T_1,
$$
so
$$
T_a \overset{D}{=} a^2 T_1.
$$

---

## **3. Independent and Stationary Increments of Hitting Times**

Let $0 < a < b$. Then:

1. **Independence of increments**
   $$
   T_b - T_a \ \perp\!\!\!\perp\ \mathcal F_{T_a}.
   $$

2. **Stationarity of increments**
   $$
   T_b - T_a \overset{D}{=} T_{\,b-a}.
   $$

This follows from the Strong Markov Property and the continuity of Brownian motion.

---

## **4. Hitting Times Form a Stable Law**

Consider the decomposition
$$
T_n = T_1 + (T_2 - T_1) + \cdots + (T_n - T_{n-1})
    = X_1 + X_2 + \cdots + X_n,
$$
where
$$
X_k \overset{D}{=} T_1,\qquad X_k\ \text{i.i.d.}
$$

From scaling,
$$
T_n \overset{D}{=} n^2 T_1.
$$

Thus
$$
X_1 + \cdots + X_n
  \overset{D}{=} n^2 T_1.
$$

This is the defining property of a **stable distribution**:
$$
\sum_{k=1}^n X_k \overset{D}{=} n^{1/\alpha} X_1.
$$

Here the exponent satisfies
$$
n^{1/\alpha} = n^2
\quad\Rightarrow\quad
\alpha = \frac12.
$$

So **$T_1$ is stable with index $1/2$**.

This parallels the Gaussian case:
$$
\sum_{k=1}^n Z_k \overset{D}{=} \sqrt{n}\, Z,
$$
which corresponds to stability index $\alpha = 2$.

Stable distributions only exist for $0<\alpha\le 2$.  
Thus Brownian hitting times produce the $\alpha=\tfrac12$ stable law.

---

## **5. The Zero Set and Last Exit Time**

Let
$$
L = \sup\{t\le 1 : B_t = 0\}
$$
be the **last exit time from 0** before time 1.

The handwritten plot on **page 2** of the PDF shows multiple BM paths, illustrating that the last zero time occurs near but not necessarily at $1$.  
:contentReference[oaicite:1]{index=1}

Using the representation from hitting-time densities,

$$
\begin{aligned}
P_0(L \le s)
  &= 2 \int_{x=0}^{\infty}
     (2\pi s)^{-1/2} e^{-x^2/(2s)}
     \, P_0(T_x > 1-s)\, dx.
\end{aligned}
$$

Insert the hitting-time tail:
$$
P_0(T_x>t)
  = \int_{t}^{\infty} \frac{x}{\sqrt{2\pi u^3}}
       e^{-x^2/(2u)}\, du.
$$

Substitute this into the integral and evaluate. After transformation $x = \sqrt{s/(1-s)}\, y$, one obtains the classical **arcsine law**:

### **Arcsine Law**
$$
P_0(L\le s)=\frac{2}{\pi}\arcsin(\sqrt{s}),
\qquad 0\le s\le 1.
$$

This is one of Lévy’s arcsine laws.

---

## **6. Structure of the Zero Set**
Let
$$
A(\omega)=\{t\ge 0 : B_t(\omega)=0\}.
$$

Claim:  
**Almost surely there are no isolated zeroes.**

That is, with probability 1,
> If $t\in A(\omega)$, then there exist sequences $t_n\downarrow t$ and  
> $s_n\uparrow t$ such that $B_{t_n}=B_{s_n}=0$.

The handwritten sketches on page 2 (lower right) show BM oscillating infinitely often around each zero—this follows from the law of the iterated logarithm and infinite variation.  
:contentReference[oaicite:2]{index=2}

Thus the zero set is **perfect** (closed and has no isolated points) and uncountable.

---

# **End of Lecture 37**
