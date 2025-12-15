---
title: Distrubution Toolkit
permalink: /probability/distributions/toolkit/
section: distributions
category: continuous
layout: default
order: 91
---
# Distribution Toolkit: Properties, Transformations, and Order Statistics

This page summarizes **general techniques** for extracting properties of a random variable given its **pdf/pmf, MGF, or characteristic function**. These tools apply to *any* distribution and are heavily used on prelim exams.

---

## 1. Basic Properties from a PDF / PMF

Given a pdf or pmf $ f(x) $:

### Support
- Identify where $ f(x) > 0 $
- Many properties (moments, integrals) depend critically on support

---

### Expectation
$$
\mathbb{E}[X]
=
\int x f(x)\,dx
\quad \text{or} \quad
\sum x f(x)
$$

---

### Variance
$$
\operatorname{Var}(X)
=
\mathbb{E}[X^2] - (\mathbb{E}[X])^2
$$

---

### Existence of Moments
- Check tail behavior
- Polynomial tails ⇒ finite moments only up to a threshold
- Exponential tails ⇒ all moments finite
- MGF exists ⇒ all moments finite

---

## 2. Using the Moment Generating Function (MGF)

### Definition
$$
M_X(t)=\mathbb{E}[e^{tX}]
$$

---

### Moments via MGF
$$
\mathbb{E}[X^k] = M_X^{(k)}(0)
$$

---

### Key Uses
- Identify distributions
- Compute moments efficiently
- Prove convergence in distribution
- Apply Chernoff bounds

---

### Important Warnings
- MGF may not exist (e.g. Pareto, Cauchy, Log-Normal)
- Existence only on an interval may matter

---

## 3. Using the Characteristic Function (CF)

### Definition
$$
\varphi_X(t)=\mathbb{E}[e^{itX}]
$$

---

### Key Properties
- Always exists
- Uniquely determines distribution
- Closed under limits

---

### Applications
- Proving convergence in distribution
- CLT proofs
- Identifying sums of independent variables

---

## 4. Arbitrary Transformations

### General Method
If $ Y=g(X) $:

1. Find inverse transformation $ x=g^{-1}(y) $
2. Compute Jacobian
3. Apply change-of-variables formula

---

### One-to-One Transformations
$$
f_Y(y)=f_X(g^{-1}(y))\left|\frac{d}{dy}g^{-1}(y)\right|
$$

---

### Common Transformations
- $ aX+b $: location-scale
- $ X^2 $: Chi-square type
- $ e^X $: Log-Normal
- $ 1/X $: Inverse-Gamma / Pareto-type

---

## 5. Sums of Independent Random Variables

### Via Convolution
$$
f_{X+Y}(z)=\int f_X(x)f_Y(z-x)\,dx
$$

---

### Shortcut via MGFs / CFs
$$
M_{X+Y}(t)=M_X(t)M_Y(t)
$$

Used heavily for:
- Gamma
- Normal
- Poisson
- Binomial

---

## 6. Minimum and Maximum of i.i.d. Samples

Let $ X_1,\dots,X_n \stackrel{iid}{\sim} F $.

---

### CDF of the Minimum
$$
F_{X_{(1)}}(x)
=
1-(1-F(x))^n
$$

---

### CDF of the Maximum
$$
F_{X_{(n)}}(x)
=
F(x)^n
$$

---

### PDFs
$$
f_{X_{(1)}}(x)
=
n(1-F(x))^{n-1}f(x)
$$

$$
f_{X_{(n)}}(x)
=
nF(x)^{n-1}f(x)
$$

---

## 7. General Order Statistics

### PDF of the $ k $-th Order Statistic
$$
f_{X_{(k)}}(x)
=
\frac{n!}{(k-1)!(n-k)!}
[F(x)]^{k-1}
[1-F(x)]^{n-k}
f(x)
$$

---

### Key Special Case: Uniform
If $ X_i \sim \mathrm{Unif}(0,1) $,
$$
X_{(k)} \sim \mathrm{Beta}(k,n-k+1)
$$

---

## 8. Probability Integral Transform

If $ F $ is continuous and
$$
U=F(X),
$$
then
$$
U \sim \mathrm{Unif}(0,1)
$$

Conversely,
$$
X=F^{-1}(U)
\sim F
$$

Used for:
- Simulation
- Proofs
- Distribution-free arguments

---

## 9. Conditioning and Mixtures

### Law of Total Probability
$$
f_X(x)=\int f_{X\mid\theta}(x)\,dP(\theta)
$$

---

### Mixture Models
- Zero-inflated
- Spike-and-slab
- Gamma–Poisson → Negative Binomial

---

## 10. Common Exam Patterns

| Structure Seen | Think |
|---------------|------|
| Sum | Convolution / MGF |
| Ratio | Beta / F / t |
| Min / Max | Order statistics |
| Tail bounds | MGF / Chernoff |
| Limit | CF |
| Transformation | Jacobian |

---

## Exam Takeaways

- Always start with the CDF
- Min/max are easiest via CDFs
- MGFs for sums, CFs for limits
- Transformations beat memorization
- Most distributions reduce to a few patterns
