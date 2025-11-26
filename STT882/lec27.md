# 27 — Central Limit Theorem for Martingales
STT 882  
March 24, 2025

## Central Limit Theorem (for Martingales)

**Two proof strategies**
- **Dvoretzky** — uses a Taylor expansion.
- **Hille** — uses characteristic functions.

This result relates closely to the **autoregressive proof** of CLT.

---

## **Lindeberg–Feller CLT for Martingale Differences**

We have a martingale-difference triangular array:

$$
\{D_{n,j},\,\mathcal{F}_{n,j}\}_{1 \le j \le n}, \qquad n=1,2,\ldots
$$

with

$$
E[D_{n,j}\mid \mathcal{F}_{n,j-1}]=0, 
\qquad
E[D_{n,j}^2] < \infty .
$$

### **Theorem (Martingale CLT)**  
If:

1. **Conditional variances converge to 1**  
   $$
   \sum_{j=1}^n E[D_{n,j}^2 \mid \mathcal{F}_{n,j-1}]
   \xrightarrow{P} 1 ,
   $$

2. **Lindeberg condition**
   $$
   \sum_{j=1}^n E\!\left(D_{n,j}^2 \mathbf{1}_{\{|D_{n,j}|>\varepsilon\}} \mid \mathcal{F}_{n,j-1}\right)
   \xrightarrow{P} 0,
   \quad \forall \varepsilon>0,
   $$

then

$$
S_n = \sum_{j=1}^n D_{n,j} \Rightarrow N(0,1).
$$

### **Optional strengthening**
We may add:

3. **Uniform bound (predictability condition)**  
   $$
   \sum_{j=1}^n E[D_{n,j}^2\mid\mathcal{F}_{n,j-1}] \le 2, 
   \qquad\text{a.s. for all }n,
   $$
which allows use of a **stopping time**.

Define the stopping index:

$$
T_n = \max\left\{ j : \sum_{k=1}^j E(D_{n,k}^2\mid \mathcal{F}_{n,k-1}) \le 2 \right\}.
$$

Then:

$$
D_{n,j} \mapsto D_{n,j}\,\mathbf{1}_{\{j\le T_n\}}
$$

and

$$
P(T_n = n) \to 1.
$$

---

## **Goal:**  
Show the characteristic functions converge:

$$
E[e^{it S_n}] \longrightarrow e^{-t^2/2},
\qquad t\in\mathbb{R}.
$$

---

## **Key decomposition** (Page 1 figure)

$$
E\!\left[e^{itS_n}\right]
=
E\!\left[
\prod_{k=1}^n 
\frac{e^{itD_{n,k}}}{E(e^{itD_{n,k}} \mid \mathcal{F}_{n,k-1})}
\right].
$$

Define

$$
E(e^{itD_{n,k}}\mid\mathcal{F}_{n,k-1}) = 1 + r_{n,k},
$$

where

$$
r_{n,k} 
= E\!\left[e^{it D_{n,k}} - 1 - itD_{n,k} \mid\mathcal{F}_{n,k-1}\right].
$$

---

## **Step 1: Show three key properties** (Page 2)

1. **Sum of remainders approaches the Gaussian variance term**
   $$
   \sum_{j=1}^n r_{n,j} \xrightarrow{P} -\frac{t^2}{2}.
   $$

2. **Uniform ℓ¹ bound**
   $$
   \sum_{j=1}^n |r_{n,j}| \le 2t^2.
   $$

3. **Maximum term goes to zero**
   $$
   \max_{1\le j\le n} |r_{n,j}| \xrightarrow{P} 0.
   $$

---

## **Step 2: Use product lemma (Lemma 8.81)**

A general fact (page 2 bottom):

> If a triangular array $a_{n,m}$ satisfies  
> 1) $\sum_{m=1}^n a_{n,m}\to a$,  
> 2) $\sup_n \sum_m |a_{n,m}| <\infty$,  
> 3) $\max_m |a_{n,m}| \to 0$,  
> then  
> $$
> \prod_{m=1}^n (1 + a_{n,m}) \to e^a.
> $$

Applying this to $a_{n,m}=r_{n,m}$, we get

$$
\prod_{k=1}^n (1 + r_{n,k}) \xrightarrow{P} e^{-t^2/2}.
$$

Thus,

$$
E[e^{itS_n}] \to e^{-t^2/2},
$$

so $S_n \Rightarrow N(0,1)$.

---

# **Autoregressive Example**

Consider the AR(1) model:

$$
X_n = \theta X_{n-1} + U_n,
\qquad n\ge 1, \ |\theta|<1,
$$

with innovations $U_n$ i.i.d., mean $0$, variance $\sigma^2$, and $X_0$ independent of $\{U_n\}$.

### **Least-squares estimator**

$$
\hat{\theta}_n
=
\arg\min_{\theta}
\sum_{k=1}^n (X_k - \theta X_{k-1})^2.
$$

Solve normal equation:

$$
(\alpha - \theta\beta,\beta)=0,
$$

where  
$$
\alpha = (X_1,\ldots,X_n),\qquad \beta=(X_0,\ldots,X_{n-1}).
$$

Thus

$$
\hat{\theta}_n = \frac{(\alpha,\beta)}{(\beta,\beta)}.
$$

### **Asymptotic normality**

$$
\sqrt n(\hat\theta_n - \theta)
=
\frac{\sqrt n \sum_{k=1}^n U_k X_{k-1}}{\sum_{k=1}^n X_{k-1}^2}
\stackrel{d}{\longrightarrow}
N\!\left(0,\ \frac{\sigma^2}{E[X_{0}^2]}\right).
$$

(Derivation to be finished “on Wednesday”, per handwritten note.)

---

# **End of Lecture 28**
