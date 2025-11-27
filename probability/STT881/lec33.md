# **Lecture 33 — Uniformly Continuous Functions, Helly Selection, and Tightness**

This lecture connects several ideas:

1. Reducing weak convergence tests to uniformly continuous bounded functions,
2. Approximating bounded uniformly continuous functions by smooth functions via Gaussian averaging,
3. Helly’s Selection Theorem for subsequence extraction of distribution functions,
4. Tightness of a family of distributions.

---

# 1. Weak Convergence: Restriction to Uniformly Continuous Bounded Functions

We have already seen:

$$
X_n \Rightarrow X
\quad\Longleftrightarrow\quad
E f(X_n) \to E f(X)
\quad\text{for all bounded continuous } f.
\tag{1}
$$

### Claim
It suffices to check (1) for **uniformly continuous** bounded functions.

### Definition: Uniformly Continuous  
$f:\mathbb R\to\mathbb R$ is uniformly continuous if

$$
\forall\varepsilon>0\ \exists\delta>0\ \text{ such that }\ 
\vert x_1-x_2\vert <\delta \ \Rightarrow\ \vert f(x_1)-f(x_2)\vert <\varepsilon
\quad\forall x_1,x_2.
$$

The diagram on page 1 (vertical bound on jump size) emphasizes that the continuity modulus is uniform in $x$.

---

# 2. Approximation of Bounded Uniformly Continuous $f$ by Smooth Functions

The key idea (illustrated in the “moving average / bump smoothing’’ picture on page 1) uses **Gaussian convolution**.

Let

$$
T_x = x + \sigma Y,
\qquad Y\sim N(0,1),
$$
and define the **Gaussian smoothing** of $f$:

$$
f_\sigma(x)
=
E[f(T_x)]
=
E[f(x+\sigma Y)].
$$

### Properties of $f_\sigma$

1. $f_\sigma \in C_B^\infty(\mathbb R)$ (all derivatives exist and are bounded).  
   This is the smooth bell‐curve averaging in the diagram.

2. $f_\sigma \to f$ uniformly as $\sigma\to 0$ (page 1–2 argument):  
   Since $f$ is uniformly continuous and bounded,  
   for small $\sigma$,

   $$
   \vert f(x+\sigma Y) - f(x)\vert  \le 
   \varepsilon\cdot\mathbf{1}_{\{\vert \sigma Y\vert \le\delta\}}
   + 2\vert f\vert _\infty\mathbf{1}_{\{\vert \sigma Y\vert >\delta\}}.
   $$

   The tail probability $P(\vert Y\vert >\delta/\sigma)\to 0$ as $\sigma\to 0$.  
   Thus:

   $$
   \sup_x \vert f_\sigma(x) - f(x)\vert  \to 0.
   $$

Therefore:

> **Any** bounded uniformly continuous $f$ can be approximated uniformly by smooth bounded functions.

---

# 3. Lifting Weak Convergence Through Gaussian Smoothing

Suppose for all $\sigma>0$,

$$
X_n + \sigma Y \Rightarrow X + \sigma Y,
\tag{2}
$$

with the **same** independent $Y\sim N(0,1)$.

Then for all $f\in C_B^\infty$,

$$
E[f(X_n+\sigma Y)] \to E[f(X+\sigma Y)].
$$

Because $f_\sigma\to f$ uniformly and the error bound does not depend on $n$, you get (page 2):

$$
\limsup_{n\to\infty} 
\vert E[f(X_n)] - E[f(X)]\vert 
\le 3\varepsilon
\quad\text{for small enough }\sigma.
$$

Thus, assuming (2) for all $\sigma>0$, we conclude:

$$
E[f(X_n)] \to E[f(X)]
\qquad\forall f\in C_B(\mathbb R).
$$

This gives another route to establishing weak convergence.

---

# 4. Helly’s Selection Theorem (Theorem 3.2.6)

This is the major theorem in the second half of the notes (yellow highlight on page 1–2).

Let $\{F_n\}$ be a sequence of **distribution functions** (i.e. CDFs).

### Theorem (Helly Selection)

There exists a subsequence $F_{n_k}$ and a function $F\in C^+$ (i.e. non-decreasing, right-continuous) such that:

$$
F_{n_k}(x) \to F(x)
\quad\text{at every continuity point of }F.
$$

---

## Sketch of Proof (as given in the notes)

Use a **diagonal argument** on the rationals $\mathbb Q=\{q_1,q_2,\dots\}$:

1. For $q_1$: the sequence $F_n(q_1)\in [0,1]$ is bounded, hence has a convergent subsequence.  
   Call this subsequence $(1,k)$.

2. For $q_2$: look at $\{F_{(1,k)}(q_2)\}$.  
   Select a further subsequence $(2,k)$ that converges at $q_2$.

3. Continue: for $q_m$, extract a subsequence $(m,k)\subseteq(m-1,k)$ with convergence at $q_m$.

4. Diagonal selection:  
   Define $n_k = (k,k)$.  
   Then $F_{n_k}(q_m)\to \tilde F(q_m)$ for all $m$.

Define:

$$
F(x) = \inf\{\tilde F(q_m) : q_m \ge x\}.
$$

This gives a nondecreasing, RCLL function $F$.  
Then $F_{n_k}(x) \to F(x)$ at continuity points.

### Important Note (page 2 diagram)

$F$ may not be a **proper** CDF (it may not satisfy $F(-\infty)=0$ or $F(\infty)=1$).  
See the example on page 2 of notes where limit is a non-probability staircase.

Thus we must add a criterion ensuring tightness to guarantee proper limits.

---

# 5. Tightness

To ensure the Helly limit is a valid CDF, we impose **tightness**.

### Definition (Tight Family)

A family $\{F_n\}$ of CDFs is tight if:

$$
\forall \varepsilon>0\,\exists M>0\text{ such that }
\sup_n P(\vert X_n\vert \ge M)
=
\sup_n\bigl(1 - F_n(M) + F_n(-M)\bigr)
<\varepsilon.
$$

This was written in the notes as:

> “Uniform tightness: same $M$ for all $n$.”

---

# 6. Tightness Results (Theorems 3.2.7 and 3.2.8)

### **Theorem 3.2.7**
If $F_n\Rightarrow F$ and all are CDFs, then $\{F_n\}\cup\{F\}$ is tight.

### **Theorem 3.2.8**
If there exists a measurable $\varphi\ge0$ such that

- $\varphi(x)\to\infty$ as $\vert x\vert \to\infty$,
- $$
  C = \sup_n \int \varphi(x)\,dF_n(x) < \infty,
  $$

then $\{F_n\}$ is tight.

Your notes sketch the proof (page 2):

- Choose $M$ so that $\varphi(x)\ge 1/\varepsilon$ for $\vert x\vert \ge M$.  
- Then:
  $$
  P(\vert X_n\vert >M)
  \le
  \varepsilon \int\varphi(x)\,dF_n(x)
  \le 
  \varepsilon C.
  $$

---

# 7. Concluding Comments

The lecture ends with a preview:

- Next time: Central Limit Theorem.  
- Need only:
  - finite second moment,
  - Lindeberg–Feller condition.

---

# **Cheat-Sheet Summary — Lecture 33**

- Weak convergence can be checked using **bounded uniformly continuous** $f$.
- Any such $f$ can be approximated uniformly by smooth $f_\sigma\in C_B^\infty$ via Gaussian smoothing.
- If $X_n+\sigma Y\Rightarrow X+\sigma Y$ for all $\sigma>0$, then $X_n\Rightarrow X$.
- **Helly Selection Theorem**: from any sequence of CDFs extract a subsequence converging at continuity points.
- Helly limits may fail to be proper CDFs; **tightness** fixes this.
- Tightness criteria:
  - $\varphi$-moment bound,
  - or already known weak convergence.

