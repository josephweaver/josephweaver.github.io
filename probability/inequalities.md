---
title: Inequalities
permalink: /probability/inequalities/
layout: default
---

## Convexity and Jensen’s Inequality

### Definition (Convex and Concave Functions)
Let \( I \subset \mathbb{R} \) be an interval.

A function \( \varphi : I \to \mathbb{R} \) is **convex** if for all \( x,y \in I \) and \( \lambda \in [0,1] \),
\[
\varphi(\lambda x + (1-\lambda)y) \le \lambda \varphi(x) + (1-\lambda)\varphi(y).
\]

It is **concave** if the inequality is reversed.

Equivalently, if \( \varphi \) is twice differentiable on \( I \), then
- \( \varphi \) is convex if \( \varphi'' \ge 0 \),
- \( \varphi \) is concave if \( \varphi'' \le 0 \).

---

### Jensen’s Inequality
Let \( X \) be an integrable random variable with \( \mathbb{E}|X| < \infty \), and let  
\( \varphi \) be a convex function such that \( \mathbb{E}|\varphi(X)| < \infty \). Then
\[
\varphi(\mathbb{E}[X]) \le \mathbb{E}[\varphi(X)].
\]

---

### Concave Jensen (Reverse Inequality)
If \( \varphi \) is concave and the expectations exist, then
\[
\varphi(\mathbb{E}[X]) \ge \mathbb{E}[\varphi(X)].
\]

---

### Key Uses
- Moment bounds, e.g. \( (\mathbb{E}|X|)^p \le \mathbb{E}|X|^p \) for \( p \ge 1 \)
- Log and exponential inequalities, e.g. \( \log \mathbb{E}[X] \ge \mathbb{E}[\log X] \)
- Foundational tool for Markov, Chebyshev, and entropy arguments


## Markov and Chebyshev Inequalities

### Markov’s Inequality
Let \( X \ge 0 \) be a random variable with \( \mathbb{E}[X] < \infty \). Then for any \( a > 0 \),
\[
\mathbb{P}(X \ge a) \le \frac{\mathbb{E}[X]}{a}.
\]

More generally, if \( \varphi \) is nonnegative and increasing,
\[
\mathbb{P}(X \ge a) \le \frac{\mathbb{E}[\varphi(X)]}{\varphi(a)}.
\]

---

### Chebyshev’s Inequality
Let \( X \) be a random variable with mean \( \mu = \mathbb{E}[X] \) and variance \( \sigma^2 = \operatorname{Var}(X) < \infty \). Then for any \( \varepsilon > 0 \),
\[
\mathbb{P}(|X - \mu| \ge \varepsilon) \le \frac{\sigma^2}{\varepsilon^2}.
\]

---

### Mean-Zero ( \( \mu = 0 \) ) Version
If \( \mathbb{E}[X] = 0 \) and \( \mathbb{E}[X^2] < \infty \), then
\[
\mathbb{P}(|X| \ge \varepsilon) \le \frac{\mathbb{E}[X^2]}{\varepsilon^2}.
\]

---

### Relationship
Chebyshev’s inequality is Markov’s inequality applied to the nonnegative random variable  
\( (X - \mu)^2 \).


## Hölder and Cauchy–Schwarz Inequalities

### Hölder’s Inequality
Let \( X \) and \( Y \) be random variables.  
Let \( p,q > 1 \) satisfy \( \frac{1}{p} + \frac{1}{q} = 1 \).  
If \( \mathbb{E}|X|^p < \infty \) and \( \mathbb{E}|Y|^q < \infty \), then
\[
\mathbb{E}[|XY|] \le (\mathbb{E}|X|^p)^{1/p} (\mathbb{E}|Y|^q)^{1/q}.
\]

---

### Cauchy–Schwarz Inequality
Let \( X \) and \( Y \) be random variables with  
\( \mathbb{E}[X^2] < \infty \) and \( \mathbb{E}[Y^2] < \infty \). Then
\[
|\mathbb{E}[XY]| \le (\mathbb{E}[X^2])^{1/2} (\mathbb{E}[Y^2])^{1/2}.
\]

---

### Special Cases
- Cauchy–Schwarz is Hölder with \( p = q = 2 \)
- Setting \( Y = 1 \) in Hölder gives
\[
\mathbb{E}|X| \le (\mathbb{E}|X|^p)^{1/p}
\quad \text{for } p \ge 1
\]

---

### Key Uses
- Bounding moments and cross terms
- Establishing \( L^p \subset L^1 \) for \( p > 1 \)
- Proving convergence in probability and \( L^p \)
- Controlling martingale increments and covariance terms

## Minkowski Inequality

### Minkowski’s Inequality ( \( L^p \) Triangle Inequality )
Let \( X \) and \( Y \) be random variables and let \( p \ge 1 \).  
If \( \mathbb{E}|X|^p < \infty \) and \( \mathbb{E}|Y|^p < \infty \), then
\[
(\mathbb{E}|X+Y|^p)^{1/p}
\le
(\mathbb{E}|X|^p)^{1/p}
+
(\mathbb{E}|Y|^p)^{1/p}.
\]

---

### Interpretation
The mapping
\[
\|X\|_p := (\mathbb{E}|X|^p)^{1/p}
\]
defines a norm on \( L^p \), and Minkowski is the triangle inequality for this norm.

---

### Key Uses
- Establishes \( L^p \) as a normed vector space for \( p \ge 1 \)
- Controls sums of random variables in \( L^p \)
- Used in proofs of convergence in \( L^p \)
- Combined with Hölder to manipulate moments and expectations

## Fatou’s Lemma

### Fatou’s Lemma
Let \( \{X_n\}_{n\ge1} \) be a sequence of **nonnegative** random variables. Then
\[
\mathbb{E}\!\left[ \liminf_{n\to\infty} X_n \right]
\le
\liminf_{n\to\infty} \mathbb{E}[X_n].
\]

---

### Remarks
- No integrability or domination assumptions are required beyond \( X_n \ge 0 \)
- Inequality may be strict
- Applies pointwise almost surely

---

### Common Uses
- Lower bounds on limits of expectations
- Establishing integrability of limit random variables
- First step toward Dominated Convergence and Monotone Convergence
- Controlling limits of truncated variables

---

### Related Results
- **Monotone Convergence Theorem** gives equality when \( X_n \uparrow X \)
- **Dominated Convergence Theorem** allows limit and expectation to be interchanged under domination
