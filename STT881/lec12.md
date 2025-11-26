# 12 — Uniform Integrability, Product Measures, and Fubini

Lecture 12 has two major components:

Finishing uniform integrability (UI):
Proving that UI + a.s. convergence implies 
𝐿
1
L
1
 convergence, revisiting the key tail argument, and checking the conditions for UI.

Product measures & Fubini/Tonelli:
Constructing the product measure from rectangles, proving uniqueness, and finishing with examples illustrating when Fubini works and when it fails.

All diagrams in the handwritten notes—including the rectangle-splitting picture on page 2 and the UI tail-vanishing picture on page 1—are incorporated conceptually.

--- 

We continue with:

- A complete proof that **UI + a.s. convergence ⇒ $L^1$ convergence**,  
- The construction of **product measures** on $(\Omega_1 \times \Omega_2, \mathcal{F}_1 \otimes \mathcal{F}_2)$,  
- **Tonelli** (non-negative functions) and **Fubini** (integrable functions) theorems,  
- Counterexamples where Fubini fails because $\int |f| = \infty$.

---

# 1. Definition of Uniform Integrability

For a sequence $\{X_n\}\subset L^1$,
$$
\phi(M)
=
\sup_{n \ge 1}
\mathbb{E}\big[ |X_n| \mathbf{1}_{\{|X_n|>M\}} \big].
$$

$$
\{X_n\} \text{ is UI }
\iff
\phi(M) \to 0\quad (M\to\infty).
$$

---

# 2. Alternative Characterization of UI

$\{X_n\}$ is UI **iff**:

1. $\sup_n \mathbb{E}|X_n| < \infty$,  
2. For all $\varepsilon>0$ there exists $\delta>0$ such that  
   whenever $P(A)<\delta$,
   $$
   \sup_n \mathbb{E}\big(|X_n|\mathbf{1}_A\big) < \varepsilon.
   $$

This captures the idea that the sequence cannot concentrate large mass on small-probability sets (page 1).

---

# 3. Basic Applications of UI

As stated on page 1:

- If $\{X_n\}$ and $\{Y_m\}$ are UI, then  
  $\{X_n + Y_m\}$ is UI.

- If $X_n \to X$ in $L^1$, then $\{X_n\}$ is UI.

- If $\mathbb{E}|X_n|<\infty$ for all $n$, $\mathbb{E}|X|<\infty$, and
  $$
  \mathbb{E}|X_n - X| \to 0,
  $$
  then $\{X_n\}$ is UI (follows from the two previous items).

---

# 4. Main Theorem: UI + a.s. Convergence ⇒ $L^1$ Convergence

**Theorem.**  
If  
1. $X_n \to X$ a.s.,  
2. $\{X_n\}$ is UI,

then:
$$
\mathbb{E}|X_n - X| \to 0.
$$

### Proof (as in pages 1–2)

**Step 1.** Show $X\in L^1$.

By Fatou:
$$
\mathbb{E}|X|
=
\mathbb{E}\big[\liminf |X_n|\big]
\le
\liminf \mathbb{E}|X_n|
\le
\sup_n \mathbb{E}|X_n| < \infty.
$$

**Step 2.** Reduce the problem.

Define $Z_n = X_n - X$.  
Then UI of $\{X_n\}$ and a.s. convergence imply UI of $\{Z_n\}$ (using closure of UI under addition/subtraction, page 1–2).

Thus it suffices to show:
$$
X_n \to 0 \text{ a.s. and } \{X_n\}\text{ UI }
\quad\Longrightarrow\quad
\mathbb{E}|X_n| \to 0.
$$

**Step 3.** Tail decomposition (page 1 diagram)

Fix $M$:

$$
|X_n|
=
|X_n|\mathbf{1}_{\{|X_n|\le M\}}
+
|X_n|\mathbf{1}_{\{|X_n|>M\}}.
$$

Integrate:
$$
\mathbb{E}|X_n|
\le
\mathbb{E}\big( |X_n|\mathbf{1}_{\{|X_n|\le M\}} \big)
+
\sup_k \mathbb{E}\big(|X_k|\mathbf{1}_{\{|X_k|>M\}}\big).
$$

- Second term → $0$ as $M\to\infty$ by UI.  
- First term → $0$ as $n\to\infty$ for fixed $M$, by Bounded Convergence (since on $\{|X_n|\le M\}$ we have boundedness and $X_n\to 0$ a.s.)

Finally send $M\to\infty$.

So $\mathbb{E}|X_n|\to 0$.

Thus:
$$
\boxed{
X_n\to X \text{ a.s. and UI } \Longrightarrow X_n\to X \text{ in }L^1.
}
$$

---

# 5. Product Measures

Let  
$(\Omega_1,\mathcal{F}_1,\mu_1)$ and $(\Omega_2,\mathcal{F}_2,\mu_2)$ be σ–finite.

Consider the collection of finite disjoint unions of measurable rectangles:
$$
\mathcal{L}
=
\left\{
\bigcup_{i=1}^n (A_i \times B_i)
:\,
A_i\in\mathcal{F}_1,\,
B_i\in\mathcal{F}_2,\,
(A_i\times B_i)\cap(A_j\times B_j)=\varnothing\,(i\neq j)
\right\}.
$$

**Claim:** $\mathcal{L}$ is an algebra (page 2).

Define:
$$
\mu(A\times B)=\mu_1(A)\mu_2(B).
$$

**Theorem (existence/uniqueness, page 2):**  
There exists a unique measure $\mu$ on  
$\mathcal{F}_1\otimes \mathcal{F}_2=\sigma(\mathcal{L})$  
whose value on rectangles is the product:
$$
\mu(A\times B)=\mu_1(A)\mu_2(B).
$$

### Key step of proof (page 2 diagram)

For disjoint rectangles decomposing $A \times B$:
$$
\mathbf{1}_{A\times B}
= 
\sum_{n=1}^\infty 
\mathbf{1}_{A_n}(\omega_1)\mathbf{1}_{B_n}(\omega_2).
$$

Integrate w.r.t. $\mu_1\otimes\mu_2$ and apply MCT to justify:
$$
\mu(A\times B)
=
\sum_{n=1}^\infty \mu_1(A_n)\mu_2(B_n).
$$

---

# 6. Tonelli and Fubini Theorems

Let $\mu=\mu_1\otimes\mu_2$.

### **Tonelli** (nonnegative $f$)

If $f\ge 0$ is measurable on $\Omega_1\times\Omega_2$, then both
$$
x\mapsto \int_{\Omega_2} f(x,y)\, d\mu_2(y),
\quad
y\mapsto \int_{\Omega_1} f(x,y)\, d\mu_1(x)
$$
are measurable, and:
$$
\int_{\Omega_1\times\Omega_2} f\, d\mu
=
\int_{\Omega_1}\!\left( \int_{\Omega_2} f\, d\mu_2 \right)d\mu_1
=
\int_{\Omega_2}\!\left( \int_{\Omega_1} f\, d\mu_1 \right)d\mu_2.
$$

### **Fubini** (integrable $f$)

If $\int |f|\, d\mu < \infty$, then:

- Both iterated integrals exist and are finite,
- And the same equality holds.

---

# 7. Example: Fubini Fails When $\int|f|=\infty$

From page 2:

Take  
$\Omega_1=(0,1)$, $\Omega_2=(1,\infty)$, Lebesgue measures.

$$
f(x,y)=e^{-xy}-2e^{-2xy}.
$$

Then:

- $\int_0^1\int_1^\infty f(x,y)\, dy\, dx > 0$,
- $\int_1^\infty\int_0^1 f(x,y)\, dx\, dy < 0$.

The two iterated integrals disagree because:
$$
\int_{\Omega_1\times\Omega_2} |f|\, d\mu = \infty,
$$
so Fubini does **not** apply (Tonelli also does not, because $f$ takes negative values).

---

# 8. Discrete Example with Counting Measure

From page 3:

Let  
$\Omega_1=\Omega_2=\mathbb{N}$,  
$\mathcal{F}_1=\mathcal{F}_2=2^{\mathbb{N}}$,  
$\mu_1=\mu_2$ = counting measure.

Define $f(n,m)=a_{n,m}$ where:

- $a_{i,i}=1$ for $i\ge 0$,
- $a_{i+1,i}=-1$.

The matrix sketch on page 3 shows a diagonal of 1’s and a subdiagonal of −1’s.

Then:

- $\sum_n\sum_m f(n,m)$ equals 0 (one order of summation),
- But $\sum_m\sum_n f(n,m)$ may differ,

illustrating again that **absolute integrability** is required for Fubini.

---

This completes Lecture 12:  
- The final UI theorem,  
- Product measure construction,  
- Tonelli & Fubini,  
- And multiple counterexamples showing why integrability of $|f|$ is essential.

