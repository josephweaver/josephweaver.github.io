

# 9 — Fatou’s Lemma, MCT, DCT

Lecture 9 completes the “Big Three” convergence theorems:

Fatou’s Lemma,

Monotone Convergence Theorem (MCT) (proved again using Fatou),

Dominated Convergence Theorem (DCT)

---

We continue on a σ-finite measure space $(\Omega, \mathcal{F}, \mu)$.  
Recall from last time:

If $\mu(\Omega) < \infty$, $f_n \to f$ almost everywhere, and $\vert f_n\vert  \le M$, then by the **Bounded Convergence Theorem**:
$$
\int f_n \to \int f.
$$

We now turn to the fundamental convergence theorems.

---

# 1. The liminf Construction

Given a sequence of real numbers $a_1,a_2,\dots$, define:
$$
A_n = \inf_{k \ge n} a_k.
$$

Then:

- $A_n \le A_{n+1}$ (infimum over a smaller tail),
- $A_n \uparrow \liminf a_n$.

Thus:
$$
\liminf_{n\to\infty} a_n 
= \lim_{n\to\infty} A_n.
$$

---

# 2. Fatou’s Lemma

**Theorem (Fatou).**  
Assume $f_n \ge 0$ and $\mu$ is σ-finite. Then:

$$
\int \liminf_{n\to\infty} f_n 
\;\; \le \;\;
\liminf_{n\to\infty} \int f_n .
$$

### Proof

Define the pointwise infimum tails:
$$
g_n(x) = \inf_{m \ge n} f_m(x).
$$

Properties visible in the notes (page 2):

- $g_n \le f_n$,
- $g_n \uparrow g$ pointwise, where  
  $$
  g(x) = \lim_{n\to\infty} g_n(x)
        = \liminf_{n\to\infty} f_n(x).
  $$

Since $f_n \ge g_n$,
$$
\int f_n \ge \int g_n \qquad \forall n.
$$

Thus:
$$
\liminf_{n\to\infty} \int f_n
\;\ge\; 
\lim_{n\to\infty} \int g_n .
$$

Now apply the **Monotone Convergence Theorem** to $g_n\uparrow g$:

$$
\lim_{n\to\infty} \int g_n 
= \int g 
= \int \liminf f_n.
$$

Therefore:
$$
\boxed{
\int \liminf f_n
\le
\liminf \int f_n.
}
$$

---

# 3. Monotone Convergence Theorem (Beppo Levi), Reproved via Fatou

**Theorem (MCT).**  
Let $f_n \ge 0$ with $f_n \uparrow f$. Then:
$$
\int f_n \uparrow \int f.
$$

### Proof (from page 3, “Fatou implies MCT”)

Fatou gives:
$$
\int f
= \int \lim f_n
\le \liminf \int f_n.
$$

But since $f_n \le f$,
$$
\int f_n \le \int f
\quad\Longrightarrow\quad
\limsup \int f_n \le \int f.
$$

Thus:
$$
\int f 
\le \liminf\int f_n \le \limsup\int f_n \le \int f,
$$

forcing equality, hence:
$$
\boxed{
\int f_n \to \int f.
}
$$

---

# 4. Dominated Convergence Theorem (DCT)

**Theorem (DCT).**  
Let $\mu$ be σ-finite.  
Suppose:

1. $f_n \to f$ almost everywhere,  
2. $\vert f_n\vert  \le g$ for some integrable $g$ (i.e. $\int g < \infty$).

Then:

$$
\int f_n \to \int f.
$$

### Proof Breakdown

Your notes (page 3–4) show the proof using:

- Fatou on the sequences $g + f_n$ and $g - f_n$,
- The positivity of integrals.

Let’s write it cleanly.

#### Step 1: Use Fatou on $g + f_n$

Note $g + f_n \ge 0$.  
Apply Fatou:

$$
\int \liminf (g + f_n)
\le
\liminf \int (g + f_n).
$$

Since $f_n \to f$ a.e.,
$$
\liminf (g+f_n) = g+f.
$$

Thus:
$$
\int (g+f)
\le
\liminf \left[\int g + \int f_n\right]
=
\int g + \liminf \int f_n.
$$

Cancel $\int g$:
$$
\int f
\le
\liminf \int f_n.
$$

#### Step 2: Use Fatou on $g - f_n$

Similarly $g - f_n \ge 0$. Fatou gives:

$$
\int (g-f)
\le
\liminf [\int g - \int f_n]
= \int g - \limsup \int f_n.
$$

Rearrange:

$$
\limsup \int f_n
\le \int f.
$$

#### Step 3: Combine inequalities

We have:
$$
\int f \le \liminf \int f_n \le \limsup \int f_n \le \int f.
$$

Thus:

$$
\boxed{
\int f_n \to \int f.
}
$$

---

# 5. Summary of the Three Convergence Theorems

### **Fatou’s Lemma**  
$$
\int \liminf f_n \le \liminf \int f_n.
$$

### **Monotone Convergence (MCT)**  
If $f_n \uparrow f$,  
$$
\int f_n \uparrow \int f.
$$

### **Dominated Convergence (DCT)**  
If $f_n \to f$ a.e. and $\vert f_n\vert  \le g$ with $\int g < \infty$,  
$$
\int f_n \to \int f.
$$

These results form the analytic backbone of measure-theoretic probability.

