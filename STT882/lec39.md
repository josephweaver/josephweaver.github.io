# 39 — Embedding Random Variables into Brownian Motion (Skorokhod Embedding) and CLT via Brownian Motion
STT 882  
April 25, 2025

## 1. Thursday’s CB06 Theorem (Review)
Suppose we have a discrete random variable
$$
P(X = x_k) = p_k,\qquad k=1,\dots,n,
$$
with
$$
E[X]=0.
$$

**Theorem:**  
There exists a stopping time $\tau$ such that
$$
B^0(\tau)\ \overset{d}{=}\ X,
\qquad
E[\tau] = E(X^2).
$$

That is, Brownian motion can be stopped so that its **stopped value** has the same distribution as $X$, and the **expected stopping time equals the variance**.

---

## 2. Why $E[\tau]=E(B_\tau^2)$

We use the martingale
$$
M_t = B_t^2 - t.
$$

Since at the stopping time $\tau$,
$$
|B^0_{\tau\wedge t}| \le C < \infty
$$
(bounded because $X$ only takes finitely many values), the stopped process is **uniformly integrable**, hence a true martingale.

Thus,
$$
E[B^2_{\tau \wedge t} - (\tau \wedge t)] = 0
\quad \text{for all } t,
$$
and taking $t\to\infty$,
$$
E[B_\tau^2] = E(\tau).
$$

If $X$ takes values $x_k$, then
$$
E[B_\tau^2] = E[X^2].
$$

---

## 3. Induction on the Number of Values of $X$

### Base case: $X$ takes only one value
If $X = 0$, take
$$
\tau = \inf\{t\ge 0 : B_t = 0\} = 0.
$$

### Inductive step:
Assume the result holds for all random variables taking $n$ distinct values.

Let
$$
X \in \{x_1 < x_2 < \cdots < x_{n+1}\}.
$$

Partition the probability space using
$$
\mathcal{F}_1 = \sigma\{X = x_k,\ k\le n\ \} \cup \{X = x_{n+1}\}.
$$

Define
$$
Y = E[X \mid \mathcal{F}_1].
$$

Then:

- $Y$ takes only **$n$** distinct values (by collapsing the last two values of $X$),
- $E[Y]=0$,
- By induction, there is a stopping time $\eta$ such that
  $$
  B(\eta) \overset{d}{=} Y.
  $$

Now **refine** inside each event $\{Y = y_k\}$ to reach the desired value of $X$.

Construct
$$
\tau = \eta + \tau',
$$
where $\tau'$ is a (conditionally defined) stopping time such that
$$
B(\eta + \tau') - B(\eta) \overset{d}{=} X - Y.
$$

Thus we obtain
$$
B(\tau) = X.
$$

This completes the induction.

---

## 4. General Skorokhod-Type Problem (Continuous Case)

**Problem:**  
Let $X$ be any random variable with  
$$
E[X]=0,\qquad E[X^2]<\infty.
$$

Find a stopping time $\tau$ such that
$$
B(\tau)\ \overset{d}{=} \ X, 
\qquad
E[\tau] = E(X^2).
$$

### Construction outline

Assume $\Omega=\mathbb R$ with Borel $\sigma$-algebra and $P$ the distribution of $X$.

Let $\mathcal{Q}_k$ be partitions of $\mathbb R$:
$$
\mathcal{Q}_1 = \{(-\infty,q_1],(q_1,\infty)\},
$$
$$
\mathcal{Q}_2 = \{(-\infty,q_1], (q_1,q_2], (q_2,\infty)\},
$$
and so on, where $q_1 < q_2 < \cdots < q_n$ are quantiles of $P$.

Define
$$
X_n = E[X \mid \sigma(\mathcal{Q}_n)].
$$

Then:

- $X_n$ has **finitely many values**,
- $X_n \to X$ a.s. and in $L^2$,
- By the discrete embedding, there exist increasing stopping times
  $$
  \tau_1 \le \tau_2 \le \cdots
  $$
  such that
  $$
  B(\tau_n) \overset{d}{=} X_n.
  $$

Since conditional expectation contracts $L^2$:
$$
E[X_n^2] \uparrow E[X^2],
$$
and hence
$$
E[\tau_n]=E[X_n^2]\uparrow E[X^2].
$$

By monotone convergence, $\tau=\lim \tau_n$ satisfies
$$
B(\tau) = \lim B(\tau_n) = X,
\qquad
E[\tau]=E(X^2).
$$

This gives the **Skorokhod embedding theorem** for square-integrable distributions.

---

## 5. Application: Deriving the CLT via Brownian Motion

Let $\{X_k\}_{k=1}^\infty$ be i.i.d. with
$$
E[X_k]=0,\qquad E[X_k^2]=1.
$$

Let
$$
S_n = X_1 + \cdots + X_n.
$$

We want to prove:
$$
\frac{S_n}{\sqrt{n}} \Rightarrow N(0,1).
$$

### Step 1 — Embed each $X_k$ into Brownian motion

Find stopping times $\tau_1,\tau_2,\dots$ such that

- $B(\tau_k) - B(\tau_{k-1}) \overset{d}{=} X_k$,
- $\{\tau_k - \tau_{k-1}\}$ are i.i.d.,
- $E[\tau_k - \tau_{k-1}] = 1$.

Then:
$$
S_n = B(\tau_n).
$$

### Step 2 — Show Brownian rescaling appears

From the notes on page 4 (diagram labelled “A”):  
:contentReference[oaicite:1]{index=1}

$$
\frac{S_n}{\sqrt{n}}
   = \frac{B(\tau_n)}{\sqrt{n}} 
   \approx B\!\left(\frac{\tau_n}{n}\right).
$$

But by the law of large numbers,
$$
\frac{\tau_n}{n}
  = \frac{1}{n}\sum_{k=1}^n (\tau_k-\tau_{k-1})
  \xrightarrow{a.s.} E[\tau_1] = 1.
$$

Thus,
$$
\frac{S_n}{\sqrt{n}}
  = B\left(\frac{\tau_n}{n}\right)
  \xRightarrow[n\to\infty]{}
  B(1)
  \sim N(0,1).
$$

This yields the **Central Limit Theorem** via the Skorokhod embedding principle.

---

# **End of Lecture 40**
