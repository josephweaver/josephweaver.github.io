# **Complex numbers**

- **complex number**. $z\in\mathbb{C}$ that has the form $z = a + ib$, where $\text{Re}(z) = a$ and $\text{Im}(z) = b$ where $i=\sqrt{-1}$.

- **Addition** $(a + ib) + (c + id) = (a + c) + i(b + d)$

- **Multiplication** $(a + ib)(c + id) = (ac - bd) + i(ad + bc)$

- **Scalar multiplication** $c(a + ib) = ca + i\,cb$

- **Division** $\displaystyle \frac{1}{z} = \frac{\bar z}{|z|^2},\quad z \neq 0$
  - $\displaystyle \frac{a + ib}{c + id} = \frac{(a + ib)(c - id)}{c^2 + d^2}$

- **Modulus**. $|z| = |a + ib| = \sqrt{a^2 + b^2}$
  - $|z\cdot w| = |z|\cdot|w|$
  - **Triangle inequality:** $|z + w| \le |z| + |w|$
  - $|z| = 0 \iff z = 0$
  - $|e^{it}| = 1$

- **Complex conjugate** $\bar z = a - ib$
  - $\overline{z + w} = \bar z + \bar w$
  - $\bar{z\cdot w} = \bar z \cdot \bar w$
  - $\bar{\bar z} = z$
  - $z\bar z = a^2 + b^2 = |z|^2$
  - $\overline{e^{i\theta}} = e^{-i\theta}$
  - $\overline{\cos\theta + i\sin\theta} = \cos\theta - i\sin\theta$
- **Useful Inequalities**.
  - $|e^{ix}-1|\le|x|$
  - $|e^{ix}-1-ix|\le \frac{x^2}{2}$
  - $|1+z|\ge 1-|z|$

# Characteristic Funtions 

- **Characteristic Function $\varphi(t)$**. For random variable $X$ we define **characteristic function** $\varphi_X(t)=\mathbb{E}[e^{itX}]=\mathbb{E}[cos(tX)]+i\mathbb{E}[sin(tX)]$
  - A characteristic function is the Fourier transform of a probability law.
  - $\varphi(0)=1$
  - $\varphi(-t) =\bar{\varphi(t)}$
  - **Existence**. Characteristic functions always exist for every random variable, since $|e^{itX}|=1$.
  - **Magnitude 1**. $|\varphi(t)|=|\mathbb{E}[e^{itX}]|\le\mathbb{E}[|e^{itX}|]=1$
  - **uniform continuity**. $|\varphi(t+h)-\varphi(t)|\le\mathbb{E}[|e^{ihX}-1|]$
  - **linear tranform**. $\varphi_{aX+b}(t)=\mathbb{E}[e^{it(aX+b)}]=e^{itb}\mathbb{E}[e^{i(at)X}]=e^{itb}\varphi_X(at)$.
- **Independent Convolutions**. If $X\perp\!\!\!\perp Y$ with ch.f. $\varphi_X$ and $\varphi_Y$, then $X+Y$ has ch.f. $\varphi_{X+Y}(t)=\varphi_X(t)\varphi_Y(t)$
  - $\varphi_{X-Y}(t)=\varphi_X(t)\varphi_Y(-t)$.
- **Mixture Property**. If CDF $F_1,...,F_n$ have ch.f. $\varphi_1,...,\varphi_n$ and $\lambda_i>=0$ have $ \lambda_1 +...+\lambda_n=1$ then $F=\sum_{i=1}^n F_i$ has ch.f. $\varphi_F(T)=\sum_{i=1}^n\lambda_i\varphi_i(t)$. 
- **Distribution Inversion**. if $a<b$ then $\lim_{T\to\infty}(2\pi)^{-1}\int_{-T}^T\frac{e^{-ita}-e^{-itb}}{it}\varphi(t)dt = \mu((a,b))+\tfrac12\mu(\{a\}) + \tfrac12\mu(\{b\})$
  - *Example*: Let $X \sim U(0,1)$ so $\varphi(t)=\frac{e^{it}-1}{it}$. Choose $a=0.2$ and $b=0.7$. The weak inversion formula gives $\mu((0.2,0.7)) = \lim_{T\to\infty} \frac{1}{2\pi} \int_{-T}^T \frac{e^{-it0.2}-e^{-it0.7}}{it} \cdot \frac{e^{it}-1}{it}\,dt.$ Evaluating the integral produces $\mu((0.2,0.7)) = 0.7 - 0.2 = 0.5.$ This matches the true probability for a uniform(0,1) distribution.
- **Density Inversion**. If $\int|\varphi(t)|dt<\infty$ then $\mu$ has bounded continuous density $f(y)=\frac{1}{2\pi}\int e^{-ity}\varphi(t)dt$. 
  - *Example*: Let $X \sim N(0,1)$ so $\varphi(t)=e^{-t^2/2}$. The density inversion formula gives $f(x) = \frac{1}{2\pi} \int_{-\infty}^{\infty} e^{-itx}\,e^{-t^2/2}\,dt.$ This is a standard Fourier transform. The result is $f(x)=\frac{1}{\sqrt{2\pi}}e^{-x^2/2}.$ Thus the inversion formula recovers the familiar normal density.
- **Continuity Theorem.** Let $\mu_n$, $1 \le n \le \infty$, be probability measures with characteristic
functions $\varphi_n$.
  1. **Weak convergence implies pointwise CF convergence.**  If $\mu_n \Rightarrow \mu_\infty,$ then for every real $t$, $\varphi_n(t) \to \varphi_\infty(t).$
  2. **Pointwise CF convergence gives weak convergence (with a mild condition).** If the ch.f. $\varphi_n(t)$ satisfy: $\varphi_n(t) \to \varphi(t)$ for each $t$, and  $\varphi$ is continuous at $0$, then the sequence $(\mu_n)$ is **tight**, and $\mu_n \Rightarrow \mu,$ where $\mu$ is the probability measure whose ch.f is $\varphi$.
- **Uniqueness**. if two distribution have the same ch.f., they are identical:  $\varphi_X(t)=\varphi_Y(t)\forall t \Rightarrow X \stackrel{d}{=} Y$.
- **Moments**.  $\varphi'_X(0) = i\mathbb{E}[X], \quad \varphi''_X(0) = -\mathbb{E}[X^2]$
- **Taylor Expansion**. if $\mathbb{E}[|X|^k]<\infty$, $\varphi_X(t)=\sum_{j=0}^k\frac{(it)^j}{j!}\mathbb{E}[X^j]+o(t^k)$.
- **Definition (Tightness).**  A sequence of probability measures $\{\mu_n\}$ on $\mathbb{R}$ is **tight** if $\forall \varepsilon > 0$ $\exists$ compact $K \subset \mathbb{R} : \mu_n(K^c) < \varepsilon \forall n.$ For probability distributions of random variables $X_n$, this is equivalent to $\forall\,\varepsilon>0\;\exists\,M<\infty : \mathbb{P}(|X_n| > M) < \varepsilon\quad\forall n.$

- **Bernoulli(p)** $\varphi_X(t) = (1-p) + p e^{it}$

- **Rademacher($\frac{1}{2}$)** $\varphi_X(t) = \cos(t)$

- **Binomial(n,p)** $\varphi_X(t) = (1 - p + p e^{it})^n$

- **Geometric(p)** $\varphi_X(t) = \frac{p}{1 - (1-p)e^{it}}$

- **Poisson(λ)** $\varphi_X(t) = \exp(\lambda(e^{it}-1))$

- **Exponential(λ)** $\varphi_X(t) = \frac{\lambda}{\lambda - it}$

- **Gamma(α,λ)** $\varphi_X(t) = \left(\frac{\lambda}{\lambda - it}\right)^{\alpha}$

- **Normal(μ,σ²)** $\varphi_X(t) = \exp\!\left(i\mu t - \tfrac12\sigma^2 t^2\right)$

- **Uniform(a,b)** $\varphi_X(t) = \frac{e^{itb} - e^{ita}}{it(b-a)}$

- **Laplace(0,b)** $\varphi_X(t) = \frac{1}{1 + b^2 t^2}$

- **Cauchy(0,γ)** $\varphi_X(t) = e^{-\gamma |t|}$

- **Chi-square(k)** $\varphi_X(t) = (1-2it)^{-k/2}$

