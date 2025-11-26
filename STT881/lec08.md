# 8 — Hölder’s Inequality Refinements, $L^p$ Norms, Triangle Inequality, Bounded Convergence, Convergence in Measure

Lecture 8 covers:

Refinements of Hölder’s inequality including the 
𝑝
=
1
,
 
𝑞
=
∞
p=1, q=∞ case,

Definition and properties of 
𝐿
𝑝
L
p
 spaces,

Triangle inequality for 
𝐿
𝑝
L
p
,

The Bounded Convergence Theorem,

Convergence in measure vs almost everywhere,

Examples illustrating why convergence in measure does not imply convergence of integrals unless additional assumptions hold.

We work on a σ-finite measure space $(\Omega, \mathcal{F}, \mu)$.

---

# 1. The $L^p$ Norm and Measurability

For $1 \le p < \infty$,
$$
\|f\|_p
= \left( \int_\Omega |f(\omega)|^p\, d\mu(\omega) \right)^{1/p}.
$$

A function $f : \Omega \to \mathbb{R}$ is measurable if:
$$
f^{-1}(B) \in \mathcal{F}, \quad \forall B \subset \mathbb{R} \text{ Borel}.
$$

---

# 2. Hölder’s Inequality, Including the Case $p=1,\, q=\infty$

For $1 \le p < \infty$ and $q$ such that $1/p + 1/q = 1$:
$$
\int_\Omega |f g|\, d\mu
\le 
\|f\|_p \cdot \|g\|_q.
$$

## Case $p=1,\ q=\infty$

Here $\|g\|_\infty$ is the **essential supremum**:
$$
\|g\|_\infty = \inf\{ a \ge 0 : \mu(\{ |g| > a \}) = 0 \}.
$$

Then:
$$
\int_\Omega |f g|\, d\mu
\le 
\|f\|_1 \, \|g\|_\infty.
$$

Reason (page 1):  
On the set where $|g| \le \|g\|_\infty$ (ignoring measure-zero sets):
$$
|fg| \le |f| \cdot \|g\|_\infty,
$$
hence integrate and use monotonicity.

---

# 3. $L^p$ Spaces

$$
L^p(\Omega, \mathcal{F}, \mu) 
= \{f\text{ measurable}: \|f\|_p < \infty\}.
$$

The full notation in the notes is:
$$
L^p = L^p(\Omega, \mathcal{F}, \mu).
$$

---

# 4. Triangle Inequality for $L^p$ ($1 \le p \le \infty$)

### Case $1 \le p < \infty$

Goal:
$$
\|f+g\|_p \le \|f\|_p + \|g\|_p.
$$

### Proof (page 2)

Start from:
$$
|f+g|^p
= |f+g| \cdot |f+g|^{p-1}
\le |f|\, |f+g|^{p-1} + |g|\, |f+g|^{p-1}.
$$

Integrate:
$$
\int |f+g|^p
\le 
\int |f|\; |f+g|^{p-1}
+ \int |g|\; |f+g|^{p-1}.
$$

Apply Hölder:

- Exponent $p$ for $|f|$ or $|g|$,
- Exponent $q = \frac{p}{p-1}$ for $|f+g|^{p-1}$.

We get:
$$
\int |f|\; |f+g|^{p-1}
  \le \|f\|_p \, \|f+g\|_p^{p-1},
$$
and similarly with $g$.

Thus:
$$
\|f+g\|_p^p
\le (\|f\|_p + \|g\|_p)\, \|f+g\|_p^{p-1}.
$$

Divide both sides by $\|f+g\|_p^{p-1}$ (nonzero unless the inequality is trivial):

$$
\boxed{
\|f+g\|_p \le \|f\|_p + \|g\|_p.
}
$$

### Case $p=\infty$

$$
\|f+g\|_\infty
= \esssup |f+g|
\le \esssup |f| + \esssup |g|
= \|f\|_\infty + \|g\|_\infty.
$$

---

# 5. Bounded Convergence Theorem (Book Version)

Assume:

- $\mu(\Omega) < \infty$,
- $|f_n| \le M < \infty$ for all $n$,
- $f_n \to f$ **almost everywhere**.

Then:
$$
f_n \to f \quad \text{in measure}.
$$

And:
$$
\int f_n \, d\mu \to \int f \, d\mu.
$$

This is weaker than Dominated Convergence (because the bound $M$ does not need to be integrable on infinite measure spaces).

---

# 6. Convergence in Measure

Definition:
$$
f_n \xrightarrow{\mu} f
\quad \text{means} \quad
\mu\{ |f_n - f| > \varepsilon \} \to 0
\quad \forall \varepsilon > 0.
$$

Relation to almost everywhere convergence:

$$
f_n \xrightarrow{\text{a.e.}} f
\quad \Longrightarrow \quad
f_n \xrightarrow{\mu} f.
$$

### Proof idea (page 3):
Let $A_{n,\varepsilon} = \{|f_n - f| > \varepsilon\}$.  
If $f_n \to f$ a.e., then:

$$
\bigcap_{n=1}^\infty \bigcup_{k=n}^\infty A_{k,\varepsilon}
$$
has measure 0.  
Since $\mu(\Omega) < \infty$, this shows $\mu(A_{n,\varepsilon}) \to 0$.

---

# 7. Examples (Lebesgue Measure on $\mathbb{R}$)

Let $\mu = \lambda$ be Lebesgue measure.

### Example 1: Convergence a.e. and in measure, but $\int f_n$ does *not* converge to 0.

Define:
$$
f_n(\omega) 
= \frac{1}{n} \mathbf{1}_{(n,2n]}(\omega),\quad n=1,2,\dots
$$

- $f_n \to 0$ a.e.  
- $f_n \to 0$ in measure.  
- But:
  $$
  \int_{\mathbb{R}} f_n\, d\lambda = 1,\quad \forall n.
  $$

So the integrals do **not** converge to 0.

### Example 2: Diverging integral despite convergence in measure

Define:
$$
f_n(\omega) = \mathbf{1}_{(n,2n]}(\omega).
$$

Then:

- $f_n \to 0$ a.e.
- $f_n \to 0$ in measure.
- But:
  $$
  \int_{\mathbb{R}} f_n\, d\lambda = n \to \infty.
  $$

This shows that **convergence in measure does not control integrals** unless there is additional uniform integrability or a dominating integrable function.

---

# 8. Convergence Relationships

### Almost everywhere ⇒ In measure  
(always true if $\mu(\Omega) < \infty$)

### In measure ⇏ Almost everywhere  
(need subsequences to get a.e. convergence)

### In measure or a.e. does NOT imply convergence of integrals  
(see examples above)

---

This finishes Lecture 8: a key transition from integration theory into convergence modes, preparing for the **Dominated Convergence Theorem** and **Fatou’s lemma** in the next lectures.
