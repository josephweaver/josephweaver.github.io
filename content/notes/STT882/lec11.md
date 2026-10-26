# 11 — Doob’s Upcrossing Lemma and Martingale Convergence



## 1. Setup
Let $(\Omega,\mathcal{F},P)$ be a probability space and let  
$\{X_n,\mathcal{F}_n\}_{n\ge 0}$ be a **submartingale**.

Fix two constants  
$$a < b.$$

We study how often the process “travels upward” from $a$ to $b$.
This leads to **upcrossings**, a key step in proving the **Martingale Convergence Theorem**.

---

## 2. Upcrossing Stopping Times

Define a sequence of stopping times:

- **Initialization**:  
  $$T_0 = 1.$$

- **Down-cross detection**:
  $$
  T_{2k-1} = \inf\{n > T_{2k-2} : X_n \le a\}, \qquad k\ge 1.
  $$

- **Up-cross detection**:
  $$
  T_{2k} = \inf\{n > T_{2k-1} : X_n \ge b\}, \qquad k\ge 1.
  $$

Define the **number of completed upcrossings** of the interval $[a,b]$ before time $n$:
$$
U_n^{a,b} = \sum_{k\ge 1} \mathbf{1}_{\{T_{2k} \le n\}}.
$$

---

## 3. The Upcrossing Lemma

Durrett’s version states:

> **Upcrossing Lemma**  
> For any submartingale $\{X_n,\mathcal{F}_n\}$,
> $$
> (b-a)\, \mathbb{E}[U_n^{a,b}] 
> \;\le\;
> \mathbb{E}\big[(X_n-a)^+\big] - \mathbb{E}\big[(X_0-a)^+\big].
> $$

In particular,
$$
(b-a)\,E[U_n^{a,b}]
\;\le\;
E[X_n^+] + |a|.
$$

This inequality is the engine behind controlling how often the process can oscillate between two levels.

---

## 4. Predictable Processes and the Upcrossing Argument

On page 1 and 2 of the lecture notes :contentReference[oaicite:1]{index=1}, the process  
$$
H_m = 
\mathbf{1}_{\{T_{2k} \ge m\}}
-
\mathbf{1}_{\{T_{2k-1} \ge m\}}
$$
is introduced.  
This $H_m$ is **predictable**, meaning $H_m$ is measurable with respect to $\mathcal{F}_{m-1}$.

The key transformation:

### The stochastic integral
$$
(H\cdot X)_n = \sum_{m=1}^n H_m (X_m - X_{m-1})
$$
tracks profit from buying at a downcrossing and selling at an upcrossing.

A clean version of the inequality from the notes:

$$
(b-a) U_n^{a,b} 
\;\le\; (H\cdot X)_n.
$$

Because for submartingales,
$$
E[(H\cdot X)_n] \ge 0,
$$
we obtain the Upcrossing Lemma.

---

## 5. Dealing With Down-Crossings

To avoid “re-entry” below $a$, define the truncated process:
$$
Y_k = a + (X_k - a)^+ 
     = 
\begin{cases}
X_k, & X_k > a, \\
a, & X_k \le a .
\end{cases}
$$

Then the number of upcrossings of $X$ equals the number of upcrossings of $Y$:
$$
U_n^{a,b}(X) = U_n^{a,b}(Y).
$$

This allows one to stay within the domain where the submartingale property behaves nicely, eliminating issues caused by drops below $a$.

---

## 6. Doob’s Martingale Convergence Theorem

The upcrossing lemma gives the main tool for the proof.

### Theorem (Doob)
Let $\{X_n,\mathcal{F}_n\}$ be a submartingale.  
If
$$
\sup_n E[X_n^+] < \infty,
$$
then:

1. $X_n \to X$ almost surely,
2. $X \in L^1$.

This is shown on page 3 of your notes :contentReference[oaicite:2]{index=2}.

---

## 7. Example: Simple Random Walk Stopped at Level 1

Let $\{\varepsilon_k\}$ be i.i.d. with $P(\varepsilon_k = \pm 1)=1/2$,  
$$
S_n = \sum_{k=1}^n \varepsilon_k, \qquad S_0 = 0.
$$

Let
$$
T = \inf\{n : S_n = 1\}
$$
be the hitting time of level 1.

The stopped process $\{S_{T\wedge n}\}$ is a **submartingale** with bounded positive part:
$$
S_{T\wedge n}^+ \le 1.
$$

By Doob’s theorem,
$$
S_{T\wedge n} \xrightarrow{\text{a.s.}} S_T = 1,
$$
so $T<\infty$ a.s.

However, $\{S_{T\wedge n}\}$ is **not uniformly integrable**, hence:
$$
E(S_{T\wedge n}) = 0 \quad\text{for all }n,
\qquad
E(S_T)=1.
$$

---

## 8. Example: Exponential Martingale

Let $Z_k \sim N(0,1)$ i.i.d. and
$$
S_n = \sum_{k=1}^n Z_k.
$$

Define
$$
Y_n = \exp\left(S_n - \frac{n}{2}\right).
$$

Page 2–3 of the notes :contentReference[oaicite:3]{index=3} show:

- $\{Y_n\}$ is a **martingale**.
- $Y_n \ge 0$.
- $E[Y_n]=1$ for all $n$.

By the martingale convergence theorem,  
$$
Y_n \to Y \quad\text{a.s.}
$$

But,
$$
Y_n = \exp\left(n\left(\frac{S_n}{n}-\frac{1}{2}\right)\right)
\to \exp(-\infty) = 0,
$$
since $S_n/n \to 0$ a.s.  
Thus the limit is degenerate.

The martingale is *not UI*, so the limit is not integrable:
$$
E(Y) = 0 \ne E(Y_n)=1.
$$

---

## 9. Stopping with a Stopping Time

If $T$ is a stopping time and $H_n = \mathbf{1}_{\{n\le T\}}$, then
$$
(H\cdot X)_n = X_{T\wedge n} - X_0.
$$

This gives a compact way of expressing stopped processes and lets one lift submartingales/supermartingales through stopping times.

---

## Summary
- Upcrossings quantify oscillations between $a$ and $b$.
- Doob’s Upcrossing Lemma controls expected oscillations using submartingale structure.
- This leads directly to **Doob’s Martingale Convergence Theorem**.
- Examples: stopped random walk, exponential Gaussian martingale.
