Today I studied the basics of Kalman filtering.

### Kalman filtering

Kalman filtering recursively estimates a hidden state from noisy observations, tracking both its estimated value and uncertainty.

The linear state-space model is

$$
X_k=A_kX_{k-1}+W_k,
\qquad
Y_k=H_kX_k+V_k,
$$

where $A_k$ describes state evolution and $H_k$ maps the state to observations. Assume

$$
X_0\sim N(m_0,P_0),\qquad
W_k\sim N(0,Q_k),\qquad
V_k\sim N(0,R_k),
$$

with the initial state and all noise terms mutually independent.

Let $\mathcal F_k=\sigma(Y_1,\ldots,Y_k)$ denote the information available through time $k$. The filter computes

$$
m_k=\mathbb E[X_k\mid\mathcal F_k],
\qquad
P_k=\operatorname{Cov}(X_k\mid\mathcal F_k).
$$

**Predict** the current state using the previous estimate:

$$
m_k^-=A_km_{k-1},
\qquad
P_k^-=A_kP_{k-1}A_k^\top+Q_k.
$$

**Update** using the new observation:

$$
K_k=P_k^-H_k^\top
(H_kP_k^-H_k^\top+R_k)^{-1},
$$

$$
m_k=m_k^-+K_k(Y_k-H_km_k^-),
\qquad
P_k=(I-K_kH_k)P_k^-.
$$

The Kalman gain $K_k$ weights the new evidence according to uncertainty. For a scalar state observed directly,

$$
m_k=(1-K_k)m_k^-+K_kY_k,
\qquad
K_k=\frac{P_k^-}{P_k^-+R_k},
$$

which has the form of a credibility-weighted average.

Under Gaussian assumptions, these are exact conditional moments. With suitable second-moment and uncorrelated-noise assumptions, the recursion gives the best affine predictor even without Gaussianity.

The computational advantage is that the previous mean and covariance summarize the observation history needed for the next update. Unknown model parameters can be estimated, for example by maximum likelihood or EM, while $P_k$ is propagated recursively conditional on those parameters.

## Probability Perspective

Under the Gaussian assumptions above, The filtered estimate $m_k=\mathbb E[X_k\mid\mathcal F_k]$ is adapted to $(\mathcal F_k)$ and satisfies

$$
\mathbb E[m_k\mid\mathcal F_{k-1}]=A_km_{k-1}.
$$

Thus $m_k$ is a martingale when $A_k=I$. More generally, the innovations $Y_k-H_kA_km_{k-1}$ form a martingale difference sequence—the new observations' unpredictable components.


## Transformer representations of satellite time series

I also explored using a transformer to learn representations of satellite observations, with field-boundary detection as an initial application and credibility updates as a possible extension.

For location $s=(x,y)$, let
$$
E_s=\{(t_j,e_{s,t_j}):j=1,\ldots,n_s\},
\qquad
e_{s,t_j}=(\mathrm{VV}_{s,t_j},\mathrm{VH}_{s,t_j}),
$$
where $t_j$ is the actual acquisition datetime. Additional optical or weather measurements could eventually be included.

The initial goal is to learn
$$
X_s=\phi_\theta(E_s)\in\mathbb R^d,
$$
a compact representation of the pixel's radar history. The representation should preserve temporal behavior that helps distinguish neighboring pixels.

### Learning the initial representation

A starting architecture is a single-head transformer encoder trained through masked reconstruction.

For each training example, hide selected observed acquisitions and encode the remaining history:
$$
X_s^{\mathrm{visible}}
=
\phi_\theta(E_s^{\mathrm{visible}}).
$$

A decoder uses this representation and a query date to predict the withheld VV and VH measurements:
$$
\widehat e_{s,t}
=
g_\psi(X_s^{\mathrm{visible}},t).
$$

The encoder and decoder are trained jointly to minimize reconstruction error on deliberately hidden observations. Naturally missing measurements provide no reconstruction targets.

This is a transformer used as the encoder of a masked autoencoder. Hiding entire acquisitions or blocks of dates encourages the model to learn temporal relationships.

Acquisition time should be encoded using actual dates so that irregular gaps are represented. A common calendar anchor across years preserves differences in seasonal timing.

### Spatial neighborhoods and field boundaries

Initially, neighboring pixels can be encoded separately:
$$
X_s=\phi_\theta(E_s),
\qquad
X_{s'}=\phi_\theta(E_{s'}).
$$

Known within-field and across-boundary pairs can then test whether the representations preserve useful distinctions. Euclidean distance is a simple exploratory score, although reconstruction training alone does not guarantee meaningful embedding distances.

A spatial extension would encode a neighborhood:
$$
X_s=
\phi_\theta\!\left(
\{E_u:u\in N(s)\}
\right),
$$
where $N(s)$ might be a $3\times3$ or $5\times5$ window and $X_s$ represents its center pixel.

Relative spatial coordinates identify the center and surrounding pixels. Masking center-pixel observations while retaining neighboring observations could encourage the model to learn which neighbors provide useful information. Boundary awareness may emerge when pixels across a boundary are less informative for reconstruction, but this requires empirical evaluation.

Spatial and temporal sine/cosine positional features are possible extensions. Rotation invariance and equivariance are further research questions.

### Credibility updates across years

One proposed experiment is to initialize a pixel representation using 2025 observations and update it when 2026 observations become available.

To formulate this probabilistically, distinguish a latent quantity $L_s$ from its encoder-based estimates:
$$
Z_s^{2025}=\phi_\theta(E_s^{2025}),
\qquad
Z_s^{2026}=\phi_\theta(E_s^{2026}).
$$

For example, suppose the 2025 information supplies
$$
L_s\mid E_s^{2025}\sim N(m_s,P_s),
$$
and the new embedding satisfies the working observation model
$$
Z_s^{2026}=HL_s+\varepsilon_s,
\qquad
\varepsilon_s\sim N(0,R_s),
$$
with error independent of the latent state and prior information. Then
$$
m_s^+
=
m_s+
P_sH^\top(HP_sH^\top+R_s)^{-1}
(Z_s^{2026}-Hm_s).
$$

This supplies a concrete connection between credibility and Kalman-style updates. Establishing the observation model and estimating its covariances are part of the research problem.

A shared encoder provides a common coordinate system across years. Genuine changes in crops or management must also be modeled if the latent quantity evolves. Masking experiments may help measure sensitivity to missing acquisitions, but require validation before interpreting that variability as latent-state estimation error.

### Papers for further exploration

- **Tseng et al., “Lightweight, Pre-trained Transformers for Remote Sensing Timeseries” (Presto, 2023 preprint).** Relevant to learning pixel-level temporal representations and using them as downstream features.  
  https://arxiv.org/abs/2304.14065

- **Cong et al., “SatMAE: Pre-training Transformers for Temporal and Multi-Spectral Satellite Imagery” (NeurIPS 2022).** Relevant to masked reconstruction and temporal/spectral encoding.  
  https://arxiv.org/abs/2207.08051

- **Sainte Fare Garnot et al., “Satellite Image Time Series Classification with Pixel-Set Encoders and Temporal Self-Attention” (CVPR 2020).** Relevant to combining spatial observations with temporal attention for agricultural classification.  
  https://arxiv.org/abs/1911.07757

- **Sainte Fare Garnot and Landrieu, “Panoptic Segmentation of Satellite Image Time Series with Convolutional Temporal Attention Networks” (ICCV 2021).** Introduces U-TAE and PASTIS, providing a connection to delineating individual agricultural parcels.  
  https://openaccess.thecvf.com/content/ICCV2021/html/Garnot_Panoptic_Segmentation_of_Satellite_Image_Time_Series_With_Convolutional_Temporal_ICCV_2021_paper.html

- **Goel and Bartlett, “Can a Transformer Represent a Kalman Filter?” (2024).** Studies whether a transformer can approximate Kalman filtering under specified dynamical-system assumptions.  
  https://proceedings.mlr.press/v242/goel24a.html

- **Shaj et al., “Kalman Linear Attention” (ICML 2026).** Explores sequence-model layers built around Bayesian filtering with explicit state uncertainty.  
  https://proceedings.mlr.press/v306/shaj26a.html

- **Long et al., “Precision Tracked Transformer via Kalman Filtering, Kriging and Process Noise” (2026 preprint).** Proposes uncertainty-aware transformer operations, including Kalman-style residual updates.  
  https://arxiv.org/abs/2605.18832

These are proposed experiments and reading directions. The contribution of a credibility-based satellite update remains to be established against this literature.