# **Lecture 36 — Characteristic Functions, Their Properties, and Inversion**

This lecture gives:

1. Worked examples of characteristic functions (CFs),
2. A detailed proof of continuity of $ \varphi_X(t) $,
3. The connection $ \psi(t)=Ee^{tX},\ \varphi(t)=\psi(it) $,
4. The **Inversion Formula** (Durrett 3.3.4) for recovering the distribution from a CF.

---

# 1. Examples of Characteristic Functions

Let $ \varphi_X(t) = E[e^{itX}] $.

---

## Example 1: $X\sim\mathrm{Uniform}(a,b)$

(Page 1.)

$$
\varphi_X(t)
= \int_a^b e^{itx}\frac{1}{b-a}\,dx
= \frac{e^{itb}-e^{ita}}{it(b-a)}.
$$

Notes on page 1 mention:

- $ \varphi_{-X}(t)=\frac{e^{-ita}-e^{-itb}}{it(b-a)} $  
- $-X\sim\mathrm{Uniform}(-b,-a)$.

---

## Example 2: $X\sim\mathrm{Poisson}(\lambda)$

(Page 1, Example 3.3.2.)

$$
\varphi_X(t)
= \sum_{k=0}^\infty e^{itk} e^{-\lambda}\frac{\lambda^k}{k!}
= e^{-\lambda} \exp(\lambda e^{it})
= \exp\{\lambda(e^{it}-1)\}.
$$

---

## Example 3: Constant $X=c$

(Page 1.)

$$
\varphi(t)=e^{itc}.
$$

---

## Example 4: $X\sim N(0,1)$

(Page 2, Example 3.3.3, with detailed integration by parts.)

Start with:

$$
\varphi(t)=\int_{-\infty}^\infty e^{itx} \frac{1}{\sqrt{2\pi}}e^{-x^2/2}dx.
$$

Use symmetry: $\sin(tx)$ is odd, density symmetric:

$$
\varphi(t)=\int_{-\infty}^\infty \cos(tx) f(x)\,dx.
$$

Differentiate:

$$
\varphi'(t) = -t\,\varphi(t).
$$

Solve:

$$
\varphi(t)=e^{-t^2/2},\qquad \varphi(0)=1.
$$

### Alternate method (page 2)
Using the MGF $ \psi(t)=Ee^{tX}=e^{t^2/2} $ and analytic continuation:

$$
\varphi(t)=\psi(it)=e^{-t^2/2}.
$$

Page 2 shows the “complete the square’’ derivation:

$$
\int e^{tx - x^2/2}\,dx
=
e^{t^2/2}\int e^{-(x-t)^2/2}\,dx.
$$

---

# 2. Continuity of Characteristic Functions

(Page 3.)

Show that $t\mapsto \varphi(t)$ is **uniformly continuous** on $\mathbb R$.

Compute:

$$
\vert \varphi(t+h)-\varphi(t)\vert 
=
\vert E(e^{i(t+h)X}-e^{itX})\vert .
$$

Factor:

$$
e^{i(t+h)X}-e^{itX}
=
e^{itX} (e^{ihX}-1).
$$

Thus:

$$
\vert \varphi(t+h)-\varphi(t)\vert 
\le 
E\vert e^{ihX}-1\vert .
\tag{1}
$$

Page 3 splits the expectation:

$$
E\vert e^{ihX}-1\vert 
=
E\big(\vert e^{ihX}-1\vert ;\, \vert X\vert \ge M\big)
+
E\big(\vert e^{ihX}-1\vert ;\, \vert X\vert <M\big).
$$

For $\vert X\vert \ge M$:

$$
\vert e^{ihX}-1\vert  \le 2 \quad\Rightarrow\quad
E(\vert e^{ihX}-1\vert ;\, \vert X\vert \ge M) \le 2\,P(\vert X\vert \ge M).
$$

For $\vert X\vert <M$:

$$
\vert e^{ihX}-1\vert 
\le \vert hX\vert 
\le \vert h\vert M.
$$

Thus:

$$
\vert \varphi(t+h)-\varphi(t)\vert 
\le
2P(\vert X\vert \ge M) + \vert h\vert M.
\tag{2}
$$

Given any $\varepsilon>0$, choose $M$ with $P(\vert X\vert \ge M)<\varepsilon$.  
Then choose $\vert h\vert <\varepsilon/M$.  
Hence:

$$
\varphi \text{ is uniformly continuous on }\mathbb R.
$$

---

# 3. Injectivity of the CF Map:  
If $ \varphi_X(t)=\varphi_Y(t)\ \forall t$, then $X\overset d=Y$.

(Page 3 right diagram: unit circle representation.)

This is a major theorem: the CF uniquely determines the distribution.

---

# 4. Inversion Formula (Durrett Theorem 3.3.4)

Pages 3–4 contain the inversion theorem, developed using a smoothing device based on a uniform variable.

### Setup

Let $U\sim\mathrm{Uniform}(a,b)$, and $-U\sim\mathrm{Uniform}(-b,-a)$.  
Then (page 4):

$$
\varphi_{-U}(t)
= \frac{e^{-ita}-e^{-itb}}{it(b-a)}.
$$

Assume $X$ is independent of $U$, and define:

$$
Y = X - U.
$$

Then the CF of $Y$ is the product:

$$
\varphi_Y(t)
=
\varphi_X(t)\,\varphi_{-U}(t).
\tag{3}
$$

---

## Inversion Identity

Page 3–4 states the formula:

$$
\frac{b-a}{2\pi}
\int_{-T}^T \varphi_X(t)\,\varphi_{-U}(t)\,dt
\;\xrightarrow[T\to\infty]{}\;
P(a< X < b).
\tag{4}
$$

Using (3):

$$
\frac{b-a}{2\pi}
\int_{-T}^T \varphi_Y(t)\,dt
\;\longrightarrow\;
P(a< X < b).
$$

Since $U$ is uniform on $(a,b)$, the random shift $X-U$ has density:

$$
f_Y(y)
= \frac{P(a+y < X < b+y)}{b-a},
\tag{5}
$$

which (as noted on page 4) has bounded variation because it is the difference of two distribution functions.

Then an alternate form, also on page 4:

$$
\frac{1}{2\pi}\int_{-T}^{T} \varphi_Y(t)\,dt
=
\frac{1}{\pi}\int_{-\infty}^\infty 
\frac{\sin(Ty)}{y}\, f_Y(y)\,dy.
\tag{6}
$$

As $T\to\infty$, the kernel $\sin(Ty)/y$ acts like an approximate identity (“sinc’’ kernel, sketched on page 4), converging to $\pi\,\delta_0$.

Thus (6) → $f_Y(0)$, and via (5) this yields:

$$
f_Y(0) = \frac{P(a<X<b)}{b-a}.
$$

Rearranging gives (4), the inversion formula.

### Interpretation (page 4 note)

The limit of the integral is the probability mass in the interval $(a,b)$.  
Thus characteristic functions determine distribution functions.

---

# **Cheat–Sheet Summary — Lecture 36**

- **Examples**: CFs of Uniform, Poisson, Constant, and Normal distributions computed explicitly.
- **Normal CF**: obtained either by integration by parts or by analytic continuation of the MGF.
- **Uniform continuity** of CFs:  
  $$
  \vert \varphi(t+h)-\varphi(t)\vert \le 2P(\vert X\vert \ge M)+\vert h\vert M.
  $$
- **Uniqueness**: if CFs agree, the distributions agree.
- **Inversion Formula**:  
  For $a<b$,  
  $$
  \frac{b-a}{2\pi}\int_{-T}^T\varphi_X(t)\,\varphi_{-U}(t)\,dt
  \to P(a<X<b).
  $$
  Derived by smoothing $X$ with a uniform variable and applying the sinc kernel limit.

