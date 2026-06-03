---
title: Crop Lifecycle Temporal Modeling Notes
date: 2026-05-14
project: concepts
status: draft
tags:
  - crop-risk
  - geospatial-modeling
  - remote-sensing
  - temporal-modeling
  - agriculture
repos:
  - https://github.com/josephweaver/josephweaver.github.io
---

# Crop Lifecycle Temporal Modeling Notes

## Overview

The current research direction aims to move beyond static tillage classification toward modeling agricultural fields as evolving temporal systems.

Rather than treating tillage as a single observable state inferred from one or several static satellite features, the proposed framework models the full temporal behavior of each field using Sentinel-1, Sentinel-2, PRISM climate data, and SSURGO soil information.

The long-term goal is to learn latent representations of agricultural management behavior and crop lifecycle dynamics.

---

# Core Concept

Instead of:

\[
\text{static spectral snapshot} \rightarrow \text{tillage class}
\]

we model:

\[
\text{temporal field behavior} \rightarrow \text{management/lifecycle embedding}
\]

The field is treated as a dynamical system whose spectral and radar responses evolve over time under environmental forcing.

---

# Primary Hypothesis

Different agricultural practices produce distinct temporal trajectories in:

- multispectral reflectance
- radar backscatter
- vegetation growth
- moisture retention
- residue decomposition
- disturbance timing
- seasonal transitions

These temporal signatures may allow discovery of:

- tillage regimes
- crop lifecycle archetypes
- management systems
- cover crop adoption
- irrigation effects
- disturbance events
- planting and harvest timing
- environmental stress responses

without relying entirely on predefined supervised categories.

---

# Proposed Data Sources

## Sentinel-2

Provides:

- visible bands
- near infrared
- SWIR
- vegetation indices
- senescence signals
- residue sensitivity
- bare soil exposure

Potential derived indices:

- NDVI
- EVI
- NDTI
- NBR
- GCVI
- CRC-like residue indices

---

## Sentinel-1

Provides:

- VV backscatter
- VH backscatter
- SAR texture
- surface roughness response
- residue geometry sensitivity
- moisture interaction

Potentially sensitive to:

- tillage disturbance
- row structure
- residue incorporation
- compaction
- soil roughness
- field preparation timing

Temporal SAR changes may contain stronger tillage signatures than static optical snapshots.

---

## PRISM

Used for environmental forcing and weather disentanglement.

Potential features:

- daily precipitation
- cumulative precipitation windows
- temperature
- freeze/thaw cycles
- degree days
- drought conditions

Potential lag windows:

\[
P_t^{(1)}, P_t^{(3)}, P_t^{(7)}, P_t^{(14)}
\]

where each represents precipitation accumulation over prior windows.

Goal:

Separate environmental response from management response.

---

## SSURGO

Used for environmental normalization.

Potential variables:

- soil texture
- clay/sand/silt fractions
- drainage class
- soil organic carbon
- hydrologic properties
- slope capability

Goal:

Condition temporal behavior on expected soil response.

---

# Temporal Convolution Concept

The current intuition is to model each pixel or field as a temporal sequence.

For each timestep:

\[
x_t \in \mathbb{R}^d
\]

where \(x_t\) may contain:

- Sentinel-1 bands
- Sentinel-2 bands
- vegetation indices
- PRISM variables
- SSURGO-conditioned features

Then apply temporal convolutions over:

\[
(x_{t-k}, \dots, x_t)
\]

instead of traditional spatial-only convolutions.

This treats time itself as the convolution dimension.

---

# Important Temporal Features

The framework may rely more heavily on:

\[
\Delta x_t = x_t - x_{t-1}
\]

than on absolute states.

Potentially informative events:

| Temporal Event | Possible Meaning |
|---|---|
| sudden SAR roughness increase | tillage event |
| rapid NDVI collapse | harvest |
| delayed green-up | residue retention |
| winter greening | cover crop |
| persistent moisture response | no-till or compaction |
| rapid drying | conventional tillage or sandy soils |

The hypothesis is that agricultural management may be more identifiable from transitions and responses than from static spectral values.

---

# Weather Disentanglement

One of the major goals is separating:

\[
\text{Observed Signal}
=
\text{Management}
+
\text{Environmental Forcing}
+
\text{Sensor Effects}
\]

PRISM weather data is intended to help explain:

- moisture-driven SAR variation
- rainfall response
- drought stress
- delayed planting effects
- residue moisture retention

The intent is not necessarily to remove weather effects entirely.

Instead:

different management systems may exhibit different responses to the same weather forcing.

Example:

| Practice | Expected Rainfall Response |
|---|---|
| no-till with residue | slower drying |
| conventional till | rapid drying |
| compacted soils | ponding persistence |
| sandy soils | rapid infiltration |

Thus weather may become part of the signature itself.

---

# Representation Learning Direction

Long-term direction may involve learning latent embeddings:

\[
z = f(x_{1:T})
\]

where:

- \(x_{1:T}\) is the temporal trajectory
- \(z\) is a latent management/lifecycle embedding

Potential downstream tasks:

- clustering
- anomaly detection
- management regime identification
- tillage estimation
- cover crop detection
- yield prediction
- insurance risk modeling
- carbon accounting
- lifecycle archetype discovery

---

# Comparison with Existing Literature

## Wu et al.

- MODIS (~500m)
- county-scale
- dynamic thresholding
- residue-focused
- highly supervised

Strengths:

- interpretable
- scalable
- environmentally aware

Limitations:

- mixed pixels
- static residue summaries
- no temporal lifecycle modeling

---

## Azzari & Lobell (2019)

- Landsat/Sentinel-1 (~30m)
- field-scale tillage classification
- random forest classification
- seasonal and percentile composites

Strengths:

- strong validation methodology
- field-scale mapping
- texture features
- historical mapping

Limitations:

- supervised classification
- temporal compression into composites
- predefined tillage categories
- limited use of full temporal dynamics

---

## Proposed Framework

- Sentinel-1 + Sentinel-2
- PRISM-conditioned temporal trajectories
- SSURGO normalization
- temporal convolutions
- latent lifecycle embeddings

Core distinction:

Fields are modeled as evolving temporal systems rather than static residue states.

---

# Current Status

Current work remains exploratory and conceptual.

The crop lifecycle / temporal embedding direction has not yet been broadly presented externally.

Currently available data sources include:

- Lobell/Azzari tillage datasets
- theoretical Indigo Ag datasets
- Sentinel-1/2 remote sensing data
- PRISM climate data
- SSURGO soil data

Future work will determine:

- feasibility of temporal embeddings
- robustness across regions and years
- usefulness of SAR temporal dynamics
- ability to disentangle weather and management
- whether unsupervised clusters align with meaningful management practices
