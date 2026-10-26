---
title: PCA-Based Embedding and Response Model Formulation
date: 2026-05-30
project: concepts
status: draft
tags:
  - embeddings
  - pca
  - regression
  - representation-learning
repos:
  - https://github.com/josephweaver/josephweaver.github.io
---


# PCA-Based Embedding and Response Model Formulation

## Overview

The current formulation appears to align with the structure described in Section 5 of the manuscript. The workflow separates:

1. Learning an embedding map from auxiliary observations.
2. Learning a downstream response model using the embedding.
3. Updating the embedding distribution using new auxiliary observations and response information.

The setting can be interpreted as a probabilistic latent representation framework in which observed image-like data are projected into a lower-dimensional embedding space and then linked to a response model.

---

# Data Construction

Suppose we observe multiple images corresponding to the same underlying object/class, for example images of the digit 3.

Denote the collection of observations by

\[
e = \{e_1,e_2,e_3\}
\]

with partition

\[
e_1 = e_{1:J}
\]

\[
e_2 = e_{J+1:J+n}
\]

\[
e_3 = e_{J+n+1:J+n+m}
\]

where:

- \(e_1\) is used to estimate the embedding map.
- \(e_2\) is used to train the downstream response model.
- \(e_3\) is used for posterior updating/prediction.

This separation is important because it prevents information leakage between:

- embedding estimation,
- response model estimation,
- posterior updating.

---

# Estimating the Underlying Image Mean

Define the empirical mean image

\[
\bar e = \frac{1}{J+n+m}\sum_{i=1}^{J+n+m} e_i
\]

which serves as an estimator of the underlying latent image/template.

Similarly define the empirical covariance matrix

\[
\Sigma_e
\]

as the sample covariance in image/pixel space.

At this stage:

- \(\bar e\) lives in the original image space.
- \(\Sigma_e\) describes uncertainty/variation in the image space.

---

# PCA Embedding Construction

Using the training subset \(e_1\), construct a PCA decomposition.

Let the centered data matrix corresponding to \(e_1\) be denoted by

\[
E_1
\]

and compute

\[
E_1^\top E_1 = V\Lambda V^\top
\]

where:

- \(V\) contains eigenvectors/loadings,
- \(\Lambda\) contains eigenvalues.

Let

\[
V_k
\]

be the top \(k\) eigenvectors.

Define the embedding map

\[
f(e)=V_k^\top e
\]

or equivalently for matrix data,

\[
X_1 = E_1V_k.
\]

Thus the embedding representation is

\[
X = f(e).
\]

The embedding now lives in a lower-dimensional latent space.

---

# Response Model

Using the second block of observations \(e_2\), define

\[
X_2 = f(e_2)=V_k^\top e_2.
\]

Suppose a response variable \(Y_2\) is observed.

The downstream model is

\[
Y_2 = X_2\beta + \varepsilon
\]

or with intercept explicitly included,

\[
Y_2 = \alpha + X_2\beta + \varepsilon.
\]

If the design matrix includes a column of ones, the ordinary least squares estimator becomes

\[
\hat\beta = (X_2^\top X_2)^{-1}X_2^\top Y_2
\]

assuming \(X_2^\top X_2\) is invertible.

This creates a two-stage model:

1. Image space \(\rightarrow\) embedding space.
2. Embedding space \(\rightarrow\) response.

---

# Relation to Proposition 1 and Theorem 2

The paper's probabilistic framework appears to assume a latent distribution of the form

\[
X\mid E=e \sim N(\mu_X,\Sigma_X).
\]

The PCA construction above provides a mechanism for estimating this latent representation from observed auxiliary data.

Because PCA is linear,

\[
X = V_k^\top e
\]

implies approximately

\[
\mu_X = V_k^\top \bar e
\]

and

\[
\Sigma_X = V_k^\top \Sigma_e V_k.
\]

Thus:

- \(\bar e\) and \(\Sigma_e\) describe uncertainty in image space.
- \(\mu_X\) and \(\Sigma_X\) describe uncertainty in embedding space.

This embedding-space uncertainty is then propagated through the response model in Proposition 1 and Theorem 2.

---

# Conceptual Interpretation

The overall structure can be viewed as:

\[
\text{Observed image} \rightarrow \text{latent embedding} \rightarrow \text{response model}
\]

with uncertainty entering from:

1. Estimation uncertainty in the embedding.
2. Residual uncertainty in the response model.
3. Posterior updating using new observations.

The framework therefore resembles:

- latent variable models,
- probabilistic embeddings,
- state-space updating,
- and potentially Kalman-style recursive updating.

However, the important distinction is that the embedding map itself is estimated from auxiliary observations rather than assumed fixed.

---

# Suggested Clarification for the Paper

A useful clarification may be to distinguish:

1. The estimated embedding map

\[
\hat f(e)=V_k^\top e
\]

from

2. The probabilistic latent embedding model

\[
X\mid E=e.
\]

The first is an estimated deterministic transformation.

The second is the probabilistic object used in Proposition 1 and Theorem 2.

Keeping those conceptually separate may help the exposition significantly.

---

# Current Understanding of the Workflow

The current interpretation of Section 5 is:

1. Use \(e_1\) to estimate the PCA embedding map.
2. Use \(e_2\) to fit the downstream regression model.
3. Use \(e_3\) and new response information for posterior updating.
4. Propagate uncertainty from embedding space into predictive space.

Under this interpretation, the framework appears mathematically coherent.
