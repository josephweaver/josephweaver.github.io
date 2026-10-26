---
title: NN-Mitosis
project: nn-mitosis
status: draft
summary: Adaptive neural-network width through covariance and backpropagation-based Fisher diagnostics for splitting and merging nodes.
tags:
  - neural-networks
  - adaptive-models
  - covariance
  - fisher-information
  - vc-dimension
---

# NN-Mitosis

NN-Mitosis explores using forward-pass covariance and Fisher information estimated from backpropagated per-sample gradients to assess whether neural-network nodes are overloaded or underloaded. Overloaded nodes could split to specialize; underloaded or redundant nodes could be candidates for merging or pruning. VC dimension is a complementary consideration for choosing hidden-layer size and controlling model capacity.

The current notes establish the split/merge concept and supporting covariance analysis. The precise Fisher estimator, node-load criteria, parameter transformations for splitting and merging, and VC-based sizing rule remain to be specified and tested.

## Supporting Notes

- [Adaptive Latent Topology Learning via Node Mitosis and Merge](2026-05-30-adaptive_latent_topology_notes.md): the main concept draft, developed around Gaussian latent representations.
- [Conditional Covariance in ReLU Networks](2026-04-29-conditional_covariance_relu.md): forward and gradient covariance conditioned on activation patterns.
- [Bayesian View of Activation Patterns](2026-04-29-bayesian_activation_covariance.md): probabilistic activation regimes and gradient structure.
- [VC Dimension and Learning Theory](vc.md): background notes, including a neural-network bound involving hidden-layer neuron count.

These are working reference copies from `research/concepts/` and the root `vc.md`; their original bodies are preserved. They provide ingredients for this project, rather than a completed implementation of the combined method.

Related project: [NN-Geometric-Initialization](../nn-geometric-initialization/README.md), which explores choosing initial weights from data geometry.
