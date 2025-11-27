# **Lecture 29 — Feller’s Theorem and Completion of the M–Z Strong Law**

## 1. Marcinkiewicz–Zygmund Strong Law (recap)

Let $\{X_k\}_{k\ge1}$ be iid with

- $E[X]=0$,
- $E\vert X\vert ^p < \infty$ for some $1\le p < 2$.

Let  
$$
S_n = \sum_{k=1}^n X_k.
$$

### Theorem (M–Z Strong Law)

$$
\frac{S_n}{n^{1/p}} \xrightarrow{\text{a.s.}} 0.
$$

### Proof idea (page 1)

1. **Define truncated variables**
   $$
   Y_k = X_k\,\mathbf{1}_{\{\vert X_k\vert \le k^{1/p}\}}.
   $$

2. **Bad events are summable**
   $$
   \sum_k P(Y_k\ne X_k)
   =\sum_k P(\vert X\vert >k^{1/p})
   =\sum_k P(\vert X\vert ^p > k)
   <\infty.
   $$
   So by Borel–Cantelli I, $X_k = Y_k$ eventually a.s.

3. It suffices to show
   $$
   \frac{T_n}{n^{1/p}} \to 0, \qquad T_n = \sum_{k=1}^n Y_k.
   $$

4. **Find a good normalizing sequence.**  
   A key lemma (pages 1–2):

   > If $a_n$ is “good" and  
   > $\sum P(\vert X\vert >a_n)<\infty$, then  
   > $\sum E(Y_n^2)/a_n^2 <\infty$,  
   > where $Y_n = X_n \mathbf{1}_{\vert X_n\vert \le a_n}$.

   For M–Z, take $a_n = n^{1/p}$.  
   The sequence $\{a_n / n^{1/p}\} = \{1\}$ is (trivially) non-decreasing, so $a_n$ is “good”.

5. Thus,
   $$
   \sum_{k=1}^\infty \operatorname{Var}\left( \frac{Y_k}{k^{1/p}} \right)
   <\infty.
   $$

6. By the variance–summability criterion,
   $$
   \sum_k \frac{Y_k - E[Y_k]}{k^{1/p}} \quad\text{converges a.s.}
   $$

7. **Use Kronecker’s lemma** with $a_n = n^{1/p}$:  
   $$
   \frac{1}{n^{1/p}}
   \sum_{k=1}^n (Y_k - E[Y_k])
   \xrightarrow{\text{a.s.}} 0.
   $$

8. It remains to prove
   $$
   \frac{1}{n^{1/p}} \sum_{k=1}^n E[Y_k] \to 0.
   $$

---

## 2. The Expectation Term

(Page 1–2 of notes; explicit computation.)

For  
$$
Y_k = X_k \mathbf{1}_{\{\vert X_k\vert \le k^{1/p}\}},
$$
we have
$$
E[Y_k] = E\bigl[ X\,;\ \vert X\vert \le k^{1/p}\bigr]
= E[X] - E\bigl[X\,;\ \vert X\vert >k^{1/p}\bigr]
= -E\bigl[ X\,;\ \vert X\vert >k^{1/p}\bigr],
$$
since $E[X]=0$.

Thus,
$$
\vert E[Y_k]\vert 
\le E\left( \vert X\vert \,;\ \vert X\vert >k^{1/p}\right).
$$

To bound this, use **identities from integration by parts** (page 2):

For $x>k^{1/p}$,
$$
\vert X\vert  = \frac{\vert X\vert ^p}{\vert X\vert ^{p-1}}
\le \frac{\vert X\vert ^p}{k^{(p-1)/p}}.
$$

Hence,
$$
\vert E[Y_k]\vert 
\le k^{-(p-1)/p} \,
E\left(\vert X\vert ^p\,;\ \vert X\vert  > k^{1/p}\right).
$$

As $k\to\infty$,
$$
E\left(\vert X\vert ^p\,;\ \vert X\vert >k^{1/p}\right) \to 0,
$$
because $E\vert X\vert ^p<\infty$.  
Therefore:

$$
\vert E[Y_k]\vert  \le C k^{-(p-1)/p} \quad\text{for large }k.
$$

### Sum bound

Your notes (page 2) compute:

$$
\sum_{k=1}^n k^{1/p -1}
\le C n^{1/p}.
$$

Therefore:

$$
\frac{1}{n^{1/p}}
\sum_{k=1}^n \vert E[Y_k]\vert 
\le
\frac{1}{n^{1/p}}
\sum_{k=1}^n k^{-(p-1)/p}
\le
\frac{1}{n^{1/p}} \cdot C n^{1/p}
\to 0.
$$

Thus,
$$
\boxed{
\frac{1}{n^{1/p}} \sum_{k=1}^n E[Y_k] \ \longrightarrow\ 0.
}
$$

Combining everything:

$$
\boxed{
\frac{S_n}{n^{1/p}} \xrightarrow{\text{a.s.}} 0.
}
$$

This finishes the Marcinkiewicz–Zygmund SLLN.

---

# **3. Feller’s Theorem**

(William Feller’s theorem, page 2–3.)

Let $\{X_k\}$ be iid with $E\vert X\vert <\infty$.  
Take any positive sequence $a_n$ such that

- $a_n>0$,
- $\dfrac{a_n}{n}$ is **non-decreasing**,  
  i.e. $a_k/k \le a_n/n$ for $k\le n$.

Let $S_n = \sum_{k=1}^n X_k$.

### Theorem (Feller)

(a) If  
$$
\sum_{n=1}^\infty P(\vert X\vert \ge a_n) < \infty,
$$
then
$$
\overline{\lim_{n\to\infty}} \frac{\vert S_n\vert }{a_n} =0 \quad\text{a.s.}
$$
In particular,
$$
\frac{S_n}{a_n} \to 0 \quad\text{a.s.}
$$

(b) If  
$$
\sum_{n=1}^\infty P(\vert X\vert \ge a_n) = \infty,
$$
then
$$
\lim_{n\to\infty} \frac{\vert S_n\vert }{a_n} = \infty \quad\text{a.s.}
$$

Thus **the series $\sum P(\vert X\vert \ge a_n)$** completely determines the almost-sure growth rate of $S_n$.

---

## 4. Proof of Part (b)

(Page 2–3.)

Assume  
$$
\sum_n P(\vert X\vert \ge a_n) = \infty.
$$

Then for any fixed $k\ge 1$,

$$
\sum_n P(\vert X\vert \ge k a_n)
\ge \frac{1}{k} \sum_{n=k}^\infty P(\vert X\vert \ge a_n)
= \infty.
$$

By **Borel–Cantelli II**,
$$
P(\vert X_n\vert \ge k a_n \ \text{i.o.}) = 1.
$$

Thus,
$$
\overline{\lim_{n\to\infty}} \frac{\vert X_n\vert }{a_n} \ge k \quad \text{a.s.}
$$

Since $k$ is arbitrary,
$$
\overline{\lim_{n\to\infty}} \frac{\vert X_n\vert }{a_n} = \infty \quad\text{a.s.}
$$

Finally, using
$$
\vert X_n\vert  = \vert S_n - S_{n-1}\vert  \le \vert S_n\vert  + \vert S_{n-1}\vert 
\le 2 \max(\vert S_n\vert ,\vert S_{n-1}\vert ),
$$
we get
$$
\frac{\vert S_n\vert }{a_n} \to \infty \quad\text{a.s.}
$$

---

## 5. Proof Idea for Part (a)

(Page 3—sketch.)

If  
$$
\sum P(\vert X\vert \ge a_n) < \infty,
$$
then:

- Large jumps occur only finitely often.
- One applies the same decomposition used in the M–Z proof:
  $$
  S_n = \sum_{k=1}^n X_k
      = \sum (Y_k - E[Y_k]) + \sum E[Y_k],
  $$
  with $Y_k$ truncated at level $a_k$.

- Use:
  - variance summability of $Y_k/a_k$,
  - Kronecker’s lemma,

to conclude $S_n/a_n\to0$ a.s.

Your notes say “look at book for proof,” but the outline is exactly parallel to the M–Z case.

---

# **Cheat-Sheet Summary — Lecture 29**

- **M–Z SLLN:**
  If $E\vert X\vert ^p<\infty$, $1\le p<2$, then  
  $$
  S_n / n^{1/p} \to 0 \text{ a.s.}
  $$

- The proof requires bounding  
  $\sum E[Y_k]/n^{1/p}$,  
  achieved via $x > k^{1/p}\Rightarrow x^{p-1}/k^{(p-1)/p}\ge 1$.

- **Feller’s Theorem:**
  Given $a_n$ with $a_n/n$ non-decreasing:

  - If $\sum P(\vert X\vert \ge a_n)<\infty$, then $S_n/a_n \to 0$ a.s.
  - If $\sum P(\vert X\vert \ge a_n)=\infty$, then $S_n/a_n\to\infty$ a.s.

This provides a precise **growth-rate dichotomy** for partial sums of iid integrable variables.

