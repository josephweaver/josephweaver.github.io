# 17 — Optional Stopping, Doob Inequalities, Maximal Inequalities


## Setup
We work on a probability space  
$$
(\Omega, \mathcal{F}_0, P), \qquad \mathcal{F} \subset \mathcal{F}_0.
$$

Let $X \ge 0$ with $E(X) < \infty$.  
Define a finite measure on $(\Omega,\mathcal{F})$ by
$$
M(A) = E(X;A), \qquad A \in \mathcal{F}.
$$

### Absolute Continuity
If $P(A)=0$, then $M(A)=0$.  
So $M \ll P$.

By Radon–Nikodym,  
$$
\frac{dM}{dP} = Y \in \mathcal{F}, \qquad 
M(A) = E(Y;A) = \int_A Y\, dP, \quad A\in\mathcal{F}.
$$

Hence
$$
E_{\mathcal{F}}(X) = Y.
$$

If $X$ is not positive, write $X = X^+ - X^-$.  
Then:
$$
E_{\mathcal{F}}(X) = E_{\mathcal{F}}(X^+) - E_{\mathcal{F}}(X^-).
$$

---

# **Section 4: Optional Stopping, $L^1$ Convergence**  
(Durrett §5.4, p. 212)

Let $\{X_n, \mathcal{F}_n\}_{n\ge0}$ be a submartingale.  
Let $T$ be a stopping time with $T \le M < \infty$.

### **Theorem (Optional Stopping, Bounded Stopping Times)**
$$
\boxed{
E(X_0) \le E(X_T) \le E(X_M)
}
\tag{1}
$$

---

## **Proof Idea**
Use a “gambling system”: predictable sequences $H_k$.

A predictable sequence means $H_k \in \mathcal{F}_{k-1}$.

Let increments be $D_k = X_k - X_{k-1}$.

Define the stochastic integral
$$
(H\cdot X)_n = \sum_{k=1}^n H_k D_k.
$$

If $X$ is positive, then $(H\cdot X)_n$ is a submartingale.

---

## **Part (I): Show $\;E(X_T) \ge E(X_0)$**

Choose  
$$
H_k = \mathbf{1}_{\{k \le T\}}.
$$

Then
$$
(H\cdot X)_n = X_{T\wedge n} - X_0.
$$

At $n=M$:
$$
(H\cdot X)_M = X_T - X_0.
$$

Submartingale implies  
$$
E[X_T - X_0] \ge 0.
$$

---

## **Part (II): Show $\;E(X_T) \le E(X_M)$**

Set
$$
H_k = \mathbf{1}_{\{T < k\}}.
$$

Then
$$
(H\cdot X)_n = X_n - X_{T\wedge n}.
$$

At $n=M$:
$$
(H\cdot X)_M = X_M - X_T \ge 0.
$$

Thus
$$
E(X_M) \ge E(X_T).
$$

---

# **Corollary: Conditional Version**
With the same setup,
$$
\boxed{
E(X_M \mid \mathcal{F}_T) \ge X_T \quad \text{a.s.}
}
$$

**Proof:**  
Let $A\in\mathcal{F}_T$. Define a new stopping time
$$
\tilde{T}=
\begin{cases}
T & \text{on } A, \\
M & \text{on } A^c.
\end{cases}
$$
Since $\tilde{T}\le M$, apply the theorem:
$$
E(X_M) \ge E(X_{\tilde T}).
$$
Then restrict to $A$, obtaining:
$$
E(X_M;A) \ge E(X_T;A).
$$

---

# **Doob’s Inequality (Maximal Inequality)**  
“Kolmogorov maximality” is a special case.

Let $\{X_n,\mathcal{F}_n\}$ be a submartingale with $X_n \ge 0$.  
Let $\lambda>0$.

Define  
$$
A = \{\max_{0\le m\le n} X_m \ge \lambda\}.
$$

Then Doob’s inequality states
$$
\boxed{
\lambda P(A) \le E(X_n \mathbf{1}_A) \le E(X_n^+)
}
$$

**Proof Sketch:**  
Define the stopping time  
$$
T=\inf\{m\le n : X_m \ge \lambda\}.
$$
Then $X_T \mathbf{1}_A \ge \lambda \mathbf{1}_A$.  
Using optional stopping,
$$
E(X_n;A) \ge E(X_T;A) \ge \lambda P(A).
$$

---

# **Kolmogorov’s Inequality**

Let $\{Z_k\}$ be independent with  
$$
E(Z_k)=0, \qquad E(Z_k^2)<\infty.
$$

Let  
$$
S_n=\sum_{k=1}^n Z_k.
$$

Then
$$
P\!\left(\max_{1\le m\le n} |S_m| \ge x\right)
\le \frac{E(S_n^2)}{x^2}.
$$

Notes:

- $\{S_n,\mathcal{F}_n\}$ is a martingale.
- $\{S_n^2\}$ is a submartingale.
- Apply Doob's inequality to $S_n^2$.

---

# **$L^p$ Maximal Inequality ($p>1$)**

Let $p>1$, $q=\frac{p}{p-1}$.  
Let $\{X_n\}$ be an $L^p$ submartingale.

Then
$$
\boxed{
\left\|\max_{1\le m\le n} X_m^+\right\|_p
\;\le\; q \,\|X_n\|_p.
}
$$

**Sketch:**  
Use the tail integral formula:
$$
E\!\left[\max_{m\le n} X_m^+\right]^p
= \int_0^\infty p\lambda^{p-1} P(\max X_m > \lambda)\, d\lambda.
$$

Apply Doob’s inequality to the probability inside.

---

# **Why $p=1$ Fails**

For $p=1$, we only get a weaker inequality:

If $\{X_n\}$ is a submartingale,
$$
E \big[\max_{m\le n} X_m^+ \big]
\le 
\frac{e}{e-1}
\left(
1 + E\!\left[X_n^+ (\log^+ X_n^+)^{-1}\right]
\right).
$$

This ties into the **$L^1$** version of the Dominated Convergence Theorem.

---
