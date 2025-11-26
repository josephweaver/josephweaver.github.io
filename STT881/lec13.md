# 13 — Kolmogorov Extension Theorem

Lecture 13 develops the Kolmogorov Extension Theorem, a fundamental result ensuring the existence of probability measures on infinite-dimensional product spaces (e.g., laws of stochastic processes). The lecture carefully builds the σ-algebras, the finite-dimensional distributions, the consistency property, and Carathéodory’s extension argument with compactness/diagonal subsequence technique.

The Kolmogorov Extension Theorem (1930–1940) constructs probability measures on infinite-dimensional product spaces from *consistent finite-dimensional distributions*.

---

# 1. Infinite Product Space and Coordinate Maps

Let
$$
\Omega = \{\omega = (x_1, x_2, x_3, \ldots) : x_k \in \mathbb{R}\}.
$$

For each $n$, define the **coordinate projection**
$$
\pi_n(\omega) = x_n.
$$

We want a probability measure $P$ on $(\Omega, \mathcal{F})$ such that the random vector
$$
(\pi_1, \ldots, \pi_n)
$$
has a **prescribed** probability law on $\mathbb{R}^n$, for every $n$.

---

# 2. The Filtration of σ-Algebras $F_n$

For each $n$, define:
$$
F_n = \{\omega : (x_1,\ldots,x_n) \in A,\; A \in \mathcal{B}(\mathbb{R}^n)\}.
$$

Properties (see page 1 diagram with the nested strips):

- $F_n$ is a σ-algebra.
- $F_n \subseteq F_{n+1}$ because specifying the first $n$ coordinates gives less information than specifying $n+1$.
- Let:
  $$
  \mathcal{A} = \bigcup_{n=1}^\infty F_n.
  $$
  Then $\mathcal{A}$ is an **algebra** (closed under finite unions & complements).

**Important:**  
$\mathcal{A}$ is *not* a σ-algebra.  
For example (page 1),
$$
A = \left\{\omega : \sum_{k=1}^\infty x_k^2 \le 1\right\}
$$
is not in any $F_n$, so not in $\mathcal{A}$.

---

# 3. Finite-Dimensional Distributions and Consistency

For each $n$, suppose we are given a probability measure
$$
\mu_n \quad \text{on } (\mathbb{R}^n, \mathcal{B}(\mathbb{R}^n)).
$$

Interpretation:
$$
\mu_n(A) = \mathbb{P}\big( (X_1,\ldots,X_n)\in A\big).
$$

**Consistency condition:**  
For all Borel sets $A \subseteq \mathbb{R}^n$,
$$
\mu_{n+1}(A \times \mathbb{R}) = \mu_n(A).
$$

This expresses correct **marginalization**.

---

# 4. Define the Pre-Measure $M$ on $\mathcal{A}$

For $A \in F_n$ with
$$
A = \{\omega : (x_1,\ldots,x_n) \in B\},
\quad B \in \mathcal{B}(\mathbb{R}^n),
$$
define:
$$
M(A) = \mu_n(B).
$$

The consistency condition ensures this is **well-defined**, i.e. if the same set $A$ can be written using $F_{n+k}$, it gives the same number (page 1, “$μ$ is consistent—so $M$ agrees on overlaps” note).

---

# 5. Goal
Extend $M$ from the algebra $\mathcal{A}$ to a probability measure on:
$$
\mathcal{F} = \sigma(\mathcal{A}).
$$

This is analogous to constructing Lebesgue measure from intervals (page 1 note: “we want to establish Lebesgue measure on $\mathbb{R}$”).

---

# 6. Carathéodory Condition Needed for Extension

To extend $M$ to a measure on the σ-algebra, we must show:

> If $B_n \in \mathcal{A}$, $B_n \downarrow \varnothing$, then $M(B_n) \downarrow 0$.

If this holds, Carathéodory's theorem yields the complete measure on $\mathcal{F}$.

---

# 7. Proof by Contradiction (pages 1–2)

Assume the negation:

There exists $\delta > 0$ such that:
$$
M(B_n) \ge \delta \quad \forall n,
\qquad B_n \in \mathcal{A},\; B_n\downarrow\varnothing.
$$

Since each $B_n\in F_n$, we can write:
$$
B_n = \{\omega : (x_1,\ldots,x_n)\in D_n\},
\quad D_n \subseteq \mathbb{R}^n.
$$

Because $M(B_n)=\mu_n(D_n)\ge\delta$, the sets $D_n$ must have substantial measure.

The notes draw (page 2) rectangular regions showing that from each $D_n$ we can extract a **compact** subset $C_n\subseteq D_n$ such that:
$$
\mu_n(C_n) \ge \frac{\delta}{2^n}.
$$

Thus:
$$
M(B_n\setminus C_n)\le \frac{\delta}{2^n}.
$$

---

# 8. Diagonal Argument (page 2 diagram)

The sets $C_n$ correspond to subsets in $\mathbb{R}^n$: compact, nested in the sense
$$
C_{n+1} \subseteq C_n \times \mathbb{R},
$$
when interpreted in $\Omega$.

Using the **compactness** of each $C_n$ and a classical *diagonal subsequence* argument illustrated on page 2 (the table with $a_{k,n} = a_{k 2^n}$ and diagonal extraction):

> From the sequence in $\prod C_n$, one extracts a subsequence that converges to an element in  
> $$
> \bigcap_{n=1}^\infty C_n.
> $$

But since:
$$
\bigcap B_n = \varnothing,
$$
we must have
$$
\bigcap C_n = \varnothing.
$$

Contradiction.

Therefore the assumption is false.

Thus:

$$
B_n\downarrow\varnothing \;\Longrightarrow\; M(B_n)\downarrow 0.
$$

---

# 9. Conclusion: Existence of the Probability Measure

By Carathéodory:

There exists a **unique** probability measure $P$ on $\mathcal{F}=\sigma(\mathcal{A})$ such that:

$$
P(A) = M(A), 
\quad A\in\mathcal{A}.
$$

This measure has the prescribed finite-dimensional marginals.

This is the **Kolmogorov Extension Theorem**.

---

# 10. Application: Constructing a Random Variable with Lebesgue Distribution

As shown on **page 3**, consider i.i.d. Bernoulli($1/2$) random variables $X_1,X_2,\ldots$, taking values in $\{0,1\}$.

Define:
$$
Y = \sum_{k=1}^\infty \frac{X_k}{2^k}.
$$

This is the **binary expansion of a uniform random variable** on $[0,1]$.  
Thus the distribution of $Y$ is Lebesgue measure on $[0,1]$.

Using Kolmogorov Extension:

- The joint law of $(X_1,\ldots,X_n)$ is product measure $(1/2)^n$.
- The consistency condition holds automatically (independence).
- Therefore a probability measure exists on $\{0,1\}^{\mathbb{N}}$ (page 3), exactly representing the infinite Bernoulli sequence.

Then $Y(\omega)=\sum X_k(\omega)/2^k$ is measurable, and:
$$
\mathbb{P}(0\le Y<1) = 1.
$$

Thus Kolmogorov builds a probability space supporting the entire infinite process.

---

# 11. Final Note in the Lecture

The last line of page 3 writes:

> “Dominated Convergence Theorem.”

This signals the next topic: Using DCT within infinite product constructions and for expectations of functionals of processes.

