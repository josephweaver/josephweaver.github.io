# 12 — Doob’s Upcrossing Lemma and Martingale Convergence
STT 882  
Feb 10, 2025

## 1. Convex Transformations of Martingales

Let $\{X_n, \mathcal{F}_n\}_{n\ge1}$ be a martingale.  
Let $\varphi:\mathbb{R}\to\mathbb{R}$ be a **convex** function with  
$$E|\varphi(X_n)| < \infty,\qquad n\ge1.$$

### Theorem A  
Then the process  
$$
\{\varphi(X_n), \mathcal{F}_n\}_{n\ge1}
$$  
is a **submartingale**.  
(If $\varphi$ is concave, it becomes a supermartingale.)

**Proof sketch:**  
Using Jensen’s inequality,
$$
E[\varphi(X_{n+1}) \mid \mathcal{F}_n]
\ge \varphi(E[X_{n+1}\mid \mathcal{F}_n])
= \varphi(X_n).
$$

### Example  
$\varphi(x)=x^2$ is convex, so $\{X_n^2\}$ is a submartingale.

---

## 2. Convex + Increasing Functions Preserve Submartingales

If $\{X_n\}$ is a submartingale and $\varphi$ is **convex and increasing**,  
then $\{\varphi(X_n)\}$ is also a **submartingale**.

---

## 3. Powers of Martingales

For $p\ge1$:  
If $\{X_n\}$ is a martingale then $|X_n|^p$ is a **submartingale**.

---

## 4. Optional Stopping: Last Time and Stopping Times

If $\{X_n,\mathcal{F}_n\}$ is a MG (or subMG or superMG) and $T$ is a stopping time,  
then  
$$
\{X_{n\wedge T}, \mathcal{F}_n\}
$$
is again a MG (or subMG, superMG).

This is the “**we can stop and still have a MG**” rule.

---

## 5. Doob’s Upcrossing Framework

Fix real numbers $a<b$.  
Define stopping times:
$$
\begin{aligned}
T_0 &= 1, \\
T_{2k-1} &= \inf\{n > T_{2k-2} : X_n \le a\},\\
T_{2k} &= \inf\{n > T_{2k-1} : X_n \ge b\}.
\end{aligned}
$$

Define the number of completed upcrossings of $(a,b)$ by time $n$:
$$
U_n^{a,b}.
$$

---

## 6. Doob’s Upcrossing Lemma

For a **submartingale** $\{X_n\}$,

$$
(b-a) E[U_n^{a,b}]
\;\le\;
E[(X_n-a)^+] - E[(X_0-a)^+].
$$

Since $(x+o)^+ \le c^+ + d^+$, we get the bound:
$$
(b-a)E[U_n^{a,b}]
\;\le\;
E[X_n^+] + |a|.
$$

This shows $U_n^{a,b}$ is finite almost surely when $\sup_n E[X_n^+] < \infty$.

---

## 7. Martingale Convergence Theorem (MCT)

Let $\{X_n,\mathcal{F}_n\}$ be a submartingale (or supermartingale).  
Assume  
$$
\sup_{n} E[X_n^+] < \infty.
$$

Then:

1. **Almost sure convergence**:  
   $$
   X_n \xrightarrow{\text{a.s.}} X.
   $$

2. **$L^1$–integrability of the limit**:  
   $$
   E|X| < \infty.
   $$

### Remark  
For submartingales,  
$$
\sup_n E[X_n^+] < \infty
\quad\Longleftrightarrow\quad
\sup_n E|X_n| < \infty.
$$

---

## 8. Example 1 — Stopped Simple Symmetric Random Walk

Let $S_n = \sum_{k=1}^n \varepsilon_k$, where $\varepsilon_k=\pm1$ iid.  
Let  
$$
T = \inf\{n : S_n = 1\}.
$$

Then $\{S_{T\wedge n}\}$ is a submartingale,  
and  
$$
\sup_n E[(S_{T\wedge n})^+] \le 1.
$$

Thus by MGCT:
$$
S_{T\wedge n} \to 1 \quad \text{a.s.}
$$

But it is **not** uniformly integrable, since  
$$
E[S_{T\wedge n}] = 0,\qquad E[1]=1.
$$

---

## 9. Example 2 — Exponential Martingale for Normal Increments

Let $\{Z_k\}$ be iid $N(0,1)$ and  
$$
S_n = \sum_{k=1}^n Z_k,\qquad
Y_n = e^{S_n - n/2}.
$$

Then $\{Y_n\}$ is a martingale.

Since $Y_n \ge 0$ and $E(Y_n)=1$,  
by MCT:
$$
Y_n \to Y \quad \text{a.s.}
$$

But:
$$
Y_n = e^{n\left(\frac{S_n}{n} - \frac12\right)},
\qquad
\frac{S_n}{n} \to 0 \quad \text{a.s.}
$$

Thus
$$
Y_n \to 0 \quad\text{a.s.}
$$

and the martingale is **not** uniformly integrable since  
$$
E(Y_n)=1 \not\to 0.
$$

---

# Summary

- Convex (and convex + increasing) transforms of martingales produce submartingales.  
- Optional stopping preserves MG/subMG/superMG when stopping times are used.  
- Doob’s Upcrossing Lemma is the key step behind the Martingale Convergence Theorem.  
- MCT: bounded positive expectations imply almost sure convergence.  
- Examples illustrate failure of uniform integrability despite a.s. convergence.

