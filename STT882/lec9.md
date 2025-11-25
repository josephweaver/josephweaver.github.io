# Lecture 9 — Conditional Expectation
STT 882  
Feb 3, 2025

We work on a probability space  
$$(\Omega, \mathcal{F}_0, P), \qquad \mathcal{F} \subseteq \mathcal{F}_0.$$

For any integrable random variable $X$ and event $A \in \mathcal{F}$:
$$
E(X \cdot \mathbf{1}_A) = E\big(E_{\mathcal{F}}(X)\cdot \mathbf{1}_A\big).
$$

We require:
1. $E_{\mathcal{F}}(X) \in \mathcal{F}$  
2. $E(X\mathbf{1}_A) = E(E_{\mathcal{F}}(X)\mathbf{1}_A)$ for all $A \in \mathcal{F}$

This defines **$E_{\mathcal{F}}(X)$**, the *conditional expectation of $X$ given $\mathcal{F}$*.

---

# Example: Independent Variables

Assume $X, Y$ are independent.  
Let $\varphi(X,Y):\mathbb{R}^2 \to \mathbb{R}$ be measurable.  
Let $\mathcal{F} = \sigma(X)$.

**Claim:**  
$$
E(\varphi(X,Y)\mid \mathcal{F}) = g(X),
$$
where  
$$
g(x) = E[\varphi(x,Y)] = \int_{\mathbb{R}} \varphi(x,y)\, dF_Y(y).
$$

Verification:
$$
E(\varphi(X,Y)\mathbf{1}_A)
   = \int_{x\in A} \left( \int_{\mathbb{R}} \varphi(x,y)\, dF_Y(y) \right) dF_X(x)
   = E(g(X)\mathbf{1}_A).
$$
So $E_{\mathcal{F}}(\varphi(X,Y)) = g(X)$.

---

# Properties of Conditional Expectation

## 1. Linearity
$$
E_{\mathcal{F}}(aX+bY) = aE_{\mathcal{F}}(X) + bE_{\mathcal{F}}(Y).
$$

---

## 2. Monotonicity
If $Y \ge X$, then
$$
E_{\mathcal{F}}(Y) \ge E_{\mathcal{F}}(X).
$$

---

## 3. Monotone Convergence (MCT)
If $X_n \uparrow X$ and $X_n \ge 0$, and $E(X)<\infty$, then
$$
E_{\mathcal{F}}(X_n) \xrightarrow{a.s.} E_{\mathcal{F}}(X).
$$

---

## 4. Jensen’s Inequality
If $\varphi$ is convex and $E|\varphi(X)|<\infty$, then
$$
\varphi(E_{\mathcal{F}}(X)) \le E_{\mathcal{F}}(\varphi(X)) \quad a.s.
$$

### Application: contraction in $L^p$
If $X\in L^p$ for $p\ge1$, then
$$
\|E_{\mathcal{F}}(X)\|_p \le \|X\|_p.
$$

---

## 5. Tower Property
If $\mathcal{F}_1 \subseteq \mathcal{F}_2$, then:
$$
E_{\mathcal{F}_1}(E_{\mathcal{F}_2}(X)) = E_{\mathcal{F}_1}(X), 
\qquad
E_{\mathcal{F}_2}(E_{\mathcal{F}_1}(X)) = E_{\mathcal{F}_1}(X).
$$

---

## 6. Pulling Out Known Factors
If $X$ is $\mathcal{F}$-measurable and $E|XY|<\infty$, then:
$$
E_{\mathcal{F}}(XY) = X\,E_{\mathcal{F}}(Y).
$$

Proof idea: for all bounded $Z\in\mathcal{F}$,
$$
E(E_{\mathcal{F}}(XY)Z) = E(XYZ) = E(XE_{\mathcal{F}}(Y)Z).
$$

---

## 7. Conditional Expectation is the $L^2$ Projection  
(*Pythagorean theorem in $L^2$*)

Assume $E|X|^2 < \infty$.  
Then $E_{\mathcal{F}}(X)$ is the **orthogonal projection** of $X$ onto the subspace $L^2(\mathcal{F})$.

For any $Y\in L^2(\mathcal{F})$:
$$
\|X - E_{\mathcal{F}}(X)\|_2^2
   \le \|X-Y\|_2^2.
$$

Geometric interpretation (shown in page 2 diagram):
- $X$ is a point in Hilbert space
- $L^2(\mathcal{F})$ is a subspace
- $E_{\mathcal{F}}(X)$ is the closest point to $X$ in this subspace

---

# Additional Notes from the Lecture

### Doob’s Interpretation
For a measurable function $g$,
$$
E_{\mathcal{F}}(g(X))(\omega) = \int_{\mathbb{R}} g(\alpha)\, d\mu_\omega(\alpha),
$$
where $\mu_\omega$ is a probability measure depending on $\omega$.

### Conditional Probability
For $A \in \mathcal{F}_0$:
$$
P_{\mathcal{F}}(A)(\omega) = E_{\mathcal{F}}(\mathbf{1}_A)(\omega).
$$

Properties:
- $P_{\mathcal{F}}(A \cup B) = P_{\mathcal{F}}(A) + P_{\mathcal{F}}(B)$ (disjoint $A,B$)
- If $A_i$ disjoint,
  $$
  P_{\mathcal{F}}\Big(\bigcup_i A_i\Big) = \sum_i P_{\mathcal{F}}(A_i).
  $$

### Doob’s Focus
The handwritten note at the bottom (page 3) says:
> “What was the trick of Doob?  
> Focus on the real line.”

This refers to Doob representing conditional expectation as an integral on $\mathbb{R}$ with respect to a regular conditional probability.

