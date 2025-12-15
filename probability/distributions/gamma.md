---
title: Gamma Distribution
permalink: /probability/distributions/gamma/
section: distributions
category: continuous
layout: default
order: 33
---

# Gamma Distribution — $ \mathrm{Gamma}(\alpha,\lambda) $

## Definition

**Parameters:**  
- Shape $ \alpha > 0 $  
- Rate $ \lambda > 0 $

(**Note:** Some texts use scale $ \theta = 1/\lambda $.)

**Support:**  
$$
x \ge 0
$$

**PDF:**  
$$
f(x \mid \alpha,\lambda)
=
\frac{\lambda^\alpha}{\Gamma(\alpha)}
x^{\alpha-1} e^{-\lambda x}
\mathbb{1}_{x\ge 0}
$$

---

## Moment Generating Function (MGF) and Characteristic Function

**MGF:**  
$$
M_X(t)
=
\left(\frac{\lambda}{\lambda - t}\right)^{\alpha},
\quad t < \lambda
$$

**Characteristic Function:**  
$$
\varphi_X(t)
=
\left(\frac{\lambda}{\lambda - it}\right)^{\alpha}
$$

---

## Moments

### Raw Moments
$$
\mathbb{E}[X^k]
=
\frac{\Gamma(\alpha+k)}{\Gamma(\alpha)\lambda^k}
$$

### Mean and Variance
$$
\mathbb{E}[X]=\frac{\alpha}{\lambda},
\quad
\operatorname{Var}(X)=\frac{\alpha}{\lambda^2}
$$

### Central Moments
- Skewness: $ 2/\sqrt{\alpha} $  
- Kurtosis: $ 6/\alpha + 3 $

---

## Relationship to Special Functions

### Gamma Function
$$
\Gamma(\alpha)=\int_0^\infty x^{\alpha-1}e^{-x}\,dx
$$

- $ \Gamma(n)=(n-1)! $ for integers  
- Extends factorial continuously

### Polygamma Functions
Appear in:
- Fisher information
- Score equations
- Asymptotic variance of MLEs

---

## Scale Family Property

If $ X \sim \mathrm{Gamma}(\alpha,\lambda) $, then
$$
cX \sim \mathrm{Gamma}(\alpha,\lambda/c), \quad c>0
$$

---

## Closure Properties

### Convolution

If
$$
X_i \stackrel{iid}{\sim} \mathrm{Gamma}(\alpha_i,\lambda)
\quad \text{independent},
$$
then
$$
\sum_i X_i
\sim
\mathrm{Gamma}\!\left(\sum_i \alpha_i,\lambda\right)
$$

**Special cases:**
- Sum of exponentials → Gamma
- Waiting time for Poisson events

---

## Connection to Poisson Processes

If $ N(t) $ is a Poisson process with rate $ \lambda $:

- Interarrival times: $ \mathrm{Exp}(\lambda) $
- Time of $ n $-th event:
$$
T_n \sim \mathrm{Gamma}(n,\lambda)
$$

---

## Exponential Family Representation

$$
f(x)
=
\exp\!\left(
(\alpha-1)\log x
-
\lambda x
+
\alpha\log\lambda
-
\log\Gamma(\alpha)
\right)
\mathbb{1}_{x\ge 0}
$$

- Two-parameter exponential family
- Sufficient statistics:
$$
\sum \log X_i,\quad \sum X_i
$$

---

## Likelihood and Estimation

### Log-Likelihood
$$
\ell(\alpha,\lambda)
=
n(\alpha\log\lambda-\log\Gamma(\alpha))
+
(\alpha-1)\sum\log x_i
-
\lambda\sum x_i
$$

### MLEs
- $ \lambda $: closed form given $ \alpha $
- $ \alpha $: no closed form, solved numerically

---

## Fisher Information

- Involves digamma $ \psi $ and trigamma $ \psi' $
- Often cited qualitatively on exams

---

## Bayesian Structure

### Conjugacy (Rate Parameter)

If
$$
\lambda \sim \mathrm{Gamma}(\alpha_0,\beta_0)
$$
and
$$
X_i \mid \lambda \sim \mathrm{Exp}(\lambda),
$$
then
$$
\lambda \mid X
\sim
\mathrm{Gamma}
\left(
\alpha_0+n,\;
\beta_0+\sum X_i
\right)
$$

### Conjugacy for Poisson
- Gamma prior → Poisson likelihood → Gamma posterior

---

## Related Distributions

- **Exponential:** $ \alpha=1 $
- **Chi-square:** $ \alpha=\nu/2,\; \lambda=1/2 $
- **Erlang:** integer $ \alpha $
- **Inverse-Gamma:** reciprocal
- **Beta:** ratio of Gammas

---

## Transformations

### Ratio
If $ X \sim \Gamma(\alpha,\lambda) $, $ Y \sim \Gamma(\beta,\lambda) $, independent:
$$
\frac{X}{X+Y} \sim \mathrm{Beta}(\alpha,\beta)
$$




---

## Key Theorems and Facts (Prelim-Relevant)

- **Sum of independent Gammas**
- **Connection to Poisson process arrival times**
- **Exponential is a special case**
- **Gamma–Poisson conjugacy**
- **Scale family behavior**

---

## Exam Takeaways

- Think “sum of exponentials”
- Same rate ⇒ shapes add
- Gamma prior is everywhere
- Expect special functions in Fisher info
- Ratios lead to Beta


## Inverse-Gamma Distribution — $ \mathrm{Inv\text{-}Gamma}(\alpha,\beta) $

The Inverse-Gamma distribution arises as the **distribution of the reciprocal of a Gamma random variable** and is used primarily as a **prior for variance parameters** in Normal models.

---

### Definition

**Parameters:**  
- Shape $ \alpha > 0 $  
- Scale $ \beta > 0 $

**Support:**  
$$
x > 0
$$

**PDF:**  
$$
f(x)
=
\frac{\beta^\alpha}{\Gamma(\alpha)}
x^{-(\alpha+1)}
\exp\!\left(-\frac{\beta}{x}\right)
$$

---

### Relationship to Gamma

If
$$
Y \sim \mathrm{Gamma}(\alpha,\beta),
$$
then
$$
X=\frac{1}{Y}
\sim
\mathrm{Inv\text{-}Gamma}(\alpha,\beta)
$$

All properties follow via transformation.

---

### Moments

- Mean:
$$
\mathbb{E}[X]
=
\frac{\beta}{\alpha-1},
\quad \alpha>1
$$

- Variance:
$$
\operatorname{Var}(X)
=
\frac{\beta^2}{(\alpha-1)^2(\alpha-2)},
\quad \alpha>2
$$

Moments fail to exist below these thresholds.

---

### Bayesian Role (Primary Use)

Inverse-Gamma is the **conjugate prior for the variance** of a Normal distribution.

If
$$
X_i \mid \sigma^2 \sim \mathcal{N}(\mu,\sigma^2),
\quad
\sigma^2 \sim \mathrm{Inv\text{-}Gamma}(\alpha_0,\beta_0),
$$
then
$$
\sigma^2 \mid X
\sim
\mathrm{Inv\text{-}Gamma}
\left(
\alpha_0+\frac{n}{2},\;
\beta_0+\frac12\sum (X_i-\mu)^2
\right)
$$

---

### Relationship to Other Distributions

- Reciprocal of Gamma
- Closely related to:
  - Scaled inverse-$ \chi^2 $
  - Normal–Inverse-Gamma prior
- Heavy right tail compared to Gamma

---

### Key Facts (Prelim-Relevant)

- **Defined as reciprocal of Gamma**
- **Used for variance priors**
- **Moments exist only above thresholds**
- **Appears in Normal–Inverse-Gamma models**

---

### Exam Takeaways

- Think “variance prior”
- Reciprocal of Gamma
- Heavy-tailed
- Often paired with Normal likelihood
