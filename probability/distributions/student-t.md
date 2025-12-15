# Student’s t Distribution — $ t_\nu $

The Student’s t distribution arises as a **ratio of a Normal variable and the square root of an independent Chi-square variable**. It is the fundamental distribution for **mean inference with unknown variance** and a canonical example of a **pivot**.

---

## Definition

**Degrees of freedom:**  
- $ \nu \in \mathbb{N} $

**Support:**  
$$
x \in \mathbb{R}
$$

**PDF:**  
$$
f(x)
=
\frac{\Gamma\!\left(\frac{\nu+1}{2}\right)}
{\sqrt{\nu\pi}\,\Gamma\!\left(\frac{\nu}{2}\right)}
\left(1+\frac{x^2}{\nu}\right)^{-(\nu+1)/2}
$$

---

## Construction from Normal and Chi-square

Let
$$
Z \sim \mathcal{N}(0,1),
\quad
U \sim \chi^2_\nu,
\quad
Z \perp U.
$$

Then
$$
T
=
\frac{Z}{\sqrt{U/\nu}}
\sim
t_\nu
$$

This representation is **the definition** used in proofs.

---

## Relationship to Other Distributions

### Connection to Chi-square
- Denominator involves $ \chi^2_\nu $
- Degrees of freedom come from variance estimation

---

### Connection to Normal

$$
t_\nu \Rightarrow \mathcal{N}(0,1)
\quad \text{as } \nu \to \infty
$$

Heavier tails for small $ \nu $.

---

## Moments

- Mean: $ 0 $ for $ \nu > 1 $
- Variance:
$$
\operatorname{Var}(T)
=
\frac{\nu}{\nu-2},
\quad \nu>2
$$

Higher moments exist only for sufficiently large $ \nu $.

---

## Symmetry

$$
T \overset{d}{=} -T
$$

All odd moments (when defined) are zero.

---

## Pivotal Quantity (Key Use)

If
$$
X_1,\dots,X_n \stackrel{iid}{\sim} \mathcal{N}(\mu,\sigma^2),
$$
then
$$
\frac{\bar{X}-\mu}{S/\sqrt{n}}
\sim
t_{n-1}
$$

This is a **pivot**, free of unknown parameters.

---

## Role in Inference

Used for:
- Confidence intervals for $ \mu $
- Hypothesis testing when variance is unknown
- Regression coefficient inference

---

## Likelihood Perspective

The t distribution arises from **integrating out the variance** in a Normal–Inverse-Gamma model.

Interpretation:
- t is a **scale mixture of Normals**
- Explains heavy tails

---

## Tail Behavior

$$
\mathbb{P}(|T|>x)
\sim
C x^{-\nu}
\quad \text{as } x \to \infty
$$

Heavier tails than Normal.

---

## Multivariate Extension (Recognition Only)

- Multivariate t arises from Normal with random scale
- Used in robust modeling

(No formulas required for prelims.)

---

## Key Theorems and Facts (Prelim-Relevant)

- **Ratio of Normal and Chi-square**
- **Pivot for mean with unknown variance**
- **Converges to Normal**
- **Heavy tails**
- **Scale-mixture interpretation**

---

## Exam Takeaways

- Unknown variance ⇒ t
- Degrees of freedom = sample size − 1
- Think “Normal divided by Chi-square”
- Heavier tails protect against variance uncertainty
- Central object for classical inference
