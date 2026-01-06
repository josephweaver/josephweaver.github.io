# Preliminary Exam: Probability — August 2025

**Modality:** In-person  
**Time:** 10:00am – 3:00pm, Friday, August 22, 2025  
**Place:** A102 Wells Hall  

Your goal should be to demonstrate mastery of probability theory and maturity of thought.  
Your arguments should be clear, careful, and complete.

The exam consists of **6 main problems**, each with several steps designed to help you with the overall solution.

**Important:**  
If you cannot solve a certain part of a problem, you still may use its conclusion in a later part.

Please make sure to apply the following guidelines:

1. On each page you turn in, write your assigned code number.  
   **Don’t write your name on any page.**
2. Start each problem on a new page.

---

## Problem 1.

Let $ N \sim \text{Poisson}(\lambda) $, $ \lambda > 0 $.

### (a)
Show the steps to calculate
$$
\varphi_N(t) = E(e^{itN}), \quad t \in \mathbb{R}.
$$

### (b)
Let $ \{W_k\}_{k=1,2,\dots} $ be i.i.d., and assume that $ \{W_k\} $ and $ N $ are independent. Let
$$
X = \sum_{k=0}^N W_k, \quad X = 0 \text{ if } N = 0.
$$

1. Calculate
$$
E\left(e^{itX} \mid \sigma(N)\right).
$$

2. Calculate
$$
\varphi_X(t) = E(e^{itX}), \quad t \in \mathbb{R}.
$$

### (c)
For each $ n = 1,2,\dots $, let $ N_n \sim \text{Poisson}(n) $, $ \{W_{n,k}\}_{k \ge 1} $ be i.i.d., and assume that $ N_n $ and $ \{W_{n,k}\}_{k \ge 1} $ are independent.  

The distribution of $ W_{n,1} $ is given by
$$
P\left(W_{n,1} = \frac{1}{\sqrt{n}}\right) = \frac{1}{2}
= P\left(W_{n,1} = -\frac{1}{\sqrt{n}}\right).
$$

Finally, let
$$
X_n = \sum_{k=0}^{N_n} W_{n,k}.
$$

1. Calculate
$$
\varphi_{X_n}(t) = E(e^{itX_n}), \quad t \in \mathbb{R}.
$$

2. Prove that $ X_n $ converges in distribution as $ n \to \infty $, and identify the limit distribution.

---

## Problem 2.

### (a)
1. Let $ X $ be a symmetric random variable (i.e. $ X \stackrel{d}{=} -X $) with $ P(X = 0) = 0 $.  
   Prove that
   $$
   X = \varepsilon |X| \quad \text{a.s.},
   $$
   where $ |X| $, $ \varepsilon $ are independent, and
   $$
   P(\varepsilon = 1) = \frac{1}{2} = P(\varepsilon = -1).
   $$

2. Let $ X, Y $ be symmetric, independent, and square-integrable random variables with  
   $ P(X = 0) = P(Y = 0) = 0 $.  
   Let
   $$
   \mathcal{H} = \sigma(|X|, |Y|) = \sigma(X^2, Y^2).
   $$
   Prove that
   $$
   E(XY) = 0.
   $$
   Also calculate
   $$
   E_{\,\mathcal{H}}[(X + Y)^2].
   $$

### (b)
Let $ \{B_t, t \ge 0\} $ be standard Brownian motion.  
Let
$$
Q_n = \sum_{k=1}^n D_{k,n}^2,
\quad \text{where } D_{k,n} = B_{t_{k,n}} - B_{t_{k-1,n}},
$$
with
$$
0 = t_{0,n} < t_{1,n} < \cdots < t_{n,n} = 1,
\quad n = 1,2,\dots
$$

1. Calculate $ E(Q_n) $ and $ \operatorname{Var}(Q_n) $.

2. Denote
$$
\Delta_n = \max_{1 \le k \le n} (t_{k,n} - t_{k-1,n}).
$$
Prove that if $ \Delta_n \to 0 $, then
$$
Q_n \to 1 \quad \text{in probability}.
$$

### (c)
We continue with the setup of part (b).  
Assume that
$$
\{t_{k,n}\}_{0 \le k \le n} \subset \{t_{k,n+1}\}_{0 \le k \le n+1}, \quad n = 1,2,\dots,
$$
where $ \{t_{k,n+1}\} $ is a refinement of $ \{t_{k,n}\} $ by addition of one point.

Let $ \{\mathcal{H}_n\}_{n \ge 1} $ be a filtration defined by
$$
\mathcal{H}_n = \sigma\left( \bigcup_{m \ge n} \{D_{k,m}^2, 1 \le k \le m\} \right).
$$
Observe that $ \{\mathcal{H}_n\} $ is decreasing.

1. Find $ E_{\mathcal{H}_n}(Q_n) $.  
   Which type of stochastic process is $ \{Q_n, \mathcal{H}_n\} $?

   **Hint:** The refinement implies that all intervals  
   $ (t_{k-1,n}, t_{k,n}] $ are contained in  
   $ (t_{k-1,n+1}, t_{k,n+1}] $ except one, denoted by  
   $ (t_{k,n}, t_{k+1,n}] $, which satisfies
   $$
   (t_{k,n}, t_{k+1,n}] =
   (t_{k,n+1}, t_{k+1,n+1}] \cup (t_{k+1,n+1}, t_{k+2,n+1}].
   $$

2. Prove that if $ \Delta_n \to 0 $, then
$$
Q_n \to 1 \quad \text{almost surely}.
$$

---

## Problem 3.

Let $ (X,Y) \in \mathbb{R}^2 $ be a random vector.  
The characteristic function of $ (X,Y) $ is defined as
$$
\varphi_{X,Y}(s,t) = E(e^{i(sX + tY)}), \quad (s,t) \in \mathbb{R}^2.
$$

It is known that if two random vectors have identical characteristic functions, then they have the same distribution.

### (a)
Let $ \varphi_X(s) $, $ \varphi_Y(t) $ be the characteristic functions of $ X $, $ Y $.

1. If $ X, Y $ are independent, prove that
$$
\varphi_{X,Y}(s,t) = \varphi_X(s)\varphi_Y(t).
$$

2. If
$$
\varphi_{X,Y}(s,t) = \varphi_X(s)\varphi_Y(t), \quad s,t \in \mathbb{R},
$$
prove that $ X $ and $ Y $ are independent.

### (b)
Let $ X \in \mathbb{R}^3 $ satisfy
$$
X = \sum_{m=1}^n X_m,
$$
where $ X_m \in \mathbb{R}^3 $, $ m=1,\dots,n $, are i.i.d.

The distribution of $ X_1 $ is given by
$$
P(X_1 = \varepsilon_k) = p_{n,k}, \quad k=1,2,3,
$$
where
$$
\varepsilon_1 = (1,0,0), \quad
\varepsilon_2 = (0,1,0), \quad
\varepsilon_3 = (0,0,0),
\quad \sum_{k=1}^3 p_{n,k} = 1.
$$

1. Find the characteristic function of $ X_1 $,
$$
\varphi_{X_1}(t) = E(e^{it^\top X_1}), \quad t \in \mathbb{R}^3.
$$
Also, how is $ X_{1,3} $ distributed?

2. Find the characteristic function of $ X $,
$$
\varphi_X(t) = E(e^{it^\top X}), \quad t \in \mathbb{R}^3.
$$

### (c)
Let $ X_n \in \mathbb{R}^3 $ satisfy
$$
X_n = \sum_{m=1}^n X_{n,m}, \quad n=1,2,\dots,
$$
where $ X_{n,m} $ are i.i.d. with
$$
P(X_{n,1} = \varepsilon_k) = p_{n,k}, \quad k=1,2,3,
\quad \sum_{k=1}^3 p_{n,k} = 1.
$$

**Assumption:**  
$ n p_{n,k} \to \lambda_k $ for $ k=1,2 $, where $ 0 < \lambda_k < \infty $.

1. Prove that
$$
\varphi_{X_n}(t) \to \varphi_{X_\infty}(t),
$$
where $ X_\infty \in \mathbb{R}^3 $ is a random vector.

2. What is the relationship between the first two coordinates of $ X_\infty $?  
   What is the distribution of each coordinate of $ X_\infty $?  
   Justify your answer.

---

## Problem 4.

Let $ X $ be a random variable such that
$$
\sum_{k=1}^\infty P(|X| \ge a_k) < \infty,
$$
where $ \{a_k\}_{k \ge 1} $ is a non-negative, non-decreasing sequence satisfying:

1. $ a_k \to \infty $,
2. There exists $ C < \infty $ such that for each $ n \ge 1 $,
$$
\sum_{k=n}^\infty a_k^{-2} \le C n a_n^{-2}.
$$

Let $ \{X_k\}_{k \ge 1} $ be i.i.d. copies of $ X $, and define
$$
Y_k = X_k \mathbf{1}_{\{|X_k| \le a_k\}}.
$$

### (a)
1. Prove that
$$
\frac{\sum_{k=1}^n X_k \mathbf{1}_{\{|X_k| \ge a_k\}}}{a_n} \to 0
\quad \text{a.s.}
$$

2. If
$$
\frac{\sum_{k=1}^n (Y_k - E Y_k)}{a_n} \to 0 \quad \text{a.s.},
$$
then prove that
$$
\frac{\sum_{k=1}^n (X_k - E Y_k)}{a_n} \to 0 \quad \text{a.s.}
$$

### (b)
1. Let $ a_0 = 0 $. Prove that
$$
\sum_{n=1}^\infty a_n^{-2} E(Y_n^2)
= \sum_{k=1}^\infty E\big(X^2 \mathbf{1}_{\{a_{k-1} < |X| \le a_k\}}\big)
\left(\sum_{n=k}^\infty a_n^{-2}\right).
$$

2. Use part (i) to show that
$$
\sum_{n=1}^\infty a_n^{-2} E(Y_n^2)
\le C \sum_{k=1}^\infty k P(a_{k-1} < |X| \le a_k).
$$

### (c)
1. Prove that
$$
\sum_{k=1}^\infty \frac{Y_k - E(Y_k)}{a_k}
\quad \text{converges a.s.}
$$

2. Prove that
$$
\frac{\sum_{k=1}^n (X_k - E Y_k)}{a_n} \to 0
\quad \text{a.s.}
$$

---

## Problem 5.

Let $ \{X_k, \mathcal{F}_k\}_{k \ge 0} $ be a supermartingale with $ X_0 = 1 $.

Define stopping times:
$$
T_{-1} = T_0 = 0,
$$
$$
T_1 = \inf\{m > 0 : X_m \le 0\},
$$
$$
T_{2k} = \inf\{m > T_{2k-1} : X_m \ge 1\}, \quad k \ge 1,
$$
$$
T_{2k+1} = \inf\{m > T_{2k} : X_m \le 0\}, \quad k \ge 1.
$$

Each interval $ [T_{2k}, T_{2k+1}] $ represents a down-crossing of $ [0,1] $.

Define
$$
D_n(X) = \max\{k \ge 1 : T_{2k-1} \le n\},
$$
with $ D_n(X) = 0 $ if no such $ k $ exists.

### (a)
1. Let $ Y_k = \min(X_k, 1) $.  
   Show that $ \{Y_k, \mathcal{F}_k\} $ is a supermartingale and
   $$
   D_n(X) = D_n(Y) \quad \text{a.s.}
   $$

   Henceforth assume $ X_k \le 1 $.

2. Is $ T_{2D_n-1} $ a stopping time? Explain.

### (b)
For integers $ a < b $, define $ [a,b) = \{a,a+1,\dots,b-1\} $.  
For $ m \ge 1 $, define
$$
H_m(\omega) =
\begin{cases}
1, & \text{if } \exists k \ge 0 \text{ such that } m-1 \in [T_{2k}(\omega), T_{2k+1}(\omega)), \\
0, & \text{otherwise}.
\end{cases}
$$

1. Show that $ \{H_m, \mathcal{F}_m\}_{m \ge 1} $ is predictable.

2. Show that the gambling systems $ (H \cdot X)_n $ and $ ((1-H)\cdot X)_n $ are supermartingales.

### (c)
1. Show that
$$
-D_n \ge (H \cdot X)_{T_{2D_n-1}} \quad \text{a.s.},
$$
and
$$
(H \cdot X)_{T_{2D_n-1}} \ge (H \cdot X)_n \quad \text{a.s.}
$$

2. Prove that
$$
E(D_n) \le E(X_0 - X_n) = 1 - E(X_n).
$$

---

## Problem 6.

Let $ \{X_k\}_{k \ge 1} $ be uncorrelated random variables with
$$
0 < X_k \le M \quad \text{a.s.},
\quad E(X_k) < \infty,
\quad \sum_{k=1}^\infty E(X_k) = \infty.
$$

Define
$$
S_n = \sum_{k=1}^n X_k.
$$

The goal is to prove
$$
\frac{S_n}{E(S_n)} \to 1 \quad \text{a.s.}
$$

### (a)
1. Show that if the result holds for $ M = 1 $, then it holds for all $ M < \infty $.

   Henceforth assume $ M = 1 $.

2. Show that
$$
\operatorname{Var}(S_n) \le E(S_n),
$$
and deduce that
$$
\frac{S_n}{E(S_n)} \to 1 \quad \text{in probability}.
$$

### (b)
Let $ \{a_k\} $ be a strictly increasing sequence with $ a_k \to \infty $, and let
$$
a_k \le E(S_{n_k}) \le 1 + a_k.
$$

If
$$
\frac{S_{n_k}}{E(S_{n_k})} \to 1 \quad \text{a.s.},
$$
prove that
$$
\frac{S_n}{E(S_n)} \to 1 \quad \text{a.s.}
$$

### (c)
1. Show that for all $ \delta > 0 $,
$$
P\left(|S_{n_k} - E(S_{n_k})| > \delta(1+a_k)\right)
\le \frac{1}{\delta^2(1+a_k)}.
$$

2. Let $ a_k = k^3 $. Prove that
$$
\frac{S_n}{E(S_n)} \to 1 \quad \text{a.s.}
$$
