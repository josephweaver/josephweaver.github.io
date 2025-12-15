# Beta Distribution — $ \mathrm{Beta}(\alpha,\beta) $

## Definition

**Parameters:**  
- Shape parameters $ \alpha > 0 $, $ \beta > 0 $

**Support:**  
$$
0 \le x \le 1
$$

**PDF:**  
$$
f(x \mid \alpha,\beta)
=
\frac{1}{B(\alpha,\beta)}
x^{\alpha-1}(1-x)^{\beta-1}
\mathbb{1}_{[0,1]}(x)
$$

where
$$
B(\alpha,\beta)
=
\frac{\Gamma(\alpha)\Gamma(\beta)}{\Gamma(\alpha+\beta)}
$$

---

## Moment Generating Function (MGF) and Characteristic Function

- **MGF:** no simple closed form  
- **CF:** expressible via hypergeometric functions (rarely used)

**Exam note:** moments are computed directly, not via MGF.

---

## Moments

### Mean and Variance
$$
\mathbb{E}[X]
=
\frac{\alpha}{\alpha+\beta}
$$

$$
\operatorname{Var}(X)
=
\frac{\alpha\beta}{(\alpha+\beta)^2(\alpha+\beta+1)}
$$

### Raw Moments
$$
\mathbb{E}[X^k]
=
\frac{(\alpha)_k}{(\alpha+\beta)_k}
$$

where $ (a)_k $ is the rising factorial.

---

## Symmetry and Shape

- Symmetric iff $ \alpha=\beta $
- U-shaped if $ \alpha,\beta<1 $
- Unimodal if $ \alpha,\beta>1 $

Mode (if $ \alpha,\beta>1 $):
$$
\frac{\alpha-1}{\alpha+\beta-2}
$$

---

## Relationship to Special Functions

### Beta Function
$$
B(\alpha,\beta)
=
\int_0^1 x^{\alpha-1}(1-x)^{\beta-1}\,dx
$$

- Normalizing constant for Beta
- Closely tied to Gamma

---

## Exponential Family Representation

$$
f(x)
=
\exp\!\left(
(\alpha-1)\log x
+
(\beta-1)\log(1-x)
-
\log B(\alpha,\beta)
\right)
$$

- Two-parameter exponential family
- Sufficient statistics:
$$
\sum \log X_i,\quad \sum \log(1-X_i)
$$

---

## Likelihood and Estimation

### Log-Likelihood
$$
\ell(\alpha,\beta)
=
(\alpha-1)\sum \log x_i
+
(\beta-1)\sum \log(1-x_i)
-
n\log B(\alpha,\beta)
$$

### MLEs
- No closed form
- Solved numerically via digamma functions

### Method of Moments
Closed form using sample mean and variance.

---

## Bayesian Structure

### Conjugacy

If
$$
X_i \mid p \sim \mathrm{Bernoulli}(p)
\quad \text{or} \quad
\mathrm{Binomial}(n,p),
$$
and
$$
p \sim \mathrm{Beta}(\alpha,\beta),
$$
then
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

## Relationship to Gamma Distribution

If
$$
X \sim \Gamma(\alpha,\lambda),
\quad
Y \sim \Gamma(\beta,\lambda),
\quad X \perp Y,
$$
then
$$
\frac{X}{X+Y}
\sim
\mathrm{Beta}(\alpha,\beta)
$$

**Key:** common rate parameter cancels.

---

## Order Statistics

If $ U_1,\dots,U_n \sim \mathrm{Unif}(0,1) $, then
$$
U_{(k)}
\sim
\mathrm{Beta}(k,n-k+1)
$$

Used frequently in:
- Quantile proofs
- Distribution-free arguments

---

## Transformations

### Odds Ratio
$$
\frac{X}{1-X}
\sim
\text{Beta-prime}
$$

---

## Fisher Information

- Involves digamma and trigamma functions
- Rarely computed explicitly on prelims
- Often cited qualitatively

---

## Key Theorems and Facts (Prelim-Relevant)

- **Conjugacy with Bernoulli/Binomial**
- **Ratio of Gammas**
- **Order statistic distributions**
- **Bounded support arguments**
- **No closed-form MGF**

---

## Exam Takeaways

- Think “probability parameter”
- Counts update $ \alpha,\beta $
- Ratios → Beta
- Uniform is $ \mathrm{Beta}(1,1) $
- Shows up in nonparametric proofs
