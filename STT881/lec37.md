# **Lecture 37 — Continuity Theorem**

This lecture has two major parts:

1. Completing the **Inversion Formula** for characteristic functions (CFs), including boundary cases.
2. Proving the **Continuity Theorem**:  
   convergence of characteristic functions implies convergence in distribution.

---

# 1. Inversion Formula Revisited

From Lecture 36, let $X$ be a real-valued r.v. with characteristic function $\varphi_X(t)$, and let  
$U\sim \mathrm{Unif}(a,b)$, independent of $X$.  
Set $Y = X - U$.

Then:

$$
\varphi_Y(t)
=
\varphi_X(t)\,\varphi_{-U}(t),
\qquad 
\varphi_{-U}(t)
=
\frac{e^{-ita}-e^{-itb}}{it(b-a)}.
$$

### Main inversion identity (page 1):
$$
\frac{b-a}{2\pi}
\int_{-T}^{T} \varphi_X(t)\,\varphi_{-U}(t)\,dt
\;\xrightarrow[T\to\infty]{ }
P(a<X<b)
+\frac{P(X=a)+P(X=b)}{2}.
\tag{1}
$$

This recovers the mass in $(a,b)$ plus half–mass at the endpoints.

---

# 1.1 Boundary case: recovering the mass at a point

Page 1 shows the special case $a=b=x$.  
Using the formula with $a=b=x$ (interpreting via limiting uniform variables):

$$
\lim_{T\to\infty}
\frac{1}{2\pi}
\int_{-T}^{T} e^{-itx}\varphi_X(t)\,dt
= P(X=x).
\tag{2}
$$

This is the **Dirichlet kernel** limit:
$$
\frac{\sin(Ty)}{\pi y}
\to \delta_0(y),
$$
as indicated by the sketch on page 1 (“hope $x-a=0$”).

Thus (2) recovers **point mass** at any $x\in\mathbb{R}$.

---

# 1.2 When $X$ has a density

Page 1–2:  
If $\int_{-\infty}^\infty |\varphi_X(t)|\,dt <\infty$, then $X$ has a **PDF** $f_X$, with:

$$
f_X(x)
=
\frac{1}{2\pi}
\int_{-\infty}^\infty e^{-itx}\varphi_X(t)\,dt.
\tag{3}
$$

Moreover, the truncated integral approximates the density:

$$
\lim_{T\to\infty}
\frac{1}{2\pi}
\left|\int_{-T}^{T} e^{-itx}\varphi_X(t)\,dt\right|
= f_X(x).
$$

(Your notes show the inequality bounding the tail by $(1/2T)\int |\varphi_X|\to0$.)

---

# 2. Continuity Theorem (Durrett 3.3.6)

This is the heart of Lecture 37, written across both pages.

### **Continuity Theorem: Part (i)**  
If $X_n\Rightarrow X$, then for every $t\in\mathbb{R}$:

$$
\varphi_{X_n}(t) \to \varphi_X(t).
\tag{4}
$$

This follows from boundedness of $e^{itX_n}$ and dominated convergence.

---

### **Continuity Theorem: Part (ii)**  
Let $\varphi_n(t)$ be the CFs of $X_n$.  
Assume:

1. $\varphi_n(t)\to g(t)$ for every $t\in\mathbb R$,
2. $g$ is **continuous at 0**.

Then:

- $\{X_n\}$ is **tight**,  
- $g(t)$ is the CF of some $X$,  
- and  
  $$
  X_n \Rightarrow X.
  \tag{5}
  $$

This is the most powerful implication:  
**Pointwise convergence of CFs + continuity at 0 ⇒ weak convergence**.

---

# 3. Proof Sketch of the Continuity Theorem

The handwritten proof on pages 1–2 gives the core ideas:  
(1) show tightness; (2) identify the limit law using inversion;  
(3) show convergence on a subsequence gives same CF, therefore whole sequence converges.

---

## 3.1 Key Lemma on Page 2

For any $u>0$,

$$
\frac{1}{u}\int_{-u}^{u} \big(1-\varphi(t)\big)\,dt
= 
2
-
\frac{1}{u}\int_{-u}^{u}\varphi(t)\,dt.
\tag{6}
$$

Since $|\varphi(t)|\le 1$, the right-hand side is bounded by 2.

Further in the notes (page 2):

$$
|X|\ge a \ \Rightarrow\ 
1 - \varphi(t)
\ge 
c\,P(|X|\ge a)
\quad\text{for suitable }c>0.
\tag{7}
$$

The intuition is that if $|X|$ is large, the oscillation in $e^{itX}$ forces the average in (6) up.

Combining (6)–(7), for each $\varepsilon>0$ one finds an $M$ such that:

$$
\frac{1}{u}\int_{-u}^u \big(1-g(t)\big)\,dt <\varepsilon
\quad\Rightarrow\quad
P(|X|>M) < \varepsilon.
\tag{8}
$$

This step (page 2 boxed conclusion):

$$
P(|X_n|\ge M) < \varepsilon
\quad\text{uniformly in }n,
$$

is exactly **tightness**.

Thus the sequence of distributions is tight.

---

## 3.2 Extracting a subsequence

By tightness + Helly–Prokhorov (Lecture 33),  
we may extract $X_{n_k}\Rightarrow X$ for some subsequence.

Then by part (i):

$$
\varphi_{n_k}(t)
\to \varphi_X(t).
\tag{9}
$$

But the hypothesis says $\varphi_{n_k}(t)\to g(t)$.  
Thus:

$$
g(t)=\varphi_X(t).
$$

So $g$ **is** a characteristic function.

Since every convergent subsequence has the same limit law, the whole sequence converges:

$$
X_n \Rightarrow X.
$$

---

# 4. Summary of the Logic

The Continuity Theorem ties everything together:

$$
X_n\Rightarrow X
\quad\Longleftrightarrow\quad
\varphi_{X_n}(t)\to\varphi_X(t)\;\forall t.
$$

More generally:

- **Given just CF convergence**,  
  if the limit $g(t)$ is continuous at 0, then it is a valid CF of some $X$, and  

  $$
  X_n \Rightarrow X.
  $$

This is the foundation of all the CF-based limit theorems, especially the CLT, stable laws, and the Lévy–Khintchine formula.

---

# **Cheat-Sheet Summary — Lecture 37**

- **Inversion formula** recovers probabilities:
  $$
  \frac{b-a}{2\pi}\int_{-T}^{T}\varphi_X(t)\varphi_{-U}(t)\,dt
  \to P(a<X<b)+\tfrac12(P(X=a)+P(X=b)).
  $$
- If $\int |\varphi_X|\!<\infty$, then $X$ has a density and  
  $$
  f_X(x)=\frac{1}{2\pi}\int e^{-itx}\varphi_X(t)\,dt.
  $$

- **Continuity Theorem**:  
  - $X_n\Rightarrow X \implies \varphi_{X_n}\to\varphi_X$.  
  - If $\varphi_n\to g$ pointwise and $g$ is continuous at $0$,  
    then $\{X_n\}$ is tight, $g$ is a CF, and $X_n\Rightarrow X$.

- The key lemma:  
  $$
  \frac{1}{u}\!\int_{-u}^{u}(1-\varphi(t))dt
  = 2 - \frac{1}{u}\!\int_{-u}^{u}\varphi(t)dt.
  $$

  Used to force tightness.

