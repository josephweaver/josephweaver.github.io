# Negative Binomial Distribution — $ \mathrm{NegBin}(r,p) $

The Negative Binomial distribution models the **number of failures before the $ r $-th success** in a sequence of independent Bernoulli trials. It is the discrete analogue of the Gamma distribution and generalizes the Geometric distribution.

---

## Definition

**Parameters:**  
- Required number of successes $ r \in \mathbb{N} $  
- Success probability $ p \in (0,1) $

**Support (failures before the $ r $-th success):**  
$$
x \in \{0,1,2,\dots\}
$$

**PMF:**  
$$
\mathbb{P}(X=x)
=
\binom{x+r-1}{r-1}
p^r(1-p)^x
$$

---

## Interpretation

Let $ X_i \stackrel{iid}{\sim} \mathrm{Bern}(p) $.  
Then
$$
X
=
\#\{\text{failures before the $ r $-th success}\}.
$$

Equivalently,
$$
X = \sum_{i=1}^r X_i,
\quad
X_i \stackrel{iid}{\sim} \mathrm{Geom}(p)
$$

---

## Relationship to Geometric Distribution

- $ r=1 \Rightarrow \mathrm{NegBin}(1,p)=\mathrm{Geom}(p) $
- Negative Binomial is a **sum of Geometric random variables**
- Discrete analogue of:
$$
\mathrm{Gamma} = \sum \mathrm{Exp}
$$

---

## Moment Generating Function (MGF) and PGF

### MGF
$$
M_X(t)
=
\left(
\frac{p}{1-(1-p)e^t}
\right)^r,
\quad t<-\log(1-p)
$$

### Probability Generating Function
$$
G_X(s)
=
\left(
\frac{p}{1-(1-p)s}
\right)^r
$$

---

## Moments

### Mean and Variance
$$
\mathbb{E}[X]=\frac{r(1-p)}{p},
\quad
\operatorname{Var}(X)=\frac{r(1-p)}{p^2}
$$

### Higher Moments
Obtained via PGF differentiation.

---

## Exponential Family Representation

For fixed $ r $:
$$
f(x)
=
\exp\!\left(
x\log(1-p)
+
r\log p
+
\log\binom{x+r-1}{r-1}
\right)
$$

- One-parameter exponential family
- Sufficient statistic:
$$
T(X)=X
$$

---

## Sufficiency and Completeness

For $ X_1,\dots,X_n \stackrel{iid}{\sim} \mathrm{NegBin}(r,p) $ with fixed $ r $:

- Minimal complete sufficient statistic:
$$
\sum_{i=1}^n X_i
$$

---

## Likelihood and Estimation

### Likelihood
$$
L(p)
=
p^{nr}(1-p)^{\sum X_i}
$$

### Log-Likelihood
$$
\ell(p)
=
nr\log p + \sum X_i \log(1-p)
$$

### Maximum Likelihood Estimator
$$
\hat{p}
=
\frac{nr}{nr+\sum X_i}
$$

---

## Fisher Information and CRLB

**Fisher Information:**
$$
I(p)
=
\frac{nr}{p^2(1-p)}
$$

**CRLB:**
$$
\operatorname{Var}(\hat{p})
\ge
\frac{p^2(1-p)}{nr}
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
\alpha+nr,\;
\beta+\sum X_i
\right)
$$

---

## Gamma–Poisson Mixture Representation

If
$$
\lambda \sim \mathrm{Gamma}(\alpha,\beta),
\quad
X \mid \lambda \sim \mathrm{Pois}(\lambda),
$$
then
$$
X \sim \mathrm{NegBin}
\left(
\alpha,\;
\frac{\beta}{\beta+1}
\right)
$$

**Interpretation:**  
Negative Binomial models **overdispersion** relative to Poisson.

---

## Limiting Relationships

### Poisson Limit
If
$$
r \to \infty,\quad p \to 1,\quad r(1-p)\to\lambda,
$$
then
$$
\mathrm{NegBin}(r,p) \Rightarrow \mathrm{Pois}(\lambda)
$$

---

## Relationship to Binomial

- Binomial fixes number of trials, counts successes  
- Negative Binomial fixes number of successes, counts failures  

Dual interpretations.

---

## Stopping Time Interpretation

Negative Binomial represents the stopping time when the $ r $-th success occurs.

Used in:
- Renewal theory
- Queueing models
- Discrete-time branching processes

---

## Key Theorems and Facts (Prelim-Relevant)

- **Sum of Geometric variables**
- **Discrete analogue of Gamma**
- **Gamma–Poisson mixture**
- **Overdispersion model**
- **Beta conjugacy**

---

## Exam Takeaways

- Geometric is the base case
- Sums ⇒ Negative Binomial
- Overdispersion ⇒ Negative Binomial
- Poisson mixtures ⇒ Negative Binomial
- Think “discrete Gamma”
