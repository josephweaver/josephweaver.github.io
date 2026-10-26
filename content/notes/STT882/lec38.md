# 38 — Two-Sided Hitting, Gambler’s Ruin for BM, and Exponential Martingales


## 1. Two-Sided Hitting Time
Fix two levels
$$
a<0<b,
$$
and define the stopping time
$$
T = T_b \wedge T_a,
\qquad
T_b = \inf\{t>0 : B_t = b\},\quad
T_a = \inf\{t>0 : B_t = a\}.
$$

**Question:** What is the probability that Brownian motion hits $a$ before $b$?
$$
P_0(T=T_a)=P_0(T_a<T_b).
$$

---

## 2. Using the Martingale $B_t$
The stopped process $\{B_{t\wedge T}\}$ is bounded:
$$
|B_{t\wedge T}| \le \max(|a|,b),
$$
so it is **uniformly integrable**.

Thus
$$
B_{t\wedge T} \xrightarrow[t\to\infty]{a.s.} B_T,
$$
and
$$
E_0[B_{t\wedge T}] = E_0[B_0]=0.
$$

Apply dominated convergence:
$$
0 = E_0[B_T]
  = P_0(T_a<T_b)\cdot a + P_0(T_b<T_a)\cdot b.
$$

Since the two events partition the probability space,
$$
P_0(T_a<T_b)+P_0(T_b<T_a)=1.
$$

Solving:
$$
\boxed{P_0(T_a<T_b)=\frac{b}{\,b-|a|\,}},\qquad
\boxed{P_0(T_b<T_a)=\frac{|a|}{\,b-|a|\,}}.
$$

---

## 3. Translation to the General Starting Point $x$

If the Brownian motion starts at $x\in(a,b)$, by spatial translation:
$$
\boxed{
P_x(T_a<T_b)=\frac{b-x}{b-a}},\qquad
\boxed{
P_x(T_b<T_a)=\frac{x-a}{b-a}}.
$$

(See the diagram on **page 1** of the notes: the interval is shifted so that the left boundary becomes $0$.)  
:contentReference[oaicite:1]{index=1}

---

## 4. Expected Value of the Minimum Exit Time
New question:
$$
E_x(T_a\wedge T_b).
$$

Start with the martingale
$$
B_t^2 - t.
$$

Since $\{B_{t\wedge T}^2\}$ is bounded (BM confined to $[a,b]$ until exit), it is uniformly integrable.

Then:
$$
E_x[B_{t\wedge T}^2 - (t\wedge T)]
\xrightarrow[t\to\infty]{}
E_x[B_T^2 - T].
$$

Because $B_T\in\{a,b\}$,
$$
E_x[B_T^2] = a^2 P_x(T_a<T_b) + b^2 P_x(T_b<T_a).
$$

Hence
$$
E_x(T)
   = E_x[B_T^2]
   = \frac{b-x}{b-a}a^2 + \frac{x-a}{b-a}b^2.
$$

This is finite since $T$ has finite expectation when BM is confined to an interval.

---

## 5. An Exponential Martingale and the Probability of Ever Hitting $a$  
We consider the exponential martingale
$$
M_t = e^{\theta B_t - \frac12 \theta^2 t}.
$$

We study it stopped at $T\wedge t$:
$$
M_{t\wedge T} = e^{\theta B_{t\wedge T} - \frac12 \theta^2 (t\wedge T)}.
$$

Take $\theta = 2b$.  
From the bound in the notes (page 3)  
:contentReference[oaicite:2]{index=2}:
$$
B_{t\wedge T} \le a + b(t\wedge T),
$$
we get
$$
M_{t\wedge T}
   \le e^{\,2b[a+b(t\wedge T)] - 2b^2 (t\wedge T)}
   = e^{2ab}.
$$

Thus $\{M_{t\wedge T}\}$ is uniformly integrable and
$$
E_0[M_{t\wedge T}] = 1
\quad\Rightarrow\quad
E_0[M_T]=1.
$$

On $\{T<\infty\}$,
$$
M_T = e^{2b B_T - 2b^2 T}.
$$

Since hitting $a$ is the only relevant event in this argument,
$$
B_T=a \quad\Rightarrow\quad M_T=e^{2ab}.
$$

On $\{T=\infty\}$, one shows (via SLLN in the notes, page 3) that
$$
M_T = 0.
$$

Thus
$$
1 = E_0[M_T]
    = e^{2ab} P_0(T<\infty) + 0\cdot P_0(T=\infty).
$$

Solving:
$$
\boxed{
P_0(T<\infty) = e^{-2ab}}.
$$

This is the classical **one-sided non-return probability** for Brownian motion with drift-like exponential weighting.

---

## 6. An Example of Optional Stopping with a Discrete Random Target

Consider a discrete random variable $X$ with distribution (page 4 of notes):  
:contentReference[oaicite:3]{index=3}

| $x$        | $-\tfrac{7}{4}$ | $1$ | $2$ |
|--------------|-------------------|-------|-------|
| $p(x)$     | $0.4$           | $0.5$| $0.1$|

Construct a stopping time $\tau$ such that
$$
B_\tau^0 \overset{d}{=} X.
$$

Define
$$
\mathcal F_1 = \sigma\{X\in\{-\tfrac74\},\, X\in\{1,2\}\}.
$$

Then
$$
E[X\mid \mathcal F_1]
   = \begin{cases}
      -\tfrac74, & X=-\tfrac74,\\
      \frac{1\cdot0.5 + 2\cdot0.1}{0.6}
      = \tfrac76, & X\in\{1,2\}.
     \end{cases}
$$

Since $E[X]=0$, Brownian motion can realize this by setting
$$
\tau = T_{7/6} \wedge T_{-7/4}.
$$

Then
$$
B_\tau \overset{d}{=} X.
$$

This is an application of optional stopping + gambler’s ruin probabilities returning a prescribed distribution.

---

# **End of Lecture 38**
