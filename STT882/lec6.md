# **Lecture 6 — Wald’s Equations and Hitting Times (01-27)**
STT 882  
Jan 27, 2025

This lecture builds on stopping times from Lectures 4–5 and introduces the **first and second Wald equations**, with applications to **simple symmetric random walk hitting times**.

---

## **1. Setup**

We work on a filtered probability space

$$
(\Omega, \mathcal F, P),\qquad \{\mathcal F_n\}_{n\ge1}.
$$

Assume:

- $T$ is a stopping time w.r.t. $\{\mathcal F_n\}$.
- $\{X_n\}_{n\ge1}$ are **i.i.d.** and **adapted**, meaning  
  $X_n \in \mathcal F_n$ for all $n$.
- Define partial sums  
  $$
  S_0 = 0,\qquad 
  S_n = \sum_{k=1}^n X_k .
  $$

Define the stopped sum:

$$
S_T = \sum_{k=1}^T X_k .
$$

---

# **2. First Wald Equation**

If

- $E|X_1| < \infty$  
- $E(T) < \infty$

then

$$
\boxed{E(S_T) = E(X_1)\, E(T)} .
$$

This deceptively simple identity is extremely powerful and used repeatedly in gambling, random walks, queueing theory, and renewal theory.

---

# **3. Example: SSRW Hitting Times**

Simple symmetric random walk (SSRW):

$$
P(X_k = +1) = P(X_k = -1) = \frac12 .
$$

Define hitting times of two levels:

- For $a>0$  
  $$T_a = \min\{n\ge1 : S_n = a\}.$$

- For $b<0$  
  $$T_b = \min\{n\ge1 : S_n = b\}.$$

Define the **two-sided hitting time**

$$
T_{a,b} = T_a \wedge T_b.
$$

On page **1** of the PDF :contentReference[oaicite:1]{index=1} you can see the professor’s diagram showing the walk fluctuating until it hits either level.

---

## **3.1 Using Wald’s Equation**

Since $E(X_1)=0$, Wald gives

$$
E\left(S_{T_{a,b}}\right) = 0.
$$

But

$$
S_{T_{a,b}} =
\begin{cases}
a & \text{if } T_a < T_b, \\
b & \text{if } T_b < T_a.
\end{cases}
$$

Thus

$$
a\,P(T_a<T_b)+ b\,P(T_b<T_a)=0,
$$

and using  
$P(T_a<T_b)+P(T_b<T_a)=1$, we solve:

$$
P(T_a<T_b) = \frac{-b}{a-b},\qquad
P(T_b<T_a)= \frac{a}{a-b}.
$$

These are the classical **gambler’s ruin probabilities**.

---

## **3.2 Almost sure finiteness**

Using the formula above:

$$
P(T_a < T_b) = \frac{-b}{a-b}
\xrightarrow[b\to -\infty]{} 1.
$$

Hence

$$
P(T_a < \infty) = 1.
$$

So **SSRW hits every positive integer almost surely**.

(This matches the intuitive recurrence of 1-D SSRW.)

---

## **3.3 Does $E(T_a)$ exist?**

Suppose for contradiction that $E(T_a) <\infty$.

Then Wald’s equation gives:

$$
E(S_{T_a}) = E(X_1)E(T_a)=0.
$$

But $S_{T_a} = a$, so

$$
E(S_{T_a}) = a.
$$

Contradiction unless $a=0$.

Thus

$$
\boxed{E(T_a)=\infty}.
$$

This is written explicitly on page **1** of the PDF :contentReference[oaicite:2]{index=2}.

---

# **4. A Side Argument Showing $E(T_{a,b}) < \infty$**

While $E(T_a)=\infty$ for a one-sided boundary, the **two-sided** hitting time $T_{a,b}$ does have finite expectation.

The argument (page **2**) uses:

- Geometric trial structure  
- Blocks of length $(a+|b|)$  
- Success probability $2^{-(a+|b|)}$

Thus

$$
E(T) = \frac{1}{2^{-(a+|b|)}} < \infty
$$

and

$$
E(T_{a,b}) \le (a+|b|)\,E(T) <\infty.
$$

---

# **5. Second Wald Equation**

Assume now:

- $E(X_1)=0$
- $E(X_1^2) = \sigma^2 < \infty$
- $E(T) < \infty$

Then

$$
\boxed{E(S_T^2)= \sigma^2\,E(T)}.
$$

This appears in red ink on page **2** of the PDF :contentReference[oaicite:3]{index=3}.

---

## **Proof Sketch**

The proof (pages **2–3**) uses:

- Square-difference decomposition  
  $$
  S_{T\wedge(n+1)} - S_{T\wedge n} = X_{n+1}\,\mathbf 1_{\{T\ge n+1\}}
  $$
- Independence and adaptedness  
  $$X_{n+k}\perp \mathbf 1_{\{T\ge n+1\}}$$  
  because $X_{n+k}$ is independent of $\mathcal F_{n+k-1}$.
- No cross-terms survive (zero expectation).

Then

$$
E\bigl(S_{T\wedge(n+1)} - S_{T\wedge n}\bigr)^2
= E(X_1^2)\, P(T\ge n+1)
= \sigma^2\, P(T\ge n+1).
$$

Summing from $n=0$ to $\infty$:

$$
E(S_T^2)
= \sigma^2\sum_{n=0}^{\infty} P(T\ge n+1)
= \sigma^2\,E(T).
$$

As shown on page **3** of the PDF :contentReference[oaicite:4]{index=4}, the partial sums form a **Cauchy sequence in $L^2$**, implying $S_{T\wedge n}\to S_T$ in $L^2$.

---

# **6. Extension when $E(X_1)\ne 0$**

Let $\mu = E(X_1)$ and consider centered variables

$$
Y_k = X_k - \mu,\qquad E(Y_k)=0.
$$

Then

$$
S_T = \sum_{k=1}^T Y_k + \mu T.
$$

Thus

$$
E(S_T^2)
= \operatorname{Var}(S_T) + \mu^2 E(T^2)
+ 2\mu\, E\bigl[(S_T - \mu T)\,T\bigr].
$$

If additionally **$T$ is independent of the increments** (e.g., in renewal theory), then the cross-term vanishes:

$$
E\bigl[(S_T - \mu T)\,T\bigr] = 0.
$$

This corresponds to the final notes on page **4** of the PDF :contentReference[oaicite:5]{index=5}.

---

# **Summary**

- **First Wald:** $E(S_T)=E(X_1)E(T)$  
- **Second Wald:** $E(S_T^2)=\sigma^2 E(T)$ when $E(X_1)=0$  
- SSRW:  
  - Hits any level a.s., but  
  - One-sided hitting times have **infinite expectation**: $E(T_a)=\infty$  
  - Two-sided hitting times have **finite expectation**: $E(T_{a,b})<\infty$  
- Centering trick handles the general case $E(X_1)\ne 0$.

---

If you want, I can now generate:

✅ A downloadable `.md` file  
✅ A version with diagrams recreated in TikZ  
✅ A more compact “cheat-sheet” formatting

Just tell me which you prefer.
