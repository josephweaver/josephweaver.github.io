# **Lecture 35 — Lindeberg–Feller CLT and Characteristic Functions**

This lecture generalizes the CLT from iid sequences to **triangular arrays**, introduces the **Lindeberg condition**, proves the CLT by the one-by-one replacement argument, and then transitions into **characteristic functions** (CFs) as the main tool of Chapter 3.3.

---

# 1. Triangular Arrays and the Goal

Consider a **triangular array** of independent random variables:

$$
\{X_{n,k}\}_{1 \le k \le n,\; n\ge 1},
$$

with:

1. **Mean zero**  
   $$
   E[X_{n,k}] = 0.
   $$

2. **Unit total variance**  
   $$
   \sum_{k=1}^n E[X_{n,k}^2] = 1.
   $$

This generalizes the iid CLT case, illustrated by the bottom example on page 1:

- Start with iid $x_k$ with mean 0 and variance 1.  
- Form  
  $$
  X_{n,k} = \frac{x_k}{\sqrt n}, \qquad 1 \le k \le n.
  $$

Then  
$$
\sum_{k=1}^n E[X_{n,k}^2] = 1.
$$

---

# 2. Need for the Lindeberg Condition

We “remove the iid assumption’’ by adding a single condition that controls large jumps:

### **Lindeberg Condition**
For every $\varepsilon>0$,
$$
L_n(\varepsilon)
= \sum_{k=1}^n E\!\left[X_{n,k}^2;\; \vert X_{n,k}\vert >\varepsilon\right]
\;\xrightarrow[n\to\infty]{}\; 0.
\tag{1}
$$

The handwritten note on page 1 marks this as *“Really need Lindeberg Condition”* and references **Theorem 3.4.5** (Lindeberg–Feller CLT).

### **Theorem (Lindeberg–Feller CLT)**
Under independence, mean-zero, total variance 1, and the Lindeberg condition (1), the sum

$$
S_n = \sum_{k=1}^n X_{n,k}
$$

converges in distribution:

$$
S_n \Rightarrow Z\sim N(0,1).
$$

---

# 3. Lindeberg ⇒ No Dominant Term  
(Page 1: Condition (A))

From Lindeberg’s condition we obtain:

$$
\max_{1\le k\le n} E[X_{n,k}^2] \longrightarrow 0.
\tag{2}
$$

Proof sketch (exactly as on page 1):

Fix $\varepsilon>0$. Let $k^*(n)$ be an index where the maximum variance occurs. Then:

$$
E[X_{n,k^*}^2]
=
E[X_{n,k^*}^2;\, \vert X_{n,k^*}\vert >\varepsilon]
+
E[X_{n,k^*}^2;\, \vert X_{n,k^*}\vert \le\varepsilon].
$$

The first term is $\le L_n(\varepsilon)\to0$.  
The second term is $\le \varepsilon^2$.  
Since $\varepsilon$ is arbitrary, (2) follows.

Thus *no single $X_{n,k}$* contributes macroscopic variance.

This is the triangular-array analogue of “maximal term goes to 0”.

---

# 4. CLT Proof via One-by-One Replacement  
(Continuation of the argument from Lecture 34; Page 1 shows the same diagram.)

Let $Z_1, \dots, Z_n$ be iid $N(0,1)$. Define the **comparison sum**

$$
Z_n^\* = \sum_{k=1}^n \sigma_{n,k} Z_k,
\qquad \sigma_{n,k}^2 := E[X_{n,k}^2].
$$

Then $Z_n^\* \sim N(0,1)$.

Let

$$
T_{n,k}
=
\sum_{m<k} X_{n,m}
+
\sum_{m>k} \sigma_{n,m} Z_m
$$

(“before” + “after”; see the large diagram on page 1).

For $f\in C_B^3(\mathbb R)$ define:

$$
I_{n,k}
=
\Big\vert 
E[f(T_{n,k}+X_{n,k})]
-
E[f(T_{n,k}+\sigma_{n,k} Z_k)]
\Big\vert .
$$

Exactly as in Lecture 34:

$$
\vert E[f(S_n)] - E[f(Z_n^\*)]\vert 
\;\le\;
\sum_{k=1}^n I_{n,k}.
\tag{3}
$$

### Taylor’s formula gives (page 1–2):

$$
I_{n,k}
\le 
C\,
E\!\left(
\vert X_{n,k}\vert ^2\,\mathbf{1}_{\vert X_{n,k}\vert >\varepsilon}
+
\vert X_{n,k}\vert ^3\,\mathbf{1}_{\vert X_{n,k}\vert \le\varepsilon}
+
\sigma_{n,k}^3\,E\vert Z_k\vert ^3
\right).
\tag{4}
$$

- The first term is the **Lindeberg term**.  
- The second term is $\le \varepsilon E[X_{n,k}^2]$.  
- The third term: $\sigma_{n,k}^3 \le \sigma_{n,k}^2 = E[X_{n,k}^2]$.

Summing (page 1, end):

$$
\sum_{k=1}^n I_{n,k}
\le
C L_n(\varepsilon) + \varepsilon.
\tag{5}
$$

As $n\to\infty$, (1) makes the first term vanish; then let $\varepsilon\to0$.

Thus:

$$
E[f(S_n)] - E[f(Z)] \to 0.
$$

So:

$$
S_n \Rightarrow Z.
$$

---

# 5. Sufficient Condition for Lindeberg  
(Page 1 bottom: “Example where Ln(ε) → 0”)

If for some $\delta>0$,

$$
\sum_{k=1}^n E\big(\vert X_{n,k}\vert ^{2+\delta}\big)
\;\xrightarrow[n\to\infty]{} 0,
\tag{6}
$$

then the Lindeberg condition holds.

**Proof from notes (page 1–bottom to page 2 top):**

If $\vert X_{n,k}\vert >\varepsilon$, then $\vert X_{n,k}\vert ^{2+\delta} > \varepsilon^{2+\delta}$.  
Thus:

$$
\vert X_{n,k}\vert ^2 \mathbf{1}_{\vert X_{n,k}\vert >\varepsilon}
\le
\varepsilon^{-\delta}\vert X_{n,k}\vert ^{2+\delta}.
$$

Summing:

$$
L_n(\varepsilon)
\le 
\varepsilon^{-\delta}
\sum_{k=1}^n E\big(\vert X_{n,k}\vert ^{2+\delta}\big)
\to 0.
$$

So (6) is a convenient sufficient condition for CLT.

---

# 6. Beginning of Chapter 3.3 — Characteristic Functions  
(Pages 2–3)

Your notes shift into CFs, with geometric diagrams showing the complex plane and the unit circle.

### **Definition (Characteristic Function)**

For a random variable $X$:

$$
\varphi_X(t)= E[e^{itX}] = E[\cos(tX)] + i\,E[\sin(tX)].
$$

(Page 2 contains the unit circle diagram, labeled “complex plane”.)

### Key identities (page 2)

- **Magnitude**:  
  $\vert a+ib\vert  = \sqrt{a^2+b^2}$.

- **Conjugate**:
  $$
  \overline{\varphi(t)} = \varphi(-t).
  $$

- **Basic properties** (Theorem 3.3.1):
  1. $\varphi_X(0)=1$,  
  2. $\vert \varphi_X(t)\vert  \le 1$,  
  3. $\varphi_{X+Y}(t)=\varphi_X(t)\varphi_Y(t)$ if $X\perp Y$.

### Relation to the MGF
The moment generating function is

$$
\psi_X(t) = E[e^{tX}].
$$

Comparison table written in notes (page 2):

- MGF uses $tX$ in the exponent.  
- CF uses $itX$.  
- CF exists for **all** real $t$; MGF may fail to exist.

### Joint Characteristic Functions

For a vector $(X,Y)$,

$$
\varphi_{(X,Y)}(s,t)
=
E[e^{i(sX + tY)}].
$$

Independence equivalently means:

$$
X\perp Y
\quad\Longleftrightarrow\quad
\varphi_{(X,Y)}(s,t) = \varphi_X(s)\varphi_Y(t).
\tag{7}
$$

The table on pages 2–3 works through a discrete example illustrating dependence vs independence using CFs.

---

# **Cheat–Sheet Summary — Lecture 35**

- **Lindeberg–Feller CLT** generalizes the CLT to triangular arrays.  
  Condition:  
  $$
  L_n(\varepsilon)
  =\sum_k E[X_{n,k}^2; \vert X_{n,k}\vert >\varepsilon] \to 0.
  $$

- Lindeberg ⇒ no dominant term:
  $\max_k E[X_{n,k}^2]\to0$.

- One-by-one replacement (as in Lecture 34) yields:
  $$
  \vert E[f(S_n)] - E[f(Z)]\vert 
  \le
  C L_n(\varepsilon) + \varepsilon.
  $$

- Sufficient condition:  
  $\sum_k E(\vert X_{n,k}\vert ^{2+\delta})\to0$ for some $\delta>0$.

- **Characteristic functions** introduced:  
  $$
  \varphi_X(t)=Ee^{itX},\quad
  \varphi_{X+Y}=\varphi_X\varphi_Y\text{ if independent.}
  $$

- CFs always exist, are bounded, and encode full distributional information.

