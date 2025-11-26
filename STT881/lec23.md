# **Lecture 23 — Longest Runs & The Strong Law**

This lecture contains two major components:

Longest run lengths in symmetric Bernoulli sequences.

A full proof of the Strong Law of Large Numbers (SLLN) using truncation and Borel–Cantelli.

## 1. Longest Runs of ±1 in Symmetric Bernoulli Sequences

We consider iid symmetric Bernoulli variables:

$$
P(X = 1) = \tfrac12 = P(X = -1).
$$

Define the **run length at time n**:

$$
\ell_n
= \max \left\{
m \ge 0 : X_{n-m} = X_{n-m+1} = \cdots = X_n
\right\}.
$$

Thus $\ell_n$ is the backwards run length ending at index $n$.  
(Example from page 1: for the sequence $-1,1,1,1,1$ ending at $n=2$, $\ell_2 = 4$.)

### Distribution of a single run length
For fixed $n$, the backwards run $\ell_n$ is geometrically distributed:

$$
P(\ell_n = k) = \frac{1}{2^{k+1}}, \qquad k=0,1,2,\dots
$$

Thus:

$$
P(\ell_n \ge k) = \sum_{m=k}^\infty \frac{1}{2^{m+1}} = \frac{1}{2^k}.
$$

### Long runs appear infinitely often
Check summability (page 1):

$$
\sum_{n=1}^\infty P(\ell_n \ge k) = \sum_{n=1}^\infty 2^{-k} = \infty,
$$

so by BC II (iid case):

$$
P(\ell_n \ge k \text{ i.o.}) = 1.
$$

In particular:

$$
P(\ell_n = 0 \text{ i.o.}) = 1, \quad  
P(X_n = -1 \text{ i.o.}) = 1.
$$

---

## 2. Longest Run up to Time $n$

Define

$$
L_n = \max\{\ell_1,\ell_2,\dots,\ell_n\}.
$$

**Goal:**

$$
\frac{L_n}{\log_2 n} \xrightarrow{a.s.} 1.
$$

This is Example 2.3.3 in Durrett.

---

### 2.1 Upper Bound: $\displaystyle \limsup \frac{L_n}{\log_2 n} \le 1$

Fix $\varepsilon>0$.  
Using independence of disjoint run-starting events:

$$
P(\ell_n > (1+\varepsilon)\log_2 n)
= n^{-(1+\varepsilon)}.
$$

Since

$$
\sum_{n=1}^\infty n^{-(1+\varepsilon)} < \infty,
$$

Borel–Cantelli I yields:

$$
P\big(\ell_n > (1+\varepsilon)\log_2 n \text{ i.o.}\big)=0.
$$

Hence, almost surely,

$$
\limsup_{n\to\infty} \frac{\ell_n}{\log_2 n} \le 1+\varepsilon.
$$

Since $\ell_n \le L_n$, we get:

$$
\limsup_{n\to\infty} \frac{L_n}{\log_2 n} \le 1.
$$

---

### 2.2 Lower Bound: $\displaystyle \liminf \frac{L_n}{\log_2 n} \ge 1$

We want to show:

$$
L_n \ge (1-\varepsilon)\log_2 n \quad \text{eventually}.
$$

Compute (page 2):

$$
P(\ell_n < (1-\varepsilon)\log_2 n)
= 1 - 2^{-(1-\varepsilon)\log_2 n}
= 1 - n^{-(1-\varepsilon)}.
$$

Thus:

$$
P(\ell_n < (1-\varepsilon)\log_2 n)
\le 1 - e^{-n^{-(1-\varepsilon)}}
\approx e^{-n/\log_2 n}.
$$

The notes remark (page 2):

$$
\sum_{n=1}^\infty e^{-n/\log_2 n} < \infty.
$$

Applying BC I:

$$
\ell_n < (1-\varepsilon)\log_2 n \text{ i.o.}
$$

fails, meaning:

$$
\ell_n \ge (1-\varepsilon)\log_2 n
\quad\text{eventually, a.s.}
$$

Since $L_n \ge \ell_n$:

$$
\liminf_{n\to\infty} \frac{L_n}{\log_2 n} \ge 1.
$$

### 2.3 Combine

$$
\boxed{
\frac{L_n}{\log_2 n} \xrightarrow{a.s.} 1.
}
$$

---

# **3. Strong Law of Large Numbers (SLLN)**

Statement: Suppose $\{X_k\}$ are iid and $E|X|<\infty$. Then

$$
\frac{S_n}{n} \xrightarrow{a.s.} E[X].
$$

The proof in the notes (page 2–3) uses:

1. **Truncation** at level $k$:  
   $$
   Y_k = X_k \mathbf{1}_{\{|X_k|\le k\}}.
   $$

2. **Borel–Cantelli I** to show that only finitely many truncations actually change the value.

3. **Decomposing** $X_k = X_k^+ - X_k^-$.

---

## 3.1 Step 1: Truncation error happens only finitely often

$$
P(Y_k \ne X_k) = P(|X_k| > k).
$$

Since

$$
\sum_{k=1}^\infty P(|X_k|>k)
= \sum_{k=1}^\infty P(|X|>k)
\le E|X| < \infty,
$$

BC I implies:

$$
P(Y_k \ne X_k \text{ i.o.}) = 0.
$$

Hence eventually $Y_k=X_k$, almost surely.

---

## 3.2 Step 2: Apply SLLN to truncated variables

Define:

$$
T_n = \sum_{k=1}^n X_k^+,
\quad
U_n = \sum_{k=1}^n X_k^-.
$$

Since $X_k^+$ and $X_k^-$ are iid nonnegative and integrable,

$$
\frac{T_n}{n} \xrightarrow{a.s.} E[X^+], \qquad
\frac{U_n}{n} \xrightarrow{a.s.} E[X^-].
$$

Thus:

$$
\frac{S_n}{n}
= \frac{T_n}{n} - \frac{U_n}{n}
\xrightarrow{a.s.} E[X^+] - E[X^-] = E[X].
$$

Combining Step 1 and Step 2 gives:

$$
\boxed{
\frac{S_n}{n} \xrightarrow{a.s.} E[X].
}
$$

---

# **Cheat-Sheet Summary — Lecture 23**

- Run lengths $\ell_n$ in iid ±1 sequences satisfy  
  $$
  P(\ell_n = k)=2^{-(k+1)},\quad
  L_n = \max_{1\le m\le n} \ell_m.
  $$

- **Longest run result:**  
  $$
  \frac{L_n}{\log_2 n} \to 1 \quad \text{a.s.}
  $$

- **Upper bound** from BC I on events $\ell_n > (1+\epsilon)\log_2 n$.

- **Lower bound** from BC I on events $\ell_n < (1-\epsilon)\log_2 n$.

- **SLLN proof strategy:**
  - Truncate $X_k$ at level $k$,
  - BC I ensures truncation differs only finitely often,
  - Apply SLLN to $X_k^+$ and $X_k^-$ separately,
  - Combine limits to get the final result.

