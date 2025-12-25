# 3 — π-systems, λ-systems, π–λ Theorem, Outer Measure, Lebesgue Measure

Lecture 3 is a major theoretical step: it introduces the π–λ theorem, then constructs outer measure and Lebesgue measurable sets, culminating in the extension of pre-measure → Lebesgue measure on the Borel σ-algebra.


We begin with a pre-measure $\mu$ on $\Omega = (0,1]$ defined on the algebra
$$
\mathcal{A} = \left\{ \bigcup_{i=1}^m (a_i, b_i] : a_i < b_i \right\}.
$$

**Goal:**  
Extend $\mu$ to a **measure** on the σ-algebra $\sigma(\mathcal{A})$, the **Borel σ-algebra** of $(0,1]$.

---

# 1. Borel σ-Algebra and Its Minimality

The **Borel σ-algebra** $\mathcal{B}$ is the smallest σ-algebra containing all open sets.  
Since
$$
(a,b) = \bigcup_{n=1}^\infty \left(a, b - \frac{1}{n}\right],
$$
we see that every open interval belongs to $\sigma(\mathcal{A})$.

Thus:
$$
\sigma(\mathcal{A}) = \text{Borel σ-algebra}.
$$

Two basic questions:
1. **Existence** of extension of $\mu$ to $\sigma(\mathcal{A})$: **Yes.**  
2. **Uniqueness** of extension: **Yes.**  
   (Requires π–λ machinery.)

---

# 2. π-systems

A collection $\pi \subseteq 2^\Omega$ is a **π-system** if:

- $\Omega \in \pi$,
- If $A,B \in \pi$, then $A \cap B \in \pi$.

Examples:
- Intervals of the form $(a,b]$.
- Rectangles in $\mathbb{R}^d$.
- Any generating set for a Borel σ-algebra.

π-systems capture **finite intersection** structure.

---

# 3. λ-systems (Dynkin systems)

A collection $\lambda \subseteq 2^\Omega$ is a **λ-system** if:

1. $\Omega \in \lambda$.  
2. If $A,B \in \lambda$ with $A \subseteq B$, then  
   $$
   B \setminus A \in \lambda.
   $$
3. For disjoint $A_1, A_2, \dots \in \lambda$,  
   $$
   A_1 \cup A_2 \cup \cdots \in \lambda.
   $$

**Important:** A λ-system is not necessarily closed under intersections, so it is not a σ-algebra.

The lecture’s diagram on page 2 of the PDF shows a λ-system containing sets  
$\{\varnothing, \Omega, A, A^c, B, B^c\}$,  
but **not** $A \cap B$.

---

# 4. Making a λ-system into a σ-algebra

If a λ-system is *also* a π-system, then it is automatically a σ-algebra:

- π-system gives closure under intersections,
- λ-system gives closure under complements and countable unions.

Thus:
$$
\text{π-system} + \text{λ-system} = \text{σ-algebra}.
$$

This motivates the central theorem.

---

# 5. The π–λ Theorem (Dynkin)

**Theorem (π–λ theorem).**  
If $\pi$ is a π-system, then the smallest λ-system containing it is exactly the σ-algebra it generates:
$$
\lambda(\pi) = \sigma(\pi).
$$

This theorem is extremely useful because λ-systems are easier to show closed under operations needed to prove measure uniqueness.

---

# 6. Application: Uniqueness of Measure Extension

Suppose $V_1$ and $V_2$ are measures on $(\Omega, \sigma(\pi))$ such that:

- They agree on the π-system $\pi$,  
- $V_1(\Omega) = V_2(\Omega) < \infty$.

Define:
$$
\lambda = \{B \in \sigma(\pi) : V_1(B) = V_2(B)\}.
$$

We check the λ-system properties.

### (1) $\Omega \in \lambda$

Because $V_1(\Omega)=V_2(\Omega)$.

### (2) Closure under differences

If $A,B \in \lambda$ and $B \subseteq A$, then:
$$
V_1(A \setminus B)
= V_1(A) - V_1(B)
= V_2(A) - V_2(B)
= V_2(A \setminus B),
$$
so $A \setminus B \in \lambda$.

### (3) Closure under increasing unions

If $A_n \uparrow A$ with all $A_n \in \lambda$, then:
$$
V_1(A_n) \uparrow V_1(A), \qquad
V_2(A_n) \uparrow V_2(A),
$$
so $A \in \lambda$.

Thus $\lambda$ is a λ-system, and since it contains $\pi$, Dynkin’s theorem gives:
$$
\sigma(\pi) = \lambda(\pi) \subseteq \lambda.
$$

Therefore $V_1 = V_2$ on all of $\sigma(\pi)$.  
This proves **uniqueness of measure extension**.

---

# 7. Carathéodory Outer Measure

To prove existence of Lebesgue measure, we construct an **outer measure** $\mu^*$.

Given pre-measure $\mu$ on $\mathcal{A}$, define for any $A \subseteq \Omega$:
$$
\mu^*(A)
= \inf\left\{
\sum_{i=1}^\infty \mu(A_i)
:\;
A \subseteq \bigcup_{i=1}^\infty A_i,\;
A_i \in \mathcal{A}
\right\}.
$$

Interpretation:  
Cover $A$ with countably many semi-open intervals and take the **smallest total measure**.

### Properties of outer measure (page 3–4)

1. $\mu^*(\varnothing)=0$.  
2. If $E \subseteq F$ then  
   $$
   \mu^*(E) \le \mu^*(F).
   $$
3. For any countable family $A = \bigcup_{i=1}^\infty A_i$,  
   $$
   \mu^*(A) \le \sum_{i=1}^\infty \mu^*(A_i).
   $$

---

# 8. Carathéodory Measurable Sets

A set $E \subseteq \Omega$ is **Carathéodory measurable** if:

$$
\mu^*(F)
= \mu^*(F \cap E)
+ \mu^*\big(F \cap E^c\big)
\quad\text{for all } F \subseteq \Omega.
$$

Geometric intuition (seen in the page-4 diagram):  
For any “test” set $F$, the measure of $F$ must split exactly into the measure of the part inside $E$ and the part outside.

Define:
$$
\mathcal{A}^* = \{E : E \text{ is measurable}\}.
$$

---

# 9. Main Results of Carathéodory’s Theorem

1. **$\mathcal{A} \subseteq \mathcal{A}^*$**  
   (The original algebra’s sets are measurable.)

2. **$\mathcal{A}^*$ is a σ-algebra.**

3. $\mu^\*$ **restricted to** $\mathcal{A}^*$ **is a complete measure.**

4. If $\mu^\*(E) = 0$, then $E \in \mathcal{A}^*$  
   (Outer measure is *complete*).

5. For our original pre-measure on semiopen intervals,  
   $$
   \sigma(\mathcal{A}) = \mathcal{B} \subseteq \mathcal{A}^*,
   $$
   and the extension of $\mu$ to $\mathcal{B}$ is exactly **Lebesgue measure**.

Thus, we have:

- **Existence** of Lebesgue measure,  
- **Uniqueness** from the π–λ theorem.

