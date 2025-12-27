# **Lecture 19 — Truncation Methods and Infinite-Mean Laws of Large Numbers**

Truncation arguments

- Weak Law of Large Numbers with infinite mean
- The St. Petersburg paradox
- Choosing normalizing sequences $b_n$ so that $\frac{S_b}{b_n}\to 1$ in probability for heavy-tailed distributions.

## 1. General Truncation Inequality

Let $\{X_{n,k}\}_{1 \le k \le n}$ be independent for each $n$, and define truncated variables

$$
\bar X_{n,k} = X_{n,k} \mathbf{1}\{\vert X_{n,k}\vert  \le b_n\}.
$$

Let

$$
S_n = \sum_{k=1}^n X_{n,k}, \qquad 
a_n = \sum_{k=1}^n \mathbb{E}(\bar X_{n,k}).
$$

A standard inequality (via Markov + variance control on truncated part) gives:

$$
P\!\left( \frac{S_n - a_n}{b_n} > \varepsilon \right)
   \le \underbrace{\sum_{k=1}^n P(\vert X_{n,k}\vert  > b_n)}_{(I)}
      + \underbrace{\frac{1}{\varepsilon^2 b_n^2}\sum_{k=1}^n 
          \mathbb{E}(X_{n,k}^2 \mathbf{1}\{\vert X_{n,k}\vert \le b_n\})}_{(II)}.
$$

**Conclusion.**  
If

- (I) → 0, and  
- (II) → 0 as $n\to\infty$,

then

$$
\frac{S_n - a_n}{b_n} \xrightarrow{P} 0.
$$

---

## 2. Specialization to i.i.d. Variables

If $\{X_k\}$ are iid with partial sums $S_n = \sum_{k=1}^n X_k$ then:

$$
(I)=n\,P(\vert X\vert  > b_n), \qquad
(II)=\frac{n\,\mathbb{E}(X^2 \mathbf{1}\{\vert X\vert \le b_n\})}{\varepsilon^2 b_n^2},
$$

and

$$
a_n = n \,\mathbb{E}(X \mathbf{1}\{\vert X\vert \le b_n\}).
$$

If both vanish, then

$$
\frac{S_n - a_n}{b_n} \xrightarrow{P} 0.
$$

The problem becomes choosing **a normalizing sequence $b_n$** that makes both terms go to zero.

---

## 3. **The St. Petersburg Paradox**  
Durrett Example 2.2.7. 

$$
P(X = 2^k) = 2^{-k},\quad k\ge 1.
$$

Then

$$
E[X] = \sum_{k=1}^\infty 2^k 2^{-k} = \infty.
$$

Since the mean is infinite, the usual LLN does not apply.  
In fact,

$$
\frac{S_n}{n} \xrightarrow{P} \infty.
$$

### **How to prove it? Truncation.**

Fix $M > 0$, and define truncated variables:

$$
X^{(M)} = X \wedge M.
$$

Then:

- $X^{(M)}$ are iid,
- $\mathbb{E}[X^{(M)}] < M < \infty$,
- by the standard WLLN:

$$
\frac{1}{n} \sum_{k=1}^n X_k^{(M)} \xrightarrow{P} \mathbb{E}[X^{(M)}].
$$

Since $S_n \ge \sum_{k=1}^n X_k^{(M)}$,

$$
P\!\left( \frac{S_n}{n} > \mathbb{E}[X^{(M)}] - \varepsilon \right) \to 1.
$$

Now let $M\to\infty$.  
By MCT:

$$
\mathbb{E}[X^{(M)}] \uparrow E[X] = \infty.
$$

Thus for each fixed $M$, with probability → 1, the sample average exceeds a constant that can be made arbitrarily large. Hence,

$$
\frac{S_n}{n} \xrightarrow{P} \infty.
$$

---

## 4. **A More Refined Normalization:**  
### Claim  
$$
\frac{S_n}{n\log_2 n} \xrightarrow{P} 1.
$$

Your notes derive this using the truncation conditions (I), (II).

Let  

$$
b_n = n\log_2 n.
$$

Compute the truncated mean:

$$
a_n
= n\, \mathbb{E}(X\,;\,X \le n\log n)
= n \sum_{2^k \le n\log n} 2^k 2^{-k}
= n (\log n + \log\log n).
$$

Then $a_n \sim n\log n = b_n$.  
So the normalization is correct.

### Check (I)

$$
nP(X > b_n)
= n \sum_{2^k > n\log n} 2^{-k}
\le \frac{2n}{n\log n} = \frac{2}{\log n}\to 0.
$$

### Check (II)

$$
\frac{n\, \mathbb{E}(X^2; X\le b_n)}{b_n^2}
\approx \frac{n\cdot 2b_n}{b_n^2}
= \frac{2}{\log n} \to 0.
$$

Thus both truncation conditions vanish, implying:

$$
\frac{S_n}{b_n} = \frac{S_n}{n \log_2 n} \xrightarrow{P} 1.
$$

This is a **Weak Law of Large Numbers with infinite mean**, but with a different normalizing sequence.

---

## 5. General Criterion Using $\mu(s)$

Define the truncated first moment:

$$
\mu(s)= E[X\,; X\le s].
$$

- $\mu(s)$ is increasing.
- $\lim_{s\to\infty} \mu(s) = \infty$ iff $E[X]=\infty$.

A useful fact derived in the notes:

$$
\frac{\mu(s)}{s} = \frac{E[X/s\,;\,X\le s]}{1}
\longrightarrow 0.
$$

This uses the DCT because $X/s \le 1$ on $\{X\le s\}$ and $X/s\to 0$.

### The normalizing sequence $b_n$

Define $b_n$ by

$$
\frac{\mu(b_n)}{b_n} = \frac{1}{n}.
$$

This guarantees that the truncation method will succeed and often that:

$$
\frac{S_n}{b_n} \xrightarrow{P} 1.
$$

### Jump points  
If $P(X=S_0)>0$, there may be jumps in $\mu$. The notes mention this as a warning: the minimizing $b_n$ may occur at the point mass.

---

## 6. A Feller Example

The notes conclude with another heavy-tailed example (attributed to William Feller):

$$
P(X = 2^k - 1) = \frac{1}{2^k k(k+1)},\qquad k\ge 1,
$$
$$
P(X=-1) = 1 - P(X\ge 1).
$$

Using the telescoping identity

$$
\frac{1}{k(k+1)} = \frac{1}{k} - \frac{1}{k+1},
$$

one can show $E[X]=0$ but the variance and higher moments diverge.  
A similar truncation calculation yields:

$$
\frac{S_n}{n/\log_2 n} \xrightarrow{P} 1,
\qquad
\left(\frac{S_n}{n} \xrightarrow{P} 0\right).
$$

The message: **“Truncation leads to the right normalization.”**

