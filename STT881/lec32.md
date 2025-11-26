# **Lecture 32 — Scheffé’s Theorem, Total Variation, and Portmanteau Properties**

## 1. Scheffé’s Theorem

Let $f_n$ be the pdf of $X_n$ and let $f$ be the pdf of $X$.  
Assume:

$$
f_n(x) \to f(x) \quad\text{pointwise for all }x\in\mathbb R.
$$

(Sketched on page 1.)

### Goal
Show that
$$
\sup_{B\in\mathcal B(\mathbb R)} \left| P(X_n\in B) - P(X\in B) \right|
\;\longrightarrow\; 0,
$$
i.e. convergence in **total variation**.

### Key inequality
For any Borel set $B$,
$$
\left|P(X_n\in B) - P(X\in B)\right|
= 
\left|\int_B f_n(x)\,dx - \int_B f(x)\,dx\right|
\le
\int_B |f_n(x) - f(x)|\,dx.
$$

Thus,
$$
\sup_B |P(X_n\in B) - P(X\in B)|
\le
\int_{\mathbb R} |f_n(x)-f(x)|\,dx. \tag{1}
$$

Hence it suffices to show:
$$
\int_{\mathbb R}|f_n-f| \to 0.
$$

---

## 2. Positivity decomposition

Using
$$
a = a^+ - a^-,
\qquad |a| = a^+ + a^-,
$$
write:
$$
\int_{\mathbb R}(f - f_n)
= 
\int (f - f_n)^+ 
-
\int (f - f_n)^-.
$$

But
$$
\int (f - f_n) = 0
\quad\text{since both integrate to 1}.
$$

Thus,
$$
\int |f - f_n|
=
2\int (f - f_n)^+. \tag{2}
$$

### Dominating function

On page 1 your notes check the DCT bound:

- If $f_n(x) > f(x)$ then  
  $(f(x)-f_n(x))^+ = 0 \le f(x)$.

- If $f_n(x) < f(x)$ then  
  $0 < f(x)-f_n(x)\le f(x)$.

So:
$$
(f(x)-f_n(x))^+ \le f(x).
$$

Since $f_n\to f$ pointwise and the dominating function $f$ is integrable,  
DCT gives:

$$
\int (f-f_n)^+ \to 0.
$$

Plugging into (2):

$$
\int |f_n-f| \to 0.
$$

Then (1) gives **total variation convergence**.

---

## 3. Consequence for Distribution Functions

In our setting, $P(X=x)=0$ for all $x\in\mathbb R$.  
Thus the CDFs are continuous.

If $\|M_n - M\|_{TV}\to 0$, then:

$$
F_{X_n}(x) = P(X_n \le x) \to P(X\le x) = F_X(x)
\quad\text{uniformly in }x.
$$

So *CDF convergence is uniform*.

This comment appears in your notes as:

> “Convergence should be uniformly.”

---

# **4. Total Variation Norm**

For probability measures $M_n(B)=P(X_n\in B)$:

$$
\|M_n - M\|
=
\sup_{B\in \mathcal B(\mathbb R)}
|M_n(B) - M(B)|
\to 0.
$$

This is *stronger* than convergence in distribution.

---

# **5. Example — The Empirical Median of Uniform[0,1]**

(Derived on pages 1–2; reference to Durrett 3.2.6.)

Let $\{U_k\}$ be i.i.d. uniform on $[0,1]$.  
Let $U_{(1)}\le U_{(2)}\le \dots \le U_{(2n+1)}$ be the order statistics.  
The sample median is
$$
V_{n+1} = U_{(n+1)}.
$$

### Density (page 2 diagram)
$$
f_{V_{n+1}}(x)
=
\binom{2n+1}{n,n}
x^n (1-x)^n, \qquad 0<x<1.
$$

This comes from the multinomial probability that exactly $n$ observations lie left of $x$ and $n$ right of $x$.

### Mean
$$
E[V_{n+1}] = \frac12.
$$

### Variance
Using the Beta integral identity (page 2):
$$
\int_0^1 x^k(1-x)^l\,dx = \frac{k!\,l!}{(k+l+1)!},
$$
your notes compute:
$$
\operatorname{Var}(V_{n+1})
= 
\frac{n}{4(2n+1)(2n+2)}
\sim \frac{1}{8n}.
$$

### Normalization
Define
$$
Y_n = 2\sqrt{2n}\left(V_{n+1} - \frac12\right).
$$

Then (page 2):
$$
f_{Y_n}(y)
=
\phi_n(y)
=
\left(1 - \frac{y^2}{2n}\right)^n
\quad\to\quad
e^{-y^2/2},
$$

so
$$
Y_n \Rightarrow N(0,1).
$$

This is a CLT for the sample median under uniform sampling.

---

# **6. Portmanteau Theorem (Durrett Thm 3.2.5)**

Your notes (page 2–3) list the four equivalent conditions for weak convergence.

Let $X_n\Rightarrow X$.

The following are equivalent:

1. **(CDF convergence)**  
   $X_n \Rightarrow X$.

2. **(Open sets)**  
   $$
   \liminf_{n\to\infty} P(X_n\in O) \ge P(X\in O),\qquad \forall\ O\ \text{open}.
   $$

3. **(Closed sets)**  
   $$
   \limsup_{n\to\infty} P(X_n\in C) \le P(X\in C),\qquad \forall\ C\ \text{closed}.
   $$

4. **(Boundary condition)**  
   For all Borel sets $A$ with boundary $\partial A$ satisfying
   $$
   P(X \in \partial A)=0,
   $$
   we have
   $$
   P(X_n\in A)\to P(X\in A).
   $$

### Sketch: (4) ⇒ (1)
(Page 3 diagram.)

Take the interval $A=(-\infty,x]$.  
Its boundary is $\{x\}$.  
If $P(X=x)=0$, then (4) gives:

$$
P(X_n\le x) \to P(X\le x),
$$

which is exactly the definition of convergence in distribution.

### Sketch: (1) ⇒ (2)

If $X_n\to X$ almost surely (the stronger assumption used in notes for intuition):
$$
\mathbb{1}_{\{X_n\in O\}} \to \mathbb{1}_{\{X\in O\}}
$$
pointwise except on a null set.

Then by Fatou’s lemma:

$$
\liminf_n P(X_n\in O)
= \liminf_n E[\mathbb{1}_{\{X_n \in O\}}]
\ge E[\liminf_n \mathbb{1}_{\{X_n\in O\}}]
= P(X\in O).
$$

### (2) ⇒ (3)
Apply (2) to $O = C^c$.  
Then take complements.

### (3) ⇒ (4)
For any Borel set $A$:

$$
A^\circ \subseteq A \subseteq \overline A.
$$

Since
$$
\partial A = \overline A \cap (\overline{A^\circ})^c,
$$
the condition $P(X\in\partial A)=0$ ensures:

$$
P(X\in \overline A) = P(X\in A) = P(X\in A^\circ).
$$

Apply (2) and (3) to the interior and closure.

---

# **Cheat-Sheet Summary — Lecture 32**

- **Scheffé’s theorem**: pointwise convergence of pdfs ⇒ convergence in total variation.  
  Uses positivity decomposition and DCT.

- Total variation convergence implies **uniform CDF convergence**.

- **Empirical median CLT** for uniform samples:
  $$
  2\sqrt{2n}\left(V_{n+1}-1/2\right) \Rightarrow N(0,1).
  $$

- **Portmanteau Theorem** gives 4 equivalent formulations of weak convergence:
  1. CDF convergence.  
  2. Open-set inequality.  
  3. Closed-set inequality.  
  4. Convergence on sets with zero boundary mass.

