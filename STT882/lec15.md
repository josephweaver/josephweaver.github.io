# 15 — Extended Borel–Cantelli II, Polya’s Urn, Martingales
STT 882  
Feb 17, 2025

## Setup from last time
We have a martingale
$$
X_0 = 0,\qquad \{X_n,\mathcal F_n\}_{n\ge 0} \ \text{MG},
$$
with bounded increments
$$
|D_k| = |X_k - X_{k-1}| \le M < \infty \quad\text{a.s.},\ k\ge 1.
$$

Then
$$
\Omega = C \cup D,\qquad C\cap D = \varnothing,
$$
where
$$
C = \left\{ \lim_{n\to\infty} X_n = x,\ |x|<\infty \right\},
$$
$$
D = \left\{ \lim_{n\to\infty} X_n = +\infty,\ \lim_{n\to\infty} X_n = -\infty \right\}.
$$

---

# Extended Borel–Cantelli II

Let  
- $A_n \in \mathcal F_n,\ n\ge 0,$  
- $\mathcal F_n \subset \mathcal F_{n+1}$.

**Claim**
$$
\{ A_n \ \text{i.o.} \}
  = \left\{ \sum_{n=1}^\infty \mathbf 1_{A_n} = \infty \right\}
  = \left\{ \sum_{n=1}^\infty P_{\mathcal F_{n-1}}(A_n) = \infty \right\}.
$$

### Proof idea
Define the martingale
$$
Z_n = \sum_{k=1}^n\Big( \mathbf 1_{A_k} - P_{\mathcal F_{k-1}}(A_k) \Big),\qquad Z_0=0,
$$
which is a sum of *increasing predictable processes*.  
Also let
$$
Y_n = \sum_{k=1}^n \mathbf 1_{A_k},
$$
which is increasing, hence a submartingale.

Because  
- $\{X_n\}$ is a MG,  
- $|D_n|\le 1$,  
- bounded increments satisfy the submartingale convergence theorem,

on the set $C$ we have:
$$
\sum_{n=1}^\infty \mathbf 1_{A_n} = \infty 
\quad\text{iff}\quad 
\sum_{n=1}^\infty P_{\mathcal F_{n-1}}(A_n) = \infty.
$$

On $D$ (the divergent sets), both diverge automatically.

---

# Polya's Urn Scheme  
*(Durrett §5.3.2 p.205)*

Initial urn contains  
- $g$ green marbles,  
- $r$ red marbles.

At each draw:
1. Pick a marble uniformly at random.  
2. Replace it and **add $c$ more of the same color**.

Let  
- $G_n =$ number of greens after $n$ selections,  
- $R_n =$ number of reds,  
- total $G_n + R_n = g + r + nc.$

Define the fraction of greens:
$$
X_0 = \frac{g}{g+r},\qquad
X_n = \frac{G_n}{G_n + R_n},\quad 0\le X_n \le 1.
$$

Probability next draw is green:
$$
P(\text{green at }n+1 \mid \mathcal F_n) = X_n.
$$

### Claim: $\{X_n, \mathcal F_n\}$ is a martingale.
Check:
$$
X_{n+1} =
\begin{cases}
\dfrac{G_n + c}{g+r+(n+1)c} & \text{with prob } \dfrac{G_n}{g+r+nc},
\dfrac{G_n}{g+r+(n+1)c} & \text{with prob } \dfrac{R_n}{g+r+nc}.
\end{cases}
$$

Compute:
$$
E[X_{n+1}\mid \mathcal F_n]
= \frac{G_n}{g+r+nc}
\cdot \frac{G_n + c}{g+r+(n+1)c}
+ \frac{R_n}{g+r+nc}
\cdot \frac{G_n}{g+r+(n+1)c}
= X_n.
$$

### Martingale convergence theorem
Since $0\le X_n\le 1$, MGCT gives:
$$
X_n \xrightarrow[n\to\infty]{a.s.} X,\qquad
E|X_n - X|\to 0.
$$

The limit $X$ is **random**, not deterministic.

### Distribution of the limit
$$
X \sim \operatorname{Beta}\left(\frac{g}{c},\, \frac{r}{c}\right),
\qquad 0\le x\le 1.
$$

Density:
$$
f_X(x) = C_{g+r,c}\, x^{g/c -1} (1-x)^{r/c -1}.
$$

---

# Radon–Nikodym via Martingales (Example)

Let $\mu$ and $\gamma$ be two probability measures on $([0,1],\mathcal B)$.  
Let
$$
\rho = \frac{\mu+\gamma}{2}.
$$

Partition $[0,1]$ dyadically:
$$
I_{n,k} = \left( \frac{k-1}{2^n},\frac{k}{2^n} \right),\qquad k=1,\dots, 2^n.
$$

Define
$$
X_n(t) = \frac{\mu(I_{n,k})}{\rho(I_{n,k})},\qquad t\in I_{n,k}.
$$

Then:
- $\mathcal F_n = \sigma(I_{n,k})$ is an increasing filtration,
- $0\le X_n \le 2$,
- $\{X_n,\mathcal F_n\}$ is a martingale.

### Check the martingale property
For each interval $I_{n,k}$:
$$
\int_{I_{n,k}} X_{n+1}\, d\rho
= \mu(I_{n,k})
= \int_{I_{n,k}} X_n\, d\rho.
$$

Thus $E[X_{n+1}\mid \mathcal F_n] = X_n$.

By MGCT,  
$$
X_n \to X \quad \rho\text{-a.s.,}\qquad 0\le X\le 2.
$$

### Reconstruction of measure
For any Borel set $A$,
$$
\mu(A) = \int_A X\, d\rho.
$$

First show this for $A\in \mathcal F_n$, then extend to  
$\bigcup_n \mathcal F_n$, then to all Borel sets via Dynkin’s π–λ theorem.

---

# Summary
- Extended Borel–Cantelli II:  
  $\sum 1_{A_n}=\infty$ iff $\sum P_{\mathcal F_{n-1}}(A_n)=\infty.$
- Polya’s urn: the color fraction is a martingale;  
  $X_n\to X\sim\mathrm{Beta}(g/c,r/c).$
- Dyadic martingale construction shows the Radon–Nikodym derivative exists.

