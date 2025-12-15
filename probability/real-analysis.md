
# Real Analysis for Probability
*A compact survival guide for measure-theoretic probability*

---

## Table of Contents
- [1. Sequences](#1-sequences-convergence-cauchy-monotone-bounds)
- [2. Series](#2-series-absolute-convergence-dominated-tails)
- [3. Continuity](#3-continuity-uniform-lipschitz-composition)
- [4. Limit Theorems](#4-limit-theorems-analysis-form)
- [5. Functions](#5-functions-measurability--approximation)
- [6. Integration](#6-integration-tools-needed-in-probability)
- [7. Inequalities](#7-inequalities)
- [8. Topological Facts](#8-topological-facts)
- [9. Metric Spaces](#9-metric-spaces)
- [10. Useful Lemmas](#10-useful-lemmas-probability)

# #0. Number Theory

- **Completeness of ℝ.**  Every Cauchy sequence of real numbers converges to a real number. Equivalently, every nonempty set of real numbers that is bounded above has a least upper bound (supremum).
- **Triangle Inequality**.  $|x + y| \le |x| + |y|$
- ℚ is dense in ℝ: between any two real numbers there is a rational.
- **Complex numbers.**  ℂ is algebraically closed: every polynomial has a root in ℂ.  
  - Also, $|z_1 z_2| = |z_1|\,|z_2|$ and $|e^{ix}| = 1$.
- **Archimedean Property**. For any $x > 0$ and any $y ∈ ℝ$, $∃ n ∈ ℕ$ such that $n x > y$.




# #1. Sequences

- **Sequence**. A **sequence** of real numbers is a function $a : \mathbb{N} \to \mathbb{R},$ where we write $a_n = a(n)$. 
  - We denote the sequence by $(a_n)_{n\ge 1} = (a_1, a_2, a_3, \ldots).$

- **Subsequence**. If $n_1 < n_2 < n_3 < \cdots$ is a strictly increasing sequence of natural numbers, then $(a_{n_k})_{k\ge 1}$ is called a **subsequence** of $(a_n)$. 
  - A subsequence is formed by selecting terms of the original sequence in order, without skipping backward.
  - If every **subsequence** has a further **subsequence** converging to $L$, then the whole **sequence** converges.

- **Convergence**. A sequence $(a_n)$ **converges** to a number $L\in\mathbb{R}$ if $\forall \varepsilon > 0,\ \exists N \in \mathbb{N}\ \text{such that } n \ge N \Rightarrow |a_n - L| < \varepsilon.$ 
  - We write $a_n \to L, \quad \lim_{n\to\infty} a_n = L.$

- **Cauchy**. A sequence $(a_n)$ is **Cauchy** if $\forall \varepsilon>0,\ \exists N \in \mathbb{N}\ \text{such that }
m,n \ge N \Rightarrow |a_m - a_n| < \varepsilon.$
  - In $\mathbb{R}$, a sequence is Cauchy **iff** it is convergent.

- **Monotone**. A sequence $(a_n)$ of real numbers is called **monotone nondecreasing** if the sequence is $a_{n+1} \ge a_n, \forall n.$
  - Likewise, **nonincreasing** if $a_{n+1} \le a_n$, **decreasing** if $a_{n+1} < a_n$, and **increasing** if $a_{n+1} > a_n$.
  - All constant sequences are monotone both nondecreasing and nonincreasing.

- **Bounded**. A sequence $(a_n)$ is **bounded** if $ \exists\, K $ such that $ |a_n| \le K $ for all $n$.
  - **bounded above** if $ \exists\, M $ such that $ a_n \le M $ for all $n$;
  - **bounded below** if $ \exists\, m $ such that $ a_n \ge m $ for all $n$;
  - Every **convergent** sequence is **bounded**. 
  - If $(a_n)$ is **monotone nondecreasing** and **bounded above**, then $a_n \to a := \sup_n a_n.$

- **Bolzano–Weierstrass Theorem:** Every bounded sequence in $\mathbb{R}$ has a **convergent subsequence**.

- **Uniqueness of Limits:** A sequence has **at most one** limit. (If $a_n\to L$ and $a_n\to M$, then $L=M$.)

- **Algebra of Limits:** If $a_n\to a$ and $b_n\to b$, then  
$$
  a_n + b_n \to a+b,\qquad
  a_n b_n \to ab,\qquad
  \frac{a_n}{b_n} \to \frac{a}{b} \ (b\neq 0).
$$

- **Squeeze Theorem:** If $a_n \le x_n \le b_n$ and $a_n, b_n \to L$, then $x_n \to L$.

- **Limit of a continuous function**. If $a_n \to a$ and $f$ is continuous, then $f(a_n)\to f(a)$.  
  - Examples: $f(x)=|x|$, $f(x)=x^p$ for $p>0$.

- **Monotone Limit of an increasing function**. If $a_n \uparrow a$ and $f$ is increasing on an interval containing $\{a_n\}\cup\{a\}$, then $f(a_n) \uparrow f(a).$

- **Limsup**. $\limsup_{n\to\infty} a_n := \lim_{n\to\infty} \sup_{k\ge n} a_k$
  - the sequence $\sup_{k\ge n} a_k$ is nonincreasing

- **Liminf**. $\liminf_{n\to\infty} a_n := \lim_{n\to\infty} \inf_{k\ge n} a_k$
  - the sequence $\inf_{k\ge n} a_k$ is nondecreasing

- **Liminf-limsup inequality**. $\liminf a_n \le \limsup a_n$

- **Bounds of subsequence**. For any subsequence $(a_{n_k})$, $\liminf a_n \le \lim_{k\to\infty} a_{n_k} \le \limsup a_n$.

- **Convergence criterion:**  $ a_n \to L \iff \liminf a_n = \limsup a_n = L.$
  - **Fatou connection**. if $a_n\to L$, then $\liminf a_n = \limsup a_n = L$.

- **limsup/liminf addition inequalities.**
$$
  \liminf a_n + \liminf b_n 
  \le 
  \liminf (a_n + b_n)
  \le 
  \limsup (a_n + b_n)
  \le 
  \limsup a_n + \limsup b_n.
$$

- **Products (bounded case).** If $a_n, b_n$ are bounded, then
$$
  \liminf a_n \cdot \liminf b_n \le \liminf (a_n b_n) 
  \le \limsup (a_n b_n) \le 
  \limsup a_n \cdot \limsup b_n.
$$
- **Limsup/Liminf Identity**. $\liminf a_n = -\limsup(-a_n).$


---

# 2. Series

- **Finite series.** Given a sequence $(a_n)$, a finite series is the finite sum $\sum_{n=1}^N a_n.$

- **Infinite series.** The infinite series $\sum_{n=1}^\infty a_n$ is defined through its **partial sums** $S_N := \sum_{n=1}^N a_n.$

- **Convergence.** The series $\sum_{n=1}^\infty a_n$ **converges** if the sequence of partial sums $(S_N)$ converges: $S_N \to S \quad (N\to\infty).$ In this case we write $ \sum_{n=1}^\infty a_n = S. $
  - **Cauchy Criterion**. The series $\sum a_n$ converges  
  **iff** for every $\varepsilon > 0$ there exists $N$ such that $m > n \ge N \;\Rightarrow\; \left|\sum_{k=n+1}^m a_k\right| < \varepsilon.$ (Equivalently, the partial sums $(S_N)$ form a Cauchy sequence.)
  - **Necessary Condition**. If $\sum a_n$ converges, then $a_n \to 0$.   (If $a_n \not\to 0$, the series diverges.)
  - **Linearity.** If $\sum a_n$ and $\sum b_n$ converge, then $\sum (\alpha a_n + \beta b_n) = \alpha \sum a_n + \beta \sum b_n.$

- **Divergence.**  If $(S_N)$ does not converge, the series **diverges**.

- **Telescoping Series**. A series $\sum a_n$ is **telescoping** if its partial sums collapse due to cancellation,
typically when $a_n = b_n - b_{n+1}.$
  - **Partial sum:** $S_N = \sum_{n=1}^N (b_n - b_{n+1}) = b_1 - b_{N+1}$.
  - **Convergence criterion:**  $S_N \to b_1 - \lim_{N\to\infty} b_{N+1} \quad\text{if } \lim_{N\to\infty} b_{N} \text{ exists}.$
  - *Example:* $a_n = \frac{1}{n(n+1)} = \frac{1}{n} - \frac{1}{n+1}.$ Then $S_N = 1 - \frac{1}{N+1} \to 1.$
  - *Idea:* most terms cancel; only the “ends” survive.

- **Absolute convergence.**  The series converges **absolutely** if $\sum |a_n| < \infty$.
  - If a series converges absolutely $\sum |a_n| < \infty$, then the series converges $\sum a_n < \infty$.

- **Comparison Test.** If $|a_n| \le b_n$ and $\sum b_n < \infty$, then $\sum a_n$ converges.
  - *Example*: $a_n = \frac{1}{n^3 + n}$. Since $a_n \le \frac{1}{n^3}$ and $\sum 1/n^3$ converges (p-series with $p = 3 > 1$), the original series also converges.
    - *Idea:* overpower the tail with something you recognize.

- **Root Test.** $L = \limsup_{n\to\infty} \sqrt[n]{|a_n|}$. $L < 1$: converges absolutely, $L > 1$: diverges, $L = 1$: inconclusive.
  - *Example*: $a_n = 3^n / n!$.  
    $
    \sqrt[n]{|a_n|} = \frac{3}{\sqrt[n]{n!}} \to 0,
    $
    because $n!^{1/n} \sim n/e \to \infty$. So the series converges absolutely.
    - *Idea:* if terms behave like $c^n$, the root test spots it instantly.

- **Ratio Test.** $L = \limsup_{n\to\infty} |a_{n+1}/a_n|$. $L < 1$: converges absolutely, $L > 1$: diverges, $L = 1$: inconclusive.
  - *Example*: $a_n = \frac{n!}{5^n}$.  
    $
    \left|\frac{a_{n+1}}{a_n}\right|
      = \frac{(n+1)! / 5^{n+1}}{n! / 5^n}
      = \frac{n+1}{5} \to \infty.
    $
    So the series diverges.
    - *Idea:* ratio test detects factorials and exponentials cleanly.

- **Dirichlet’s Test.** If the partial sums $A_n = \sum_{k=1}^n a_k$ are **bounded**, and $b_n$ is
**monotone** with $b_n \to 0$, then the series $\sum a_n b_n$ **converges**.
  - *Idea:* oscillation + slowly shrinking weights.
  - **Example 1 (canonical):** $\displaystyle \sum_{n=1}^\infty \frac{\sin n}{n}.$  $a_n = \sin n$ has bounded partial sums (oscillatory).  $b_n = 1/n$ is decreasing and $\to 0$. Therefore the series converges.  
  - **Example 2 (easy):** $\displaystyle \sum_{n=1}^\infty (-1)^n \frac{1}{\sqrt{n}}.$ $a_n = (-1)^n$ has bounded partial sums (0, $\pm 1$). $b_n = 1/\sqrt{n}$ decreases to $0$. Therefore the series converges (conditionally).
  - **Example 3 (cf application):** $\displaystyle \sum_{n=1}^\infty \frac{\cos(n\theta)}{n}$, with $0<\theta<2\pi$, $\theta\ne \pi$. $\cos(n\theta)$ has bounded partial sums.  $1/n$ is decreasing and $\to 0$. Therefore the series converges.

- **Abel’s Test.** If $\sum a_n$ **converges**, and $(b_n)$ is **bounded** and **monotone**, then $\sum a_n b_n$ **converges**.
  - *Idea*: convergent sum * monotone bounded = convergence.
  - **Example 1:** $\displaystyle \sum_{n=1}^\infty \frac{(-1)^n \cos(n\theta)}{n}$, $0<\theta<\pi$. $\sum (-1)^n/n$ converges (alternating harmonic).  $|\cos(n\theta)| \le 1$ (bounded). Therefore $\sum a_n b_n$ converges.
  - **Example 2:** $\displaystyle \sum_{n=1}^\infty \frac{(-1)^n r^n}{n^2}$, with $0<r<1$. $\sum (-1)^n/n^2$ converges absolutely. $r^n$ is monotone decreasing and bounded.Therefore the product series converges.
  - **Example 3:** $\displaystyle \sum_{n=1}^\infty \frac{(-1)^n}{n^2}.$ $\sum 1/n^2$ converges absolutely. $(-1)^n$ is bounded. Therefore $\sum a_n b_n$ converges.

- **Alternating Series Test (Leibniz)**. A series of the form $\sum_{n=1}^\infty (-1)^{n} b_n\quad\text{or}\quad\sum_{n=1}^\infty (-1)^{n+1} b_n$ **converges** if: 1. $b_n \ge 0$, 2. $b_n$ is nonincreasing: $b_{n+1} \le b_n$, 3. $b_n \to 0$.
  - if $\sum b_n < \infty$, then converges absolutely.
  - if $\sum b_n = \infty$, then converges conditionally.
  - *Example*: $ \sum_{n=1}^\infty \frac{(-1)^{n+1}}{n}\quad\text{converges (alternating harmonic)}, $ but not absolutely, since $\sum 1/n$ diverges.
  - *Idea*: alternating + shrinking terms = “zig-zag” convergence.
  - **Remainder is bounded by $b_{N+1}$** The remainder satisfies $|S - S_N| \le b_{N+1}.$

- **Integral Test.** If $a_n = f(n)$ with $f$ positive, continuous, decreasing, then $ \sum a_n \text{ converges } \iff \int_1^\infty f(x)\,dx \text{ converges}.$
  - *Example*: $a_n = 1/n^p$ for $p > 0$. Let $f(x) = 1/x^p$. Then 
    $
    \int_1^\infty \frac{1}{x^p}\,dx =
    \begin{cases}
    \frac{1}{p-1}, & p > 1,
    \infty, & p \le 1.
    \end{cases}
    $
    Therefore,
    $
    \sum \frac{1}{n^p} \text{ converges for } p>1,
    \quad\text{and diverges for } p \le 1.
    $
    - *Idea:* if $f(x)$ has finite area under the curve, then the discrete version $\sum f(n)$ also has finite mass.


- **Common Convergent Series.**  
  - Geometric: $\sum r^n,\ |r|<1$  
  - p-series: $\sum 1/n^p,\ p>1$  
  - Exponential decay: $a_n = c^n, |c|<1$

- **Common Divergent Series.**  
  - Harmonic: $\sum 1/n$  
  - p-series: $p \le 1$  
  - Geometric: $|r| \ge 1$  
  - Conditionally convergent: $\sum (-1)^n / n$ (not absolutely)

- **Taylor / Maclaurin Expansions**
  - Exponential: $e^x = 1 + x + \frac{x^2}{2!} + \frac{x^3}{3!} + \cdots $
  - Sine and Cosine: $\sin x = x - \frac{x^3}{3!} + \frac{x^5}{5!} - \cdots\quad \cos x = 1 - \frac{x^2}{2!} + \frac{x^4}{4!} - \cdots$
  - Logarithm: for $|x|<1$, $\log(1+x) = x - \frac{x^2}{2} + \frac{x^3}{3} - \cdots $
  - Geometric expansion: for $|x|<1$, $ \sum_{n=0}^\infty ax^n=\frac{a}{1-x} $

- **Binomial Expansion** $(1+x)^\alpha = \sum_{n=0}^\infty \binom{\alpha}{n} x^n, \quad |x|<1.$



# 3. Continuity: Uniform, Lipschitz, Composition

### Definition: Continuity

Let $f : D \subseteq \mathbb{R}^n \to \mathbb{R}$.  
The function $f$ is **continuous at a point** $x_0 \in D$ if

$$
\forall \varepsilon > 0,\ \exists \delta > 0 \text{ such that }
|x - x_0| < \delta \ \Rightarrow\ |f(x) - f(x_0)| < \varepsilon,
\quad x \in D.
$$

The function $f$ is **continuous on $D$** if it is continuous at every point $x_0 \in D$.

Equivalently (sequential definition):

$$
x_n \to x_0 \quad \Rightarrow \quad f(x_n) \to f(x_0).
$$

### Definition: Uniform Continuity

A function $f : D \subseteq \mathbb{R}^n \to \mathbb{R}$ is **uniformly continuous** on $D$ if

$$
\forall \varepsilon > 0,\ \exists \delta > 0 \text{ such that } 
|x - y| < \delta \ \Rightarrow\ |f(x) - f(y)| < \varepsilon
\quad \text{for all } x,y \in D.
$$

The key point:  
$\delta$ depends only on $\varepsilon$, not on the location of $x,y$.

**Facts:**
- Every continuous function on a **compact** set is uniformly continuous.
- Uniform continuity is stronger than continuity.


### **Lipschitz Functions Preserve Convergence**
If $|f(x)-f(y)| \le L|x-y|$, then
- a.s. convergence is preserved,
- convergence in probability is preserved,
- $L^p$ convergence is preserved (up to constants).

### Definition: Compactness

A set $K \subseteq \mathbb{R}^n$ is **compact** if any (and therefore all) of the following equivalent conditions hold:

1. **Heine–Borel characterization (in $\mathbb{R}^n$)**  
   $$
   K \text{ is compact } \iff K \text{ is closed and bounded.}
   $$

2. **Sequential compactness**  
   Every sequence in $K$ has a convergent subsequence whose limit is in $K$.

3. **Open cover definition**  
   Every open cover of $K$ has a finite subcover.

In probability and analysis, the Heine–Borel and sequential definitions are the most commonly used.

### Theorem: Heine–Cantor

If $f : K \to \mathbb{R}$ is continuous on a **compact** set $K \subseteq \mathbb{R}^n$, then

$$
f \text{ is uniformly continuous on } K.
$$

That is,
$$
\forall \varepsilon > 0,\ \exists \delta > 0 \text{ such that }
|x - y| < \delta \ \Rightarrow\ |f(x) - f(y)| < \varepsilon
\quad \text{for all } x,y \in K.
$$

**Interpretation:**  
Continuity + compact domain ⇒ no “blow-up” or arbitrarily steep behavior.


---
<!-- 
# 4. Limit Theorems: Analysis Form

### **Fatou-Type Inequalities**
$$
\liminf (a_n + b_n) \le \liminf a_n + \liminf b_n.
$$


### **Squeeze Theorem**
If $a_n \le x_n \le b_n$ and $a_n, b_n \to L$, then $x_n \to L$.

--- -->

# 5. Functions: Measurability + Approximation

### **Simple Function Approximation**
Every nonnegative measurable function is the limit of an increasing sequence of simple functions.

### **Right- and Left-Continuity**
CDFs are right-continuous with left limits (cadlag).

---

# 6. Integration: Tools Needed in Probability

### **Monotone Convergence (Beppo–Levi)**
If $0 \le f_n \uparrow f$, then
$$
\int f_n \to \int f.
$$

### **Dominated Convergence**
If $f_n \to f$ a.e. and $|f_n| \le g$ with $\int g < \infty$, then
$$
\int f_n \to \int f.
$$

### **Uniform Integrability**
If $\|X_n\|_p$ is bounded for some $p>1$, then $\{X_n\}$ is uniformly integrable.

---

# 7. Inequalities

### **Jensen**
If $\varphi$ is convex:
$$
\varphi(\mathbb{E}X) \le \mathbb{E}\varphi(X).
$$

### **Markov**
$$
P(|X| \ge a) \le \frac{\mathbb{E}|X|}{a}.
$$

### **Chebyshev**
$$
P(|X - \mathbb{E}X| \ge a) \le \frac{\mathrm{Var}(X)}{a^2}.
$$

### **Cauchy–Schwarz**
$$
|\mathbb{E}[XY]| \le (\mathbb{E}X^2)^{1/2} (\mathbb{E}Y^2)^{1/2}.
$$

### **Hölder**
$$
\|fg\|_1 \le \|f\|_p \|g\|_q.
$$

### **Minkowski**
$$
\|X+Y\|_p \le \|X\|_p + \|Y\|_p.
$$

---

# 8. Topological Facts

### **Limit Points and Closed Sets**
Closed sets contain their limit points.

### **Bolzano–Weierstrass**
Every bounded sequence has a convergent subsequence.

---

# 9. Metric Spaces

### **Completeness of $L^p$**
If $X_n$ is Cauchy in $L^p$, then it converges in $L^p$.

### **Weak Convergence & Tightness**
Tightness implies precompactness in the Prohorov metric.

---

# 10. Useful Lemmas: Probability

- If $a_n \to a$ and $b_n \to b$, then  
  $a_n + b_n \to a + b$, $a_n b_n \to ab$.

- If $\sum a_n < \infty$ with $a_n \ge 0$, then $a_n \to 0$.

- If $x_n \to x$ and $x\ne 0$, then $1/x_n \to 1/x$.

- If $0 \le x_n \uparrow x$, then $\sup_n x_n = x$.

- Any Cauchy sequence in $\mathbb{R}$ converges.

- Uniform continuity preserves limits.

---

