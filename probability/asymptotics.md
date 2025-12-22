## Asymptotic (limsup) Growth ⇒ Global Bounds

### Core Pattern
Any assumption of the form
$$
\limsup_{|x|\to\infty} \frac{|g(x)|}{h(x)} < \infty
$$
provides **tail control only**.  
To use it in integrals or expectations, it must be converted into a **global bound**.

---

### Standard Conversion (Template)

Assume:
- $ \limsup_{|x|\to\infty} |g(x)|/h(x) \le C $,
- $ g $ is continuous (or locally bounded),
- $ h(x)\ge 0 $.

Then:

1. **Tail control**  
   There exists $R>0$ and $C_1>0$ such that
   $$
   |x|>R \;\Rightarrow\; |g(x)| \le C_1 h(x).
   $$

2. **Compact control**  
   By continuity, $g$ is bounded on $|x|\le R$:
   $$
   |g(x)| \le M \quad \text{for } |x|\le R. mn,klj,n
   $$

3. **Global envelope (enlarge constants)**  
   There exists $C'=\max\{M,C_1\}$ such that
   $$
   |g(x)| \le M+C_1h(x) = C'(1+h(x)) \quad \forall x.
   $$

This step **absorbs all constants** and removes piecewise bounds.

---

### Canonical Examples

**Polynomial growth**
$$
\limsup_{|x|\to\infty} \frac{|f(x)|}{|x|^k} < \infty
\quad\Rightarrow\quad
|f(x)| \le C(1+|x|^k).
$$

**Exponential growth**
$$
\limsup_{|x|\to\infty} \frac{|f(x)|}{e^{a|x|}} < \infty
\quad\Rightarrow\quad
|f(x)| \le C(1+e^{a|x|}).
$$

**Tail probabilities**
$$
\limsup_{x\to\infty} x^\alpha P(|X|>x) < \infty
\quad\Rightarrow\quad
P(|X|>x) \le \frac{C}{x^\alpha} \text{ for large } x.
$$

---

### Why This Works
- limsup assumptions control **only infinity**,
- continuity controls **compact sets**,
- $1+h(x)$ merges both regimes,
- constants are allowed to change.

---

### Exam-Safe Justification (One Line)
> “The limsup condition controls the tails, continuity gives boundedness on compact sets, and enlarging constants yields a global bound.”

---

### What This Buys You (Gaussian Context)
If $Z\sim N(0,1)$ and $h(x)=|x|^k$:
- $E|g(Z)|<\infty$,
- boundary terms $g(x)\phi(x)\to 0$,
- integration by parts is justified.

---

### Mental Trigger (Do Not Memorize Formulas)
> **Asymptotic control ⇒ split into compact + tails ⇒ absorb constants ⇒ global bound.**

This pattern applies broadly in:
- Gaussian IBP / Stein identities
- Moment and tail arguments
- Borel–Cantelli setups
- Uniform integrability checks
