# 14 — Doob’s Decomposition and Uniqueness
STT 882  
Feb 14, 2025


## Doob’s Decomposition Theorem (Summary)

Let $\{X_n, \mathcal{F}_n\}_{n\ge 0}$ be a submartingale.  
Then there exists a predictable process $\{A_n\}_{n\ge 0}$ with:

- $A_0 = 0$  
- $A_n \le A_{n+1}$ a.s.  
- $\{M_n\}_{n\ge 0}$ defined by $M_n = X_n - A_n$ is a martingale  

such that  
$$X_n = A_n + M_n,\qquad n\ge 0,$$
and this decomposition is **unique**.

---

## Example: Decomposing a Submartingale Using Increments

Define  
$$D_k = X_k - X_{k-1},\qquad k\ge 1.$$

Then  
$$X_n = X_0 + \sum_{k=1}^n D_k.$$

Submartingale condition implies  
$$E(D_k \mid \mathcal{F}_{k-1}) \ge 0.$$

Define the martingale part:
$$M_n = X_0 + \sum_{k=1}^n (D_k - E(D_k \mid \mathcal{F}_{k-1})).$$

Define the predictable increasing part:
$$A_n = \sum_{k=1}^n E(D_k \mid \mathcal{F}_{k-1}).$$

Then  
$$X_n = M_n + A_n.$$

---

# Proof of Uniqueness

Suppose there are two decompositions:
$$X_n = M_n + A_n = \tilde{M}_n + \tilde{A}_n.$$

Given $A_0 = \tilde{A}_0 = 0$, we get  
$$M_0 = \tilde{M}_0.$$

### Step 1: Compare consecutive differences

We want to show  
$$M_n - M_{n-1} = \tilde{M}_n - \tilde{M}_{n-1}\quad \text{a.s.}$$

Then telescoping implies $M_n = \tilde{M}_n$ and hence $A_n = \tilde{A}_n$.

Define the difference
$$D_n := M_n - \tilde{M}_n.$$

- $\{D_n, \mathcal{F}_n\}$ is a martingale (page 2 of the PDF).
- Also, $A_n - \tilde{A}_n$ is predictable (in $\mathcal{F}_{n-1}$).

Since  
$$X_n - X_{n-1} = (M_n - \tilde{M}_n) - (M_{n-1} - \tilde{M}_{n-1})  
+ (A_n - \tilde{A}_n) - (A_{n-1} - \tilde{A}_{n-1}),$$

and the increment of the predictable processes matches the increment of the martingale differences, we obtain:

$$M_n - M_{n-1} = \tilde{M}_n - \tilde{M}_{n-1}\quad\text{a.s.}$$

Thus  
$$M_n = \tilde{M}_n,\qquad A_n = \tilde{A}_n,\quad n\ge 0.$$

**Uniqueness proven.**

---

# Example (Durrett §5.3 p. 204)

Let $\{D_k\}_{k\ge 1}$ be iid with:

- $E(D_k) = 0$  
- $|D_k| \le M$ almost surely  

Define  
$$X_n = \sum_{k=1}^n D_k.$$

Then the sample space splits into:

$$
\Omega = C \cup D,\qquad C\cap D = \varnothing\ \text{a.s.}
$$

where

- $C = \{\lim_{n\to\infty} X_n \text{ exists and is finite}\}$
- $D = \{\lim_{n\to\infty} X_n = +\infty \text{ or } -\infty\}$

Because increments are bounded, page 2 shows the four possible long-term behaviors:

1. $X_n \equiv 0$ (not happening unless trivial)  
2. $X_n \to +\infty$  
3. $X_n \to -\infty$  
4. $\liminf X_n < 0 < \limsup X_n$ (oscillation)

But with iid mean-zero bounded increments, we get (page 2):

$$P(D)=1,\qquad P(C)=0.$$

---

# Example: Hitting Below a Level (Page 3)

Assume  
- negative part $D_k^- \le M$,  
- positive part $D_k^+ \le M$.

Define the hitting time  
$$T_k = \inf\{n: X_n \le -k\}.$$

Then:

- $\{X_{n\wedge T_k}\}$ is a martingale  
- $X_{n\wedge T_k} \ge -k - M$  

By the Martingale Convergence Theorem (MGCT),  
$$X_{n\wedge T_k} \to X_{\infty,k}\quad\text{a.s.}$$

Taking $k\to\infty$ gives the decomposition of the limit behavior into:

- $C = \{\lim X_n \text{ exists finitely}\}$  
- $D = \{\lim X_n = -\infty\}$

Final statement on page 3:

> In this chapter (Doob decomposition):
> $$A_n \in \mathcal{F}_{n-1},\quad  
> \{A_n \text{ i.o.}\} = \left\{\sum_{n=1}^\infty P_{\!n-1}(A_n) = \infty\right\}.$$

This is the conditional version of **Borel–Cantelli II**.

