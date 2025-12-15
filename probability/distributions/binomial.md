---
title: Binomial Distribution
permalink: /probability/distributions/binomial/
section: distributions
category: discrete
layout: default
order: 52
---

# Binomial Distribution — $ \mathrm{Bin}(n,p) $

## Definition

**Parameters:**  
- Number of trials $ n \in \mathbb{N} $  
- Success probability $ p \in (0,1) $

**Support:**  
$$
x \in \{0,1,\dots,n\}
$$

**PMF:**  
$$
\mathbb{P}(X=x)
=
\binom{n}{x} p^x(1-p)^{n-x}
$$

---

## Relationship to Bernoulli

If $ X_i \stackrel{iid}{\sim} \mathrm{Bern}(p) $, then
$$
X = \sum_{i=1}^n X_i \sim \mathrm{Bin}(n,p)
$$

This makes Binomial a **sum of independent Bernoulli trials**.

---

## Moment Generating Function (MGF) and Characteristic Function

**MGF:**  
$$
M_X(t)
=
(1-p + p e^{t})^n
$$

**Characteristic Function:**  
$$
\varphi_X(t)
=
(1-p + p e^{it})^n
$$

---

## Moments

### Mean and Variance
$$
\mathbb{E}[X] = np,
\quad
\operatorname{Var}(X) = np(1-p)
$$

### Raw Moments
Obtained via derivatives of the MGF.

---

## Exponential Family Representation

$$
f(x)
=
\exp\!\left(
x\log\frac{p}{1-p}
+
\log\binom{n}{x}
+
n\log(1-p)
\right)
$$

- Natural parameter:
$$
\eta = \log\frac{p}{1-p}
$$
- Sufficient statistic:
$$
T(X) = X
$$

---

## Sufficiency and Completeness

For $ X_1,\dots,X_n \stackrel{iid}{\sim} \mathrm{Bern}(p) $:

- Complete and minimal sufficient statistic:
$$
\sum_{i=1}^n X_i
$$

Used heavily in UMVU arguments.

---

## Likelihood and Estimation

### Likelihood
$$
L(p)
=
p^{\sum X_i}(1-p)^{n-\sum X_i}
$$

### Maximum Likelihood Estimator
$$
\hat{p}
=
\frac{X}{n}
$$

### Fisher Information
$$
I(p)
=
\frac{n}{p(1-p)}
$$

---

## Cramér–Rao Lower Bound (CRLB)

$$
\operatorname{Var}(\hat{p})
\ge
\frac{p(1-p)}{n}
$$

The MLE achieves the bound asymptotically.

---

## Bayesian Structure

### Conjugate Prior
$$
p \sim \mathrm{Beta}(\alpha,\beta)
$$

### Posterior
$$
p \mid X
\sim
\mathrm{Beta}
(\alpha+X,\;\beta+n-X)
$$

---

## Beta–Binomial Distribution

Marginalizing over $ p $:
$$
X \sim \mathrm{Beta\text{-}Binomial}(n,\alpha,\beta)
$$

**Mean:**
$$
\mathbb{E}[X]
=
n\frac{\alpha}{\alpha+\beta}
$$

---

## Limiting Distributions

### Poisson Limit
If $ n\to\infty $, $ p\to 0 $, $ np \to \lambda $:
$$
\mathrm{Bin}(n,p)
\Rightarrow
\mathrm{Pois}(\lambda)
$$

### Normal Approximation
If $ np(1-p)\to\infty $:
$$
\frac{X-np}{\sqrt{np(1-p)}}
\Rightarrow
\mathcal{N}(0,1)
$$

---

## Tail Bounds

### Chernoff / Hoeffding
For $ X \sim \mathrm{Bin}(n,p) $,
$$
\mathbb{P}(|X-np|\ge t)
\le
2\exp\!\left(-\frac{2t^2}{n}\right)
$$

---

## Transformations

### Proportion
$$
\hat{p} = \frac{X}{n}
$$

- Unbiased
- Consistent
- Asymptotically normal

---

## Key Theorems and Facts (Prelim-Relevant)

- **Sum of Bernoulli trials**
- **Completeness of sufficient statistic**
- **Beta conjugacy**
- **Poisson limit theorem**
- **Normal approximation**
- **Chernoff bounds**

---

## Exam Takeaways

- Binomial is the discrete workhorse
- Always reduce to Bernoulli sums
- Know both Poisson and Normal limits
- Conjugacy is automatic
- Expect concentration inequalities
