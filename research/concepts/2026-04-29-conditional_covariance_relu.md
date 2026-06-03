# Conditional Covariance in ReLU Networks via Activation Fields

## Motivation

Standard covariance analysis in neural networks treats the data as if it flows through a *globally linear system*. However, ReLU networks are **piecewise linear**, where each linear regime is determined by a binary activation pattern.

This suggests that global covariance:
$$
\operatorname{Cov}(X)
$$
is a mixture over many distinct local geometries.

To resolve this, we introduce the **activation matrix** as a conditioning variable and define **conditional covariance structures** for both forward activations and gradients.

---

## Activation Matrix as a Random Field

Given a layer:
$$
Z = XW^\top + b, \quad A = \mathbf{1}(Z > 0)
$$

- $A \in \{0,1\}^{n \times m}$
- Each row $a_i$ defines a **ReLU region**
- The network induces a partition:
$$
X = \bigcup_{a \in \{0,1\}^m} X^{(a)}
$$

Interpretation:

> The activation matrix $A$ is a **learned random field** over the dataset that encodes the network’s piecewise-linear structure.

---

## Conditional Covariance (Forward Pass)

Define:
$$
\Sigma_X^{(a)} = \operatorname{Cov}(X \mid A = a), \quad
\mu_a = \mathbb{E}[X \mid A = a], \quad
p(a) = P(A = a)
$$

Then:
$$
\operatorname{Cov}(X)
=
\underbrace{\mathbb{E}[\operatorname{Cov}(X \mid A)]}_{\text{within-region}}
+
\underbrace{\operatorname{Cov}(\mathbb{E}[X \mid A])}_{\text{between-region}}
$$

---

## Conditional Covariance (Gradient Side)

Let:
$$
G_i = \nabla_\theta L(x_i)
$$

Define:
$$
\Sigma_G^{(a)} = \operatorname{Cov}(G \mid A = a), \quad
\mu_G^{(a)} = \mathbb{E}[G \mid A = a]
$$

Then:
$$
\operatorname{Cov}(G)
=
\mathbb{E}[\operatorname{Cov}(G \mid A)]
+
\operatorname{Cov}(\mathbb{E}[G \mid A])
$$

---

## Practical Algorithm

### Step 1: Compute activations

```python
Z = X @ W.T + b
A = (Z > 0).astype(int)
```

### Step 2: Compute per-sample gradients

```python
for x_i in batch:
    loss_i.backward(retain_graph=True)
    G_i = flatten_grads(model)
```

### Step 3: Group by activation pattern

```python
patterns = unique_rows(A)

for a in patterns:
    idx = np.all(A == a, axis=1)

    X_region = X[idx]
    G_region = G[idx]

    if len(X_region) >= k:
        Sigma_X_a = np.cov(X_region, rowvar=False)
        mu_X_a    = np.mean(X_region, axis=0)

    if len(G_region) >= k:
        Sigma_G_a = np.cov(G_region, rowvar=False)
        mu_G_a    = np.mean(G_region, axis=0)
```

---

## Conceptual Summary

A ReLU network induces:

- a **partition of input space** via $A$
- a **family of local linear models**
- a **distribution over covariances and gradients**

Standard methods collapse this structure.

This framework keeps it explicit:

> Treat $(X, A, G)$ as a joint random field and study conditional geometry.

---

## One-line Insight

> Neural networks are not a single model, but a **mixture of linear models indexed by activation patterns**, and covariance should respect that structure.
