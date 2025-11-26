# Lecture 18 — Weak Law of Large Numbers & Triangular Arrays

Lecture 18 covers:

A general Weak Law of Large Numbers (WLLN) assumption:

𝑥
𝑃
(
∣
𝑋
∣
>
𝑥
)
→
0
xP(∣X∣>x)→0.

Truncation method for proving WLLN.

Khinchin-type corollary.

Full WLLN proof for i.i.d. with finite mean.

Weak Law for Triangular Arrays, including the two required conditions.

St. Petersburg paradox as an example with infinite mean and unusual normalization.

---

# 1. A General Condition for WLLN

Let $\{X_k\}_{k\ge 1}$ be i.i.d.

**Assume:**
$$
x\, P(|X| > x) \xrightarrow[x\to\infty]{} 0.
\tag{1}
$$

This condition appears at the top of page 1  
:contentReference[oaicite:2]{index=2}.

Markov’s inequality gives only:
$$
x\, P(|X| > x) \le E|X|,
$$
which is not useful by itself unless $E|X|<\infty$.  
The assumption (1) is strictly stronger and is used to guarantee truncation works.

---

# 2. DCT Lemma Used for Tail Control

The notes (page 1) use:

$$
|X|\mathbf{1}_{\{|X| \ge x\}} \le |X|,
\quad
|X|\mathbf{1}_{\{|X| \ge x\}} \xrightarrow[x\to\infty]{} 0 \ \text{a.s.}
$$

By **Dominated Convergence**:

$$
E\big[|X|\,\mathbf{1}_{\{|X|\ge x\}}\big] \xrightarrow[x\to\infty]{} 0.
\tag{2}
$$

Since
$$
E\big[|X|\,\mathbf{1}_{\{|X|\ge x\}}\big] =
x\,P(|X|>x) + \int_x^\infty P(|X|>t)\,dt,
$$
the vanishing of (2) implies (1).

Thus the general WLLN condition (1) is equivalent to tail integrability.

---

# 3. Truncation: Constructing $X_{n,k}$

Define the **truncated variables** (page 1):

$$
X_{n,k} = X_k\, \mathbf{1}_{\{|X_k|\le n\}},
\qquad k=1,\dots,n.
$$

Let:

$$
S_n = \sum_{k=1}^n X_k,
\qquad
S_n' = \sum_{k=1}^n X_{n,k},
\qquad
m_n = E[X_{n,1}].
$$

On page 1 (blue text):

“need to cut, can’t use Chebyshev directly”,  
so we truncate to gain finite variance.

---

# 4. Step 1 — Show $S_n - S_n' = o_p(n)$

Because truncation only removes the tail events:

$$
P(S_n \neq S_n') \le \sum_{k=1}^n P(|X_k| > n)
= n\, P(|X|>n).
$$

Using assumption (1):

$$
n\,P(|X|>n) = \frac{n}{n}\, nP(|X|>n) \to 0.
$$

Thus:

$$
\frac{S_n - S_n'}{n} \xrightarrow{p} 0.
\tag{3}
$$

---

# 5. Step 2 — Chebyshev Bound for Truncated Variables

On page 1:

$$
P\left(\left|\frac{S_n'}{n} - m_n\right| > \varepsilon\right)
\le
\varepsilon^{-2}\operatorname{Var}\left(\frac{S_n'}{n}\right)
=
\frac{ \operatorname{Var}(X_{n,1}) }{n\varepsilon^2}.
$$

Since $|X_{n,1}| \le n$, we compute:

$$
E[X_{n,1}^2]
=
\int_0^\infty 2x\, P(|X_{n,1}| \ge x)\, dx.
\tag{4}
$$

(Equation (4) is explicitly written in the notes on page 1  
:contentReference[oaicite:3]{index=3}.)

Now:

$$
P(|X_{n,1}| \ge x)
=
P(|X| \ge x)\mathbf{1}_{\{x\le n\}}.
$$

Thus:

$$
\frac{E[X_{n,1}^2]}{n}
=
\frac{1}{n}
\int_0^n 2x\, P(|X|\ge x)\, dx.
\tag{5}
$$

Split the integral at a fixed $M$:

$$
\frac{E[X_{n,1}^2]}{n}
=
\frac{1}{n}
\int_0^M 2x P(|X|\ge x)\, dx
+
\frac{1}{n}
\int_M^n 2x P(|X|\ge x)\, dx.
$$

- First term  
  $\le 2M^2/n \to 0$.
- Second term  
  $\le \delta$ for large $M$ by condition (1).

Thus:

$$
\frac{E[X_{n,1}^2]}{n} \longrightarrow 0.
$$

Therefore:

$$
P\left(\left|\frac{S_n'}{n} - m_n\right| > \varepsilon\right)
\to 0.
\tag{6}
$$

---

# 6. Step 3 — Convergence of the Means

$m_n = E[X\,\mathbf{1}_{\{|X|\le n\}}]$.  
By Dominated Convergence:

$$
m_n \to E[X].
\tag{7}
$$

---

# 7. Final WLLN Conclusion

Combine (3), (6), and (7):

$$
\frac{S_n}{n}
=
\frac{S_n'}{n}
+
\frac{S_n - S_n'}{n}
\xrightarrow{p}
E[X].
$$

Thus:

$$
\boxed{
\frac{S_n}{n} \xrightarrow{p} E[X].
}
$$

This is the **Weak Law of Large Numbers** proved via truncation.

---

# 8. Corollary — Khinchin’s Theorem (page 1)

If $E|X|<\infty$ then the WLLN follows:

$$
\frac{S_n}{n} \xrightarrow{p} E[X].
$$

This is because (1) holds automatically for integrable random variables.

---

# 9. Weak Law for Triangular Arrays (page 2)

We have a set of independent RVs in each row:

$$
\{X_{n,k} : 1\le k\le n\},
$$

not necessarily identically distributed.

Let $b_n \to \infty$.  
Define truncated variables:

$$
\bar X_{n,k} = X_{n,k}\mathbf{1}_{\{|X_{n,k}| \le b_n\}}.
$$

**Assumptions:**

(i) Tail condition  
$$
\sum_{k=1}^n P(|X_{n,k}| > b_n) \to 0.
$$

(ii) Variance condition  
$$
\frac{1}{b_n^2}
\sum_{k=1}^n E[\bar X_{n,k}^2] \to 0.
$$

Let:

$$
S_n = \sum_{k=1}^n X_{n,k},
\qquad
a_n = \sum_{k=1}^n E[\bar X_{n,k}].
$$

**Conclusion:**

$$
\boxed{
\frac{S_n - a_n}{b_n} \xrightarrow{p} 0.
}
$$

This is written verbatim on page 2  
:contentReference[oaicite:4]{index=4}.

---

# 10. Example — St. Petersburg Paradox (page 2)

Durrett Example 2.2.7.

Let:

$$
P(X = 2^k) = 2^{-k},\qquad k=1,2,\dots
$$

Then:

- $E[X] = \infty$,
- The usual WLLN fails (normalization by $n$ breaks).

But your notes record:

$$
\frac{S_n}{n\log_2 n} \xrightarrow{p} 1.
$$

This shows a non-standard normalization is needed when the mean is infinite.

---

# 11. Summary

- WLLN can be proved for i.i.d. using truncation if the tail condition  
  $ x P(|X|>x)\to 0 $ holds.  
- This tail condition is equivalent to $E|X|<\infty$.  
- WLLN generalizes to **triangular arrays** with two conditions:  
  - controlled tail probability,  
  - controlled truncated second moments.  
- St. Petersburg illustrates WLLN may require nonstandard normalization.

