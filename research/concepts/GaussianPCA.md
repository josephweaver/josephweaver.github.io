---

title: "Scale-Aware Uncertain PCA (Toy Idea)"
date: 2026-04-17
categories: [statistics, pca, research-notes]
---------------------------------------------

## Core Idea

Instead of treating each matrix entry as a fixed scalar (e.g., 32-bit float), represent each entry as a **scale-aware Gaussian random variable**:

$$
X_{ij} \sim \mathcal{N}(\mu_{ij}, \sigma_{ij}^2)
$$

where:

* $\mu_{ij}$ captures the **coarse magnitude** (e.g., leading digit × power of 10)
* $\sigma_{ij}$ captures **precision / uncertainty**, possibly tied to scale

Example intuition:

$$
201{,}983.93922 \approx 2 \times 10^5 \pm 10^4
$$

This reframes:

* “false precision” → noise
* “important digits” → signal

---

## Matrix Model

We model the observed matrix as:

$$
\mathbf{X} = \mathbf{M} + \mathbf{E}
$$

* $\mathbf{M}$ = mean (coarse structure)
* $\mathbf{E}$ = noise, with entrywise variance

In the simplest toy:

$$
\varepsilon_{ij} \sim \mathcal{N}(0, \sigma_{ij}^2)
$$

---

## PCA Interpretation

### Step 1: Fix a direction

Let $v \in \mathbb{R}^p$ be a unit vector (candidate principal direction).

Then for each row $x_i$:

$$
v^\top x_i \sim \mathcal{N}(v^\top \mu_i,; v^\top \Sigma_i v)
$$

---

### Step 2: Squared projections

Consider:

$$
\frac{(v^\top x_i)^2}{v^\top \Sigma_i v}
$$

This follows a **non-central chi-squared distribution**:

$$
\chi^2_1(\lambda_i), \quad \lambda_i = \frac{(v^\top \mu_i)^2}{v^\top \Sigma_i v}
$$

---

### Step 3: Summing over observations

$$
\sum_i \frac{(v^\top x_i)^2}{v^\top \Sigma_i v}
$$

is a **sum of independent non-central chi-squared variables**.

---

## Interpretation

This gives a clean decomposition:

* Mean structure → drives **noncentrality**
* Noise / precision → scales **variance**
* “Important directions” → maximize signal-to-noise ratio

So PCA can be reinterpreted as:

> Finding directions $v$ that maximize non-centrality relative to uncertainty.

---

## Key Insight

**Precision, attention, and dimension are the same object in different languages:**

* Small eigenvalues → false precision
* Large eigenvalues → real structure
* Attention → learned importance weighting
* $\sigma_{ij}$ → local precision allocation

---

## Toy Simulation (Python)

```python
import numpy as np
from numpy.linalg import eigh

np.random.seed(7)

# Mean matrix (coarse structure)
M = np.array([
    [200000.0, 190000.0],
    [210000.0, 205000.0],
    [195000.0, 198000.0],
    [205000.0, 202000.0],
    [198000.0, 200000.0],
    [202000.0, 201000.0],
])

# Scale-aware uncertainty (toy)
S = np.full_like(M, 10000.0)

# Top direction from mean
G = M.T @ M
evals, evecs = eigh(G)
v = evecs[:, np.argmax(evals)]
v = v / np.linalg.norm(v)

# Row-level Gaussian structure
row_means = M @ v
row_vars = np.sum((S**2) * (v[None, :]**2), axis=1)

# Noncentrality parameters
lambdas = row_means**2 / row_vars

# Monte Carlo
B = 1000
vals = []

for _ in range(B):
    X = M + np.random.normal(size=M.shape) * S
    scores = X @ v
    vals.append(np.sum(scores**2 / row_vars))

print("Empirical mean:", np.mean(vals))
print("Theoretical mean:", np.sum(1 + lambdas))
```

---

## What This Is (Conceptually)

This is **not standard PCA**. It is closer to:

* Probabilistic PCA (PPCA)
* Factor analysis
* Heteroscedastic noise models
* Bayesian matrix factorization

But with a key twist:

> Precision is **scale-aware and possibly learned**, not fixed.

---

## What This Is Not

* Not kernel smoothing
* Not simple digit-level attention
* Not just compression

It is:

> A probabilistic reinterpretation of numerical precision inside linear algebra.

---

## Future Directions / Questions

### 1. Scale-aware variance modeling

Replace ad hoc $\sigma_{ij}$ with:

$$
\sigma_{ij} = c \cdot 10^{m_{ij}-k}
$$

or learned:

$$
\sigma_{ij} = f_\theta(x_{ij}, \text{context})
$$

---

### 2. Weighted / heteroscedastic PCA

Standard PCA assumes:

$$
\Sigma = \sigma^2 I
$$

Instead:

$$
\Sigma_i = \text{diag}(\sigma_{i1}^2, \dots, \sigma_{ip}^2)
$$

Investigate:

* weighted PCA
* generalized eigenvalue problems

---

### 3. Attention as precision allocator

Replace hand-designed $\sigma_{ij}$ with:

* neural network
* attention mechanism

Goal:

* learn which digits / scales matter
* discard false precision automatically

---

### 4. Local intrinsic dimension

Estimate:

$$
\text{dim}(x) \approx \text{rank}(\mathrm{Cov}(X \mid x))
$$

Connect to:

* manifold learning
* adaptive rank models

---

### 5. Spectral stability under quantization

Test:

* log-scale transforms
* coarse binning
* low-bit representations

Measure:

* eigenvector deviation
* spectral distortion

---

### 6. Link to information theory

Interpret:

* $\sigma_{ij}$ ↔ noise level ↔ bits required
* PCA ↔ rate–distortion tradeoff

---

### 7. Random matrix perspective

If:

$$
X_{ij} \sim \mathcal{N}(\mu_{ij}, \sigma_{ij}^2)
$$

then:

* $X^\top X$ ~ (non-central) Wishart-like
* eigenvalues follow nontrivial distributions

Study:

* stability of top eigenspace
* effect of heteroscedastic noise

---

## Working Hypothesis

> Real-world numerical data has **lower intrinsic dimension than its floating-point representation**, and this can be exposed by modeling precision explicitly rather than treating all digits equally.

---

## Next Step

* Implement heteroscedastic PCA (weighted)
* Compare:

  * raw PCA
  * PCA on mean
  * uncertainty-aware PCA
* Evaluate:

  * eigenvector stability
  * compression vs accuracy tradeoff

---
