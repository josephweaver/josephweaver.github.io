# 18 — Doob's $L^p$ Inequality and Branching Processes



## Doob’s $L^p$ Inequality (for $p>1$)
Let $\{X_n, \mathcal{F}_n\}_{n\ge 0}$ be a submartingale with $X_n \ge 0$ a.s.  

Then for any $p>1$,
$$
E\!\left( \max_{0\le k\le n} X_k^p \right)
 \le E(X_n^p)\left(\frac{p}{p-1}\right)^p.
$$

For $p=2$,
$$
\left(\frac{p}{p-1}\right)^p = \left(\frac{2}{1}\right)^2 = 4.
$$

**Remarks**

- For a submartingale that is not necessarily nonnegative, use $(X_n^+)_{n\ge 0}$.
- For an honest martingale, the inequality applies to $(|X_n|)_{n\ge 0}$.

---

## Application: $L^p$ Convergence of a Martingale
Let $\{X_n,\mathcal{F}_n\}$ be a martingale with
$$
\sup_n E(|X_n|^p) < \infty.
$$
Then:

1. $X_n \to X$ a.s.
2. $E|X_n - X|^p \to 0$.

**Reasoning:**  
$$
|X_n - X|^p \le 2^p \max_{1\le k\le n} |X_k|^p,
$$
and the RHS is integrable by Doob's inequality.  
Thus the dominating function allows DCT.

If we want $E|X_n - X|\to 0$, we use:  
$$
\sup_n E(|X_n|^p)<\infty \quad\Rightarrow\quad \{X_n\}\text{ uniformly integrable}.
$$

---

# Branching Processes

Let $\{\xi_{n,i}\}$ be i.i.d. offspring counts with  
$$
P(\xi=0)>0,\qquad m = E(\xi) < \infty.
$$

Define the Galton–Watson process:
$$
Z_0=1,\qquad Z_{n+1} = \sum_{i=1}^{Z_n} \xi_{n+1,i}.
$$

Let $\mathcal{F}_n = \sigma(Z_1,\dots,Z_n)$.

### Claim
$$
X_n = \frac{Z_n}{m^n}
$$
is a martingale.

**Check:**
$$
E\left( \frac{Z_{n+1}}{m^{n+1}} \mid \mathcal{F}_n \right)
= \frac{m\,Z_n}{m^{n+1}}
= \frac{Z_n}{m^n}
= X_n.
$$

---

# Extinction Behavior

## Case 1: $m \le 1$
Then
$$
Z_n \xrightarrow[n\to\infty]{a.s.} 0.
$$
Proof idea:  
$\{X_n\}$ is a nonnegative supermartingale when $m\le 1$:  
$$
X_n = \frac{Z_n}{m^n} \text{ is decreasing.}
$$
Thus by MGCT:
$$
X_n \to X_\infty \quad\text{a.s.}
$$
Since integers converge only if eventually constant and extinction is possible, we must have $Z_n\to 0$.

Thus extinction probability is:
$$
e = 1.
$$

---

## Case 2: $m>1$
Here extinction probability satisfies:
$$
e < 1,
$$
and is equal to the smallest positive solution of the fixed-point equation:
$$
e = \varphi(e), \qquad 
\varphi(s)=E(s^\xi)=\sum_{k=0}^\infty P(\xi=k)s^k.
$$

**Properties of generating function $\varphi$:**

- Increasing, convex.
- $\varphi(1)=1$.
- $\varphi(0)=P(\xi=0)>0$.
- Slope $\varphi'(1)=E(\xi)=m>1$.

Graphically, the line $y=s$ intersects $\varphi(s)$ at $s=1$ and one more point in $[0,1)$. That point is extinction probability $e$.

---

# Doob’s Inequality in the Supercritical Case

Assume now:
$$
\mathrm{Var}(\xi)=\sigma^2<\infty,\qquad m>1,\qquad P(\xi=0)>0.
$$

Still:
$$
X_n = \frac{Z_n}{m^n}
$$
is a martingale. Then by MGCT:
$$
X_n \xrightarrow[n\to\infty]{a.s.} X.
$$

Compute the quadratic variation term:
$$
E_{\mathcal{F}_{n-1}}\!\left[(X_n - X_{n-1})^2\right]
= \mu^{-2n} E\big[ (Z_n - m Z_{n-1})^2 \mid \mathcal{F}_{n-1} \big]
= \mu^{-2n} \sigma^2 Z_{n-1}.
$$

Taking expectation:
$$
E(X_n - X_{n-1})^2
= \mu^{-2n} \sigma^2 E(Z_{n-1})
= \mu^{-2n} \sigma^2 m^{n-1}
= \mu^{-(n+1)} \sigma^2.
$$

Thus
$$
E(X_n^2)
= 1 + \sigma^2 \sum_{k=1}^n \mu^{-(k+1)}
\le 1+\sigma^2\sum_{k=1}^\infty \mu^{-(k+1)}
<\infty.
$$

Hence Doob’s $L^2$ inequality implies:
$$
E|X_n - X|^2 \to 0,
$$
and therefore:
$$
E(X)=1.
$$

This is the key step in the **Kesten–Stigum theorem**.

---

# Kesten–Stigum Theorem (optimal result)
Assume $m>1$. Then:
$$
\frac{Z_n}{m^n} \xrightarrow[n\to\infty]{a.s.} 0
\quad\text{with positive probability}
$$
**iff**
$$
E\big[\xi \log^{+}(\xi)\big] < \infty.
$$

