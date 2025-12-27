# Lecture 17 — Weak Law of Large Numbers & Bernstein Polynomials

This lecture covers:

- Weak Law of Large Numbers (WLLN)
- Khinchin’s theorem (variance-over-scaling implies convergence in probability)
- Two classical examples:
  - The Coupon Collector Problem (Example 2.2.3 in Durrett)
  - Bernstein Polynomials (Example 2.2.1 in Durrett), which gives a probabilistic proof of the Weierstrass Approximation Theorem

(Chapter 2.2, Durrett)

---

# 1. Weak Law of Large Numbers (WLLN)

Let $X_n \to X$ “in probability" mean:

$$
X_n \xrightarrow{p} X \quad \Longleftrightarrow \quad
\forall \varepsilon>0,\ 
P(|X_n - X| > \varepsilon) \to 0.
$$

Almost sure convergence implies convergence in probability:

$$
X_n \xrightarrow{\text{a.s.}} X \quad \Rightarrow \quad X_n \xrightarrow{p} X.
$$

Thus:

$$
\text{SLLN} \Rightarrow \text{WLLN}.
$$

---

# 2. Variance Condition for Convergence in Probability (Khinchin-type Lemma)

Let $\{Y_n\}$ be random variables and $\{b_n\}$ a nonzero scaling sequence.

**Assume**
$$
\frac{\operatorname{Var}(Y_n)}{b_n^2} \longrightarrow 0.
$$

Then:

$$
\frac{Y_n - \mathbb{E}[Y_n]}{b_n} \xrightarrow{L^2+p} 0.
$$

### Proof idea (as written in your notes)

Chebyshev:

$$
P\left(\left|\frac{Y_n - \mathbb{E}(Y_n)}{b_n}\right| > \varepsilon\right)
\le
\frac{\operatorname{Var}(Y_n)}{\varepsilon^2 b_n^2}
\longrightarrow 0.
$$

Thus:

$$
\frac{Y_n - \mathbb{E}[Y_n]}{b_n} \xrightarrow{p} 0.
$$

This lemma is the core tool for both examples in the lecture.

---

# 3. Coupon Collector Problem (Example 2.2.3 Durrett)

Let $X_1, X_2, \ldots$ be i.i.d. uniform on $\{1,\dots,n\}$.  
Let $\tau_k^{(n)}$ be the number of draws needed to obtain **k distinct** coupons.

Define:

$$
X_{n,k} = \tau_k^{(n)} - \tau_{k-1}^{(n)}
\quad (k=1,\dots,n),
$$

the waiting time to obtain the $k$-th new coupon.

Given you have $k-1$ coupons, the chance the next draw is *new* is

$$
p_k = \frac{n-k+1}{n}.
$$

Thus:

$$
X_{n,k} \sim \text{Geometric}(p_k),\qquad
\mathbb{E}[X_{n,k}] = \frac{1}{p_k},\quad
\operatorname{Var}(X_{n,k}) = \frac{1-p_k}{p_k^2}.
$$

The total time to collect all $n$ coupons is:

$$
T_n = \tau_n^{(n)} = \sum_{k=1}^n X_{n,k}.
$$

### Expectation
$$
\mathbb{E}[T_n]
= \sum_{k=1}^n \frac{1}{p_k}
= n \sum_{k=1}^n \frac{1}{n-k+1}
= n \sum_{j=1}^n \frac{1}{j}
\sim n \log n.
$$

### Variance bound (from the handwritten notes)

$$
\operatorname{Var}(T_n)
=
\sum_{k=1}^n \operatorname{Var}(X_{n,k})
\le
\sum_{k=1}^n \frac{n}{(n-k+1)^2}
= n \sum_{j=1}^n \frac{1}{j^2}
\le n\cdot \frac{\pi^2}{6}
\le C n.
$$

Your notes simplify the bound further and simply record  
$\operatorname{Var}(T_n) \le n^2$.  
Either bound suffices for WLLN scaling.

### Apply Khinchin’s lemma

Set $b_n = n \log n$. Then:

$$
\frac{\operatorname{Var}(T_n)}{(n\log n)^2} 
\longrightarrow 0.
$$

Thus:

$$
\frac{T_n - \mathbb{E}[T_n]}{n\log n}
\xrightarrow{p} 0.
$$

Since $\mathbb{E}(T_n)/(n\log n)\to 1$,

$$
\boxed{
\frac{T_n}{n\log n} \xrightarrow{p} 1.
}
$$

This is the WLLN for the coupon collector.

---

# 4. Bernstein Polynomials (Example 2.2.1 Durrett)

Goal: For any continuous $f:[0,1]\to\mathbb{R}$ and any $\varepsilon>0$,  
find a polynomial $P_n$ such that

$$
\max_{0\le x\le 1} |f(x) - P_n(x)| < \varepsilon.
$$

This is the **Weierstrass Approximation Theorem**, proved probabilistically via Bernstein polynomials.

---

## 4.1 Definition

Fix $x\in[0,1]$.  
Let $Y_{x,n} \sim \text{Binomial}(n,x)$.

Define the Bernstein polynomial:

$$
P_n(x)
=
\mathbb{E}\!\left[f\!\left(\frac{Y_{x,n}}{n}\right)\right]
=
\sum_{k=0}^n f\left(\frac{k}{n}\right)\binom{n}{k} x^k (1-x)^{n-k}.
$$

---

## 4.2 Convergence argument

Write:

$$
|P_n(x) - f(x)|
=
\left|\mathbb{E}\big[f(Y_{x,n}/n) - f(x)\big]\right|.
$$

Split expectation (this is the “split expectation trick” on page 2):

$$
\mathbb{E}\big|f(Y_{x,n}/n) - f(x)\big|
=
\mathbb{E}\big[\ |f(Y_{x,n}/n) - f(x)|\ \mathbf{1}_{\{|Y_{x,n}/n - x|<\delta\}}\big]
+
\mathbb{E}\big[\ |f(Y_{x,n}/n) - f(x)|\ \mathbf{1}_{\{|Y_{x,n}/n - x|\ge\delta\}}\big].
$$

### **Uniform continuity of $f$**  
Since $f$ is continuous on a compact interval, it is **uniformly continuous**:

$$
|t-s| < \delta \ \Rightarrow\ |f(t)-f(s)| < \varepsilon.
$$

Thus the first term is < $\varepsilon$.

### **Second term: use Chebyshev**

$$
|f(Y_{x,n}/n)-f(x)| \le 2\|f\|_\infty,
$$

and

$$
P(|Y_{x,n}/n - x| \ge \delta)
\le
\frac{\operatorname{Var}(Y_{x,n}/n)}{\delta^2}
=
\frac{x(1-x)}{n\,\delta^2}
\longrightarrow 0.
$$

Thus:

$$
\mathbb{E}\big|f(Y_{x,n}/n) - f(x)\big| \le \varepsilon + 2\|f\|_\infty\cdot \frac{x(1-x)}{n\delta^2} \to \varepsilon.
$$

Since $\varepsilon>0$ was arbitrary, this proves:

$$
P_n(x)\to f(x)\quad\text{uniformly on }[0,1].
$$

---

# 5. Summary

- **WLLN**: Convergence in probability is implied by almost sure convergence; SLLN ⇒ WLLN.  
- **Khinchin lemma**: If $\operatorname{Var}(Y_n)/b_n^2\to0$, then $(Y_n - EY_n)/b_n \to 0$ in probability.  
- **Coupon collector**:  
  $$
  T_n / (n\log n) \xrightarrow{p} 1.
  $$
- **Bernstein polynomials**: Using binomial random variables and uniform continuity,  
  $$
  P_n(x) \to f(x)
  $$
  uniformly on $[0,1]$, proving polynomial approximation.

