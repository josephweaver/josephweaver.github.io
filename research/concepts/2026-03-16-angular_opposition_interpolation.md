# Angular Opposition Interpolation (AOI)
*A geometric interpolation concept based on angular balance around a target point*

Author: Joseph Weaver  
Status: Early concept / research note  
Priority: Back burner

---

# 1. Purpose

This document captures an interpolation concept so it is not forgotten while other work takes priority.

The idea is motivated by a simple geometric observation:

> Interpolation is most stable when the target point is surrounded by observations.

Many standard interpolation methods (for example inverse distance weighting) only consider **distance**, but not whether surrounding points are **balanced in direction**.

The goal of this concept is to construct an interpolation scheme that rewards point configurations that **surround the target point** and penalizes configurations where all points lie on one side.

The key idea is to weight observations according to

1. distance from the target
2. angular separation relative to other points

In particular, points that lie **opposite each other across the target location** should reinforce each other.

---

# 2. Problem Setup

Suppose we have observations

(x_i, y_i, z_i),  i = 1,...,n

and we want to estimate

z(x,y)

at location

s₀ = (x,y).

Define polar coordinates relative to the target.

Distance

d_i = sqrt((x_i - x)^2 + (y_i - y)^2)

Angle

a_i = atan2(y_i - y, x_i - x)

Each observation therefore has a distance d_i and direction a_i relative to the target point.

---

# 3. Geometric Intuition

Consider two points.

If the two points lie

• in the same direction from the target, they provide redundant information  
• in opposite directions, they provide balanced information

Example geometry:

Case 1 (bad geometry)

P1 ----> Target  
P2 ---->

Both observations lie on the same side.

Case 2 (good geometry)

P1 ----> Target <---- P2

The target is bracketed by the observations.

Therefore interpolation should reward **angular opposition**.

---

# 4. Angular Separation

Define angular separation between two points

Δθ_ij = min( |a_i − a_j| , 2π − |a_i − a_j| )

This ensures

0 ≤ Δθ_ij ≤ π

Examples

same direction → 0  
perpendicular → π/2  
opposite → π

Normalize this measure

A_ij = Δθ_ij / π

Then

same direction → 0  
perpendicular → 0.5  
opposite → 1

This value represents **degree of opposition**.

---

# 5. Two Point Interpolation Concept

Suppose we begin with the nearest observation

(x₁, y₁)

with weight

w₁ = 1

Now introduce a second observation

(x₂, y₂)

with distance d₂ and angle a₂.

Compute angular separation

Δθ = min(|a₂ − a₁| , 2π − |a₂ − a₁|)

Define opposition factor

A = Δθ / π

Assign weight to the second point

w₂ = (d₁ / (d₁ + d₂)) × A

Update

w₁ = 1 − w₂

Interpretation

If point 2 lies in the same direction as point 1, A = 0, so it receives no weight.

If the points are opposite, A = 1 and weights depend only on relative distances.

---

# 6. Sequential Weight Redistribution

One possible algorithm is sequential.

1. Find nearest neighbor
2. Assign weight 1
3. Add neighbors sequentially
4. Redistribute weights using angular-distance rule

Pseudo algorithm

sort points by distance from target

set w₁ = 1

for each new point i

    compute angular separation with existing points
    compute angular opposition score
    transfer weight according to distance and angle

normalize weights

This produces a **competitive redistribution process** where new observations gain influence only if they improve directional balance.

---

# 7. Alternative Global Formulation

A more stable formulation may compute weights simultaneously.

Distance kernel

D_i = 1 / (d_i + ε)^p

Angular contribution

A_i = sum over j ≠ i of (Δθ_ij / π) × D_j

Raw weight

w_i* = D_i × A_i

Normalize

w_i = w_i* / sum(w_k*)

Interpolation

ẑ(x,y) = sum( w_i × z_i )

---

# 8. Relationship to Existing Methods

This concept relates to several known interpolation methods.

Inverse Distance Weighting (IDW)

Weights depend only on distance.

Weakness: points on one side may dominate.

Sector or Quadrant Interpolation

Used in geostatistics.

Space is divided into angular sectors and neighbors are selected from each sector.

Natural Neighbor Interpolation

Based on Voronoi diagrams.

Weights depend on how much Voronoi area the target steals from neighbors.

Kriging

Weights derived from spatial covariance models.

---

# 9. Potential Advantages

Possible benefits

• Encourages directional balance  
• Reduces bias when points lie on one side  
• No covariance model required  
• Simple geometric interpretation  
• Works with irregular point distributions

---

# 10. Potential Weaknesses

Possible limitations

• Requires pairwise angular calculations  
• May become unstable if observations cluster heavily  
• Sequential updates could depend on ordering  
• Requires empirical validation

---

# 11. Possible Names

Working names for the method

Angular Opposition Interpolation (AOI)

Angularly Balanced IDW

Opposition Weighted Interpolation

Directional Shepard Interpolation

---

# 12. Possible Experiments

Compare AOI against

• Inverse Distance Weighting  
• Natural Neighbor Interpolation  
• Kriging  
• Radial Basis Function interpolation

Evaluation metrics

• RMSE  
• cross validation error  
• robustness to irregular sampling

Test surfaces

• smooth surfaces  
• ridges or gradients  
• clustered observations  
• sparse sampling

---

# 13. Future Work

Possible theoretical directions

1. Connect to harmonic interpolation
2. Interpret as polar kernel smoothing
3. Analyze bias and variance
4. Explore relationship to discrete Laplacian operators

---

# 14. Summary

The central idea is simple.

Interpolation should reward point configurations that **surround the target location**.

This concept implements that idea by weighting observations using

distance from the target and angular opposition relative to other observations.

The method is related to existing interpolation approaches but introduces explicit geometric weighting based on opposing directions.

Further testing is required to determine whether the method improves predictive performance relative to established approaches.

End of note.