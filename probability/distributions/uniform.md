---
title: Uniform Distribution
permalink: /probability/distributions/uniform/
section: distributions
category: continuous
layout: default
order: 38
---

# Uniform Distribution — $ \mathrm{Unif}(a,b) $

## Definition

**Parameters:**  
- Lower bound $ a \in \mathbb{R} $  
- Upper bound $ b > a $

**Support:**  
$$
a \le x \le b
$$

**PDF:**  
$$
f(x \mid a,b)
=
\frac{1}{b-a}\,
\mathbb{1}_{[a,b]}(x)
$$

**CDF:**  
$$
F(x)
=
\begin{cases}
0, & x < a \\
\frac{x-a}{b-a}, & a \le x \le b \\
1, & x > b
\end{cases}
$$

---

## Moment Generating Function (MGF) and Characteristic Function

**MGF:**  
$$
M_X(t)
=
\frac{e^{tb}-e^{ta}}{t(b-a)}, \quad t \ne 0
$$

**Characteristic Function:**  
$$
\varphi_X(t)
=
\frac{e^{itb}-e^{ita}}{it(b-a)}
$$

---

## Moments

### Mean and Variance
$$
\mathbb{E}[X]
=
\frac{a+b}{2}
$$

$$
\operatorname{Var}(X)
=
\frac{(b-a)^2}{12}
$$

### Raw Moments
$$
\mathbb{E}[X^k]
=
\frac{b^{k+1}-a^{k+1}}{(k+1)(b-a)}
$$

---

## Location–Scale Family

If $ X \sim \mathrm{Unif}(0,1) $, then
$$
a+(b-a)X \sim \mathrm{Unif}(a,b)
$$

Thus Uniform is a **location–scale family**.

---

## Order Statistics

Let $ X_1,\dots,X_n \stackrel{iid}{\sim} \mathrm{Unif}(a,b) $.

### Minimum
$$
X_{(1)} \sim a + (b-a)\,\mathrm{Beta}(1,n)
$$

### Maximum
$$
X_{(n)} \sim a + (b-a)\,\mathrm{Beta}(n,1)
$$

### General Order Statistic
$$
\frac{X_{(k)}-a}{b-a}
\sim
\mathrm{Beta}(k,n-k+1)
$$

---

## Sufficient Statistics

For $ \mathrm{Unif}(a,b) $ with both parameters unknown:

- Minimal sufficient statistic:
$$
(X_{(1)}, X_{(n)})
$$

- **Not complete**

This is a classic **nonregular family**.

---

## Likelihood and Estimation

### Likelihood
$$
L(a,b)
=
(b-a)^{-n}
\mathbb{1}\{a \le X_{(1)},\, X_{(n)} \le b\}
$$

### MLEs
$$
\hat{a} = X_{(1)}, \quad \hat{b} = X_{(n)}
$$

**Bias:**  
$$
\mathbb{E}[X_{(1)}] = a + \frac{b-a}{n+1}
$$
$$
\mathbb{E}[X_{(n)}] = b - \frac{b-a}{n+1}
$$

---

## UMVU Estimators

Using order statistics:

$$
\tilde{a}
=
X_{(1)} - \frac{X_{(n)}-X_{(1)}}{n-1}
$$

$$
\tilde{b}
=
X_{(n)} + \frac{X_{(n)}-X_{(1)}}{n-1}
$$

Exist despite lack of completeness.

---

## Nonregularity

- Support depends on parameters
- Fisher information not well-defined
- CRLB does not apply

**Exam favorite:** counterexample to standard theory assumptions.

---

## Transformations

### Probability Integral Transform
If $ X \sim \mathrm{Unif}(a,b) $, then
$$
\frac{X-a}{b-a} \sim \mathrm{Unif}(0,1)
$$

Conversely, if $ U \sim \mathrm{Unif}(0,1) $, then
$$
F^{-1}(U) \sim F
$$

---

## Bayesian Notes

- No natural conjugate prior for $ (a,b) $
- Often handled via hierarchical or improper priors

---

## Key Theorems and Facts (Prelim-Relevant)

- **Order statistic distributions**
- **Minimal but not complete sufficiency**
- **Nonregular family**
- **Failure of CRLB**
- **Probability integral transform**

---

## Exam Takeaways

- Always reduce to $ \mathrm{Unif}(0,1) $
- Order statistics carry all information
- Expect boundary-based estimators
- Uniform breaks many “nice” theorems
