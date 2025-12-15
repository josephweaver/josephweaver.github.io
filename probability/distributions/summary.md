# Probability Distributions – Cheat Sheet

This page collects common probability distributions with their key properties, moments, likelihood forms, and Bayesian relationships.

for more details;


---

## Bernoulli Distribution — `Bern(p)`

**Parameters:**  
- $ p \in (0,1) $, probability of success

**Support:**  
- $ x \in \{0,1\} $

**PMF:**  
$$
P(X=x) = p^x(1-p)^{1-x}
$$

**MGF / CF:**  
$$
M_X(t) = (1-p) + p e^t
$$

**Raw Moments:**  
$$
\mathbb{E}[X^k] = p \quad \forall k \ge 1
$$

**Central Moments:**  
$$
\operatorname{Var}(X) = p(1-p)
$$

**Exponential Family Form:**  
- Base measure: $ h(x)=1 $  
- Sufficient statistic: $ T(x)=x $ (complete, minimal)  
- Natural parameter: $ \eta=\log\frac{p}{1-p} $

**Conjugate Prior:**  
- Beta

**Posterior:**  
- Beta

**Related Distributions:**  
- Binomial, Geometric

---

## Beta Distribution — `Beta(α,β)`

**Parameters:**  
- Shape parameters $ \alpha,\beta>0 $

**Support:**  
- $ x \in (0,1) $

**PDF:**  
$$
f(x)=\frac{1}{B(\alpha,\beta)}x^{\alpha-1}(1-x)^{\beta-1}
$$

**Mean:**  
$$
\mathbb{E}[X]=\frac{\alpha}{\alpha+\beta}
$$

**Variance:**  
$$
\frac{\alpha\beta}{(\alpha+\beta)^2(\alpha+\beta+1)}
$$

**MGF / CF:**  
- Not useful in closed form

**Fisher Information:**  
- Involves digamma and polygamma functions

**MLE:**  
- Intractable (requires numerical methods)

**Method of Moments:**  
- Available

**UMVU Estimators:**  
- Known for functions of $ p $

**Conjugate Prior For:**  
- Bernoulli, Binomial

---

## Binomial Distribution — `Bin(n,p)`

**Parameters:**  
- $ n \in \mathbb{N} $, trials  
- $ p \in (0,1) $

**Support:**  
- $ x=0,1,\dots,n $

**PMF:**  
$$
P(X=x)=\binom{n}{x}p^x(1-p)^{n-x}
$$

**Mean / Variance:**  
$$
\mathbb{E}[X]=np, \quad \operatorname{Var}(X)=np(1-p)
$$

**MGF:**  
$$
M_X(t) = (1-p+pe^t)^n
$$

**Exponential Family:**  
- Yes

**Complete Minimal Sufficient Statistic:**  
- $ \sum X_i $

**Conjugate Prior:**  
- Beta

**Posterior:**  
- Beta

**Convolution:**  
- Binomial + Binomial = Binomial

---

## Exponential Distribution — `Exp(λ)`

**Parameters:**  
- Rate $ \lambda>0 $

**Support:**  
- $ x \ge 0 $

**PDF:**  
$$
f(x)=\lambda e^{-\lambda x}
$$

**CDF:**  
$$
1-e^{-\lambda x}
$$

**Mean / Variance:**  
$$
\mathbb{E}[X]=\frac{1}{\lambda}, \quad \operatorname{Var}(X)=\frac{1}{\lambda^2}
$$

**MGF:**  
$$
M_X(t)=\frac{\lambda}{\lambda-t}
$$

**Memoryless:**  
$$
P(X>s+t\mid X>s)=P(X>t)
$$

**Conjugate Prior:**  
- Gamma

**Posterior:**  
- Gamma

**Convolution:**  
- Gamma

---

## Gamma Distribution — `Gamma(α,β)`

**Parameters:**  
- Shape $ \alpha $, rate $ \beta $

**Support:**  
- $ x \ge 0 $

**PDF:**  
$$
f(x)=\frac{\beta^\alpha}{\Gamma(\alpha)}x^{\alpha-1}e^{-\beta x}
$$

**Mean / Variance:**  
$$
\frac{\alpha}{\beta}, \quad \frac{\alpha}{\beta^2}
$$

**MGF:**  
$$
M_X(t)=\left(\frac{\beta}{\beta-t}\right)^\alpha
$$

**Exponential Family:**  
- Yes

**Convolutions:**  
- Closed under convolution (same rate)

**Related:**  
- Exponential, Chi-square

**Inverse Distribution:**  
- Inverse-Gamma

---

## Geometric Distribution — `Geom(p)`

**Parameters:**  
- Success probability $ p $

**Support:**  
- $ x=1,2,\dots $

**PMF:**  
$$
P(X=x)=p(1-p)^{x-1}
$$

**Memoryless:**  
- Yes

**Mean / Variance:**  
$$
\frac{1}{p}, \quad \frac{1-p}{p^2}
$$

**Exponential Family:**  
- Yes

**Conjugate Prior:**  
- Beta

**Related:**  
- Negative Binomial

---

## Negative Binomial Distribution

**Parameters:**  
- Required successes $ r $, success prob. $ p $

**Support:**  
- Failures before $ r $ successes

**PMF:**  
$$
\binom{x+r-1}{x}p^r(1-p)^x
$$

**Convolution:**  
- Sum of Geometrics

**Conjugate Prior:**  
- Beta

---

## Normal Distribution — `N(μ,σ^2)`

**Support:**  
- $ x \in \mathbb{R} $

**PDF:**  
$$
\frac{1}{\sqrt{2\pi\sigma^2}}e^{-(x-\mu)^2/(2\sigma^2)}
$$

**MGF:**  
$$
M_X(t)=\exp\left(\mu t+\frac{\sigma^2t^2}{2}\right)
$$

**Moments:**  
- All finite

**Exponential Family:**  
- Yes

**Convolution:**  
- Closed

**Conjugate Prior:**  
- Normal-Inverse-Gamma

---

## Poisson Distribution — `Pois(λ)`

**Parameters:**  
- Rate $ \lambda>0 $

**Support:**  
- $ x=0,1,2,\dots $

**PMF:**  
$$
P(X=x)=\frac{\lambda^x e^{-\lambda}}{x!}
$$

**Mean / Variance:**  
$$
\lambda
$$

**Exponential Family:**  
- Yes

**Minimal Complete Sufficient Statistic:**  
- $ \sum X_i $

**Conjugate Prior:**  
- Gamma

**Posterior:**  
- Gamma

---

## Uniform Distribution — `Unif(a,b)`

**Support:**  
- $ a \le x \le b $

**PDF:**  
$$
\frac{1}{b-a}
$$

**Mean / Variance:**  
$$
\frac{a+b}{2}, \quad \frac{(b-a)^2}{12}
$$

**Order Statistics:**  
- Closed form

**Minimal Sufficient Statistic:**  
- $ (\min X_i, \max X_i) $ (not complete)

---


