---
title: Poisson Distribution
permalink: /probability/distributions/poisson/
section: distributions
category: discrete
layout: default
order: 57
---

# Poisson Distribution — $ \mathrm{Pois}(\lambda) $

## Definition

**Parameters:**  
- Rate $ \lambda > 0 $

**Support:**  
$$
x \in \{0,1,2,\dots\}
$$

**PMF:**  
$$
\mathbb{P}(X=x)
=
\frac{\lambda^x e^{-\lambda}}{x!}
$$

---

## Moment Generating Function (MGF) and Characteristic Function

**MGF:**  
$$
M_X(t)
=
\exp\!\left(\lambda(e^{t}-1)\right)
$$

**Characteristic Function:**  
$$
\varphi_X(t)
=
\exp\!\left(\lambda(e^{it}-1)\right)
$$

---

## Moments

### Mean and Variance
$$
\mathbb{E}[X]=\lambda,
\quad
\operatorname{Var}(X)=\lambda
$$

### Raw Moments
All moments exist and are obtained via MGF differentiation.

---

## Relationship to Binomial

### Poisson Limit Theorem
If $ X_n \sim \mathrm{Bin}(n,p_n) $ with
$$
n p_n \to \lambda,
\quad
p_n \to 0,
$$
then
$$
X_n \Rightarrow \mathrm{Pois}(\lambda)
$$

---

## Exponential Family Representation

$$
f(x)
=
\exp\!\left(
x\log\lambda
-
\lambda
-
\log x!
\right)
$$

- Natural parameter:
$$
\eta=\log\lambda
$$
- Sufficient statistic:
$$
T(X)=X
$$

---

## Sufficiency and Completeness

For $ X_1,\dots,X_n \stackrel{iid}{\sim} \mathrm{Pois}(\lambda) $:

- Complete and minimal sufficient statistic:
$$
\sum_{i=1}^n X_i
$$

Key for UMVU arguments.

---

## Likelihood and Estimation

### Likelihood
$$
L(\lambda)
=
\lambda^{\sum X_i} e^{-n\lambda}
$$

### Maximum Likelihood Estimator
$$
\hat{\lambda}
=
\frac{1}{n}\sum_{i=1}^n X_i
=
\bar{X}
$$

### Fisher Information
$$
I(\lambda)=\frac{n}{\lambda}
$$

---

## Cramér–Rao Lower Bound (CRLB)

$$
\operatorname{Var}(\hat{\lambda})
\ge
\frac{\lambda}{n}
$$

MLE attains the bound.

---

## Bayesian Structure

### Conjugate Prior
$$
\lambda \sim \mathrm{Gamma}(\alpha,\beta)
$$

### Posterior
$$
\lambda \mid X
\sim
\mathrm{Gamma}
\left(
\alpha+\sum X_i,\;
\beta+n
\right)
$$

---

## Closure Properties

### Convolution

If $ X \sim \mathrm{Pois}(\lambda_1) $,
$ Y \sim \mathrm{Pois}(\lambda_2) $, independent, then
$$
X+Y \sim \mathrm{Pois}(\lambda_1+\lambda_2)
$$

---

## Thinning Property

If $ X \sim \mathrm{Pois}(\lambda) $ and each event is kept with probability $ p $, independently, then
$$
Y \sim \mathrm{Pois}(p\lambda)
$$

Used in:
- Poisson processes
- Queueing theory
- Random graph models

---

## Relationship to Poisson Process

If $ N(t) $ is a Poisson process with rate $ \lambda $:

- $ N(t) \sim \mathrm{Pois}(\lambda t) $
- Interarrival times $ \sim \mathrm{Exp}(\lambda) $
- Arrival times $ \sim \mathrm{Gamma} $

---

## Conditional Structure

If
$$
X \sim \mathrm{Pois}(\lambda_1),
\quad
Y \sim \mathrm{Pois}(\lambda_2),
$$
independent, then
$$
X \mid (X+Y=n)
\sim
\mathrm{Bin}
\left(
n,\frac{\lambda_1}{\lambda_1+\lambda_2}
\right)
$$

---

## Tail Bounds

### Chernoff Bound
For $ X \sim \mathrm{Pois}(\lambda) $,
$$
\mathbb{P}(X \ge (1+\delta)\lambda)
\le
\left(
\frac{e^\delta}{(1+\delta)^{1+\delta}}
\right)^\lambda
$$

---

## Key Theorems and Facts (Prelim-Relevant)

- **Poisson limit of Binomial**
- **Closure under addition**
- **Gamma conjugacy**
- **Thinning property**
- **Conditional Binomial structure**

---

## Exam Takeaways

- Poisson is the rare-event limit
- Counts over time and space
- Sums add rates
- Conditioning reveals Binomial
- Central to stochastic processes
