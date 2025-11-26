# **Lecture 20 — Borel–Cantelli, Subsequence Convergence, DCT Applications**

## 1. Borel–Cantelli Lemma (Version I)

Let $(\Omega,\mathcal{F},P)$ be a probability space.  
Let $A_n \in \mathcal{F}$, $n \ge 1$, and assume

$$
\sum_{n=1}^\infty P(A_n) < \infty.
$$

Then

$$
P(A_n \text{ i.o.}) = 0.
$$

Recall:

$$
A_n \text{ i.o.} 
= \bigcap_{m=1}^\infty \bigcup_{k=m}^\infty A_k 
= \{\omega : \omega \in A_k \text{ for infinitely many }k\}.
$$

### Proof
Let

$$
N(\omega) = \sum_{k=1}^\infty \mathbf{1}_{A_k}(\omega).
$$

- $N < \infty$ means the event occurs only finitely often.
- By monotone convergence,

$$
\mathbb{E}[N]
= \sum_{k=1}^\infty P(A_k)
< \infty.
$$

If $P(N=\infty)>0$, then $\mathbb{E}[N]=\infty$, contradiction.  
Therefore $P(N=\infty)=0$. Hence

$$
P(A_n \text{ i.o.}) = 0.
$$

---

## 2. Why Borel–Cantelli Is Important  
### From convergence in probability to almost sure convergence.

Convergence in probability is inherently “one-dimensional”:  
$$
X_n \xrightarrow{P} X.
$$

Almost sure convergence is “many-dimensional” and stronger:  
$$
X_n \xrightarrow{a.s.} X.
$$

BC(I) allows extraction of a subsequence that **does** converge almost surely.

---

## 3. **Corollary: Convergence in probability implies an a.s. convergent subsequence**

If $X_n \xrightarrow{P} X$, then there exists a subsequence $(X_{n_k})$ such that

$$
X_{n_k} \xrightarrow{a.s.} X.
$$

### Proof (following the notes)

WLOG set $X=0$.  
Since $X_n \xrightarrow{P} 0$, for each $k$ there exists $n_k$ such that

$$
P(|X_{n_k}| > 1/k^2) \le 1/k^2.
$$

We choose $n_k$ strictly increasing:
$$
n_1 < n_2 < n_3 < \cdots.
$$

Then

$$
\sum_{k=1}^\infty P(|X_{n_k}| > 1/k^2) \le \sum_{k=1}^\infty \frac{1}{k^2} < \infty.
$$

By Borel–Cantelli(I),

$$
P(|X_{n_k}| > 1/k^2 \text{ i.o.}) = 0.
$$

Thus a.s., there exists a random finite $L(\omega)$ such that for all $k\ge L(\omega)$,

$$
|X_{n_k}| \le 1/k^2 \to 0.
$$

Hence

$$
X_{n_k} \xrightarrow{a.s.} 0 = X.
$$

---

## 4. Application: Dominated Convergence with Only Convergence in Probability

Suppose:

- $X_n \xrightarrow{P} X$,
- $|X_n| \le Y$ for all $n$,
- $E[Y] < \infty$.

**Question:** Does $E[X_n] \to E[X]$?  
**Answer:** Yes.

### Reason

From the corollary, extract a subsequence $X_{n_k} \to X$ a.s.  
Since $|X_{n_k}| \le Y$ and $E[Y]<\infty$, Dominated Convergence gives:

$$
E[X_{n_k}] \to E[X].
$$

To upgrade subsequence convergence to full convergence, assume the contrary:

> There exists $\varepsilon_0>0$ and a subsequence $n_k$ such that  
> $|E[X_{n_k}]| \ge \varepsilon_0$ for all $k$.

Refine to a further subsequence $X_{n_{k_\ell}}\to X$ a.s.  
DCT again gives $E[X_{n_{k_\ell}}]\to E[X]$, contradicting $|E[X_{n_k}]|\ge\varepsilon_0$.  
Thus:

$$
E[X_n] \to E[X].
$$

---

## 5. WLLN and SLLN Context

Up to now, the WLLN says:

If $\{X_n\}$ are iid and $E|X|<\infty$, then

$$
\frac{S_n}{n} \xrightarrow{P} E[X].
$$

We also know:

$$
xP(|X| > x) \to 0
$$

is sufficient for some versions of WLLN/SLLN criteria (your notes allude to this heavy-tail condition).

### Strong Law of Large Numbers (SLLN)

If $\{X_n\}$ iid and $E|X| < \infty$, then

$$
\frac{S_n}{n} \xrightarrow{a.s.} E[X].
$$

The last part of your notes (page 2 of the PDF) expands $(\sum_{k=1}^n a_k)^4$ into the multinomial expansion:

$$
\left(\sum_{k=1}^n a_k\right)^4
= \sum_{k=1}^n a_k^4
+ 6\!\!\sum_{k<\ell}\! a_k^2 a_\ell^2
+ 4\!\!\sum_{k\neq\ell}\! a_k^3 a_\ell
+ \cdots
$$

This is the beginning of the classical fourth-moment method used to show:

$$
E\!\left[\left(\frac{S_n}{n}\right)^4\right] \to (E[X])^4,
$$

which provides control strong enough to apply Kolmogorov’s SLLN.

Though your notes only sketch this, the purpose is:  
**moment bounds + Borel–Cantelli → almost sure convergence.**

---

# **Cheat-Sheet Summary (Lecture 20)**

- **Borel–Cantelli (I):** If $\sum P(A_n)<\infty$, then $A_n$ occurs only finitely often a.s.
- **Subsequence principle:** Convergence in probability implies existence of an almost surely convergent subsequence.
- **DCT via subsequences:**  
  If $X_n\to X$ in probability and $|X_n|\le Y$ with $EY<\infty$, then $E[X_n]\to E[X]$.
- **SLLN link:** Borel–Cantelli and moment expansions lead to almost sure convergence of averages for iid integrable variables.

