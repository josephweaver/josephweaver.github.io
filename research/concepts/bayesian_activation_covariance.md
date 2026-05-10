# Bayesian View of Activation Patterns in ReLU Networks

## Motivation

In standard neural networks, the activation matrix $A = \mathbf{1}(Z > 0)$ is treated as a deterministic byproduct of parameters $W, b$.

However, this hides an important structure:

> The network behaves as a mixture of linear models indexed by activation patterns.

We instead treat $A$ as a **latent (Bayesian) variable**, allowing us to analyze the model as a probabilistic system.

---

## Generative Formulation

We define a latent-variable model:

$$
A \sim P(A \mid X, \theta)
$$

$$
Y \sim P(Y \mid X, A, \theta)
$$

For ReLU networks, we approximate:

$$
P(A \mid X, \theta) \approx \text{Bernoulli}(\sigma(Z))
$$

where:

$$
Z = XW^\top + b
$$

This yields:

> A mixture of linear models with input-dependent gating.

---

## Marginal Likelihood

The predictive distribution becomes:

$$
P(Y \mid X, \theta)
=
\sum_A P(Y \mid X, A, \theta) P(A \mid X, \theta)
$$

This smooths the hard partitioning induced by ReLU and gives a probabilistic interpretation of activation regions.

---

## Covariance Decomposition

We define conditional covariance:

$$
\Sigma_X^{(A)} = \operatorname{Cov}(X \mid A)
$$

Then:

$$
\operatorname{Cov}(X)
=
\mathbb{E}_A[\operatorname{Cov}(X \mid A)]
+
\operatorname{Cov}_A(\mathbb{E}[X \mid A])
$$

Interpretation:

- First term: within-region geometry  
- Second term: between-region structure  

---

## Gradient Structure

Let:

$$
G = \nabla_\theta \log P(Y \mid X, \theta)
$$

Then:

$$
G = \mathbb{E}_A[\nabla_\theta \log P(Y \mid X, A, \theta)]
$$

So gradients are expectations over latent activation regimes.

The covariance decomposes as:

$$
\operatorname{Cov}(G)
=
\mathbb{E}_A[\operatorname{Cov}(G \mid A)]
+
\operatorname{Cov}_A(\mathbb{E}[G \mid A])
$$

---

## Interpretation

- Neural networks implicitly average over activation regimes
- Optimization noise arises from:
  - data variability
  - switching between regimes

---

## Practical Approximations

### Soft gating

Replace hard activations:

$$
A = \mathbf{1}(Z > 0)
$$

with:

$$
p = \sigma(Z / \tau)
$$

where $\tau$ controls sharpness.

---

### Sampling activation patterns

$$
A \sim \text{Bernoulli}(p)
$$

```python
A_sample = (torch.rand_like(p) < p).float()
```

---

### Variational formulation

Learn an approximate posterior:

$$
q(A \mid X)
$$

Optimize:

$$
\mathbb{E}_{q(A \mid X)}[\log P(Y \mid X, A)]
-
\mathrm{KL}(q(A \mid X) \| P(A \mid X))
$$

---

## New Analytical Objects

Treat covariance as random:

$$
\Sigma_X(A)
$$

Study:

- $\mathbb{E}[\Sigma_X(A)]$$
- $\operatorname{Var}(\Sigma_X(A))$$
- eigenvector stability across $A$$

---

## Research Directions

### Stability of geometry

$$
\text{Compare eigenvectors of } \Sigma_X^{(A)} \text{ across } A
$$

---

### Information in gating

$$
I(A; X), \quad I(A; Y)
$$

---

### Gradient variance decomposition

$$
\operatorname{Var}(G)
=
\mathbb{E}_A[\operatorname{Var}(G \mid A)]
+
\operatorname{Var}_A(\mathbb{E}[G \mid A])
$$

---

## Conceptual Summary

Treating $A$ as a latent variable turns a neural network into:

- a mixture model over linear regimes  
- a stochastic system governing both geometry and optimization  

---

## One-line Insight

> ReLU networks can be understood as latent-variable models where activation patterns define a distribution over local linear geometries and optimization dynamics.
