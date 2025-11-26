# 26 — Optional Stopping for Random Walks, Expected Hitting Times


We study a biased random walk and compute the expected hitting time of a level using martingales and OST (Optional Stopping Theorem).

---

## Setup: Biased Random Walk

Let  
- $ \{Z_k\}_{k\ge 1} $ be iid with  
  $$
  P(Z_k = +1) = p,\qquad P(Z_k=-1)=q,\qquad p>q,\; p+q=1.
  $$
- $S_0=0$, $S_n=\sum_{k=1}^n Z_k$.

Then by LLN:  
$$
\frac{S_n}{n} \xrightarrow{a.s.} p-q>0.
$$

Define the standard martingale:
$$
\psi(S_n)=\left(\frac{q}{p}\right)^{S_n},\qquad 
M_n=\psi(S_n).
$$
Since $E[(q/p)^{Z_{n+1}}]=1$, this is a MG.

Let
$$
T=T_a\wedge T_b,\qquad a<0<b\in\mathbb Z,
$$
where  
$$
T_x=\inf\{n\ge 0:S_n=x\}.
$$

We know $T_b<\infty$ a.s. because the drift is positive.

The random variables $\psi(S_{T\wedge n})$ are bounded by $(p/q)^{-a}$, hence UI, which allows OST.

---

## Hitting Probabilities (review from Lecture 26)

Using OST on $M_{T\wedge n}$:

$$
E(M_{T\wedge n}) = M_0 = 1.
$$

As $n\to\infty$:
$$
M_T = 
\begin{cases}
\left(\frac{q}{p}\right)^a & \text{if }T_a<T_b,\$$6pt]
\left(\frac{q}{p}\right)^b & \text{if }T_b<T_a.
\end{cases}
$$

Solving the linear system gives:

$$
P(T_a<T_b) = \frac{\varphi(b)-\varphi(0)}{\varphi(b)-\varphi(a)},\qquad
\varphi(x)=\left(\frac{q}{p}\right)^x.
$$

---

## Goal: Compute $E(T_b)$

We use the martingale:
$$
S_n - (p-q)n.
$$

Indeed:
$$
E(Z_k-(p-q))=0 \quad\Rightarrow\quad \{S_n-(p-q)n\} \text{ is a MG}.
$$

Apply OST to $T_b\wedge n$:

$$
E\left[S_{T_b\wedge n} - (p-q)(T_b\wedge n)\right]=0.
$$

Since $S_{T_b\wedge n}=b$ when $T_b\le n$, and ≤$b$ otherwise:

$$
E(S_{T_b\wedge n}) = (p-q)E(T_b\wedge n).
$$

Letting $n\to\infty$ (using MCT):

$$
E(S_{T_b}) = b = (p-q)E(T_b).
$$

Thus:

$$
\boxed{E(T_b)=\frac{b}{p-q}}.
$$

---

## Why is $\{S_{T_b\wedge n}\}$ UI?

We need UI or DCT to exchange limit and expectation.

We know
$$
S_{T_b\wedge n} \ge \min_{k\ge 0} S_k.
$$

And from page 2 of the notes (:contentReference[oaicite:1]{index=1}):

$$
E\left(\min_{k\ge 0} S_k\right) = -\sum_{k=1}^\infty P(T_{-k}<\infty)
= -\sum_{k=1}^\infty \left(\frac{q}{p}\right)^k > -\infty.
$$

Since $0<q/p<1$, the geometric series converges.

Thus:

- $\{S_{T_b\wedge n}\}$ is bounded above by $b$,
- bounded below in $L^1$ by a finite constant,

so the family is UI.

Therefore OST applies and the limit–expectation exchange is valid.

---

## Summary of Result

$$
\boxed{
E(T_b)=\frac{b}{p-q} < \infty
}
$$

This matches the intuition: the drift is $p-q>0$, and it takes on average $b/(p-q)$ steps to climb from 0 to $b$.

---

## Positive Supermartingales (from pages 3–4)

Let $\{X_n\}$ be a positive supermartingale. For any stopping time $T$:

$$
E(X_0)\ge E(X_T)\ge E(X_\infty).
$$

Key example:  
$$
X_n = e^{S_n - n/2},\qquad Z_k\sim N(0,1).
$$

Here:
$$
E(e^{Z_k - 1/2}) = 1,
$$
so $X_n$ is a MG.

But $X_n\to 0$ a.s. and is **not UI** (page 4). OST still works using **Fatou’s lemma** because the MG is positive.

---

## Final OST Statement for Positive Supermartingales

If $X_n\ge 0$ is a supermartingale and $T$ is a stopping time, then

$$
E(X_0)\ge E(X_T).
$$

If $X_n\to X_\infty$ a.s., then also:

$$
E(X_T)\ge E(X_\infty).
$$

This uses Fatou’s lemma and the positivity of $X_n$.

---
