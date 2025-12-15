# F Distribution — $ F_{\nu_1,\nu_2} $

The F distribution arises as a **ratio of two independent Chi-square variables scaled by their degrees of freedom**. It is the central distribution for **variance ratios, ANOVA, and likelihood ratio tests** in linear models.

---

## Definition

**Degrees of freedom:**  
- Numerator: $ \nu_1 \in \mathbb{N} $  
- Denominator: $ \nu_2 \in \mathbb{N} $

**Support:**  
$$
x \ge 0
$$

**PDF:**  
$$
f(x)
=
\frac{1}{B(\nu_1/2,\nu_2/2)}
\left(\frac{\nu_1}{\nu_2}\right)^{\nu_1/2}
\frac{x^{\nu_1/2-1}}
{\left(1+\frac{\nu_1}{\nu_2}x\right)^{(\nu_1+\nu_2)/2}}
$$

---

## Construction from Chi-square

Let
$$
U_1 \sim \chi^2_{\nu_1},
\quad
U_2 \sim \chi^2_{\nu_2},
\quad
U_1 \perp U_2.
$$

Then
$$
F
=
\frac{(U_1/\nu_1)}{(U_2/\nu_2)}
\sim
F_{\nu_1,\nu_2}
$$

This representation is the **definition used in proofs**.

---

## Relationship to Other Distributions

### Connection to Chi-square
- Ratio of scaled Chi-square variables
- Degrees of freedom come from independent quadratic forms

---

### Connection to t Distribution

If
$$
T \sim t_\nu,
$$
then
$$
T^2 \sim F_{1,\nu}
$$

---

### Connection to Beta

If
$$
X \sim F_{\nu_1,\nu_2},
$$
then
$$
\frac{\nu_1 X}{\nu_1 X + \nu_2}
\sim
\mathrm{Beta}\!\left(\frac{\nu_1}{2},\frac{\nu_2}{2}\right)
$$

---

## Moments

- Mean:
$$
\mathbb{E}[X]
=
\frac{\nu_2}{\nu_2-2},
\quad \nu_2>2
$$

- Variance:
$$
\operatorname{Var}(X)
=
\frac{2\nu_2^2(\nu_1+\nu_2-2)}
{\nu_1(\nu_2-2)^2(\nu_2-4)},
\quad \nu_2>4
$$

Higher moments exist only when degrees of freedom are sufficiently large.

---

## Symmetry Property

$$
X \sim F_{\nu_1,\nu_2}
\quad \Longrightarrow \quad
\frac{1}{X} \sim F_{\nu_2,\nu_1}
$$

---

## Pivotal Quantity (Key Use)

If
$$
S_1^2, S_2^2
$$
are independent sample variances from Normal populations, then
$$
\frac{S_1^2/\sigma_1^2}{S_2^2/\sigma_2^2}
\sim
F_{n_1-1,n_2-1}
$$

This is a **pivot** for comparing variances.

---

## Role in Classical Inference

Used for:
- ANOVA
- Testing equality of variances
- Regression model comparison
- Likelihood ratio tests in linear models

---

## Likelihood Ratio Tests

In many regular parametric models,
$$
-2\log\Lambda
\Rightarrow
\chi^2_k
\quad \text{or} \quad
F
$$
depending on normalization.

In linear models, LRTs reduce exactly to F tests.

---

## Tail Behavior

- Right-skewed
- Heavy tails when degrees of freedom are small
- Concentrates near 1 as $ \nu_1,\nu_2 \to \infty $

---

## Multivariate Interpretation (Recognition Only)

- Ratio of independent quadratic forms
- Orthogonal projections in linear regression

(No formulas required for prelims.)

---

## Key Theorems and Facts (Prelim-Relevant)

- **Ratio of Chi-square variables**
- **Square of t is F**
- **Variance-ratio pivot**
- **ANOVA and regression tests**
- **Reciprocal symmetry**

---

## Exam Takeaways

- Ratio of variances ⇒ F
- Degrees of freedom come from sample sizes
- $ t^2 $ gives F
- Heavy tails for small df
- Central to linear-model inference
