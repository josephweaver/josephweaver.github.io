---
title: Other Distribution
permalink: /probability/distributions/other/
section: distributions
layout: default
order: 80
---

# Other Common Distributions (Recognition Only)

This page collects distributions that appear **occasionally** in lectures and prelim problems, usually as **contrasts, counterexamples, or modeling alternatives**. You are expected to recognize them, not derive them.

---

## Cauchy Distribution

**Definition:**  
$$
X = \frac{Z_1}{Z_2},
\quad
Z_1,Z_2 \sim \mathcal{N}(0,1)
$$

**Key properties:**
- No mean, no variance
- Heavy tails
- Stable under addition
- No LLN, no CLT

**Why it appears:**  
Counterexample to moment-based arguments.

---

## Laplace (Double Exponential) Distribution

*(Also called the L1 version of the Normal)*

**PDF:**  
$$
f(x)=\frac{1}{2b}e^{-|x-\mu|/b}
$$

**Key properties:**
- Symmetric
- Sharper peak than Normal
- Heavier tails than Normal
- MGF exists

**Why it appears:**  
- LASSO and $ L^1 $ regularization
- Robust alternatives to Normal

---

## Logistic Distribution

**CDF:**  
$$
F(x)=\frac{1}{1+e^{-(x-\mu)/s}}
$$

**Key properties:**
- Symmetric
- Similar to Normal
- Slightly heavier tails

**Why it appears:**  
- Logistic regression
- Binary response models

---

## Weibull Distribution

**PDF:**  
$$
f(x)=\frac{k}{\lambda}
\left(\frac{x}{\lambda}\right)^{k-1}
e^{-(x/\lambda)^k}
$$

**Key properties:**
- Flexible hazard rate
- Includes Exponential as special case ($k=1$)

**Why it appears:**  
- Survival analysis
- Reliability modeling

---

## Point Mass / Degenerate Distribution

**Definition:**  
$$
\mathbb{P}(X=c)=1
$$

**Key properties:**
- Zero variance
- Used in mixtures
- Appears in conditioning arguments

**Why it appears:**  
- Conditional distributions
- Mixture models
- Edge cases in proofs

---

## Atomic + Continuous Mixtures

**Example:**  
$$
\mathbb{P}(X=0)=p,
\quad
X \mid X>0 \sim F
$$

**Why it appears:**  
- Zero-inflated models
- Spike-and-slab priors
- Model selection

---

## Summary Table

| Distribution | Core Role |
|-------------|----------|
| Cauchy | Counterexample |
| Laplace | Robust alternative |
| Logistic | Binary models |
| Weibull | Survival |
| Point mass | Conditioning |
| Mixtures | Sparsity |

---

## Exam Takeaways

- Recognize, don’t derive
- Used to break assumptions
- Often defined in the problem
- Know what *fails* (moments, CLT, etc.)


## Degenerate (Dirac) Distribution — $ \delta_c $

A degenerate distribution places all probability mass at a single point.

---

### Definition

$$
\mathbb{P}(X = c) = 1
$$

Equivalently, the probability measure is
$$
\delta_c(A) =
\begin{cases}
1, & c \in A \\
0, & c \notin A
\end{cases}
$$

---

### Properties

- Mean: $ c $
- Variance: $ 0 $
- Support: single point
- All moments exist

---

### Role in Probability

Used to describe:
- Limits of random variables
- Conditioning on events of probability 1
- Mixture models (spike-and-slab)
- Weak convergence to constants

---

### Exam Takeaways

- “Degenerate” = point mass
- Limit to a constant ⇒ Dirac measure
- Variance zero does **not** imply randomness
