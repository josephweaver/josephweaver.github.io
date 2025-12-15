---
title: Geometric Distribution
permalink: /probability/distributions/geometric/
section: distributions
category: discrete
layout: page
order: 53
---


# Geometric Distribution — $ \mathrm{Geom}(p) $

The Geometric distribution models the **waiting time until the first success** in a sequence of independent Bernoulli trials. It is the **unique discrete memoryless distribution** and the discrete analogue of the Exponential distribution.

---

## Definition

**Parameters:**  
- Success probability $ p \in (0,1) $

**Support (failures before first success):**  
$$
x \in \{0,1,2,\dots\}
$$

**PMF:**  
$$
\mathbb{P}(X=x)
=
(1-p)^x p
$$

---

## Interpretation

Let $ X_i \stackrel{iid}{\sim} \mathrm{Bern}(p) $.  
Then
$$
X = \min\{k \ge 0 : X_{k+1}=1\}
$$
is Geometric.

Equivalently, $ X $ counts the **number of failures before the first success**.

---

## Memoryless Property

$$
\mathbb{P}(X > s+t \mid X > s)
=
\mathbb{P}(X > t)
\quad \forall s,t \ge 0
$$

### Uniqueness
The Geometric distribution is the **only discrete distribution** on $ \mathbb{Z}_{\ge0} $ with this property.

---

## Moment Generating Function (MGF) and PGF

### MGF
$$
M_X(t)
=
\mathbb{E}[e^{tX}]
=
\frac{p}{1-(1-p)e^t},
\quad t<-\log(1-p)
$$

### Probability Generating Function
$$
G_X(s)
=
\mathbb{E}[s^X]
=
\frac{p}{1-(1-p)s}
$$

---

## Moments

### Mean and Variance
$$
\mathbb{E}[X]=\frac{1-p}{p},
\quad
\operatorname{Var}(X)=\frac{1-p}{p^2}
$$

### Higher Moments
All moments exist and can be obtained via PGF differentiation.

---

## Exponential Family Representation

$$
f(x)
=
\exp\!\left(
x\log(1-p)
+
\log p
\right)
$$

- Natural parameter:
$$
\eta=\log(1-p)
$$
- Sufficient statistic: $ T(X)=X $
- Minimal and complete

---

## Sufficiency and Completeness

For $ X_1,\dots,X_n \stackrel{iid}{\sim} \mathrm{Geom}(p) $:

- Minimal complete sufficient statistic:
$$
\sum_{i=1}^n X_i
$$

Used in UMVU constructions.

---

## Likelihood and Estimation

### Likelihood
$$
L(p)
=
p^n (1-p)^{\sum X_i}
$$

### Log-Likelihood
$$
\ell(p)
=
n\log p + \sum X_i \log(1-p)
$$

### Maximum Likelihood Estimator
$$
\hat{p}
=
\frac{n}{n+\sum X_i}
$$

---

## Fisher Information and CRLB

**Fisher Information:**
$$
I(p)
=
\frac{1}{p^2(1-p)}
$$

**CRLB:**
$$
\operatorname{Var}(\hat{p})
\ge
\frac{p^2(1-p)}{n}
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
\alpha+n,\;
\beta+\sum X_i
\right)
$$

---

## Relationship to Other Distributions

### Connection to Bernoulli
Geometric counts Bernoulli trials until success.

---

### Discrete–Continuous Analogy
$$
\mathrm{Geom}(p)
\quad \longleftrightarrow \quad
\mathrm{Exp}(\lambda)
$$

Limit:
$$
p \to 0,
\quad
pX \Rightarrow \mathrm{Exp}(1)
$$

---

### Relationship to Negative Binomial
If
$$
X_i \stackrel{iid}{\sim} \mathrm{Geom}(p),
$$
then
$$
\sum_{i=1}^r X_i
\sim
\mathrm{NegBin}(r,p)
$$

---

## Stopping Time Interpretation

Let $ \mathcal{F}_n = \sigma(X_1,\dots,X_n) $.  
Then $ X $ is a stopping time and memorylessness implies strong Markov-type behavior.

Used in:
- Renewal processes
- Optional stopping arguments
- Discrete-time queues

---

## Key Theorems and Facts (Prelim-Relevant)

- **Unique discrete memoryless distribution**
- **Complete sufficient statistic**
- **Discrete analogue of Exponential**
- **Limit to Exponential**
- **Foundation of Negative Binomial**

---

## Exam Takeaways

- Memoryless ⇒ Geometric
- Waiting time ⇒ Geometric
- Sums ⇒ Negative Binomial
- Small $ p $ ⇒ Exponential limit
- Think “discrete waiting time”
