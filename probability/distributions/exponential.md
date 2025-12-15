# Exponential Distribution — $ \mathrm{Exp}(\lambda) $

## Definition

**Parameters:**  
- Rate $ \lambda > 0 $

**Support:**  
$$
x \ge 0
$$

**PDF:**  
$$
f(x \mid \lambda)
=
\lambda e^{-\lambda x}, \quad x \ge 0
$$

**CDF:**  
$$
F(x)=1-e^{-\lambda x}
$$

---

## Moment Generating Function (MGF) and Characteristic Function

**MGF:**  
$$
M_X(t)
=
\frac{\lambda}{\lambda - t},
\quad t < \lambda
$$

**Characteristic Function:**  
$$
\varphi_X(t)
=
\frac{\lambda}{\lambda - it}
$$

**Key consequence:**  
- All moments exist
- Radius of convergence $ t < \lambda $

---

## Moments

### Raw Moments
$$
\mathbb{E}[X^k]
=
\frac{k!}{\lambda^k}, \quad k \ge 1
$$

### Central Moments
$$
\mathbb{E}[X]=\frac{1}{\lambda},
\quad
\operatorname{Var}(X)=\frac{1}{\lambda^2}
$$

Skewness $=2$, kurtosis $=9$.

---

## Memoryless Property

$$
\mathbb{P}(X > s+t \mid X > s)
=
\mathbb{P}(X > t)
\quad \forall s,t \ge 0
$$

**Equivalent characterization:**  
The Exponential is the **only continuous distribution** on $ [0,\infty) $ with this property.

---

## Lack of Memory and Stopping Times

If $ T \sim \mathrm{Exp}(\lambda) $ and $ \mathcal{F}_t $ is the natural filtration,
$$
\mathbb{P}(T > s+t \mid \mathcal{F}_s, T > s)
=
\mathbb{P}(T > t)
$$

**Use in proofs:**  
- Strong Markov property  
- Renewal arguments  
- Optional stopping constructions

---

## Linear Transformations

If $ X \sim \mathrm{Exp}(\lambda) $, then
$$
cX \sim \mathrm{Exp}(\lambda/c), \quad c>0
$$

Thus Exponential is a **scale family**.

---

## Closure Properties

### Convolution

If $ X_1,\dots,X_n \stackrel{iid}{\sim} \mathrm{Exp}(\lambda) $,
$$
\sum_{i=1}^n X_i
\sim
\mathrm{Gamma}(n,\lambda)
$$

Special case:
- Waiting time for the $ n $-th Poisson event

---

## Minimum of Independent Exponentials

If $ X_i \sim \mathrm{Exp}(\lambda_i) $, independent, then
$$
\min_i X_i \sim \mathrm{Exp}\!\left(\sum_i \lambda_i\right)
$$

Moreover,
$$
\mathbb{P}(X_k = \min_i X_i)
=
\frac{\lambda_k}{\sum_i \lambda_i}
$$

**Key use:**  
Competing risks, Poisson thinning, CTMC jump times.

---

## Exponential Family Representation

$$
f(x)
=
\exp\!\left(
\log \lambda
-
\lambda x
\right)
\mathbb{1}_{x\ge 0}
$$

- Natural parameter: $ \eta = -\lambda $
- Sufficient statistic: $ \sum X_i $
- Minimal and complete

---

## Likelihood and Estimation

### Likelihood
$$
\ell(\lambda)
=
n\log\lambda
-
\lambda \sum x_i
$$

### Maximum Likelihood Estimator
$$
\hat{\lambda}
=
\frac{n}{\sum X_i}
=
\frac{1}{\bar{X}}
\quad \text{(biased)}
$$

---

## Fisher Information and CRLB

**Fisher Information:**
$$
I(\lambda)=\frac{n}{\lambda^2}
$$

**Cramér–Rao Lower Bound:**
$$
\operatorname{Var}(\hat{\lambda}) \ge \frac{\lambda^2}{n}
$$

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
\alpha+n,\;
\beta+\sum X_i
\right)
$$

---

## Relationship to Poisson Process

If events occur according to a Poisson process with rate $ \lambda $:

- Interarrival times are i.i.d. $ \mathrm{Exp}(\lambda) $
- Waiting time to the $ n $-th event is $ \mathrm{Gamma}(n,\lambda) $

---

## Key Theorems and Facts (Prelim-Relevant)

- **Uniqueness of memoryless property**
- **Minimum of exponentials**
- **Connection to Poisson processes**
- **Conjugacy with Gamma**
- **Sufficient statistics via exponential family**

---

## Exam Takeaways

- Memoryless ⇒ exponential  
- Min of exponentials ⇒ sum of rates  
- Sums ⇒ Gamma  
- Stopping times often hide exponentials  
- Always check scale transformations
