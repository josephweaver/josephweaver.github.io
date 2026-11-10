### Ordinary, Centered, and Whitened Attention

Let $X\in\mathbb R^{n\times d}$ contain one token per row. Define
$$
V=XW_V,\qquad M=W_QW_K^\top,
$$
where $W_Q,W_K\in\mathbb R^{d\times r}$. Attention is
$$
O=\operatorname{softmax}_{\mathrm{row}}
\left(\frac{QK^\top}{\sqrt r}\right)V.
$$

The central interpretation is that **feature-to-feature interactions determine token-to-token scores**:
$$
s_{ij}=x_i^\top Mx_j
=\sum_{a,b}M_{ab}x_{ia}x_{jb}.
$$
Each $M_{ab}$ weights the interaction between feature $a$ of the query token and feature $b$ of the source token.

#### Ordinary attention

With $Q=XW_Q$ and $K=XW_K$,
$$
O=\operatorname{softmax}_{\mathrm{row}}
\left(\frac{XMX^\top}{\sqrt r}\right)V.
$$

#### Formulation 1: Centered attention

Let $\mu\in\mathbb R^d$ be a reference mean and
$$
X_c=X-\mathbf1\mu^\top.
$$
Define
$$
Q=X_cW_Q,\qquad K=X_cW_K.
$$
Then
$$
O_c=\operatorname{softmax}_{\mathrm{row}}
\left(\frac{X_cMX_c^\top}{\sqrt r}\right)V.
$$

This compares deviations from the reference mean. Writing $x_i=\mu+\delta_i$, ordinary attention satisfies
$$
\alpha_{ij}
=\operatorname{softmax}_j
\left(
\frac{\delta_i^\top M\delta_j+\mu^\top M\delta_j}{\sqrt r}
\right),
$$
because the other terms are constant across keys and cancel in softmax.

Thus centering removes the shared key preference $\mu^\top M\delta_j$. Centering keys alone leaves the attention weights unchanged; centering queries changes them.

#### Formulation 2: Centered and whitened attention

Let $\Sigma$ be a positive-definite reference feature covariance, and define
$$
Z=X_c\Sigma^{-1/2},
$$
using the symmetric inverse square root. Set
$$
Q=ZW_Q,\qquad K=ZW_K.
$$
Then
$$
O_w=\operatorname{softmax}_{\mathrm{row}}
\left(
\frac{
X_c\Sigma^{-1/2}M\Sigma^{-1/2}X_c^\top
}{\sqrt r}
\right)V.
$$

Whitening adjusts for reference feature scales and correlations before learning the interactions. With $M=I$, the score is a Mahalanobis inner product. General $M$ permits asymmetric interactions and need not define a distance.

For numerical stability, an estimated covariance can be regularized:
$$
Z=X_c(\widehat\Sigma+\lambda I)^{-1/2},
\qquad \lambda>0.
$$

In all three formulations, $V=XW_V$ is unchanged to isolate the effect on matching.

#### Research question

When do mean and covariance structure provide useful information for attention, and when do they obscure the interactions we want to learn?

Fixed invertible whitening can be absorbed into the learned projections, preserving expressiveness while changing optimization and regularization. Input-dependent whitening generally cannot be absorbed into fixed projections. Input-dependent statistics must also respect causal masking when applicable.