# 23 — Conditioning, UI vs DCT, Reverse Martingales
STT 882  
March 14, 2025

## 1. Setup
Let $\{Z_n\}$ be IID.  
Since they are independent, conditioning on $\sigma\{Z_{n_k}\}$ behaves differently from the usual filtration conditioning.

Define
$$
X_n =
\begin{cases}
Z_{n_k}, & n \in \{n_k : k \ge 1\}, \\
0, & n \notin \{n_k : k \ge 1\}.
\end{cases}
$$

Then:
- The subsequence $\{Z_{n_k}\}$ is IID.
- $\mathbb E(Z_{n}) = \mathbb E(Z_1)$.
- $\{X_n\}$ is uniformly integrable.
- But **after conditioning**, UI may be lost and **DCT may fail**.

---

## 2. Loss of DCT under conditioning
Your notes (p.1–2) show:

$$
P\left(X_n \xrightarrow[n\to\infty]{a.s.} 0\right)=1,
\qquad
P_Y\left(X_n \xrightarrow[n\to\infty]{a.s.} 0\right)=1.
$$

Even though the convergence survives, the dominated convergence theorem does **not**.

If $Y \ge |W_n|$ and $\mathbb E|Y|<\infty$, then
$$
E_{\mathcal F}(Y) 
\;\ge\; 
E_{\mathcal F}(|W_n|) 
\;\ge\; 
| E_{\mathcal F}(W_n) |
\quad \text{a.s.}
$$

This shows that conditional expectations interact differently with domination.

---

## 3. DCT *under conditional expectation*
Suppose:

- $Y_n \to Y$ a.s.,
- $|Y_n| \le Z$ for all $n$,
- $\mathbb E(Z) < \infty$,
- and $\mathcal F_n \uparrow \mathcal F$.

Then:
$$
E_{\mathcal F_n}(Y_n) \xrightarrow[n\to\infty]{a.s.} E_{\mathcal F}(Y).
$$

### Proof sketch (from p.2)

Write $W_n = Y_n - Y$.  
Then:

- $|W_n| \to 0$,
- $|W_n| \le 2Z$, and $\mathbb E(2Z) < \infty$.

Therefore,
$$
|E_{\mathcal F_n}(W_n)| 
\le 
E_{\mathcal F_n}(|W_n|) 
\le 
\limsup_{n\to\infty} E_{\mathcal F_n}(|W_n|).
$$

To finish, use the tail supremum trick:

$$
E_{\mathcal F_n}(|W_n|) 
\le 
E_{\mathcal F_n}\Big( \sup_{k \ge 0} |W_{N+k}| \Big)
\xrightarrow[N\to\infty]{a.s.} 0.
$$

Thus the conditional dominated convergence theorem holds in this setting.

---

## 4. Reverse (Backwards) Martingales
(Durrett §5.6, p.225)

A **reverse martingale** is indexed by *negative integers*:

$$
\{\mathcal F_{-n}\}_{n\ge 0}, \qquad \mathcal F_{-(n+1)} \subset \mathcal F_{-n}.
$$

A sequence $\{X_{-n}\}$ is a reverse martingale if:
$$
E(X_{-n} \mid \mathcal F_{-(n+1)}) = X_{-(n+1)}.
$$

### Key facts (from p.2–3)

1. The filtration is decreasing:
   $$
   \mathcal F_0 \supset \mathcal F_{-1} \supset \mathcal F_{-2} \supset \cdots
   $$

2. Reverse martingale convergence theorem (RMCT):
   $$
   X_{-n} \xrightarrow[n\to\infty]{a.s.,\, L^1} X_{-\infty}.
   $$

3. Moreover,
   $$
   X_{-\infty} 
   = 
   E(X_0 \mid \mathcal F_{-\infty}),
   \qquad
   \mathcal F_{-\infty} = \bigcap_{n=1}^\infty \mathcal F_{-n}.
   $$

### Proof sketch (from your notes)

For $A \in \mathcal F_{-n}$:

$$
E(X_0; A)
= E(X_{-n}; A)
\to E(X_{-\infty}; A).
$$

Thus $X_{-\infty} = E(X_0 \mid \mathcal F_{-\infty})$.

Reverse filtrations “shrink” and the variables become more constant as conditioning increases.

---

## 5. Application: Proving the SLLN
This is where the reverse martingale theorem is used.

- For IID $X_i$, define  
  $$
  \mathcal F_n = \sigma(X_n, X_{n+1}, \ldots)
  $$
  which is a **reverse filtration**.
- Then
  $$
  \frac{S_n}{n} = E(X_1 \mid \mathcal F_n)
  $$
  is a reverse martingale.

RMCT tells us:
$$
\frac{S_n}{n} \xrightarrow[n\to\infty]{a.s.} E(X_1 \mid \mathcal F_\infty)
= E(X_1)
$$
giving the **Strong Law of Large Numbers**.

---

## 6. Summary of Lecture 24

- UI can be destroyed by conditioning.
- DCT *can* be restored under appropriate conditional expectations.
- Reverse martingales behave like forward martingales under a reversed filtration.
- Reverse martingale convergence theorem leads directly to the SLLN.

