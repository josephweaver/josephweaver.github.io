# **Lecture 21 — Borel–Cantelli II, SLLN via 4th Moment, and Extensions**

## 1. SLLN via Fourth Moments

**Theorem.**  
Let $\{X_k\}_{k\ge 1}$ be iid with  
- $\mathbb{E}[X] = \mu$,  
- $\mathbb{E}[X^4] < \infty$.

Let $S_n = \sum_{k=1}^n X_k$. Then:

$$
\frac{S_n}{n} \xrightarrow{a.s.} \mu.
$$

This is a classical proof of the Strong Law via fourth-moment bounds plus Borel–Cantelli.

### Proof outline (as in notes)

WLOG assume $\mu = 0$.  
To show $S_n/n \to 0$ almost surely, fix $\varepsilon>0$:

$$
P(|S_n| > n\varepsilon)
= P(S_n^4 > n^4\varepsilon^4)
\le \frac{\mathbb{E}[S_n^4]}{n^4\varepsilon^4}.
$$

Now expand the fourth moment (page 1 of the PDF):

$$
\mathbb{E}[S_n^4]
= n\,\mathbb{E}[X^4]
+ 3n(n-1)\,[\mathbb{E}(X^2)]^2
\le C n^2,
$$

for some constant $C$, because all mixed odd-order terms vanish (iid with mean 0).

Thus,

$$
P(|S_n| > n\varepsilon)
\le \frac{C}{\varepsilon^4} \cdot \frac{1}{n^2}.
$$

Since $\sum_{n=1}^\infty n^{-2} < \infty$, Borel–Cantelli(I) implies:

$$
P(|S_n| > n\varepsilon \text{ i.o.}) = 0.
$$

Thus a.s.:

$$
\limsup_{n\to\infty} \frac{|S_n|}{n} \le \varepsilon.
$$

Because this holds for all $\varepsilon = 1/m$, $m\in\mathbb{N}$, we conclude:

$$
\frac{S_n}{n} \xrightarrow{a.s.} 0.
$$

Restoring $\mu$ gives the theorem.

---

## 2. Corollary: Law of Large Numbers for Bernoulli Indicators  
(Notes: top of page 1, “the power of an indicator is the indicator.”)

Let $\{A_k\}_{k\ge 1}$ be iid events with $P(A_k)=p>0$. Then:

$$
\frac{1}{n}\sum_{k=1}^n \mathbf{1}_{A_k} \xrightarrow{a.s.} p.
$$

This is just the SLLN applied to iid Bernoulli($p$) variables.

Interpretation:

- The number of times $A_k$ occurs up to $n$, divided by $n$, converges to $p$.
- The notes emphasize the meaning: empirical average of event frequencies.

---

## 3. Borel–Cantelli Lemma II (Independence Required)

**BC II.**  
If $\{A_n\}$ are independent and

$$
\sum_{n=1}^\infty P(A_n) = \infty,
$$

then

$$
P(A_n \text{ i.o.}) = 1.
$$

### Proof sketch (page 2)

Consider the complement of the union:

$$
P\!\left(\bigcap_{n=m}^\infty A_n^c \right)
= \prod_{n=m}^\infty (1 - P(A_n))
\le \prod_{n=m}^\infty e^{-P(A_n)}
= e^{-\sum_{n=m}^\infty P(A_n)} = 0,
$$

because the tail sum diverges.

Thus,

$$
P\!\left(\bigcup_{n=m}^\infty A_n\right)=1,
$$

and hence

$$
P(A_n \text{ i.o.}) = 1.
$$

A useful inequality highlighted in your notes (yellow box on page 2):

$$
1 - x \le e^{-x},\quad x\in[0,1].
$$

---

## 4. Application: When $E|X| = \infty$

Let $\{X_k\}$ be iid and $E|X| = \infty$. Then:

1.  
   $$
   P(|X_n| \ge n \text{ i.o.}) = 1.
   $$

2.  
   $$
   P\!\left(\lim_{n\to\infty} \frac{S_n}{n} \text{ exists and is finite}\right) = 0.
   $$

### Proof (as in notes, page 2)

Since

$$
E|X| = \int_0^\infty P(|X|\ge t)\,dt,
$$

and $E|X|=\infty$, the integral diverges. The notes approximate the integral by the discrete sum:

$$
\sum_{n=0}^\infty P(|X|\ge n) = \infty.
$$

Because $\{X_k\}$ are iid,  

$$
\sum_{n=0}^\infty P(|X_n|\ge n) = \infty.
$$

By BC II:

$$
P(|X_n|\ge n\text{ i.o.}) = 1.
$$

Since $|X_n|\ge n$ infinitely often, the increments in $S_n/n$ fluctuate so wildly that:

$$
P\left(\lim_{n\to\infty} \frac{S_n}{n} \text{ exists finitely}\right) = 0.
$$

This is the “anti-SLLN”: infinite mean destroys convergence of sample averages.

---

## 5. Increment Analysis of $S_n/n$

Your notes (page 2) analyze:

$$
\frac{S_{n+1}}{n+1} - \frac{S_n}{n}
= \frac{X_{n+1}}{n+1} - \frac{S_n}{n(n+1)}.
$$

Observation:

- If $S_n/n$ converges, the difference must go to 0.
- Under the infinite-mean case, the left-hand expression does **not** go to 0 (because $|X_{n+1}|\ge n+1$ i.o.), so no limit can exist.

---

## 6. Extended Borel–Cantelli II (Notes, page 3)

**Extension (pairwise independent version).**  
Let $A_n$ be pairwise independent (not necessarily fully independent), and assume:

$$
\sum_{n=1}^\infty P(A_n) = \infty.
$$

Then:

$$
\frac{\sum_{k=1}^n \mathbf{1}_{A_k}}{\sum_{k=1}^n P(A_k)}
\xrightarrow{a.s.} 1.
$$

This immediately implies:

$$
P(A_n \text{ i.o.}) = 1.
$$

Your notes mention: “There’s another extension in the book”—this refers to the Kochen–Stone lemma.

---

# **Cheat-Sheet Summary (Lecture 21)**

- **SLLN with fourth moments:**  
  If iid and $\mathbb{E}[X^4]<\infty$, then $S_n/n\to\mu$ a.s.

- **BC II:**  
  For independent events, divergence of $\sum P(A_n)$ implies $A_n$ occurs infinitely often.

- **Infinite mean case:**  
  If $E|X|=\infty$, then $|X_n|\ge n$ infinitely often a.s., so $S_n/n$ cannot converge.

- **Pairwise independent BC II:**  
  Under pairwise independence,  
  $\sum P(A_n)=\infty \Rightarrow \sum 1_{A_n}/\sum P(A_n)\to1$ a.s.

- **Key inequalities:**  
  $1-x \le e^{-x}$.  
  Fourth-moment expansion for sums.

