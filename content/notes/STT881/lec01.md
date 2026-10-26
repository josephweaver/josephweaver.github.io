# 1 — Cardinality, Cantor’s Theorem, Series, Measure Theory

Lecture 01 covers early measure-theoretic foundations: countable vs uncountable sets, Cantor’s diagonal argument (including $vert A\vert <\vert 2^A\vert $), binary expansions showing ($(0,1)$) is uncountable, basics of sequences/series (convergence, harmonic vs (p)-series, alternating divergence), and first steps in measure theory—definition of an algebra of sets and a measure on it.

## 1. Cardinality of Sets

A set is **finite**, **countably infinite**, or **uncountable**.

### Definition (Cardinality)
For a set $A$, the **cardinality** $\vert A\vert $ is the “number of elements” in $A$.  
- If there is a bijection $A \leftrightarrow \mathbb{N}$, then $A$ is **countable**.  
- If no such bijection exists, $A$ is **uncountable**.

### Examples of Countable Sets
- $\mathbb{N} = \{1,2,3,\dots\}$
- $\mathbb{Z} = \{\dots,-2,-1,0,1,2,\dots\}$
- $\mathbb{Q} = \{\frac{m}{n}: m,n\in\mathbb{Z}, n\neq 0\}$

A typical enumeration of $\mathbb{Q}$ uses the lattice of integer pairs $(m,n)$ arranged in diagonals.

### Real numbers are uncountable
$$
\vert \mathbb{R}\vert  > \vert \mathbb{Z}\vert .
$$

This is shown using **Cantor’s diagonal argument**.

---

## 2. Cantor’s Theorem: $\vert A\vert  < \vert 2^A\vert $

### Power Set
For any set $A$, the **power set**
$$
2^A = \{B : B\subseteq A\}
$$
has cardinality strictly greater than $A$.

### Theorem (Cantor)
For every set $A$,
$$
\vert A\vert  < \vert 2^A\vert .
$$

### Proof (Diagonal Argument)
Assume for contradiction that there is a bijection  
$$
f : A \to 2^A.
$$

Define the set
$$
B = \{a\in A : a\notin f(a)\}.
$$

Since $B\subseteq A$, if $f$ is onto, there must be some $b\in A$ such that
$$
f(b) = B.
$$

Now consider whether $b\in B$:

- If $b\in B$, then by definition of $B$, $b\notin f(b)=B$. Contradiction.
- If $b\notin B$, then by definition of $B$, $b\in f(b)=B$. Contradiction.

Thus no bijection exists and $\vert A\vert  < \vert 2^A\vert $.

---

## 3. Binary Expansions and the Uncountability of $(0,1)$

Every number in $(0,1)$ can be written as a binary expansion:
$$
x = \sum_{k=1}^\infty \frac{\varepsilon_k}{2^k}, \qquad \varepsilon_k \in \{0,1\}.
$$

This identifies $(0,1)$ with a subset of $\{0,1\}^{\mathbb{N}}$.  
Because $\{0,1\}^{\mathbb{N}}$ is uncountable, $(0,1)$ is uncountable.

---

## 4. Sequences and Series

### Sequence
A **sequence** is a function
$$
a : \mathbb{N} \to \mathbb{R}, \qquad n\mapsto a_n.
$$

### Partial Sums and Series
The **partial sums** of a series are
$$
S_N = \sum_{i=1}^N a_i.
$$

The series $\sum_{n=1}^\infty a_n$ **converges** if $\lim_{N\to\infty} S_N$ exists and is finite.

### Basic Facts
- If $a_n \ge 0$ and $\sum a_n < \infty$, then $S_n$ is increasing and bounded, so it converges.
- Example:
  - Harmonic series diverges:
    $$
    \sum_{n=1}^{\infty} \frac{1}{n} = \infty.
    $$
  - $p$-series with $p>1$ converges:
    $$
    \sum_{n=1}^{\infty} \frac{1}{n^2} < \infty.
    $$
- Alternating series like $(-1)^n$ do **not** converge, because partial sums oscillate.

---

## 5. Measure Theory: First Definitions

Let $\Omega$ be a set.

### Algebra of Sets
A collection $\mathcal{A}\subseteq 2^\Omega$ is an **algebra** if:

1. $A,B \in \mathcal{A} \implies A\cap B \in \mathcal{A}$.
2. $A\in \mathcal{A} \implies A^c \in \mathcal{A}$.
3. $\varnothing \in \mathcal{A}$, hence $\Omega\in\mathcal{A}$.
4. Closure under union follows from De Morgan:
   $$
   A\cup B = (A^c \cap B^c)^c.
   $$

#### Example
On $\Omega = \mathbb{R}$, let $\mathcal{A}$ be the set of **finite unions of half-open intervals**:
$$
\mathcal{A} = \bigcup_{k=1}^N (a_k,b_k], \quad \text{disjoint intervals}.
$$

This is an algebra.

---

## 6. Measures

A **measure** on an algebra $\mathcal{A}$ is a function
$$
\mu : \mathcal{A} \to [0,\infty]
$$
such that:

1. $\mu(A)\ge 0$ for all $A\in\mathcal{A}$.
2. $\mu(\varnothing)=0$.
3. **Countable additivity** for disjoint sets:  
   If $A_i \in \mathcal{A}$ are pairwise disjoint and $\bigcup_{i=1}^\infty A_i \in \mathcal{A}$, then
   $$
   \mu\!(\bigcup_{i=1}^\infty A_i)
      = \sum_{i=1}^\infty \mu(A_i).
   $$

This is the foundation for the **probability measure** $P$ later in the course.
