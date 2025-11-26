
# 6 — Monotone Convergence, σ-Finiteness, and Integrating General Measurable Functions

Lecture 6 continues building the Lebesgue integral:

Extend integration to arbitrary positive measurable functions on σ–finite measure spaces,

Prove the Monotone Convergence Theorem (MCT),

Extend integration from positve functions to to general measurable functions 

Establish additivity for integrable functions.


We now move to **Step 3** of Lebesgue integration: extending the integral from bounded simple functions to *all* measurable functions.

---

# 1. Setup

Assume:

- $(\Omega, \mathcal{F}, \mu)$ is **σ-finite**,  
  $$
  \exists E_n \in \mathcal{F},\; E_n \uparrow \Omega,\; \mu(E_n) < \infty.
  $$
- $f : \Omega \to [0,\infty]$ is **measurable** (i.e. $f^{-1}(B)\in\mathcal{F}$ for all Borel $B$).

We have already defined, for $f \ge 0$:
$$
I(f)
    = \sup\{ I(h) : 0 \le h \le f,\; h \text{ bounded simple},\; \mu(h>0) < \infty \}.
$$

And integration on subsets:
$$
\int_E f\, d\mu = I(f \cdot \mathbf{1}_E).
$$

---

# 2. A Key Lemma (σ-finite approximation)

If $E_n \uparrow \Omega$ with $\mu(E_n)<\infty$, then for any $f \ge 0$,
$$
I(f \cdot \mathbf{1}_{E_n}) \uparrow I(f).
$$

Proof idea (from page 1 of the notes):

- For any bounded $h \le f$, write:
  $$
  I(h) = I(h\mathbf{1}_{E_n}) + I(h\mathbf{1}_{E_n^c}).
  $$
- Because $h$ is bounded and $\mu(E_n^c \cap \{h>0\}) \to 0$, the second term vanishes.
- Therefore the integral of $f$ can be captured on the increasing sets $E_n$.

This lemma handles the common technical issue: we can reduce to the case $\mu(\Omega) < \infty$.

---

# 3. Monotone Convergence Theorem (MCT)

**Theorem (Beppo Levi).**  
If $f_n \ge 0$ and $f_n \uparrow f$ almost everywhere, then:
$$
I(f_n) \uparrow I(f).
$$

Notes from the lecture:

- “Almost everywhere” means ignoring a set of measure zero, which never affects the integral.
- It *does not* require pointwise convergence on all $\omega$.

### Proof sketch:

- First reduce to the case where each $f_n$ is bounded and $\mu(\Omega)<\infty$ using the lemma above.
- Let $h$ be any bounded simple function with $0 \le h \le f$.  
  Since $f_n \uparrow f$, for each fixed $\omega$:
  $$
  h(\omega) \le f(\omega) = \lim_{n\to\infty} f_n(\omega).
  $$
- Thus for large $n$, $h \le f_n + \varepsilon$.
- Integrate and take suprema over all such $h$.

Conclusion:
$$
\lim_{n\to\infty} I(f_n) = I(f).
$$

---

# 4. Additivity for Positive Functions

For $f, g \ge 0$,
$$
I(f+g) = I(f) + I(g).
$$

Proof outline (page 2):

1. For bounded $h_1 \le f$, $h_2 \le g$,
   $$
   I(h_1 + h_2) = I(h_1) + I(h_2).
   $$
2. Taking suprema over all such $h_1$ and $h_2$ yields:
   $$
   I(f) + I(g)
   \le I(f+g)
   \le I(f) + I(g).
   $$

Hence equality.

---

# 5. Extending the Integral to Arbitrary Measurable Functions

Given any measurable $f : \Omega \to \mathbb{R}$, define:
$$
f^+ = f \vee 0, \qquad
f^- = (-f) \vee 0.
$$

Both $f^+$ and $f^-$ are non-negative measurable.

If:
$$
I(|f|) = I(f^+ + f^-) < \infty,
$$
i.e. $f$ is **integrable**, define:
$$
I(f) = I(f^+) - I(f^-).
$$

### Properties

- $|f| = f^+ + f^- \implies I(|f|) < \infty$ gives finite values for both $I(f^+)$ and $I(f^-)$.
- If $f \ge 0$, then $f^- = 0$ and we recover the previous definition.

---

# 6. Additivity for Integrable Functions

If $f,g$ satisfy $I(|f|)<\infty$ and $I(|g|)<\infty$, then:
$$
I(f+g) = I(f) + I(g).
$$

Proof outline (page 3 of the notes):

- Decompose:
  $$
  f+g
  = (f^+ + g^+) - (f^- + g^-).
  $$
- Use additivity for positive functions:
  $$
  I(f^+ + g^+) = I(f^+) + I(g^+),
  \quad
  I(f^- + g^-) = I(f^-) + I(g^-).
  $$
- Combine:
  $$
  I(f+g)
   = I(f^+) + I(g^+) - [I(f^-) + I(g^-)]
   = I(f) + I(g).
  $$

---

# 7. Summary of the Integral So Far

1. **Simple functions:**  
   $\displaystyle \int \varphi = \sum a_i \mu(A_i)$.

2. **Positive measurable $f$:**  
   $$
   \int f = \sup_{\varphi \le f} \int \varphi.
   $$

3. **Monotone convergence:**  
   If $f_n \uparrow f$, then  
   $$
   \int f_n \uparrow \int f.
   $$

4. **General measurable $f$:**  
   $$
   f = f^+ - f^-,
   \quad
   \int f = \int f^+ - \int f^-,
   \quad
   \text{provided } \int |f| < \infty.
   $$

This gives the full Lebesgue integral for real-valued functions.

