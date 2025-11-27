# 5 — Cantor Set, Borel vs Lebesgue σ-Algebras, and Integration of Positive Functions

Lecture 5 completes the construction of the Lebesgue integral for non-negative measurable functions, using:

Simple functions as the foundation

The supremum definition from below

The infimum definition from above

A proof that the two definitions agree

Integration properties (positivity, homogeneity, additivity)

---

# 1. Cantor Set Review and Measurability

Let $K$ be the Cantor set constructed inside $[0,1]$.

Properties:

- $K$ is **uncountable**, with cardinality:
  $$
  \vert K\vert  = \vert \mathbb{R}\vert  = 2^{\aleph_0}.
  $$
- $K = \bigcap_{n=1}^\infty K_n$, with $K_n \downarrow K$, and each $K_n$ closed  
  ⇒ $K$ is closed.

**Question:** Is the Cantor set Borel?  
Yes. Every closed set is Borel, and the Borel σ-algebra is the smallest σ-algebra containing all closed sets.

However:

- The **Lebesgue σ-algebra** $ \mathcal{F}^* $ is strictly larger than the Borel σ-algebra $ \mathcal{F} $.
- Why? Because $ \mathcal{F}^* $ contains **all subsets of null sets**.

If $A \subset N$ where $N$ is Borel and $\mu(N)=0$, then:
$$
A \in \mathcal{F}^*.
$$

Since the Cantor set is uncountable and has measure zero, it has $2^{\vert K\vert } = 2^{\vert \mathbb{R}\vert }$ subsets, most of which are **not** Borel — but all are Lebesgue measurable.

Thus:
$$
\vert \mathcal{F}\vert  = \vert \mathbb{R}\vert  < \vert \mathcal{F}^*\vert  = 2^{\vert \mathbb{R}\vert }.
$$

---

# 2. Integration of Simple Functions (Review)

Given a σ-finite measure space $(\Omega, \mathcal{F}, \mu)$, where:
$$
\exists E_n \uparrow \Omega, \quad \mu(E_n) < \infty,
$$
we define the integral of a **simple function**:
$$
\varphi = \sum_{i=1}^n a_i \mathbf{1}_{A_i},
\quad a_i \in \mathbb{R},
\quad A_i \in \mathcal{F},\; \mu(A_i) < \infty.
$$

**Definition:**
$$
I(\varphi) = \int \varphi \, d\mu
  = \sum_{i=1}^n a_i\, \mu(A_i).
$$

### Properties for simple functions

1. **Positivity:**  
   $$
   \varphi \ge 0 \implies I(\varphi) \ge 0.
   $$

2. **Homogeneity:**  
   $$
   I(a\varphi) = a I(\varphi).
   $$

3. **Additivity:**  
   $$
   I(\varphi + \psi) = I(\varphi) + I(\psi).
   $$

The diagram on page 1 shows decomposing  
$\varphi = \sum a_i 1_{A_i}$  
and  
$\psi = \sum b_j 1_{B_j}$  
into rectangles $A_i \cap B_j$.

---

# 3. Extending Integration to a Non-Negative Measurable Function

Now assume:

- $\mu(\Omega) < \infty$ **or** more generally $\mu$ is σ-finite,
- $f : \Omega \to [0,\infty)$ is measurable.

We want to define:
$$
I(f) = \int_\Omega f\, d\mu.
$$

## Step 1: Define lower integral
$$
I(f) := \sup\{\, I(\varphi): 0 \le \varphi \le f,
\; \varphi \text{ simple} \}.
$$

## Step 2: Define upper integral
$$
\tilde{I}(f)
  := \inf\{\, I(\psi) : \psi \ge f,
\; \psi \text{ simple} \}.
$$

### Goal  
Show:
$$
I(f) = \tilde{I}(f),
$$
so the integral is well-defined.

---

# 4. Proof That Lower and Upper Integrals Agree

Let $f \ge 0$ and bounded: $0 \le f \le M$.  
Partition the range into $n$ equal pieces:

Define measurable sets:
$$
E_k^{(n)} = 
\left\{
x : \frac{(k-1)M}{n} < f(x) \le \frac{kM}{n}
\right\},
\quad 1 \le k \le n.
$$

Construct simple functions:

- **Upper step function**  
  $$
  \psi_n(x) = \sum_{k=1}^n \frac{kM}{n}\, 1_{E_k^{(n)}} \ge f.
  $$

- **Lower step function**  
  $$
  \varphi_n(x)
   = \sum_{k=1}^n \frac{(k-1)M}{n}\, 1_{E_k^{(n)}} \le f.
  $$

Then:
$$
\psi_n(x) - \varphi_n(x)
  = \sum_{k=1}^n \frac{M}{n}\, 1_{E_k^{(n)}}.
$$

Integrating:
$$
I(\psi_n) - I(\varphi_n)
  = \frac{M}{n} \sum_{k=1}^n \mu(E_k^{(n)})
  = \frac{M}{n} \mu(\Omega)
  \xrightarrow[n\to\infty]{} 0.
$$

Thus:
$$
0 \le
\tilde{I}(f) - I(f)
\le I(\psi_n) - I(\varphi_n)
\to 0.
$$

Therefore:
$$
\boxed{I(f) = \tilde{I}(f)}.
$$

This completes the definition of $\int f\, d\mu$ for non-negative measurable $f$.

---

# 5. Properties of the Integral for Non-Negative $f,g$

For measurable $f,g \ge 0$ and $a \ge 0$:

1. **Positivity:**
   $$
   I(f) \ge 0.
   $$

2. **Homogeneity:**
   $$
   I(af) = a \, I(f).
   $$

3. **Additivity:**
   $$
   I(f+g) = I(f) + I(g).
   $$

The handwritten proof on pages 2–3 shows both the “inf over upper simple functions” and “sup over lower simple functions” arguments, concluding equality from both sides.

---

# 6. Next Topic (Preview)

The next lecture will move to:

- Defining the integral of **general** (not necessarily non-negative) measurable functions,
- Using positive/negative part:  
  $$
  f = f^+ - f^-,
  \quad f^\pm = \max(\pm f,0).
  $$

This will complete the construction of the Lebesgue integral.

