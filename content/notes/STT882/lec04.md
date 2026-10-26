# 4 — Stopping Times

Last week we covered:

- Random vectors in $\mathbb{R}^d$
- Poisson convergence

This week: **Stopping Times** (Chapter 4, Section 1).

---

## 1. Stopping Times: Intuition

A stopping time is a **random time**, but with an information restriction.

You must be able to decide whether **“$T = n$”** using only the information available at time **$n$**.

A stopping time is a map:
$$
T:\Omega \to \mathbb{Z}^+ = \{0,1,2,\ldots\}.
$$

---

## 2. Filtration

A **filtration** is a non-decreasing sequence of sigma-algebras:
$$
\mathcal{F}_0 \subseteq \mathcal{F}_1 \subseteq \cdots \subseteq \mathcal{F}.
$$

It represents **information growing over time**.

### Natural Filtration
Given a sequence of random variables $(X_n)$:
$$
\mathcal{F}_n = \sigma(X_1,\ldots,X_n), \qquad n\ge 1.
$$

This is the typical filtration used in probability theory.

---

## 3. Definition of Stopping Time

A random time $T$ is a **stopping time** relative to $(\mathcal{F}_n)$ if:
$$
\{T = n\} \in \mathcal{F}_n \qquad \forall n\ge0.
$$

Equivalent and often more convenient:
$$
\{T \le n\} \in \mathcal{F}_n.
$$

Since
$$
\{T\le n\} = \bigcup_{k=0}^n \{T=k\}.
$$

And
$$
\{T=n\} = \{T\le n\} \setminus \{T\le n-1\}.
$$

---

## 4. Examples

### Example 1: First time entering a set

Let $A$ be a Borel set and define:
$$
T = \inf \{k\ge 0 : X_k \in A\}.
$$

Then
$$
\{T=n\} = \{X_0\in A^c,\ldots, X_{n-1}\in A^c, X_n\in A\} \in \mathcal{F}_n.
$$

Thus $T$ **is a stopping time**.

---

### Example 2: Last time in a set (NOT a stopping time)

Define:
$$
T = \sup \{k\ge 0 : X_k \in A\}.
$$

This depends on **future values** (you need to know whether $X_{n+1}, X_{n+2},\ldots$ ever return to $A$).

Thus $T$ is **not** a stopping time.

Heuristic:  
“Turn left **one block before** the big intersection” is **not** a stopping time; it requires knowing the future.  
“Turn left at the 4th street” **is** a stopping time.

---

### Example 3: Constant stopping time

If $T=c$ is a constant, then $T$ is trivially a stopping time, since  
$$
\{T=c\} = \Omega \in \mathcal{F}_c.
$$

---

## 5. Sigma-Algebra at a Stopping Time

We define:
$$
\mathcal{F}_T = \{A \in \mathcal{F} : A\cap \{T=n\} \in \mathcal{F}_n \text{ for all } n\}.
$$

Interpretation:  
**Information available at the random time $T$**.

---

### Natural Filtration Case

If $\mathcal{F}_n = \sigma(X_1,\ldots,X_n)$, then:
$$
\mathcal{F}_T = \sigma\left( X_{n \wedge T} : n\ge 0 \right).
$$

This captures the process “stopped at time $T$”.

---

## 6. Properties of Stopping Times

If $S$ and $T$ are stopping times relative to $(\mathcal{F}_n)$:

1. **Minimum is a stopping time**
   $$
   S\wedge T = \min(S,T) \text{ is a stopping time}.
   $$

   Proof:  
   $$
   \{S\wedge T = n\} = \big( \{S=n\} \cap \{T\ge n\} \big)
     \cup \big( \{T=n\} \cap \{S\ge n\} \big) \in \mathcal{F}_n.
   $$

2. **Maximum is a stopping time**  
   (similar argument).

3. **Order implies filtration inclusion**
   $$
   S\le T \quad \Rightarrow \quad \mathcal{F}_S \subseteq \mathcal{F}_T.
   $$

---

## 7. Adapted Processes and Stopping Times

A process $(X_n)$ is **adapted** if:
$$
X_n \in \mathcal{F}_n, \qquad n\ge1.
$$

If $(X_n)$ is adapted and $T$ is a stopping time, then:
$$
X_T \in \mathcal{F}_T.
$$

Proof:
$$
\{X_T \in B\}
  = \bigcup_{n=0}^\infty \big( \{X_n \in B\} \cap \{T=n\} \big)
  \in \mathcal{F}_T.
$$

---

## 8. Summary

- Stopping times describe **random times determined by present and past information only**.
- Filtrations capture **growing information**.
- $\mathcal{F}_T$ represents the **information available at the random time** $T$.
- Adapted processes remain measurable when evaluated at stopping times.
- First hitting times of sets are classic examples.  
- “Last visit times” are **not** stopping times.

This concludes Lecture 4.
