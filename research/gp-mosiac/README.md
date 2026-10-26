# Learning Spatial Covariance Geometry from Satellite Time Series

**Joseph Weaver · September 30, 2026**  
*Research concept for discussion; implementation and empirical validation pending.*

## Motivation

Nearby pixels need not represent related surfaces: a crop field and a parking lot may share a boundary while exhibiting very different temporal behavior. Conversely, pixels farther apart within one field may be strongly related. The proposal is to infer this geometry from repeated satellite observations, then use the resulting regions to guide spatial prediction and cloud-gap reconstruction.

**Central question:** Can spatial changes in temporal cross-pixel covariance identify meaningful landscape regions and improve Gaussian process (GP) inference?

## Proposed construction

Let $I_t(s)$ denote an observed band or derived index at pixel $s=(x,y)$ and date $t$. Within a computational tile $B$, vectorize each image:

$$
\mathbf{x}_t=\operatorname{vec}\{I_t(s):s\in B\},\qquad
X=[\mathbf{x}_1,\ldots,\mathbf{x}_T]^\top\in\mathbb{R}^{T\times P}.
$$

Pixels are variables and dates supply repeated observations. Conceptually, estimate the cross-pixel covariance matrix $\widehat{\Sigma}_B$; computationally, estimate only selected local relationships.

For each spatial displacement $\delta$, construct a geographically indexed map:

$$
C_\delta(s)=\widehat{\operatorname{Cov}}_t
\bigl(I_t(s),I_t(s+\delta)\bigr),
\qquad
R_\delta(s)=\widehat{\operatorname{Corr}}_t
\bigl(I_t(s),I_t(s+\delta)\bigr).
$$

Covariance retains variation magnitude; correlation provides a complementary measure of temporal shape. Horizontal, vertical, and selected longer-lag maps give a local dependence signature at each location.

The proposed workflow is:

1. **Estimate local dependence** from jointly observed dates, retaining overlap counts and uncertainty.
2. **Apply spatial differences or convolution filters** to the local covariance/correlation maps to locate abrupt changes in dependence.
3. **Extract contiguous regions** by scanning or growing components of a spatial graph, using weak links and detected discontinuities as boundary evidence.
4. **Reconcile overlapping tiles** by matching region membership in their shared areas.

The convolution operates on geographically indexed maps, rather than the arbitrary row/column arrangement of a vectorized covariance matrix. Low correlation across an edge and a large spatial derivative of correlation are different signals; their usefulness should be compared experimentally.

Processing windows could span 1–5 km, with overlap to reduce border artifacts. These windows are computational units, not prescribed object boundaries: roads, rivers, and other elongated regions may continue across many windows.

## From regions to GP prediction

The inferred partition would guide a nonstationary spatial or spatiotemporal GP, allowing distinct local covariance structures while retaining shared dependence where supported. One valid construction for a fixed partition is

$$
K((s,t),(s',t'))=
K_0((s,t),(s',t'))+
\sum_k
\mathbf{1}\{s,s'\in R_k\}
K_k((s,t),(s',t')),
$$

where $K_0$ and each $K_k$ are positive semidefinite kernels. This separates region discovery from construction of a valid GP covariance.

A first application is predicting cloud-obscured Sentinel-2 observations with predictive uncertainty. Sentinel-1, climate, soil, and terrain could subsequently inform both uncertain boundaries and reconstruction.

## Initial experiment and statistical questions

Start with one tile and one optical index: map neighboring temporal correlations, their spatial differences, and the extracted regions. Compare against ordinary temporal-distance segmentation and GP models with fixed spatial blocks, then evaluate reconstruction using held-out clear observations and realistic cloud-shaped masks.

Key questions concern seasonal trends, temporal autocorrelation, unequal observation overlap, and whether pairwise similarity creates chains joining otherwise dissimilar regions. Temporal covariance describes variation over the sampled period; interpreting it as residual spatial covariance requires an explicit mean/trend model. Validation masks must be excluded from both region estimation and GP fitting.

**Candidate contribution:** the explicit combination of local temporal covariance estimation, spatial differentiation of dependence maps, contiguous region extraction, and region-informed GP inference—not partitioned GPs or time-series segmentation alone. Novelty remains to be established through a broader literature comparison and empirical results.

## Future direction: contiguous and noncontiguous regions

Local graph edges naturally yield contiguous regions. A second stage could connect separated regions with compatible temporal dependence signatures, allowing disconnected fields or habitat patches to share parameters or latent processes. Shared temporal behavior should not automatically imply strong residual covariance; the model could distinguish shared dynamics from local spatial dependence and propagate uncertainty in region membership into prediction.

## Possible related work

| Work | Similarity and distinction |
| --- | --- |
| [Weber, Petitjean & Gançarski (2012), *Towards efficient satellite image time series analysis*](https://doi.org/10.1109/IGARSS.2012.6350401) | Combines spatiotemporal quasi-flat-zone segmentation with dynamic time warping, whereas this proposal explicitly analyzes spatial differences in temporal covariance maps. |
| [Pope et al., *Gaussian process modeling of heterogeneity and discontinuities using Voronoi tessellations*](https://arxiv.org/abs/1802.05530) | Learns GP regions, including nonconvex and disconnected regions, whereas this proposal estimates regions first from local cross-pixel temporal dependence. |
| [Pipia et al. (2019), *Fusing Optical and SAR time series for LAI gap filling with multioutput Gaussian processes*](https://doi.org/10.1016/j.rse.2019.111452) | Uses Sentinel-1/Sentinel-2 temporal relationships for GP gap filling, whereas this proposal adds a preceding stage that discovers spatial regions from pixel dependence. |


