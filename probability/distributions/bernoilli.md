---
title: Bernoulli Distribution
permalink: /probability/distributions/bernoulli/
section: distributions
category: discrete
layout: page
order: 50
---

# Bernoulli Distribution — $ \mathrm{Bern}(p) $

## Definition

**Parameters:**  
- Success probability $ p \in (0,1) $

**Support:**  
$$
x \in \{0,1\}
$$

**PMF:**  
$$
\mathbb{P}(X=x)
=
p^x(1-p)^{1-x}
$$

---

## Moment Generating Function (MGF) and Characteristic Function

**MGF:**  
$$
M_X(t)
=
(1-p)+p e^{t}
$$

**Characteristic Function:**  
$$
\varphi_X(t)
=
(1-p)+p e^{it}
$$

---

## Moments

### Raw Moments
$$
\mathbb{E}[X^k]=p \quad \forall k \ge 1
$$

### Mean and Variance
$$
\mathbb{E}[X]=p,
\quad
\operatorname{Var}(X)=p(1-p)
$$

---

## Exponential Family Representation

$$
f(x)
=
\exp\!\left(
x\log\frac{p}{1-p} + \log(1-p)
\right)
$$

- Natural parameter:
$$
\eta=\log\frac{p}{1-p}
$$
- Sufficient statistic: $ T(X)=X $
- Minimal and complete

---

## Likelihood and Estimation

### Likelihood
$$
L(p)
=
p^{\sum X_i}(1-p)^{n-\sum X_i}
$$

### MLE
$$
\hat{p}=\bar{X}
$$

### Fisher Information
$$
I(p)=\frac{1}{p(1-p)}
$$

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
\left(
\alpha+\sum X_i,\;
\beta+n-\sum X_i
\right)
$$

---

## Special Case: Rademacher Distribution

Let
$$
\varepsilon = 2X-1 \in \{-1,+1\}
$$

If $ X \sim \mathrm{Bern}(p) $, then
$$
\mathbb{P}(\varepsilon=1)=p,
\quad
\mathbb{P}(\varepsilon=-1)=1-p
$$

### Symmetric Rademacher
If $ p=1/2 $,
$$
\mathbb{P}(\varepsilon=\pm 1)=\frac12
$$

### Moments
$$
\mathbb{E}[\varepsilon]=0,
\quad
\operatorname{Var}(\varepsilon)=1
$$

### MGF
$$
\mathbb{E}[e^{t\varepsilon}]
=
\cosh(t)
$$

---

## Role of Rademacher Variables

- Symmetrization in empirical processes
- Concentration inequalities
- Martingale difference sequences
- Hoeffding and Azuma bounds

**Key fact:**  
Rademacher variables are tools, not models.

---

## Key Theorems and Facts (Prelim-Relevant)

- **Bernoulli exponential family**
- **Completeness of sufficient statistic**
- **Beta conjugacy**
- **Rademacher symmetrization**
- **Affine equivalence of Bernoulli and Rademacher**

---

## Exam Takeaways

- Bernoulli is the atomic discrete model
- Everything reduces to sums of Bernoullis
- Rademacher appears in bounds, not inference
- Always recognize the $ 2X-1 $ transform
