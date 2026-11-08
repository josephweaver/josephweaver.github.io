**Empirical probability measure:** $P_n=\frac1n \sum_{i=1}^n \delta_{X_i}$

**Dirac Probablilty Measure**: $\delta_{X_i} = \begin{cases}1,&x \in C\\ 0,& x\notin C \end{cases}$

**Empirical Measure:** $P_nf=\int f dP_n=\frac1n \sum_{i=1}^n f(X_i)$

Note: $P_n(C) = P_n 1_C=\frac1n \sum_{i=1}^n I(X_i\in C)$

**Empirical Process:** $\mathbb G_n f = \sqrt{n}(P_nf-Pf)=\frac{1}{\sqrt{n}}\sum_{i=1}^n(f(X_i)-Pf)$

**Population expectation**: $Pf=\int f dP= \mathbb E[f(X_i)]$

**Glivenko-Cantelli Class (G-C Class)**:  $\Vert P_n - P\Vert_{\mathcal F}\stackrel{P^\star }{\to}0 \implies \mathcal F$ is G-C class.

**P-Donsker-Class**: $\mathbb G_n\rightsquigarrow\mathbb G
\qquad\text{in }\ell^\infty(\mathcal F) \implies \mathcal F$ is P-Donsker.
Where $\mathbb G$ is a tight, Borel measurable random element of $\mathcal l^\infty(T)$.

Miscellaneous.

Set of bounded function on $T$ . $\mathcal l^\infty(T) := \{z : T\to\mathbb R\text{ s.t. } \Vert z\Vert_T<\infty \}$
Where $\Vert z\Vert_T := \sup_{t\in T} |z(t)|.$

**Fundamental Theorem of Calculas and Tail Probabilities.**  For r.v. U, and $\psi(U)\geq0$
$$
\psi(U)\stackrel{\text{FTC}}{=}\int_0^U\psi'(t)dt =\int_0^\infty \psi'(t)1_{\{U>t\}}dt\\
\mathbb E \psi(U) \stackrel{\text{Tonelli}}{=} \int_0^\infty \psi'(t)P(U>t)dt
$$


# Weak Convergence — Metric Space & Functional Analysis Vocabulary

Many ideas in weak convergence build on the structure of a **metric space**. The key is to keep concepts such as compactness, separability, completeness, boundedness, continuity, and measurability distinct.

---

## 1. Metric Space

A **metric space** is a set $\mathbb D$ together with a distance function

$$
d:\mathbb D\times\mathbb D\to[0,\infty).
$$

The metric tells us how far apart two elements are.

### Basic Example

For $\mathbb R$,

$$
d(x,y)=|x-y|.
$$

### Functional-Analysis Example

For functions $f,g:T\to\mathbb R$,

$$
d(f,g)=\|f-g\|_\infty
=
\sup_{t\in T}|f(t)-g(t)|.
$$

This is the natural metric on spaces such as

$$
\ell^\infty(T).
$$

---

# Topological Concepts

## 2. Open Ball

The open ball centered at $x$ with radius $\epsilon$ is

$$
B(x,\epsilon)
=
\{y:d(x,y)<\epsilon\}.
$$

For example, in $\mathbb R$,

$$
B(2,0.5)=(1.5,2.5).
$$

Open balls are the basic building blocks of topology.

---

## 3. Open Set

A set $G\subseteq\mathbb D$ is **open** if every point in $G$ has some small ball around it that remains entirely inside $G$:

$$
x\in G
\implies
\exists \epsilon>0:
B(x,\epsilon)\subseteq G.
$$

### Example

$$
(0,1)
$$

is open in $\mathbb R$.

Even if $x$ is very close to $0$ or $1$, we can choose a sufficiently small ball around $x$ that remains inside the interval.

---

## 4. Closed Set

A set $F$ is **closed** if it contains all of its limit points.

Equivalently, in a metric space,

$$
x_n\in F,\qquad x_n\to x
\quad\Longrightarrow\quad
x\in F.
$$

### Example

$$
[0,1]
$$

is closed.

For example,

$$
x_n=\frac1n\to0,
$$

and

$$
0\in[0,1].
$$

### Nonexample

$$
(0,1]
$$

is not closed because

$$
\frac1n\to0,
$$

but

$$
0\notin(0,1].
$$

---

## 5. Closure

The **closure** of $A$, denoted

$$
\overline A,
$$

is $A$ together with all of its limit points.

### Example

$$
A=(0,1)
$$

has closure

$$
\overline A=[0,1].
$$

An especially important example is

$$
\overline{\mathbb Q}=\mathbb R.
$$

This leads directly to the idea of **density**.

---

# Sequences and Approximation

## 6. Convergence

A sequence $x_n$ converges to $x$ if

$$
d(x_n,x)\to0.
$$

We write

$$
x_n\to x.
$$

### Example

$$
x_n=\frac1n
$$

converges to $0$, because

$$
d(1/n,0)=1/n\to0.
$$

### Function-Space Example

Under the sup norm,

$$
f_n\to f
$$

means

$$
\sup_{t\in T}|f_n(t)-f(t)|\to0.
$$

This is **uniform convergence**.

---

## 7. Cauchy Sequence

A sequence is **Cauchy** if its elements eventually become arbitrarily close to **each other**:

$$
\forall\epsilon>0,\quad
\exists N:
m,n>N
\implies
d(x_m,x_n)<\epsilon.
$$

The definition does **not** require us to know the limit.

### Mental Model

* **Convergent:** "I know where you are going."
* **Cauchy:** "You are clearly settling down somewhere."

Every convergent sequence is Cauchy.

Whether every Cauchy sequence converges depends on **completeness**.

---

## 8. Complete

A metric space is **complete** if every Cauchy sequence converges to an element that is still inside the space:

$$
\text{Cauchy}
\quad\Longrightarrow\quad
\text{convergent in }\mathbb D.
$$

### Example

$$
\mathbb R
$$

is complete.

### Nonexample

$$
\mathbb Q
$$

is not complete.

We can construct rational numbers $q_n$ such that

$$
q_n\to\sqrt2.
$$

The sequence is Cauchy in $\mathbb Q$, but

$$
\sqrt2\notin\mathbb Q.
$$

### Functional-Analysis Connection

A **Banach space** is simply a complete normed vector space.

---

# Size and Covering Concepts

## 9. Bounded

A set $A$ is bounded if it fits inside some ball of finite radius:

$$
\exists x,\ M<\infty:
A\subseteq B(x,M).
$$

### Example

$$
[0,1]
$$

is bounded.

But

$$
\mathbb R
$$

is not.

> **Important:** Bounded does not generally imply compact.

This becomes especially important in infinite-dimensional function spaces.

---

## 10. Cover

A collection of sets

$$
\{G_\alpha\}_{\alpha\in A}
$$

is a **cover** of $K$ if

$$
K\subseteq\bigcup_{\alpha\in A}G_\alpha.
$$

If every $G_\alpha$ is open, this is an **open cover**.

### Example

The sets

$$
(-1,0.6)
$$

and

$$
(0.4,1.1)
$$

form an open cover of

$$
[0,1].
$$

---

## 11. Compact

A set $K$ is **compact** if every open cover has a **finite subcover**.

Suppose

$$
K\subseteq\bigcup_{\alpha\in A}G_\alpha.
$$

Compactness says that we can find finitely many sets

$$
G_{\alpha_1},\ldots,G_{\alpha_m}
$$

such that

$$
K\subseteq
G_{\alpha_1}\cup\cdots\cup G_{\alpha_m}.
$$

### In $\mathbb R^d$

The Heine-Borel theorem gives

$$
\boxed{
K\text{ compact}
\iff
K\text{ closed and bounded}.
}
$$

Therefore,

$$
[0,1]
$$

is compact.

But

$$
(0,1)
$$

is not compact because it is not closed, and

$$
[0,\infty)
$$

is not compact because it is not bounded.

### Important Warning

In infinite-dimensional spaces,

$$
\boxed{
\text{closed + bounded}
\not\Rightarrow
\text{compact}.
}
$$

This is one reason compactness becomes more subtle in functional analysis.

---

## 12. Sequential Compactness

In metric spaces, compactness is equivalent to:

> Every sequence in $K$ contains a convergent subsequence whose limit is also in $K$.

If

$$
x_n\in K,
$$

then there exists a subsequence

$$
x_{n_k}
$$

such that

$$
x_{n_k}\to x\in K.
$$

This is often the easiest interpretation of compactness for probability theory.

---

## 13. Totally Bounded

A set $A$ is **totally bounded** if, for every $\epsilon>0$, it can be covered by finitely many balls of radius $\epsilon$:

$$
A
\subseteq
\bigcup_{j=1}^{N}
B(x_j,\epsilon).
$$

Ordinary boundedness says the set fits inside **one sufficiently large ball**.

Total boundedness says that at **every resolution $\epsilon$**, only finitely many $\epsilon$-balls are needed.

A key result for metric spaces is

$$
\boxed{
\text{compact}
\iff
\text{complete + totally bounded}.
}
$$

This becomes important when studying **covering numbers** in empirical-process theory.

---

# Density and Separability

## 14. Dense

A subset $D\subseteq\mathbb D$ is **dense** if every point in $\mathbb D$ can be approximated arbitrarily closely by elements of $D$.

Equivalently,

$$
\overline D=\mathbb D.
$$

### Canonical Example

$$
\mathbb Q
$$

is dense in

$$
\mathbb R.
$$

For every $x\in\mathbb R$ and every $\epsilon>0$, there exists $q\in\mathbb Q$ such that

$$
|x-q|<\epsilon.
$$

> Dense does **not** mean that $D$ contains most of the points.

$\mathbb Q$ is countable while $\mathbb R$ is uncountable, yet $\mathbb Q$ is dense in $\mathbb R$.

---

## 15. Separable

A metric space is **separable** if it contains a **countable dense subset**.

That is, there exists

$$
D=\{d_1,d_2,\ldots\}
$$

such that

$$
\overline D=\mathbb D.
$$

### Canonical Example

$$
\mathbb R
$$

is separable because

$$
\mathbb Q
$$

is both countable and dense in $\mathbb R$.

### Mental Model

> **Separable:** The entire space can be approximated arbitrarily well using only countably many representative points.

Do not confuse separability with compactness:

* **Compact:** finite subcover.
* **Separable:** countable dense subset.

---

# Functions

## 16. Continuous

A function

$$
f:\mathbb D\to\mathbb E
$$

is continuous at $x$ if

$$
x_n\to x
\quad\Longrightarrow\quad
f(x_n)\to f(x).
$$

The equivalent $\epsilon$-$\delta$ definition is

$$
\forall\epsilon>0,\quad
\exists\delta>0
$$

such that

$$
d_{\mathbb D}(x,y)<\delta
\implies
d_{\mathbb E}(f(x),f(y))<\epsilon.
$$

### Example

$$
f(x)=x^2.
$$

If

$$
x_n\to x,
$$

then

$$
x_n^2\to x^2.
$$

For weak convergence, the sequential interpretation is often especially useful:

> nearby inputs produce nearby outputs.

---

## 17. Uniformly Continuous

Ordinary continuity allows the required $\delta$ to depend on the point $x$.

Uniform continuity requires one $\delta$ that works everywhere:

$$
\forall\epsilon>0,\quad
\exists\delta>0
$$

such that, for every $x,y$,

$$
d(x,y)<\delta
\implies
d(f(x),f(y))<\epsilon.
$$

A major result is

$$
\boxed{
f\text{ continuous on compact }K
\Longrightarrow
f\text{ uniformly continuous on }K.
}
$$

---

## 18. Lipschitz

A function is **Lipschitz** if there exists $L<\infty$ such that

$$
d(f(x),f(y))
\le
L\,d(x,y).
$$

### Example

$$
f(x)=2x
$$

is Lipschitz with $L=2$.

We have the hierarchy

$$
\boxed{
\text{Lipschitz}
\Rightarrow
\text{uniformly continuous}
\Rightarrow
\text{continuous}.
}
$$

---

# Measure-Theoretic Concepts

## 19. $\sigma$-Algebra

A **$\sigma$-algebra** $\mathcal A$ is a collection of subsets of $\Omega$ that are allowed to be assigned measures or probabilities.

It must contain $\Omega$ and be closed under:

1. complements,
2. countable unions,
3. therefore also countable intersections.

### Mental Model

> The $\sigma$-algebra specifies which subsets are legally measurable.

---

## 20. Borel $\sigma$-Algebra

For a metric/topological space $\mathbb D$, the **Borel $\sigma$-algebra**

$$
\mathcal B(\mathbb D)
$$

is the smallest $\sigma$-algebra containing all of the open sets.

Thus

$$
\boxed{
\text{Topology}
\longrightarrow
\text{Borel sets}
\longrightarrow
\text{Probability}.
}
$$

---

## 21. Measurable Function

Consider

$$
X:(\Omega,\mathcal A)
\to
(\mathbb D,\mathcal B).
$$

The function $X$ is **measurable** if

$$
X^{-1}(B)\in\mathcal A
$$

for every

$$
B\in\mathcal B.
$$

In words:

> Take a measurable set in the output space. Look at all inputs that map into that set. That preimage must also be measurable.

For a real-valued random variable, this can be checked using sets such as

$$
\{\omega:X(\omega)\le x\}.
$$

A **random variable is therefore a measurable function**.

---

## 22. Continuous vs. Measurable

Continuity and measurability are different properties.

For standard metric spaces,

$$
\boxed{
\text{continuous}
\Rightarrow
\text{Borel measurable}.
}
$$

But the converse is false:

$$
\text{measurable}
\not\Rightarrow
\text{continuous}.
$$

### Example

$$
f(x)=\mathbf 1\{x\ge0\}
$$

is measurable but discontinuous at $0$.

---

# Probability Connections

## 23. Probability Measure

A probability measure

$$
P:\mathcal A\to[0,1]
$$

assigns probabilities to measurable sets and satisfies

$$
P(\Omega)=1
$$

and countable additivity.

---

## 24. Tightness

A family of probability measures

$$
\{P_\alpha\}
$$

is **tight** if, for every $\epsilon>0$, there exists a compact set $K$ such that

$$
P_\alpha(K)\ge1-\epsilon
$$

for all $\alpha$.

### Mental Model

> Almost all of the probability can be trapped inside one compact set.

This is why compactness becomes so important in weak-convergence theory.

---

## 25. Weak Convergence

Roughly,

$$
X_n\rightsquigarrow X
$$

if

$$
E[f(X_n)]
\to
E[f(X)]
$$

for every bounded continuous function

$$
f:\mathbb D\to\mathbb R.
$$

One statement therefore combines much of the vocabulary above:

* metric spaces,
* boundedness,
* continuity,
* Borel measurability,
* probability measures,
* expectation.

When

$$
\mathbb D=\ell^\infty(T),
$$

additional issues such as

* compactness,
* separability,
* measurability,
* tightness,

become central.

---

# Dependency Map

A useful way to organize these concepts is

$$
\boxed{\text{Metric}}
$$

$$
\downarrow
$$

$$
\text{balls}
\rightarrow
\text{open sets}
\rightarrow
\text{closed sets / closure}.
$$

From there,

$$
\begin{array}{ccc}
\text{convergence} & & \text{covers}\\
\downarrow && \downarrow\\
\text{Cauchy} && \text{compactness}\\
\downarrow && \downarrow\\
\text{completeness} && \text{total boundedness}
\end{array}
$$

Separately,

$$
\text{dense}
\rightarrow
\text{separable}.
$$

Topology connects to probability through

$$
\text{open sets}
\rightarrow
\mathcal B(\mathbb D)
\rightarrow
\text{measurability}
\rightarrow
\text{probability measures}.
$$

Finally,

$$
\boxed{
\text{compactness}
+
\text{probability}
\rightarrow
\text{tightness}
\rightarrow
\text{weak convergence}.
}
$$

---

# Core Concepts to Memorize First

| Concept              | Trigger Phrase                               | Canonical Example                |
| -------------------- | -------------------------------------------- | -------------------------------- |
| **Closed**     | Contains its limits                          | $[0,1]$                        |
| **Compact**    | Every open cover has a finite subcover       | $[0,1]$                        |
| **Dense**      | Can approximate every point                  | $\mathbb Q\subset\mathbb R$    |
| **Separable**  | Has a countable dense subset                 | $\mathbb R$, via $\mathbb Q$ |
| **Continuous** | $x_n\to x\Rightarrow f(x_n)\to f(x)$       | $f(x)=x^2$                     |
| **Measurable** | Preimages of measurable sets are measurable  | Random variable                  |
| **Complete**   | Every Cauchy sequence converges in the space | $\mathbb R$                    |
| **Tight**      | Probability can be trapped in a compact set  | $P(K)>1-\epsilon$              |

## High-Value Relationships

$$
\boxed{
\text{compact}
\iff
\text{complete + totally bounded}
}
$$

for metric spaces.

$$
\boxed{
\text{compact}
\iff
\text{closed + bounded}
}
$$

in $\mathbb R^d$, but **not generally in infinite-dimensional spaces**.

$$
\boxed{
\text{Lipschitz}
\Rightarrow
\text{uniformly continuous}
\Rightarrow
\text{continuous}
\Rightarrow
\text{Borel measurable}.
}
$$

And perhaps the most important distinction to keep automatic:

> **Compactness = finite covering property.**
> **Separability = countable approximation property.**
> **Completeness = Cauchy sequences have limits.**
> **Measurability = inverse images are measurable.**
