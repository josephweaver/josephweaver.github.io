
# Lecture 2: Characteristic Functions, Independence, and Weak Convergence in $\mathbb{R}^d$
STT 882  
Jan 18, 2025

## 1. Multivariate Inversion Formula

For a random vector $X \in \mathbb{R}^d$ with characteristic function  
$$
\varphi_X(t) = E[e^{i\, t \cdot X}], \quad t \in \mathbb{R}^d,
$$
the Fourier inversion theorem states that if $X$ has a “nice” density $f_X$, then
$$
f_X(0) = \lim_{T \to \infty} (2\pi)^{-d} \int_{[-T,T]^d} \varphi_X(t)\, dt.
$$

This extends the one‑dimensional inversion formula to higher dimensions.  
The integral is over a $d$-dimensional cube.

---

## 2. Computing $P(X \in A)$ Using the Uniform-Subtraction Trick

Let  
$$
A = \prod_{i=1}^d [a_i, b_i]
$$
be a $d$-dimensional rectangle with Lebesgue volume $\lambda(A)$.

Let:
- $U \sim \mathrm{Unif}(A)$ independent of $X$,
- define $Y = X - U$.

Then:
$$
f_Y(0) = \frac{P(X \in A)}{\lambda(A)}.
$$

Because $U$ has density  
$$
f_U(u) = \frac{1}{\lambda(A)} \quad \text{for } u \in A,
$$
its characteristic function factorizes:
$$
\varphi_U(t) = \prod_{k=1}^d \varphi_{U_k}(t_k).
$$

The characteristic function of $Y$ is:
$$
\varphi_Y(t) = E[e^{i t \cdot (X-U)}]
             = \varphi_X(t)\, \varphi_U(-t).
$$

Applying inversion:
$$
P(X \in A)
= \lambda(A)(2\pi)^{-d}
  \lim_{T \to \infty}
  \int_{[-T,T]^d} \varphi_X(t)\, \varphi_U(-t)\, dt.
$$

This works because $Y$ is bounded and thus integrable.

---

## 3. Independence and Characteristic Functions

Let $Z = (Z_1, \dots, Z_d)$.  
Then the following are equivalent:

- The components $Z_1,\dots,Z_d$ are independent.
- The characteristic function factorizes:
  $$
  \varphi_Z(t) = \prod_{k=1}^d \varphi_{Z_k}(t_k).
  $$

This is one of the most powerful and useful characterizations of independence.

---

## 4. Example: A Joint Distribution That Is Not Independent

If a joint distribution table has marginals that look uniform but entries do **not** factor as  
$$
P(Z_1 = i, Z_2 = j) \neq P(Z_1 = i)P(Z_2=j),
$$
then independence fails.

Characteristic functions detect this automatically because the factorization will fail.

---

## 5. Weak Convergence in $\mathbb{R}^d$

Weak convergence (convergence in distribution) of random vectors:
$$
X_n \Rightarrow X
$$
means:
$$
E[f(X_n)] \to E[f(X)] \quad \forall f \in C_b(\mathbb{R}^d).
$$

This condition is equivalent to several others.  
These equivalences form the **Portmanteau Theorem**.

### **Portmanteau Theorem (Multivariate Version)**

The following are equivalent:

1. $X_n \Rightarrow X$.

2. For every closed set $F \subset \mathbb{R}^d$,
   $$
   \limsup_{n \to \infty} P(X_n \in F)
   \le P(X \in F).
   $$

3. For every open set $O \subset \mathbb{R}^d$,
   $$
   \liminf_{n \to \infty} P(X_n \in O)
   \ge P(X \in O).
   $$

4. For every **continuity set** $A\subset \mathbb{R}^d$ satisfying  
   $$
   P(X \in \partial A)=0,
   $$
   we have  
   $$
   P(X_n \in A) \to P(X \in A).
   $$

### Boundary of a set
$$
\partial A = \overline{A} \setminus A^\circ.
$$

This is exactly the set where convergence is “unstable”—the probability mass must not accumulate there.

---

## 6. Why the Quantile (Skorokhod) Representation Fails in $d > 1$

In one dimension:

- You can take $U \sim {\rm Uniform}(0,1)$,
- Define $Y_n = F_{X_n}^{-1}(U)$ and $Y = F_X^{-1}(U)$.

Then:
- $Y_n \stackrel{d}{=} X_n$,
- $Y \stackrel{d}{=} X$,
- $Y_n \to Y$ almost surely.

This is because 1‑dimensional distributions are totally ordered.

### In higher dimensions:
- There is **no multivariate quantile function** with these monotonicity properties.
- There is **no canonical order** on $\mathbb{R}^d$.
- Thus the simple quantile construction **cannot** be extended.

Skorokhod’s Representation Theorem still works in $\mathbb{R}^d$, but it uses a much more sophisticated construction (not quantiles).

---

## 7. Key Takeaways

### Characteristic Functions
- $\varphi_X(t) = E[e^{i t\cdot X}]$ determines the law of $X$.
- Independence ⇔ factorization.

### Inversion
- Recover density at 0 via Fourier inversion.
- Compute $P(X \in A)$ using the uniform shift trick.

### Convergence in Distribution
- Portmanteau Theorem gives all equivalent formulations.
- Continuity sets matter.
- Quantile tricks fail in $\mathbb{R}^d$ because no natural order exists.

---

## 8. Suggested Items for Your Prelim Survival Guide
- Independence via characteristic function factorization.
- Uniform-subtraction trick for computing probabilities of rectangles.
- Full multivariate Portmanteau theorem.
- Statement of why 1D quantile coupling does not generalize.

---

If you want, I can add diagrams, examples, or a micro-cheat-sheet summarizing only the formulas you must memorize for exam speed.
