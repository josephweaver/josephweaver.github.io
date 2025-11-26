# 14 — Fubini’s Theorem and Applications

This lecture is essentially a full constructive proof of Fubini’s Theorem, including:

Construction of the product measure,

The λ–system / π–system argument for measurability of sections,

Proof of Tonelli (non-negative case) and then Fubini (integrable case),

Applications:

Expectation identity

𝐸
[
𝑋
𝑝
]
=
∫
0
∞
𝑝
𝑥
𝑝
−
1
𝑃
(
𝑋
≥
𝑥
)
 
𝑑
𝑥
E[X
p
]=∫
0
∞
	​

px
p−1
P(X≥x)dx,

A more advanced example involving two distribution functions 
𝐹
F and 
𝐺
G,
showing how integration by parts in probability is just Fubini in disguise.

---

We consider two σ-finite measure spaces:

$$
(\Omega_1,\mathcal{F}_1,\mu_1),
\qquad
(\Omega_2,\mathcal{F}_2,\mu_2),
$$

and the product space:

$$
\Omega = \Omega_1 \times \Omega_2,
\qquad
\mathcal{F} = \mathcal{F}_1 \otimes \mathcal{F}_2,
\qquad
\mu = \mu_1 \times \mu_2.
$$

A function on the product is written $f(x,y)$, with  
$x\in\Omega_1,\,y\in\Omega_2$.

---

# 1. Statement of Fubini’s Theorem

If $f:\Omega\to\mathbb{R}$ is measurable and either

1. $f\ge 0$, or  
2. $\displaystyle \int_\Omega |f|\,d\mu<\infty$,

then:

$$
\int_{\Omega_1} \left( \int_{\Omega_2} f(x,y)\, d\mu_2(y) \right) d\mu_1(x)
=
\int_{\Omega} f\, d\mu
=
\int_{\Omega_2} \left( \int_{\Omega_1} f(x,y)\, d\mu_1(x) \right) d\mu_2(y).
$$

Tonelli = “$f\ge 0$” case.  
Fubini = “$\int |f|<\infty$” case.

---

# 2. Construction of Product Measure (Review)

We start with the algebra:

$$
\mathcal{L}
=
\left\{
\bigcup_{i=1}^m A_i \times B_i :
A_i\in\mathcal{F}_1,\,
B_i\in\mathcal{F}_2,\,
(A_i\times B_i)\text{ disjoint}
\right\}.
$$

Define

$$
M(A\times B)=\mu_1(A)\mu_2(B).
$$

By Carathéodory, $M$ extends uniquely to a measure $\mu$ on  
$\mathcal{F}=\mathcal{F}_1\otimes\mathcal{F}_2$.

If $\mu_1,\mu_2$ are σ-finite, so is $\mu$ (noted on page 1 of the handwritten notes).

---

# 3. Proof of Fubini — Step Structure

The notes outline the standard four-step method.

### **Step 1.** Indicator of a measurable set

Let $f = \mathbf{1}_D$ with $D \in \mathcal{F}$.  
Show:

$$
\int_{\Omega_1}\int_{\Omega_2} \mathbf{1}_D\, d\mu_2\, d\mu_1
=
\mu(D).
$$

### **Step 2.** Non-negative simple functions

Let  
$$
h=\sum_{i=1}^n c_i\, \mathbf{1}_{D_i},
\qquad c_i\ge 0,
\quad D_i\in\mathcal{F}.
$$

By linearity and Step 1:

$$
\int h
=
\sum_i c_i \mu(D_i)
=
\int_{\Omega_1}\!\int_{\Omega_2} h\, d\mu_2 d\mu_1.
$$

### **Step 3.** Non-negative measurable $f$

Let $0\le h_n\uparrow f$ be simple (the dyadic construction is drawn on page 1):

$$
h_n(x,y)
=
\frac{k}{2^n}\quad \text{if }\frac{k}{2^n} \le f < \frac{k+1}{2^n}.
$$

Then by MCT:

$$
\int f = \lim_n \int h_n
= \lim_n \int_{\Omega_1}\!\int_{\Omega_2} h_n
= \int_{\Omega_1}\!\int_{\Omega_2} f.
$$

This proves **Tonelli**.

### **Step 4.** Integrable $f$

Write:

$$
f = f^+ - f^-,
\qquad f^+,f^-\ge 0.
$$

Both are integrable since $\int|f|<\infty$.  
Apply Tonelli to each:

$$
\int f
= \int f^+ - \int f^-,
\qquad
\int_{\Omega_1}\!\int_{\Omega_2} f
= \int_{\Omega_1}\!\int_{\Omega_2} f^+
  - \int_{\Omega_1}\!\int_{\Omega_2} f^-.
$$

Thus **Fubini** holds.

---

# 4. Sections and Measurability (Lemmas 1 and 2)

On page 2, the notes move “back to Step One” to justify measurability of the section maps $E_x$.

Given $E\in\mathcal{F}$,

- The **section at $x$** is  
  $$
  E_x = \{y\in\Omega_2 : (x,y)\in E\}.
  $$
- For rectangles $E=A\times B$:  
  $$
  E_x=
  \begin{cases}
  B,& x\in A\$$4pt]
  \varnothing,& x\notin A.
  \end{cases}
  $$

### **Lemma 1.**  
If $E \in \mathcal{F}$, then for each fixed $x$, $E_x \in \mathcal{F}_2$.  
Similarly for $E^y\in\mathcal{F}_1$.

### **Lemma 2.**  
If $E\in\mathcal{F}$, then
$$
g(x) = \mu_2(E_x)
$$
is $\mathcal{F}_1$-measurable, and
$$
\int_{\Omega_1} g(x)\, d\mu_1(x) = \mu(E).
$$

**Proof idea (page 2):**  
Use the π–λ theorem:

- Show the class of all $E$ for which Lemma 2 holds is a **λ–system**.  
- Rectangles form a **π–system** contained in it.  
- By Dynkin’s π–λ theorem, all of $\mathcal{F}$ satisfies the lemma.

---

# 5. Application of Fubini: Expectation Formula

Let $X\ge 0$ be a random variable on $(\Omega,\mathcal{F},P)$, let $p>0$.  
The notes (page 2–3) show:

$$
\mathbb{E}[X^p]
=
p\int_0^\infty x^{p-1} P(X\ge x)\, dx.
$$

**Derivation (page 3):**

Use:
$$
X^p = \int_0^{X} p x^{p-1}\, dx
= \int_0^\infty p x^{p-1}\, \mathbf{1}_{\{x\le X\}}\, dx.
$$

Apply Fubini:

$$
\mathbb{E}[X^p]
=
\int_\Omega \int_0^\infty p x^{p-1}\mathbf{1}_{\{x\le X(\omega)\}}\, dx\, dP(\omega)
=
\int_0^\infty p x^{p-1} P(X\ge x)\, dx.
$$

The picture on page 3 (red arrows) shows switching the order of integration in the region  
$\{(x,\omega): 0\le x \le X(\omega)\}$.

---

# 6. A More Advanced Example:
## Double Stieltjes Integration and Jump Terms

On page 3 the notes consider:

- $F(x)=\mu_1((-\infty,x])$,  
- $G(y)=\mu_2((-\infty,y])$.

Drawn is a rectangle $[a,b]\times[a,b]$ split into diagonal $A$ and the off-diagonal regions $B$.  

The key identities:

$$
\mu(A)
=
\int_a^b (F(y)-F(a))\, dG(y),
$$

$$
\mu(B)
=
\int_a^b (G(b)-G(y))\, dF(y).
$$

Adding them (page 3 boxed identity):

$$
\mu(A)+\mu(B)
=
[F(b)G(b)-F(a)G(a)]
+
\mu(\{(x,x): a<x\le b\}).
$$

The diagonal term involves the **jump sizes**:

$$
\mu(\{(x,x)\})
=
\sum_{a< x\le b}
\Delta F(x)\cdot \Delta G(x).
$$

Thus the notes highlight:

- “finite # of jumps will survive,”  
- Stieltjes integrals capture both continuous parts and jump contributions.

This is the measure-theoretic version of “integration by parts” for CDFs.

---

# 7. Summary of Lecture 14

- Built product measures and proved Fubini via:  
  indicator → simple → positive → general integrable.
- Showed section measurability via π–λ arguments.  
- Applied Fubini to derive important expectation formulas.  
- Illustrated how multivariate Stieltjes integration includes jump terms, explaining why Fubini is “better than integration by parts.”

