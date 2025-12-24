# Convergence of Random Variables

This section collects the **core modes of convergence** used throughout the Probability Prelim Survival Guide.  
Each mode is defined, interpreted, and connected to its most common proof techniques and use cases.

The goal is **recognition and triage**, not re-proving theorems from scratch.

---

## Convergence Hierarchy

![Convergence Hierarchy](assets/images/Convergence%20Hierarchy.svg)

The standard strength relationships are:

$$
X_n \xrightarrow{\text{a.s.}} X
\;\Rightarrow\;
X_n \xrightarrow{L^p} X
\;\Rightarrow\;
X_n \xrightarrow{p} X
\;\Rightarrow\;
X_n \xrightarrow{d} X
$$

(Implications are one-way in general.)

---

## Included Topics

This section includes concise review entries for:

- Almost sure convergence (a.s.)
- Convergence in probability
- Convergence in distribution
- $L^p$ convergence (with special focus on $L^1$ and $L^2$)
- Laws of Large Numbers (Weak and Strong)
- Central Limit Theorem and Delta Method
- Borel–Cantelli lemmas
- Uniform Integrability
- Dominated and Monotone Convergence Theorems
- Characteristic function methods
- Slutsky’s theorem and Continuous Mapping Theorem

---

## How to Use This Section

- Use this as a **navigation hub** when a problem asks “what kind of convergence is this?”
- Match the *statement being asked* to the *strongest applicable mode*.
- Then drop to the specific theorem or tool needed (LLN, CLT, BC, UI, etc.).

This section is designed to support **fast identification under exam pressure**, not exhaustive proofs.
