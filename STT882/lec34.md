# **Lecture 34 — Strong Markov Property, Hitting Times, Stopping Times**
STT 882  
April 14, 2025

## 1. Example (From Book)

We know that for standard Brownian motion $B_t$,

$$
\lim_{t\to\infty} \frac{B_t}{\sqrt{t}} = +\infty \quad \text{a.s.}
$$
and
$$
\lim_{t\to\infty} \frac{B_t}{\sqrt{t}} = -\infty \quad \text{a.s.}
$$

By continuity of sample paths, this implies Brownian motion oscillates to $+\infty$ and $-\infty$, therefore:

$$
T_a = \inf\{t>0 : B_t = a\} \quad \text{is finite a.s. for every } a\in\mathbb{R}.
$$

---

## 2. Proof of the first limit

Let
$$
B_n = \sum_{k=1}^{n} (B_k - B_{k-1}) = \sum_{k=1}^{n} Z_k,
$$
where $Z_k \overset{\text{iid}}{\sim} N(0,1)$.

Define
$$
S_n = \sum_{k=1}^{n} Z_k.
$$

Then
$$
\frac{S_n}{\sqrt{n}} \sim N(0,1),
$$
so
$$
P\!\left(\frac{S_n}{\sqrt{n}} > 1\right) = P(Z>1) > 0.
$$

By the *Hewitt–Savage 0-1 law*, for exchangeable events:

$$
P\left( \limsup_{n\to\infty} \frac{S_n}{\sqrt{n}} > 1 \right)
= P(Z>1) > 0
\quad\Rightarrow\quad
P\left( \lim_{n\to\infty} \frac{S_n}{\sqrt{n}} = +\infty \right) = 1.
$$

Thus,
$$
\lim_{n\to\infty} \frac{B_n}{\sqrt{n}} = +\infty \quad \text{a.s.}
$$

---

## 3. Stopping Times for Brownian Motion

We work on the canonical space:
$$
\Omega = C[0,\infty), \qquad B_t(\omega) = \omega(t).
$$

Filtration:
$$
\mathcal{F}_t^0 = \sigma\{B_s : 0 \le s \le t\}.
$$

> **Definition.**  
> A random time $T:\Omega\to[0,\infty]$ is a *stopping time (S.T.)* if  
> $$
> \{T \le t\} \in \mathcal{F}_t^0 \quad \forall t\ge 0.
> $$

Equivalent condition:
$$
\{T < t\} \in \mathcal{F}_t^0 \quad \forall t>0.
$$

Because Brownian motion filtration is **right-continuous**:
$$
\mathcal{F}_t^+ = \bigcap_{n=1}^\infty \mathcal{F}_{t + 1/n}^0,
\qquad
\mathcal{F}_t^0 = \mathcal{F}_t^+ \;\; \text{(up to null sets)}.
$$

---

## 4. Properties of Stopping Times

### (1) Increasing limits  
If $T_n \uparrow T$ a.s. and each $T_n$ is a S.T., then $T$ is a S.T.

**Proof:**
$$
\{T \le t\} = \bigcap_{n=1}^\infty \{T_n \le t\} \in \mathcal{F}_t.
$$

---

### (2) Decreasing limits  
If $T_n \downarrow T$ a.s. and each $T_n$ is a S.T., then $T$ is a S.T.

**Proof:**
$$
\{T < t\} = \bigcup_{n=1}^\infty \{T_n < t\} \in \mathcal{F}_t.
$$

---

### (3) Approximating a stopping time by rationals  
If $T$ is a S.T., define
$$
T_n = \frac{k+1}{2^n}
\quad\text{if}\quad
\frac{k}{2^n} \le T < \frac{k+1}{2^n}.
$$

Then $T_n \downarrow T$ and each $T_n$ is a S.T.

---

### (4) Algebra of stopping times
If $S,T$ are S.T., then:

- $S\wedge T$
- $S\vee T$
- $S+T$

are all stopping times.

*Example:*  
Using approximations $S_n\downarrow S,\; T_n\downarrow T$,  
$$
S_n + T_n \downarrow S+T,
$$
and each $S_n+T_n$ is a S.T.

---

### (5) Sigma-algebra at a stopping time  
Define
$$
\mathcal{F}_T = \{A : A\cap\{T \le t\} \in \mathcal{F}_t,\;\forall t\ge 0\}.
$$

Then:

- $T$ is measurable w.r.t. $\mathcal{F}_T$.
- The events $\{S<T\}, \{S=T\}, \{S>T\}$ all belong to $\mathcal{F}_S \cap \mathcal{F}_T$.

---

## 5. Application: Hitting Times of Brownian Motion

Let
$$
T_a = \inf\{t>0 : B_t = a\}.
$$

Because Brownian motion is recurrent and oscillates to both $\pm\infty$,

> **Theorem:**  
> $$
> T_a < \infty \quad \text{a.s. for every } a\in\mathbb{R}.
> $$

This follows from the earlier limit theorem:
$$
\limsup_{t\to\infty} \frac{B_t}{\sqrt t} = +\infty \quad\text{and}\quad
\liminf_{t\to\infty} \frac{B_t}{\sqrt t} = -\infty.
$$

---

## 6. Next Topic

We now have the tools to state and prove the **Strong Markov Property** formally.

This will use:

- Stopping times $T$
- Shift operator $\theta_T$
- Filtration right-continuity
- Brownian motion independent increments

This leads to:
$$
E\!\left[ Y \circ \theta_T \mid \mathcal{F}_T \right]
= E^{B_T}(Y)
$$

for all bounded measurable $Y$.

---

# End of Lecture 35
