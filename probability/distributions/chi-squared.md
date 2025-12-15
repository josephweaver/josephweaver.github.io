# Chi-Square Distribution — \( \chi^2_\nu \)

The Chi-square distribution arises from **sums of squares of standard Normal variables** and plays a central role in **variance inference, pivots, and likelihood ratio tests**.

---

## Definition

**Degrees of freedom:**  
- \( \nu \in \mathbb{N} \)

**Support:**  
\[
x \ge 0
\]

**PDF:**  
\[
f(x)
=
\frac{1}{2^{\nu/2}\Gamma(\nu/2)}
x^{\nu/2-1}e^{-x/2}
\]

---

## Relationship to Other Distributions

### Connection to Normal

If
\[
Z_1,\dots,Z_\nu \stackrel{iid}{\sim} \mathcal{N}(0,1),
\]
then
\[
\sum_{i=1}^\nu Z_i^2
\sim
\chi^2_\nu
\]

---

### Connection to Gamma

\[
\chi^2_\nu
\equiv
\mathrm{Gamma}\!\left(
\frac{\nu}{2},\;
\frac{1}{2}
\right)
\]

(All Gamma properties apply.)

---

## Moment Generating Function (MGF)

\[
M_X(t)
=
(1-2t)^{-\nu/2},
\quad t<\tfrac12
\]

---

## Moments

### Mean and Variance
\[
\mathbb{E}[X]=\nu,
\quad
\operatorname{Var}(X)=2\nu
\]

---

## Additivity

If
\[
X_i \sim \chi^2_{\nu_i},
\quad X_i \perp X_j,
\]
then
\[
\sum_i X_i \sim \chi^2_{\sum_i \nu_i}
\]

---

## Quadratic Forms in Normals

If
\[
X \sim \mathcal{N}_n(0,I),
\]
and \( A \) is a symmetric idempotent matrix with rank \( r \), then
\[
X^\top A X \sim \chi^2_r
\]

Used in:
- ANOVA
- Projection arguments
- Regression theory

---

## Sample Variance

If
\[
X_1,\dots,X_n \stackrel{iid}{\sim} \mathcal{N}(\mu,\sigma^2),
\]
then
\[
\frac{(n-1)S^2}{\sigma^2}
\sim
\chi^2_{n-1}
\]

This is a **pivot**.

---

## Role in Classical Inference

- Variance tests
- Likelihood ratio tests
- Building \( t \) and \( F \) statistics

---

## Likelihood Ratio Test (LRT) Limit

Under regularity conditions,
\[
-2\log\Lambda
\Rightarrow
\chi^2_k
\]
(Wilks’ Theorem)

---

## Key Theorems and Facts (Prelim-Relevant)

- **Sum of squared standard Normals**
- **Gamma equivalence**
- **Additivity of degrees of freedom**
- **Quadratic forms**
- **Variance pivots**

---

## Exam Takeaways

- Squares of Normals ⇒ Chi-square
- Degrees of freedom = dimension or rank
- Additivity simplifies sums
- Central object for variance inference
- Think “quadratic form”
