# **Lecture 30 — Feller’s Theorem, Complex Inequalities, and Weak Convergence**

## 1. Feller’s Theorem (restated)

Let $\{X_i\}_{i\ge1}$ be iid with distribution of $X$.  
Let $\{a_n\}_{n\ge1}$ be a sequence with $a_n>0$.  
Define partial sums:
$$
S_n = \sum_{k=1}^n X_k.
$$

### Theorem (Feller)
(a) If  
$$
\frac{a_n}{n} \uparrow \infty
\quad\text{and}\quad 
\sum_{n=1}^\infty P(\vert X\vert >a_n) < \infty,
$$
then
$$
\frac{S_n}{a_n} \xrightarrow{\text{a.s.}} 0.
$$

(b) If  
$$
\frac{a_n}{n} \quad\text{is non-decreasing}
\quad\text{and}\quad
\sum_{n=1}^\infty P(\vert X\vert >a_n) = \infty,
$$
then
$$
\overline{\lim_{n\to\infty}} \frac{\vert S_n\vert }{a_n} = \infty
\qquad\text{a.s.}
$$

### Remark (page 1)
If (b) holds, then $E\vert X\vert =\infty$.  
Reason: if $\frac{a_n}{n}$ is non-decreasing, then  
$$
a_n \ge n a_1.
$$
Thus
$$
\sum_n P(\vert X\vert >n a_1)=\infty
\quad\Rightarrow\quad 
E\vert X\vert  = \infty.
$$

---

## 2. Two Examples Illustrating (a) and (b)

### **Example 1 (page 1): St. Petersburg-type distribution**  
Let  
$$
P(X = 2^k) = 2^{-k},\qquad k=1,2,\dots
$$
Then $E[X]=\infty$.  

It is known (Weak Law computation) that
$$
\frac{S_n}{n\log_2 n} \xrightarrow{P} 1.
$$

Thus
$$
a_n = n\log n.
$$

Since $S_n/(n\log n)$ does **not** converge to zero a.s., Feller(b) applies:
$$
\sum_n P(\vert X\vert >a_n) = \infty.
$$

This checks the divergence of the tail condition.

---

### **Example 2 (page 1): Heavy-tailed but finite $p$-moment ( $0<p<1$ )**

Assume  
$$
E\vert X\vert ^p < \infty,\qquad 0 < p < 1.
$$

Then
$$
\sum_{n=1}^\infty P(\vert X\vert >n^{1/p})
=
\sum_{n=1}^\infty P(\vert X\vert ^p > n)
< \infty.
$$

Let
$$
a_n = n^{1/p}.
$$

Since $0<p<1$,  
$$
\frac{a_n}{n} = n^{1/p - 1} \uparrow \infty.
$$

Hence by Feller(a),
$$
\frac{\vert S_n\vert }{n^{1/p}} \xrightarrow{\text{a.s.}} 0.
$$

This is exactly the Marcinkiewicz–Zygmund strong law for $0<p<1$.

---

# === Starting Durrett Chapter 3 ===

---

## 3. Transition to Chapter 3 — Complex Inequalities

Starting on page 2, your notes introduce complex notation for the coming Central Limit Theorem proof.

Let $z_k, w_k \in \mathbb{C}$.  
Write $z = a + bi$.

Define
$$
\theta_i = \max\{1, \vert z_i\vert , \vert w_i\vert \}.
$$

A key inequality (derived on page 2):

### **Inequality A (better than the naïve bound):**
$$
\vert  \sum_{k=1}^n z_k - \prod_{k=1}^n w_k \vert 
\;\le\;
\sum_{k=1}^n \vert z_k - w_k\vert \, \theta_k.
$$

This is a flexible inequality used for characteristic function approximations in the CLT.

---

## 4. Fundamental Lemma for Characteristic Functions

Given a triangular array $a_{n,m}\in\mathbb{C}$, $1\le m\le n$, suppose:

1. **(i)**  
   $$
   \sum_{m=1}^n a_{n,m} \longrightarrow a \in \mathbb{C}.
   $$

2. **(ii)**  
   $$
   \sup_n \sum_{m=1}^n \vert a_{n,m}\vert  < \infty.
   $$

3. **(iii)**  
   $$
   \max_{1\le m\le n} \vert a_{n,m}\vert  \xrightarrow{n\to\infty} 0.
   $$

Then
$$
\prod_{m=1}^n (1 + a_{n,m}) \;\longrightarrow\; e^a.
$$

This is the **key analytic tool** needed to show that the characteristic function of a normalized sum converges to $e^{-t^2/2}$ in the CLT.

### Example
For
$$
(1 + x/n)^n \to e^x,
$$
take $a_{n,m} = x/n$.  
Then (i), (ii), and (iii) follow immediately.

---

## 5. Inequality for complex exponentials (page 3)

For any complex $z$ with $\vert z\vert \le 1$:

$$
\vert e^z - (1+z)\vert  \le \vert z\vert ^2.
$$

This is established by the Taylor series:
$$
e^z = 1 + z + \frac{z^2}{2!} + \frac{z^3}{3!} + \cdots,
$$
and the remainder is bounded by
$$
\vert z\vert ^2\left(\frac{1}{2!} + \frac{1}{3!} + \cdots\right) < \vert z\vert ^2.
$$

This inequality justifies replacing products by exponentials when proving the CLT.

---

# **6. Weak Convergence (Distributional Convergence)**

(Definition section at end of page 3.)

### Definition
We say
$$
X_n \Rightarrow X
$$
if the CDFs satisfy
$$
F_{X_n}(y) \longrightarrow F_X(y)
\quad\text{for all }y\text{ at which }F_X \text{ is continuous}.
$$

Equivalent characterizations:

1. **Convergence of expectations of bounded continuous functions:**
   $$
   E[g(X_n)] \to E[g(X)],
   \qquad g:\mathbb{R}\to\mathbb{R}\ \text{bounded, continuous}.
   $$

2. **CDF definition:**  
   $F_X$ is right‐continuous,  
   $$
   F(y-) = \lim_{t\uparrow y} F(t),\qquad F(y)=P(X\le y).
   $$

Weak convergence is the fundamental mode of convergence used in the Central Limit Theorem.

---

# **Cheat-Sheet Summary — Lecture 30**

- Feller’s theorem gives **necessary and sufficient tail conditions** for the almost-sure behavior of $\frac{S_n}{a_n}$.
- Examples show how **fast or slow** a sequence $a_n$ must grow for almost-sure convergence to 0.
- Chapter 3 begins with **complex inequalities** essential for manipulating characteristic functions in CLT proofs.
- A powerful lemma:  
  $$
  \prod_{m=1}^n (1+a_{n,m}) \to e^a
  $$
  when the triangular array satisfies summability and uniform smallness.
- Weak convergence $X_n\Rightarrow X$ is introduced as the gateway to the Central Limit Theorem.

