# **Lecture 24 — Formal SLLN Proof via Truncation and Block Arguments**

This lecture continues the formal proof of the Strong Law of Large Numbers using truncation, “good” sequences, and block decomposition (the Chung–Erdős / Chandrasekharan–style argument your professor sketches).

We want to prove the SLLN in the general case:

> **Theorem (SLLN).**  
> If $\{X_k\}_{k\ge 1}$ are iid with  
> $$
> E\vert X\vert  < \infty, \qquad E[X]=\mu,
> $$  
> then  
> $$
> \frac{S_n}{n} \xrightarrow{a.s.} \mu, \qquad S_n=\sum_{k=1}^n X_k.
> $$

This lecture gives a classical, more delicate proof (following Durrett), using truncation and carefully selected subsequences $T_{2^n}$.

---

# **1. Reduction and Notation**

WLOG, assume $X\ge 0$ a.s.  
(General case: apply to $X^+$ and $X^-$ separately.)

Define:

$$
X_k = X_k^+ - X_k^-,
\qquad 
X_k^+ = \max(X_k,0),
\qquad E[X^+] < \infty.
$$

Let

$$
\delta_n^+ = \sum_{k=1}^n X_k^+,
\qquad
\delta_n^- = \sum_{k=1}^n X_k^-,
\qquad 
\delta_n = \delta_n^+ - \delta_n^-.
$$

Then,

$$
\frac{\delta_n}{n}
= 
\frac{\delta_n^+}{n}
-
\frac{\delta_n^-}{n}.
$$

If we can show both terms converge almost surely, we are done.

---

# **2. Step 1 — Truncation Removes Only Finitely Many Terms**

Define truncated variables:

$$
Y_k = X_k\,\mathbf{1}_{\{\vert X_k\vert \le k\}}.
$$

Then:

$$
P(X_k \ne Y_k)
= P(\vert X_k\vert  > k)
= P(\vert X\vert  > k).
$$

Since $E\vert X\vert  = \int_0^\infty P(\vert X\vert >t)\,dt < \infty$,

$$
\sum_{k=1}^\infty P(\vert X\vert >k) < \infty.
$$

Thus by **Borel–Cantelli I**,

$$
P(X_k \ne Y_k \text{ i.o.}) = 0.
$$

Hence

$$
X_k = Y_k \quad\text{for all large } k,\ a.s.
$$

So it suffices to prove the SLLN for the truncated variables $Y_k$.

---

# **3. Interlude — “Good” Sequences $\{a_n\}$**

Your notes (bottom of page 1) define:

> A sequence $a_n \uparrow \infty$ is **good** if  
> $$
> \sum_{n=m}^\infty a_n^{-2} \le C\, a_m^{-2},\qquad m\ge1.
> $$

Examples:

- $a_n = n^p$ for any $0<p<2$,
- more generally: if $a_n / n^{1/p}$ is non-decreasing, then $a_n$ is good.

For this proof, we will use the **good** sequence:

$$
a_n = n.
$$

---

# **4. Step 2 — Second-Moment Control**

Let

$$
Y_n = X\,\mathbf{1}_{\{\vert X\vert \le a_n\}},\qquad a_n = n.
$$

Assume as above:

$$
\sum_{n=1}^\infty P(\vert X\vert >a_n) < \infty.
$$

Then we want to show:

$$
\sum_{n=1}^\infty \frac{E[Y_n^2]}{a_n^2} < \infty.
$$

### Proof sketch (page 2):

Decompose according to the annuli $a_{m-1} < \vert X\vert \le a_m$:

$$
\sum_{n=1}^\infty \frac{E[Y_n^2]}{a_n^2}
=
\sum_{n=1}^\infty a_n^{-2}
\sum_{m=1}^n E(X^2; a_{m-1}<\vert X\vert \le a_m).
$$

Swap summation order:

$$
\sum_{m=1}^\infty E(X^2; a_{m-1}<\vert X\vert \le a_m)
\sum_{n=m}^\infty a_n^{-2}.
$$

Since $\{a_n\}$ is good,

$$
\sum_{n=m}^\infty a_n^{-2} \le C a_m^{-2}.
$$

Thus:

$$
\sum_{n=1}^\infty \frac{E[Y_n^2]}{a_n^2}
\le
C \sum_{m=1}^\infty 
E\!\left(\frac{X^2}{a_m^2}; a_{m-1}<\vert X\vert \le a_m\right)
\le
C \sum_{m=1}^\infty m\, P(\vert X\vert >a_m)
<\infty.
$$

(The last inequality uses the summability assumption.)

---

# **5. Step 3 — Block Averages**

Define partial sums of truncated variables:

$$
T_n = \sum_{k=1}^n Y_k.
$$

We will show for a geometric subsequence $n=\alpha^m$:

$$
\frac{T_{\alpha^m} - E[T_{\alpha^m}]}{\alpha^m} \xrightarrow{a.s.} 0.
$$

Your notes use $\alpha=2$.  
Write $2^m$ as the block endpoint and define the block deviations:

$$
U_m
=
\sum_{k=2^m+1}^{2^{m+1}}
\frac{Y_k - E[Y_k]}{2^m}.
$$

Then:

$$
\frac{T_{2^{m+1}} - E[T_{2^{m+1}}]}{2^{m+1}}
=
\sum_{j=1}^{m} U_j.
$$

So it suffices to show:

$$
\sum_{j=1}^\infty E[U_j^2] < \infty.
$$

### Compute $E[U_m^2]$

From page 2 of your notes:

$$
E[U_m^2] 
\le 4 \sum_{k=2^m+1}^{2^{m+1}} \frac{\operatorname{Var}(Y_k)}{k^2}
\le 4 \sum_{k=1}^\infty \frac{E[Y_k^2]}{k^2}.
$$

But Step 2 showed the latter sum is finite.  
Thus $\sum_m E[U_m^2]<\infty$.

By the **Kolmogorov convergence criterion** (or BC I applied to $U_m^2$):

$$
U_m \to 0 \quad a.s.
$$

Therefore:

$$
\frac{T_{2^m} - E[T_{2^m}]}{2^m} \xrightarrow{a.s.} 0.
$$

---

# **6. Step 4 — Identify the Limit**

We already have:

$$
E[Y_k] = E(X; \vert X\vert \le k) \xrightarrow{k\to\infty} E[X] = \mu
$$
by Dominated Convergence.

Thus:

$$
\frac{E[T_{2^m}]}{2^m}
= \frac{1}{2^m} \sum_{k=1}^{2^m} E[Y_k]
\xrightarrow{m\to\infty} \mu.
$$

Combine with the previous step:

$$
\frac{T_{2^m}}{2^m}
=
\frac{E[T_{2^m}]}{2^m}
+
\frac{T_{2^m}-E[T_{2^m}]}{2^m}
\xrightarrow{a.s.} \mu.
$$

---

# **7. Step 5 — Extend From the Subsequence to All $n$**

For $2^m \le n \le 2^{m+1}$,

$$
\frac{T_{2^m}}{2^{m+1}}
\le
\frac{T_n}{n}
\le
\frac{T_{2^{m+1}}}{2^m}.
$$

Since both endpoints converge almost surely to $\mu$, the middle term must as well.

Thus:

$$
\boxed{
\frac{T_n}{n} \xrightarrow{a.s.} \mu.
}
$$

Finally, since $X_k=Y_k$ eventually almost surely,

$$
\frac{S_n}{n} = \frac{T_n}{n} + o(1) \xrightarrow{a.s.} \mu.
$$

This completes the proof of the SLLN.

---

# **Cheat-Sheet Summary — Lecture 24**

- Use truncation $Y_k = X_k \mathbf{1}_{\{\vert X_k\vert \le k\}}$.  
  BC I shows truncation changes only finitely many terms.

- Introduce **good sequences** $\{a_n\}$ to guarantee  
  $$
  \sum E[Y_n^2]/a_n^2 < \infty.
  $$

- For the geometric subsequence $n=2^m$, define block deviations  
  $$
  U_m = \sum_{k=2^m+1}^{2^{m+1}} (Y_k - E[Y_k]) / 2^m.
  $$

- Show $\sum E[U_m^2] < \infty$ so $U_m\to 0$ a.s.

- Conclude  
  $$
  \frac{T_{2^m}}{2^m} \to \mu.
  $$

- Squeeze all intermediate $n$, giving  
  $$
  \frac{S_n}{n} \to \mu \quad \text{a.s.}
  $$

