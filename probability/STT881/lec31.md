# **Lecture 31 — Convergence in Distribution**

## 1. Definitions of Convergence in Distribution

Let $X_n$ and $X$ be real-valued random variables with CDFs $F_{X_n}$ and $F_X$.

### **Definition 1 (CDF definition).**
We say
$$
X_n \Rightarrow X
$$
if
$$
F_{X_n}(x) \to F_X(x)
\quad\text{for all }x\text{ such that }P(X=x)=0.
$$

Equivalently,
$$
F_X(x-) = \lim_{t\uparrow x} F_X(t),
$$
and the convergence is required at points of continuity of $F_X$.

### **Definition 2 (Convergence of expectations).**
We say
$$
X_n \Rightarrow X
$$
if
$$
E[g(X_n)] \to E[g(X)]
$$
for every **bounded continuous** $g:\mathbb R\to\mathbb R$.

This is the Portmanteau theorem characterization.  
In your notes the condition is written $g\in C_B(\mathbb R)$.

---

## 2. The Skorohod Representation Theorem (Theorem A)

(Top half of page 1; a major theorem.)

### **Theorem A (Skorohod).**
If
$$
X_n \Rightarrow X,
$$
then there exists another probability space $(\Omega,\mathcal F,P)$ and random variables  
$$
Y_n \stackrel{d}{=} X_n,\qquad Y \stackrel{d}{=} X,
$$
such that
$$
Y_n \xrightarrow{\text{a.s.}} Y.
$$

Thus: *distributional convergence can be represented as almost sure convergence* on a new space.

Your notes reference this as the bridge from **Definition 1** to **Definition 2**:

> To go from Def (1) → Def (2), use Theorem A  
> (because a.s. convergence plus bounded continuous $g$ → DCT).

Indeed:

- If $Y_n\to Y$ a.s.,
- and $g$ is bounded continuous,
- then $g(Y_n)\to g(Y)$ a.s.,
- and DCT yields $E[g(Y_n)]\to E[g(Y)]$.

Since $Y_n\stackrel d= X_n$ and $Y\stackrel d=X$, this gives $E[g(X_n)]\to E[g(X)]$.

---

## 3. Quantile Transformation and Coupling

This is the heart of the constructive proof of Theorem A.

Let $Y$ be a random variable with CDF $F$.  
Define the **quantile function**:
$$
F^{-1}(u)
=
\sup\{ y : F(y) < u \},\qquad 0<u<1.
$$

Your notes (page 1) draw three diagrams:

- **“Nice case”**: continuous, strictly increasing CDF.  
- **“Jump case”**: CDF has flat pieces and jumps.  
- **“Flat-line case”**: intervals where the CDF is constant.

The theory must work in all three cases.

### Step 1: Let $U\sim\mathrm{Unif}(0,1)$.  
Define
$$
Y = F^{-1}(U).
$$

Then (page 1 diagram reasoning):

$$
P(Y\le y)
=
P(F^{-1}(U)\le y)
=
P(U \le F(y))
=
F(y).
$$

So $F^{-1}(U) \stackrel d= Y$.  
This works even when $F$ has jumps.

### Step 2: If $F_n \to F$ pointwise at continuity points of $F$, then  
$$
F_n^{-1}(U) \to F^{-1}(U) \quad\text{a.s.}, \qquad 0<U<1.
$$

Your notes (page 1–2) emphasize:  
When $F(y)>F(y-)$, i.e. no jump at $y$, the quantiles converge.

### Step 3: Define the Skorohod coupling  
$$
Y_n = F_n^{-1}(U),\qquad Y=F^{-1}(U).
$$

Then $Y_n\stackrel d= X_n$, $Y\stackrel d=X$, and $Y_n\to Y$ a.s.  
This proves Theorem A.

---

## 4. Proof of Def (2) ⇒ Def (1)

(Page 2 of notes.)

Given $X_n\Rightarrow X$ in the expectation sense,
take any continuity point $x$ of $F_X$.

Use a family of “hat functions” $g_{x,\varepsilon}$ drawn in your notes:

- The *upper hat*:  
  $g_{x,\varepsilon}(y)=1$ for $y\le x$, then decreases linearly to 0 on $[x,x+\varepsilon]$.

- The *lower hat*:  
  $g_{x,-\varepsilon}(y)=1$ for $y\le x-\varepsilon$, linear to 0 on $[x-\varepsilon,x]$.

These functions are bounded and uniformly continuous.

Then:

$$
P(X_n \le x)
\le E[g_{x,\varepsilon}(X_n)]
\to E[g_{x,\varepsilon}(X)]
\le P(X\le x+\varepsilon).
$$

Similarly,
$$
P(X\le x-\varepsilon)
\le \liminf_n P(X_n\le x).
$$

Since $F_X$ is continuous at $x$,
$$
P(X\le x-\varepsilon) \uparrow P(X\le x), \qquad
P(X\le x+\varepsilon)\downarrow P(X\le x),
$$
letting $\varepsilon\to0$ gives
$$
P(X_n\le x)\to P(X\le x),
$$
which is Definition 1.

---

## 5. Examples of Convergence in Distribution

### **Example 1: constant sequences**

(Page 2.)

Let $Z_n \equiv a_n$, $Z\equiv a$.  
Then
$$
Z_n \Rightarrow Z \iff a_n\to a.
$$

### **Example 2: a.s. convergence implies distributional convergence**

If $X_n\to X$ almost surely, then $X_n\Rightarrow X$.

### **Example 3: Geometric$(\lambda/n)$ ⇒ Exponential$(\lambda)$**

(Page 2–3.)

Let $Y_n \sim \mathrm{Geom}(\lambda/n)$, so
$$
P(Y_n > k) = (1-\lambda/n)^k.
$$
Then for fixed $t\ge 0$:

$$
P\!\left(\frac{Y_n}{n} > t\right)
=
P(Y_n > nt)
=
(1-\lambda/n)^{nt}
\to e^{-\lambda t}
=
P(Y > t)
$$
where $Y\sim\mathrm{Exp}(\lambda)$.

Therefore:
$$
\frac{Y_n}{n} \Rightarrow \mathrm{Exp}(\lambda).
$$

### **Example 4: First repeated value among iid uniform $\{1,\dots,N\}$**

(Page 3; the “first tie” example.)

Let $X_1,X_2,\dots,X_n$ be iid uniform on $\{1,\dots,N\}$.  
Let
$$
T_N = \min\{ n\ge 2 : X_n = X_i \text{ for some }i<n\}.
$$

Then
$$
P(T_N>n)
=
\frac{N (N-1)\cdots (N-n+1)}{N^n}
=
\prod_{m=2}^n \left(1-\frac{m-1}{N}\right).
$$

Let $n=\lfloor y\sqrt{N}\rfloor$.  
Then (page 3 derivation):

$$
P\!\left(\frac{T_N}{\sqrt{N}} > y\right)
=
\prod_{m=2}^{y\sqrt N}
\left(1 - \frac{m-1}{N}\right)
\to
\exp\!\left( -\frac{y^2}{2} \right)
= P(Y>y),\qquad y\ge 0.
$$

Therefore:
$$
\frac{T_N}{\sqrt N} \Rightarrow Y
$$
where $P(Y>y)=e^{-y^2/2}$.  
Equivalently, $Y^2\sim \chi^2_1$.

---

# **Cheat-Sheet Summary — Lecture 31**

- Two equivalent definitions of convergence in distribution:
  1. CDF convergence at continuity points.
  2. Convergence of expectations of bounded continuous functions.
- Skorohod Representation Theorem: $X_n\Rightarrow X$ ⇒ there exist $Y_n\stackrel d=X_n$ with $Y_n\to Y$ a.s.
- Quantile coupling: $F^{-1}(U)$ generates a variable with CDF $F$.  
  Used to build the Skorohod representation.
- Hat functions $g_{x,\varepsilon}$ used to prove Definition 2 ⇒ Definition 1.
- Examples:  
  - Constants: $Z_n\Rightarrow a\iff a_n\to a$  
  - a.s. convergence ⇒ distribution convergence  
  - Geometric$(\lambda/n)$ scaled ⇒ Exponential($\lambda$)  
  - First repeat among iid uniforms: $T_N/\sqrt N\Rightarrow Y$ with tail $e^{-y^2/2}$.

