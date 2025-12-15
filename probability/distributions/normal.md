# Normal Distribution — $ \mathcal{N}(\mu,\sigma^2) $

## Definition

**Parameters:**  
- Mean $ \mu \in \mathbb{R} $  
- Variance $ \sigma^2 > 0 $

**Support:**  
$$
x \in \mathbb{R}
$$

**PDF:**  
$$
f(x \mid \mu,\sigma^2)
=
\frac{1}{\sqrt{2\pi\sigma^2}}
\exp\!\left(
-\frac{(x-\mu)^2}{2\sigma^2}
\right)
$$

---

## Moment Generating Function (MGF) and Characteristic Function

**MGF:**  
$$
M_X(t)
=
\exp\!\left(
\mu t + \frac{\sigma^2 t^2}{2}
\right)
\quad \text{for all } t \in \mathbb{R}
$$

**Characteristic Function:**  
$$
\varphi_X(t)
=
\exp\!\left(
i\mu t - \frac{\sigma^2 t^2}{2}
\right)
$$

**Key consequence:**  
- Moments of all orders exist  
- Distribution uniquely determined by its moments

---

## Moments

### Raw Moments
$$
\mathbb{E}[X^k] \quad \text{exist for all } k \ge 1
$$

Closed forms are obtained by differentiating the MGF.

### Central Moments
- Odd central moments: **0**
- Even central moments:
$$
\mathbb{E}[(X-\mu)^{2k}]
=
(2k-1)!!\,\sigma^{2k}
$$

In particular,
$$
\mathbb{E}[X]=\mu, 
\quad
\operatorname{Var}(X)=\sigma^2
$$

---

## Symmetry

$$
X - \mu \overset{d}{=} - (X - \mu)
$$

**Implications:**
- All odd central moments vanish
- Useful in expectation calculations and truncation arguments

---

## Linear Transformations

If $ X \sim \mathcal{N}(\mu,\sigma^2) $, then
$$
aX + b \sim \mathcal{N}(a\mu+b, a^2\sigma^2)
$$

**Special case (standardization):**
$$
Z = \frac{X-\mu}{\sigma} \sim \mathcal{N}(0,1)
$$

---

## Closure Properties

### Convolution

If $ X \sim \mathcal{N}(\mu_1,\sigma_1^2) $,
$ Y \sim \mathcal{N}(\mu_2,\sigma_2^2) $, independent, then
$$
X+Y \sim \mathcal{N}(\mu_1+\mu_2, \sigma_1^2+\sigma_2^2)
$$

### Linear Combinations

For independent normals $ X_i \sim \mathcal{N}(\mu_i,\sigma_i^2) $,
$$
\sum a_i X_i
\sim
\mathcal{N}
\left(
\sum a_i \mu_i,\;
\sum a_i^2 \sigma_i^2
\right)
$$

---

## Exponential Family Representation

The Normal distribution belongs to the exponential family.

### Known Variance Case

$$
f(x)
=
\exp\!\left(
\frac{\mu}{\sigma^2}x
-
\frac{1}{2\sigma^2}x^2
-
\frac{\mu^2}{2\sigma^2}
-
\frac12\log(2\pi\sigma^2)
\right)
$$

- Sufficient statistic: $ \sum X_i $
- Complete, minimal sufficient statistic

### Unknown Mean and Variance

- Two-parameter exponential family
- Sufficient statistic: $ (\sum X_i, \sum X_i^2) $
- Complete and minimal

---

## Likelihood and Estimation

### Likelihood
$$
\ell(\mu,\sigma^2)
=
-\frac{n}{2}\log\sigma^2
-
\frac{1}{2\sigma^2}\sum (x_i-\mu)^2
$$

### MLEs
$$
\hat{\mu} = \bar{X},
\quad
\hat{\sigma}^2 = \frac{1}{n}\sum (X_i-\bar{X})^2
\quad \text{(biased)}
$$

Unbiased estimator:
$$
\frac{1}{n-1}\sum (X_i-\bar{X})^2
$$

---

## Fisher Information and CRLB

**Fisher Information:**
$$
I(\mu)=\frac{1}{\sigma^2},
\quad
I(\sigma^2)=\frac{1}{2\sigma^4}
$$

**Cramér–Rao Lower Bound:**
$$
\operatorname{Var}(\hat{\mu}) \ge \frac{\sigma^2}{n}
$$

MLE attains the bound.

---

## Bayesian Structure

### Conjugate Prior

- Normal–Inverse-Gamma

$$
\mu \mid \sigma^2 \sim \mathcal{N}(\mu_0, \sigma^2/\kappa_0)
$$
$$
\sigma^2 \sim \text{Inv-Gamma}(\alpha_0,\beta_0)
$$

### Posterior

- Same family (closed under updating)

---

## Multivariate Normal (Reminder)

If $ X \sim \mathcal{N}_d(\mu,\Sigma) $:

- Any linear transformation is normal
- Marginals and conditionals are normal
- Independence $ \iff $ zero covariance (special to Normal)

---

## Key Theorems and Facts (Prelim-Relevant)

- **Uniqueness by MGF / CF**
- **Independence ⇔ zero covariance** (Normal only)
- **CLT limiting distribution**
- **Stability under convolution**
- **Sufficiency via exponential family**
- **Completeness of sufficient statistics**

---

## Exam Takeaways

- Always standardize when possible  
- Use symmetry to kill odd moments  
- Normality + independence = closed-form sums  
- Zero covariance implies independence only for normals  
- Most asymptotic results converge *to* Normal


## Log-Normal Distribution — $ \mathrm{LogNormal}(\mu,\sigma^2) $

The Log-Normal distribution arises as the **exponential of a Normal random variable**. It is used to model **positive-valued quantities with multiplicative variability**.

---

### Definition

If
$$
Y \sim \mathcal{N}(\mu,\sigma^2),
$$
then
$$
X = e^{Y}
\sim
\mathrm{LogNormal}(\mu,\sigma^2)
$$

**Support:**  
$$
x > 0
$$

**PDF:**  
$$
f(x)
=
\frac{1}{x\sigma\sqrt{2\pi}}
\exp\!\left(
-\frac{(\log x-\mu)^2}{2\sigma^2}
\right)
$$

---

### Moments

- Mean:
$$
\mathbb{E}[X]
=
\exp\!\left(\mu+\frac{\sigma^2}{2}\right)
$$

- Variance:
$$
\operatorname{Var}(X)
=
\left(e^{\sigma^2}-1\right)
e^{2\mu+\sigma^2}
$$

All moments exist, but the MGF does **not**.

---

### Moment Generating Function

- **MGF does not exist** for any $ t>0 $

This contrasts with the Normal distribution.

---

### Median and Mode

- Median:
$$
\mathrm{Med}(X)=e^\mu
$$

- Mode:
$$
\mathrm{Mode}(X)=e^{\mu-\sigma^2}
$$

Right-skewed for all $ \sigma^2>0 $.

---

### Relationship to Normal

$$
\log X \sim \mathcal{N}(\mu,\sigma^2)
$$

Used to transform multiplicative models into additive Normal models.

---

### Tail Behavior

- Heavier right tail than Exponential
- Lighter tail than Pareto
- Not regularly varying

Used as an intermediate example between light and heavy tails.

---

### Sums and Products

- Product of independent Log-Normals is Log-Normal
- Sum of Log-Normals has **no closed form distribution**

---

### Why It Appears in Courses

Log-Normal is used to illustrate:
- Transformation of variables
- Failure of MGFs despite finite moments
- Multiplicative noise models
- Contrast with Pareto and Gamma

---

### Key Facts (Prelim-Relevant)

- Exponential of Normal
- Support $ (0,\infty) $
- MGF does not exist
- All moments exist
- Used for multiplicative effects

---

### Exam Takeaways

- Positive + skewed ⇒ consider Log-Normal
- Take logs to recover Normal
- MGF arguments fail
- Product structure matters
