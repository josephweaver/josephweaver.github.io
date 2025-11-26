# **Lecture 28 — Kronecker’s Lemma and Applications**

This lecture completes the arc of:

Kolmogorov’s three–series theorem

Kronecker’s lemma (full proof via integration by parts for step functions)

Applications to normalized sums

Marcinkiewicz–Zygmund Strong Laws for 
1
≤
𝑝
<
2
1≤p<2

Let $\{X_n\}_{n\ge1}$ be independent.

We recall two prior results:

1. If  
   $$
   \sum_{n=1}^\infty \operatorname{Var}(X_n) < \infty,
   $$
   then  
   $$
   \sum_{n=1}^\infty (X_n - E[X_n])
   \quad\text{converges a.s.}
   $$

2. **Kolmogorov’s Three–Series Theorem**:

   $$
   \sum X_n \text{ converges a.s.}
   \iff
   \begin{cases}
   \text{(i)} & \forall A>0,\ \sum P(|X_n|>A)<\infty,\\\$$-4pt]
   \text{(ii)} & \sum \operatorname{Var}(Y_n)<\infty,\quad Y_n=X_n\mathbf{1}_{\{|X_n|\le A\}},\\\\
   \text{(iii)} & \sum E[Y_n]\ \text{converges}.
   \end{cases}
   $$

---

# **1. A Useful Lemma from the Three–Series Proof**

(See page 1 of the PDF.)

Let $S_n = \sum_{k=1}^n X_k$.  

### Lemma  
If

- $\sup_{n\ge1} |S_n| < \infty$ a.s., and  
- $E\left( \sup_{n\ge1} X_n^2\right) < \infty$,

then

$$
\sum_{n=1}^\infty \operatorname{Var}(X_n) < \infty,
$$

hence

$$
\sum_{n=1}^\infty \bigl(X_n - E[X_n]\bigr) \text{ converges a.s.}
$$

A corollary used in the proof of the ⇒ direction in the Three–Series theorem:

> If $X_n$ are independent, centered, uniformly bounded $|X_n|\le A$, and  
> $\sup_n |S_n| <\infty$ a.s.,  
> then  
> $$
> \sum X_n \quad\text{converges a.s.}
> $$

---

# **2. Kronecker’s Lemma**

This is the central new result for Lecture 28.

Let $x_n\in\mathbb{R}$, and let $\{a_n\}_{n\ge1}$ satisfy:

- $a_n > 0$,
- $a_n \uparrow \infty$.

### **Kronecker’s Lemma**
If  
$$
\sum_{n=1}^\infty \frac{x_n}{a_n}
\quad\text{converges},
$$
then  
$$
\frac{1}{a_n}\sum_{k=1}^n x_k
\;\xrightarrow[n\to\infty]{}\; 0.
$$

This relates **convergence of weighted series** to the behavior of **normalized partial sums**.

---

## **3. Proof of Kronecker’s Lemma (as in your notes, pp. 1–2)**

Define  
$$
b_n = \sum_{k=1}^n \frac{x_k}{a_k},
\qquad b_0=0.
$$

Since $\sum x_k/a_k$ converges, $b_n \to b_\infty$.

We use a discrete integration-by-parts identity for right–continuous step functions $F$ and $G$:

$$
\int_{(a,b]} F\, dG
+
\int_{(a,b]} G\, dF
=
[F\cdot G]_{a}^{b}
+
\sum_{a<x<b} \Delta F(x)\Delta G(x).
$$

We apply this with:

- $F(x)=\sum_{i\ge1} b_i \mathbf{1}_{\{i<x\le i+1\}}$,
- $G(x)=\sum_{i\ge1} a_i \mathbf{1}_{\{i<x\le i+1\}}$.

From the jump computations (page 2 diagram in the PDF):

$$
\sum_{i=1}^n b_i(a_i - a_{i-1})
=
b_n a_n
-\sum_{i=1}^n a_i(b_i - b_{i-1}).
$$

But  
$$
b_i - b_{i-1}=\frac{x_i}{a_i}.
$$

Thus:

$$
\frac{1}{a_n}\sum_{k=1}^n x_k
=
b_n - \sum_{i=1}^n b_{i-1}\left(\frac{a_i - a_{i-1}}{a_n}\right).
$$

As $n\to\infty$:

- $b_n\to b_\infty$,
- $\sum_{i=1}^n b_{i-1}(a_i - a_{i-1})/a_n \to b_\infty$,

so the difference tends to $0$.  
This proves Kronecker’s lemma.

---

# **4. Application: Weighted SLLN for Independent, Centered Sequences**

(See page 2 of the PDF.)

### Theorem  
Let $\{X_n\}$ be independent with $E[X_n]=0$.  
Assume:

- $a_n \uparrow \infty$,
- $$
  \sum_{n=1}^\infty \frac{E[X_n^{2}]}{a_n^{2}} < \infty.
  $$

Then:

1. $$
   \frac{S_n}{a_n} \xrightarrow{a.s.} 0.
   $$
2. Consequently  
   $$
   \sum_{n=1}^\infty \frac{X_n}{a_n}
   \quad\text{converges a.s.}.
   $$

**Reason:**  
The variance condition implies  
$$
\sum \operatorname{Var}(X_n / a_n) < \infty.
$$
Thus  
$$
\sum X_n/a_n \text{ converges a.s.}
$$
by Kolmogorov’s variance criterion, and Kronecker’s lemma yields $S_n/a_n \to 0$.

---

# **5. Example: Normalization by $\sqrt{n}(\log n)^{1+\varepsilon}$**

Suppose:

- $E[X_n]=0$,
- $\sup_n E[X_n^2] \le C$,
- $\varepsilon>0$.

Then

$$
\sum_{n=1}^\infty 
E\left[
\frac{X_n^2}{n(\log n)^{1+\varepsilon}}
\right]
\le
C \sum_{n=1}^\infty \frac{1}{n(\log n)^{1+\varepsilon}}
< \infty
$$

(by the integral test, page 2 of the PDF).

Hence:

$$
\frac{S_n}{\sqrt{n}(\log n)^{1+\varepsilon}}
\xrightarrow[n\to\infty]{a.s.} 0.
$$

This is a **refined law of large numbers**: the normalization grows just slowly enough for the variance series to converge.

---

# **6. Marcinkiewicz–Zygmund Strong Law ($1 \le p < 2$)**

(See page 3 of the PDF.)

Let $X_1, X_2,\dots$ be iid, with:

- $E[X]=0$,
- $E|X|^p < \infty$, for $1 \le p < 2$.

### **Theorem (M–Z SLLN)**

$$
\frac{S_n}{n^{1/p}}
\xrightarrow{a.s.} 0.
$$

### Sketch of Proof

Define truncated variables:

$$
Y_k = X_k \mathbf{1}_{\{|X_k|^p \le k\}},
\qquad
T_n = \sum_{k=1}^n Y_k.
$$

1. By Markov and the $p$-moment hypothesis:  
   $$
   \sum_{k=1}^\infty P(X_k \ne Y_k)
   =\sum_{k=1}^\infty P(|X|^p > k)
   < \infty.
   $$
   So $X_k = Y_k$ eventually a.s.

2. Show  
   $$
   \sum \operatorname{Var}\left(\frac{Y_k}{k^{1/p}}\right) < \infty.
   $$
   This uses a “good sequence" argument (as in Lecture 24).

3. Then the series  
   $$
   \sum \frac{Y_k}{k^{1/p}}
   $$
   converges a.s.

4. By Kronecker’s lemma (with $a_n = n^{1/p}$):

   $$
   \frac{T_n}{n^{1/p}} \to 0 \quad\text{a.s.}
   $$

Since $T_n = S_n$ for large $n$, this proves the M–Z strong law.

---

# **Cheat-Sheet Summary — Lecture 28**

- **Kronecker lemma:**  
  Convergence of $\sum x_n/a_n$ forces  
  $$
  S_n/a_n \to 0.
  $$

- **Weighted SLLN:**  
  If  
  $\sum E[X_n^2]/a_n^2 <\infty$,
  then  
  $$
  S_n/a_n \to 0 \quad\text{a.s.}
  $$

- **Normalization examples:**  
  $$
  a_n = \sqrt{n}(\log n)^{1+\varepsilon}
  \quad \Rightarrow \quad
  S_n/a_n \to 0.
  $$

- **Marcinkiewicz–Zygmund SLLN:**  
  For iid with $E|X|^p <\infty$, $1\le p<2$,
  $$
  S_n/n^{1/p} \to 0 \text{ a.s.}
  $$

