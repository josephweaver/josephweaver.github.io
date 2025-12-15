# Pareto Distribution — \( \mathrm{Pareto}(x_m,\alpha) \)

The Pareto distribution is the canonical **heavy-tailed distribution**. It is used to illustrate **power-law behavior, tail dominance, failure of moments, and limits of classical theorems**.

---

## Definition

**Parameters:**  
- Scale (minimum) \( x_m > 0 \)  
- Shape (tail index) \( \alpha > 0 \)

**Support:**  
\[
x \ge x_m
\]

**PDF:**  
\[
f(x)
=
\frac{\alpha x_m^\alpha}{x^{\alpha+1}},
\quad x \ge x_m
\]

**CDF:**  
\[
F(x)
=
1-\left(\frac{x_m}{x}\right)^\alpha
\]

**Survival Function:**  
\[
\mathbb{P}(X>x)
=
\left(\frac{x_m}{x}\right)^\alpha
\]

---

## Interpretation

- Models **power-law tails**
- Large values are not exponentially suppressed
- Extremes dominate sums and averages

Classic examples:
- Wealth distributions
- File sizes
- Insurance losses
- Network degrees

---

## Moments and Tail Behavior

### Existence of Moments

For \( k>0 \),
\[
\mathbb{E}[X^k] < \infty
\quad \Longleftrightarrow \quad
\alpha > k
\]

### Mean
\[
\mathbb{E}[X]
=
\begin{cases}
\frac{\alpha x_m}{\alpha-1}, & \alpha>1 \\
\infty, & \alpha \le 1
\end{cases}
\]

### Variance
\[
\operatorname{Var}(X)
=
\begin{cases}
\frac{\alpha x_m^2}{(\alpha-1)^2(\alpha-2)}, & \alpha>2 \\
\infty, & \alpha \le 2
\end{cases}
\]

---

## Heavy-Tail Classification

- **Regularly varying tail**:
\[
\mathbb{P}(X>x)
=
x^{-\alpha} L(x)
\]
with slowly varying \( L(x) \)

- Pareto is the **prototype heavy-tailed distribution**

---

## Moment Generating Function

- **MGF does not exist** for any \( t>0 \)

This is a key contrast with:
- Exponential
- Gamma
- Normal

---

## Relationship to Other Distributions

### Pareto vs Exponential

| Feature | Pareto | Exponential |
|------|------|------|
| Tail | Power law | Exponential |
| MGF | Does not exist | Exists |
| Memoryless | No | Yes |
| Extreme events | Dominant | Rare |

---

### Connection to Uniform

If
\[
U \sim \mathrm{Unif}(0,1),
\]
then
\[
X = x_m U^{-1/\alpha}
\sim
\mathrm{Pareto}(x_m,\alpha)
\]

(Used in simulation.)

---

### Pareto Type I and II

- Type I: standard Pareto (this page)
- Type II (Lomax): shifted version

---

## Transformations

### Log Transformation

If \( X \sim \mathrm{Pareto}(x_m,\alpha) \), then
\[
\log X
\sim
\mathrm{Exp}(\alpha)
\quad \text{(shifted by } \log x_m \text{)}
\]

This explains why Pareto appears in **log-scale arguments**.

---

## Sums and Limits

- Sums of Pareto variables:
  - Often dominated by the maximum
  - Classical CLT may fail

- Stable limits may replace Normal limits when \( \alpha<2 \)

---

## Likelihood and Estimation

### Likelihood
\[
\ell(\alpha)
=
n\log\alpha
+
\alpha n\log x_m
-
(\alpha+1)\sum\log x_i
\]

### MLE (known \( x_m \))
\[
\hat{\alpha}
=
\frac{n}{\sum \log(x_i/x_m)}
\]

---

## Bayesian Notes

- Conjugate priors do not have a clean closed form
- Often treated with improper or hierarchical priors

---

## Why Professors Love Pareto

Pareto is used to show:
- Failure of LLN assumptions
- Failure of variance-based arguments
- Importance of tail conditions
- Sharp contrast with exponential families

It is the **go-to counterexample distribution**.

---

## Key Theorems and Facts (Prelim-Relevant)

- **Power-law tail**
- **Finite moments depend on \( \alpha \)**
- **MGF does not exist**
- **Extremes dominate sums**
- **Log transform gives Exponential**

---

## Exam Takeaways

- Heavy tail ⇒ think Pareto
- Moments exist only above thresholds
- CLT may fail
- Compare against Exponential
- Used as a counterexample, not a model
