---
title: Multinomial Distribution
permalink: /probability/distributions/mutlinomial/
section: distributions
category: discrete
layout: default
order: 54
---

# Multinomial Distribution — $ \mathrm{Mult}(n,\mathbf{p}) $

The Multinomial distribution generalizes the Binomial distribution to **multiple categories**. It models **counts across categories** from repeated independent trials and is fundamental in likelihood theory, sufficiency, and categorical data models.

---

## Definition

**Parameters:**  
- Number of trials $ n \in \mathbb{N} $  
- Category probabilities
$$
\mathbf{p}=(p_1,\dots,p_k),
\quad
p_i \ge 0,
\quad
\sum_{i=1}^k p_i = 1
$$

**Support:**  
$$
(x_1,\dots,x_k) \in \mathbb{N}_0^k,
\quad
\sum_{i=1}^k x_i = n
$$

**PMF:**  
$$
\mathbb{P}(X_1=x_1,\dots,X_k=x_k)
=
\frac{n!}{x_1!\cdots x_k!}
\prod_{i=1}^k p_i^{x_i}
$$

---

## Interpretation

Let $ Z_1,\dots,Z_n $ be i.i.d. categorical variables with
$$
\mathbb{P}(Z=j)=p_j.
$$

Then
$$
X_j = \sum_{i=1}^n \mathbf{1}\{Z_i=j\}
$$
and
$$
(X_1,\dots,X_k) \sim \mathrm{Mult}(n,\mathbf{p}).
$$

---

## Relationship to Binomial

- If $ k=2 $, Multinomial reduces to Binomial
- Each marginal:
$$
X_j \sim \mathrm{Bin}(n,p_j)
$$
- Marginals are **not independent**

---

## Moments

### Mean
$$
\mathbb{E}[X_i]=np_i
$$

### Variance
$$
\operatorname{Var}(X_i)=np_i(1-p_i)
$$

### Covariance
$$
\operatorname{Cov}(X_i,X_j)
=
-\,np_i p_j,
\quad i\ne j
$$

Negative correlation reflects the fixed total $ n $.

---

## Moment Generating Function (MGF)

$$
M_X(\mathbf{t})
=
\mathbb{E}\!\left[e^{\sum t_i X_i}\right]
=
\left(
\sum_{i=1}^k p_i e^{t_i}
\right)^n
$$

---

## Exponential Family Representation

$$
f(\mathbf{x})
=
\exp\!\left(
\sum_{i=1}^k x_i \log p_i
+
\log n!
-
\sum_{i=1}^k \log x_i!
\right)
$$

- Natural parameters: $ \log p_1,\dots,\log p_k $ (with constraint)
- Sufficient statistic:
$$
(X_1,\dots,X_k)
$$
- Minimal and complete

---

## Sufficiency and Completeness

For i.i.d. categorical data:

- $ (X_1,\dots,X_k) $ is **minimal sufficient**
- Also **complete** under the simplex constraint

This underlies UMVU and likelihood ratio tests.

---

## Likelihood and Estimation

### Likelihood
$$
L(\mathbf{p})
=
\prod_{i=1}^k p_i^{X_i}
\quad \text{subject to } \sum p_i=1
$$

### Maximum Likelihood Estimator
$$
\hat{p}_i
=
\frac{X_i}{n}
$$

---

## Fisher Information

For a single trial:
$$
I(\mathbf{p})
=
\operatorname{diag}\!\left(\frac{1}{p_1},\dots,\frac{1}{p_k}\right)
\quad \text{(on the simplex)}
$$

---

## Bayesian Structure

### Conjugate Prior — Dirichlet

$$
\mathbf{p} \sim \mathrm{Dirichlet}(\alpha_1,\dots,\alpha_k)
$$

### Posterior
$$
\mathbf{p} \mid X
\sim
\mathrm{Dirichlet}
(\alpha_1+X_1,\dots,\alpha_k+X_k)
$$

---

## Relationship to Other Distributions

- **Binomial:** $ k=2 $
- **Poisson:** Poisson limits applied componentwise
- **Dirichlet:** Multinomial–Dirichlet conjugacy
- **Categorical:** single-trial Multinomial

---

## Limiting Behavior

### Multivariate CLT
$$
\sqrt{n}\left(
\frac{\mathbf{X}}{n}-\mathbf{p}
\right)
\Rightarrow
\mathcal{N}_k
\left(
0,\;
\Sigma
\right)
$$

where
$$
\Sigma_{ii}=p_i(1-p_i),
\quad
\Sigma_{ij}=-p_ip_j.
$$

---

## Likelihood Ratio Tests

Used for:
- Goodness-of-fit tests
- Contingency tables
- Pearson chi-square statistics

---

## Key Theorems and Facts (Prelim-Relevant)

- **Vector extension of Binomial**
- **Negative correlations**
- **Dirichlet conjugacy**
- **Complete sufficient statistic**
- **Multivariate CLT**

---

## Exam Takeaways

- Counts across categories ⇒ Multinomial
- Probabilities live on simplex
- Marginals Binomial, jointly dependent
- Dirichlet is automatic conjugate
- Foundation of categorical data models
