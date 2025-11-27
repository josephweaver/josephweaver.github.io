# **Lecture 41 — Poisson Convergence Under Dependence, Derangements, Empty Boxes, and Compound Poisson Limits**

This lecture extends Poisson convergence beyond independent Bernoullis to certain **dependent** structures such as random permutations and occupancy problems.  
We conclude with the **finite-dimensional Poisson limit theorem**, which leads to **compound Poisson distributions**.

---

# 1. Reminder: Poisson Limit for Triangular Arrays of Bernoulli’s

(Page 1.)

Let $X_{n,k}\in\{0,1,2,\dots\}$.  
Assume:

1. **Rare events:**
   $$
   \sum_{k=1}^n P(X_{n,k}=1)\to\lambda.
   $$
2. **No dominant term:**
   $$
   \max_{1\le k\le n} P(X_{n,k}=1)\to 0.
   $$
3. **Negligible “large counts”:**
   $$
   \sum_{k=1}^n P(X_{n,k}\ge 2)\to 0.
   $$

Then:

$$
S_n=\sum_{k=1}^n X_{n,k}
\quad\Rightarrow\quad
\mathrm{Poisson}(\lambda).
$$

Define:

$$
Y_{n,k}=X_{n,k}\mathbf{1}_{\{X_{n,k}\le 1\}},\qquad
T_n=\sum_{k=1}^n Y_{n,k}.
$$

From (3):

$$
P(S_n\neq T_n)
\le \sum_{k=1}^n P(X_{n,k}\ge 2)\to 0.
$$

So $S_n-T_n\to 0$ in probability, and since $T_n\Rightarrow\mathrm{Pois}(\lambda)$,  
Slutsky gives $S_n\Rightarrow\mathrm{Pois}(\lambda)$.

---

# 2. Poisson Approximation for **Dependent** Events  
## Example: Fixed Points of a Random Permutation

(Pages 1–2.)

Let $\pi$ be a **uniform random permutation** of $\{1,\dots,n\}$.  
Define indicator events:

$$
A_k=\{\pi(k)=k\}\quad\text{(“$k$ is a fixed point”)}.
$$

Let:

$$
S_n=\sum_{k=1}^n \mathbf{1}_{A_k}=\#\{\text{fixed points of }\pi\}.
$$

These events are **not independent**, but the dependence becomes negligible as $n\to\infty$.

### Compute probabilities

- For a single fixed point:
  $$
  P(A_k)=\frac{(n-1)!}{n!}=\frac{1}{n}.
  $$

- For two fixed points:
  $$
  P(A_k\cap A_\ell)=\frac{(n-2)!}{n!}=\frac{1}{n(n-1)}.
  $$

- For $j$ fixed points:
  $$
  P(A_{i_1}\cap\cdots\cap A_{i_j})
  =\frac{(n-j)!}{n!}.
  $$

### Derive $P(S_n=0)$

By inclusion–exclusion (page 2):

$$
\begin{aligned}
P(S_n=0)
 &= 1 - \binom{n}{1}\frac{1}{n} 
    + \binom{n}{2}\frac{1}{n(n-1)}
    - \binom{n}{3}\frac{1}{n(n-1)(n-2)}
    + \cdots
\\
 &= \sum_{k=0}^n \frac{(-1)^k}{k!}
 \ \xrightarrow{n\to\infty}\ e^{-1}.
\end{aligned}
$$

Thus:

$$
P(S_n=0)\to e^{-1}.
$$

### Show full Poisson(1) convergence

We want:

$$
P(S_n = k) \to \frac{e^{-1}}{k!},\qquad k=0,1,2,\dots
$$

Use the combinatorial identity (page 2):

$$
P(S_n=k)
= \frac{P(S_{n-k}=0)}{k!}.
$$

Since $P(S_{n-k}=0)\to e^{-1}$, we get:

$$
P(S_n=k)\to \frac{e^{-1}}{k!}.
$$

**Therefore:**

$$
S_n \Rightarrow \mathrm{Poisson}(1)
\qquad\text{even though the events are dependent}.
$$

This is the classical result that the number of fixed points in a random permutation converges to Poisson(1).

---

# 3. Example: Number of Empty Boxes  
## (“Balls in Boxes” Occupancy Problem)

(Page 2–3.)

Place $n$ balls uniformly at random into $n$ boxes.  
Let:

$$
Y_k=\mathbf{1}\{\text{box }k\text{ is empty}\},
\qquad
S_n=\sum_{k=1}^n Y_k
$$

= the number of empty boxes.

Compute:

$$
EY_k=P(\text{box }k\text{ empty})
=(1-1/n)^n\to e^{-1}.
$$

Thus:

$$
ES_n = nEY_k \to \lambda = 1/e.
$$

Heuristic principle on page 3:

> If $ES_n \to \lambda$, and dependence is weak, then $S_n\Rightarrow\mathrm{Pois}(\lambda)$.

Indeed, one can verify the triangular-array Poisson conditions by analyzing occupancy indicators.

Conclusion:

$$
S_n = \#\{\text{empty boxes}\}
\;\Rightarrow\; \mathrm{Poisson}(1/e).
$$

---

# 4. Important Extension: Removing Condition (3)

(Page 3.)

We now allow $X_{n,k}$ to take **more than two values**, still iid across $k$ for each fixed $n$, but not merely 0–1.

Let:

$$
P(X_{n,k}=a_i)=p^{(n)}_i,
\qquad i=1,\dots,I,
\qquad 1\le k\le n.
$$

Assume that the limits:

$$
n\,p^{(n)}_i \to \lambda_i,\qquad 1\le i\le I
$$

exist (finite).  
If some $n p^{(n)}_i$ does not converge or does not go to 0 or finite limit, we cannot obtain a Poisson limit.

### The limit law

Define independent Poisson variables:

$$
Y_i \sim \mathrm{Poisson}(\lambda_i),\qquad 1\le i\le I.
$$

Then:

$$
\sum_{k=1}^n X_{n,k}
\;\Rightarrow\;
\sum_{i=1}^I a_i Y_i.
$$

This is a **compound Poisson** distribution (page 3–4).

Interpretation:

- $Y_i$ counts how many times the value $a_i$ appears,
- Total number of summands is $T=\sum_i Y_i\sim\mathrm{Poisson}(\lambda)$,  
  where $\lambda = \sum_{i=1}^I \lambda_i$.

Thus:

$$
\boxed{
\sum_{k=1}^n X_{n,k}
\ \Rightarrow\
\sum_{i=1}^I a_i Y_i,
}
$$

a fundamental **finite-dimensional Poisson limit**.

---

# 5. Compound Poisson Interpretation

(Page 4.)

Let $\{Z_k\}_{k\ge1}$ be iid with:

$$
P(Z_k=a_i)=\lambda_i/\lambda,
\quad \lambda=\sum_{i=1}^I \lambda_i.
$$

Let $T\sim \mathrm{Poisson}(\lambda)$, independent of $\{Z_k\}$.

Define the random sum:

$$
\sum_{k=1}^T Z_k.
$$

Then (page 4):

$$
P(Z_k=a_i) = \frac{\lambda_i}{\lambda},
$$

and the total sum has the same limit law as the previous Poisson decomposition:

$$
\sum_{k=1}^T Z_k\ \overset{d}{=}\ \sum_{i=1}^I a_i Y_i.
$$

This is the standard representation of a **compound Poisson random variable**.

---

# 6. Exam Notes (Page 4)

The lecture ends with exam pointers:

- Be able to **state** the major limit theorems,
- Know how to prove convergence in distribution, Slutsky, etc.,
- CLT with truncation (Steps A, B, C),
- Lindeberg’s condition for triangular arrays,
- Poisson convergence,
- Characteristic function calculations.

---

# **Cheat–Sheet Summary — Lecture 41**

- A general triangular array with rare events and negligible “≥2 jumps” satisfies:
  $$
  \sum_k X_{n,k}\Rightarrow\mathrm{Poisson}(\lambda).
  $$

- **Fixed points in random permutations**:  
  $$
  S_n \Rightarrow \mathrm{Poisson}(1),
  $$
  despite strong dependence.

- **Empty boxes** in occupancy with $n$ balls, $n$ boxes:  
  $$
  S_n \Rightarrow \mathrm{Poisson}(1/e).
  $$

- **Multivariate Poisson limits**:  
  If $n p_i^{(n)}\to \lambda_i$, then  
  $$
  \sum_{k=1}^n X_{n,k}
  \Rightarrow \sum_{i=1}^I a_i Y_i,
  \quad Y_i\sim\mathrm{Poisson}(\lambda_i).
  $$

- Representation as a **compound Poisson**:
  $$
  \sum_{i=1}^I a_i Y_i
  \stackrel{d}{=}
  \sum_{k=1}^T Z_k,
  \qquad
  T\sim\mathrm{Poisson}(\lambda),
  \ Z_k\sim (\lambda_i/\lambda).
  $$

