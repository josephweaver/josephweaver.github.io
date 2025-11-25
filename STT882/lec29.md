# Lecture 29 — Brownian Motion: Non-Differentiability, Kolmogorov Continuity, and Lévy Modulus
(Notes reconstructed from 03-31.pdf)
STT 882  
March 31, 2025

---

## 1. Brownian Motion is *Not* Hölder Continuous of Order γ > 1/2

**Theorem (with probability 1):**  
For Brownian motion {B(t)}\_{0 ≤ t ≤ 1},  
B(t) is *not* Hölder-continuous with exponent γ > 1/2 at any point.  
In fact, for γ > 1/2, there is **no constant C** such that  
|B(t) − B(s)| ≤ C |t − s|^γ  
holds for all |t − s| sufficiently small.

Equivalently, Brownian motion has **continuous sample paths but no derivative anywhere**.

---

## 2. Proof Idea via Dyadic Intervals
(See page 1 image for the interval partition: dyadic 1/n, 2/n, …, n/n.) :contentReference[oaicite:1]{index=1}

Let
Aₙ = { ω : ∃ 0 ≤ s < t ≤ 1 with |t − s| ≤ 3/n such that |B(t) − B(s)| < C |t − s|^γ }.

Define increments on the dyadic grid:  
Yₖ,ₙ = |B(k/n) − B((k−1)/n)|.

Let  
Bₙ = { maxₖ Yₖ,ₙ < (5C)/n^γ }.

Because Aₙ ⊆ Bₙ, it suffices to show P(Bₙ) → 0.

Each increment is Gaussian:
B(k/n) − B((k−1)/n) ∼ N(0, 1/n).

Thus
P(Yₖ,ₙ ≤ (5C)/n^γ) = P(|Z| ≤ 5C n^{1/2−γ}), with Z ∼ N(0,1).

If γ > 1/2, then 1/2 − γ < 0, so n^{1/2−γ} → 0.  
Hence these probabilities shrink polynomially, and:

n · P(|Z| ≤ 5C n^{1/2−γ})³ ∼  
n / n^{3γ−3/2} → 0  
when 3γ − 3/2 > 1 ⇔ γ > 5/6.

Repeating with finer partitions eliminates all γ > 1/2.

**Conclusion:**  
For all γ > 1/2,
P(Aₙ) → 0 ⇒ Brownian motion is almost surely *not* Hölder(γ).

---

## 3. Lévy Modulus of Continuity
(Discussed at bottom of page 2 image.) :contentReference[oaicite:2]{index=2}

Let Δₘₙ = sup\_{t ∈ Iₘₙ} |B(t) − B(m/2ⁿ)| over dyadic intervals.

Using Gaussian tail bounds and Borel–Cantelli:

P(Δₘₙ ≥ a 2^{-n/2}) ≤ C e^{−c·2ⁿ a²}

Choose aₙ = (bₙ)^{1/2} = sqrt(2(1+ε) n log 2).

Then ∑ P(Δₘₙ ≥ aₙ 2^{-n/2}) < ∞,  
so eventually (for n large):

sup_{|t−s| ≤ 2^{-n}} |B(t) − B(s)| ≤ 3 (bₙ)^{1/2} 2^{-n/2}.

Thus Brownian motion is Hölder-continuous for any γ < 1/2.

**This reproduces Lévy’s classical modulus of continuity:**

> With probability 1,  
> $$
> \limsup_{h\to 0} \frac{|B(t+h)-B(t)|}
> {\sqrt{2 h \log(1/h)}} = 1.
> $$

---

## 4. Kolmogorov Continuity Theorem
(To justify existence of continuous sample paths.)

If a process satisfies  
E|Xₜ − Xₛ|^β ≤ C |t − s|^{1+α},  
then there exists a Hölder(γ) modification for γ < α/β.

For Brownian motion:

- β = 2m  
- α = m−1  
- So α/β = (m−1)/(2m) → 1/2 as m→∞

Thus Brownian paths are Hölder(γ) for **all γ < 1/2**, but for no γ ≥ 1/2.

---

## 5. Lévy Construction (Sketch)
(Page 3–4 diagrams show dyadic interpolation and Borel–Cantelli.) :contentReference[oaicite:3]{index=3}

The construction proceeds by defining:

- B(t) on dyadic rationals Q₂ⁿ  
- Interpolating linearly  
- Showing uniform convergence of increments using Gaussian bounds  
- Applying Kolmogorov extension to obtain a process on all t ≥ 0.

The final modulus is:

$$
|B(t)-B(s)| \lesssim \sqrt{|t-s|\log(1/|t-s|)}.
$$

This is optimal for Brownian motion.

---

## 6. Summary

- Brownian motion is continuous but **nowhere differentiable**.  
- It is Hölder-continuous for **γ < 1/2**, but not for any γ ≥ 1/2.  
- Dyadic increments, Gaussian tail bounds, and Borel–Cantelli are the main tools.  
- The Lévy modulus of continuity describes the exact rate of fluctuation.  
- This material provides the analytic foundation for **Donsker’s theorem**  
  (simple random walk ⇒ Brownian motion).

