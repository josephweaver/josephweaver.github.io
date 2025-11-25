# **Lecture 25 — Optional Stopping (OST), Backwards Martingales, Simple Random Walk**
STT 882  
March 19, 2025


## 1. Setup

Let  
$$
\{X_n,\mathcal F_n\}_{0\le n\le N}
$$  
be a submartingale (Durrett §5.7 p. 229).  

Let $T$ be a stopping time such that  
$$
0 \le T \le N.
$$

We previously showed:
$$
E(X_0) \le E(X_T) \le E(X_N).
$$

---

## 2. Decomposition with predictable integrands

Define increments:
$$
D_k = X_k - X_{k-1}.
$$

Let  
$$
(H\cdot X)_n = \sum_{k=0}^n H_k D_k, \qquad H_k\in\mathcal F_{k-1}.
$$

If $H_k \ge 0$, then $(H\cdot X)_n$ is a submartingale.

Take  
$$
H_k = \mathbf 1_{\{k\le T\}},
$$
then
$$
(H\cdot X)_N = X_T - X_0,\quad E[(H\cdot X)_N]\ge 0.
$$

Thus $E(X_T) \ge E(X_0)$.

---

## 3. Comparing two stopping times $S \le T$

Define  
$$
Y_n = X_{T\wedge n}.
$$

Then $\{Y_n\}$ is a submartingale, and
$$
E(Y_0)\le E(Y_S)\le E(Y_N)
$$
which implies:
$$
E(X_0)\le E(X_S)\le E(X_T)\le E(X_N).
$$

---

## 4. Conditional inequality (OST inequality)

If $S\le T$ are stopping times and $\{X_n\}$ is a submartingale, then:
$$
E(X_T \mid \mathcal F_S) \ge X_S \qquad\text{a.s.}
$$

**Proof sketch:**  
Define  
$$
\tilde S = S \mathbf 1_A + T \mathbf 1_{A^c},\qquad A\in\mathcal F_S.
$$  
Then apply the OST expectation bound to get:
$$
E(X_{\tilde S})\le E(X_T).
$$
Unwrap and use arbitrariness of $A$.

---

## 5. Extending to $N=\infty$

Two approaches:

1. **Uniform integrability approach (works for sub-, super-, and martingales).**  
2. **Fatou’s lemma (only for nonnegative submartingales).**

---

## 6. Theorem (UI version of OST)

Let $\{X_n,\mathcal F_n\}_{n\ge 0}$ be a **UI submartingale**.  
Let $T$ be a stopping time (possibly $T=\infty$).

Then $\{X_{T\wedge n}\}_{n\ge 0}$ is UI and:

1. $X_{T\wedge n} \to X_T$ a.s.  
2. $E|X_T|<\infty$.  
3.  
$$
E(X_T) \ge E(X_0).
$$

**Key point:**  
$$
E(X_{T\wedge n}^+)\le E(X_n^+),
$$
so the positive parts are uniformly integrable.

---

## 7. Corollaries

### (1) If $S\le T$ then:
$$
E(X_S)\le E(X_T).
$$

### (2) Conditional version:
$$
X_S \le E(X_T \mid \mathcal F_S).
$$

---

# **Application: Simple Random Walk (non-symmetric)**

Let $\{\xi_k\}_{k\ge 1}$ be iid with
$$
P(\xi_k = +1)=p,\qquad P(\xi_k=-1)=q,\qquad p>q,\ p+q=1.
$$

Random walk:
$$
S_n = \sum_{k=1}^n \xi_k,\qquad S_0=0.
$$

Since $E(\xi_1)=p-q>0$,
$$
\frac{S_n}{n}\xrightarrow{\text{a.s.}} p-q > 0,
$$
so $S_n\to+\infty$ a.s., hence for any $b>0$, $T_b<\infty$ a.s.

---

## Hitting probability for level $a<0<b$

Define the harmonic function:
$$
\varphi(x) = \Big(\frac{q}{p}\Big)^x,\qquad x\in\mathbb Z.
$$

Check (page 3 of notes) :contentReference[oaicite:1]{index=1}:
$$
E\big(\varphi(S_{n+1})\mid \mathcal F_n\big) = \varphi(S_n).
$$

Thus $\{\varphi(S_n)\}$ is a martingale.

Let
$$
T = T_a\wedge T_b.
$$

Since $\varphi(S_T)$ is bounded, the stopped martingale is UI, so:
$$
E[\varphi(S_T)] = E[\varphi(S_0)] = 1.
$$

Since $S_T\in\{a,b\}$,
$$
E[\varphi(S_T)]
= P(T_a<T_b)\,\varphi(a)
 + P(T_b<T_a)\,\varphi(b).
$$

Solve the two-equation system:
$$
\begin{aligned}
P(T_a<T_b)\varphi(a) + P(T_b<T_a)\varphi(b) &= 1,\\
P(T_a<T_b)+P(T_b<T_a)&=1.
\end{aligned}
$$

**Final result:**
$$
\boxed{
P(T_a < T_b)
= \frac{\varphi(b)-\varphi(0)}{\varphi(b)-\varphi(a)}
}
$$

Letting $b\to\infty$:
$$
P(T_a < \infty) = \Big(\frac{p}{q}\Big)^{\,a}.
$$

This is the classical **gambler’s ruin formula** for a biased walk.

