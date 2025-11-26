Wednesday, October 2, 2024 11:33 AM
$Z \sim N(0,1)$
$P(z=x) \leqslant \frac{1}{\sqrt{2 \pi}} \frac{e^{-x^{2} / 2} C^{\min 1}}{x} \wedge 10 \quad x>0 \quad\left(p(z>x) \leq e^{-\frac{x^{2}}{2}}, x>0\right)$
$P(z>0)$
$\int_{x}^{\infty} e^{-\frac{y^{2}}{2}} \partial y=\int_{z=0}^{\infty} e^{-\frac{(x+z)^{2}}{2}} \partial z \leqq\left[\int_{z=0}^{\infty} e^{-x z} \partial z\right] e^{-\frac{x^{2}}{2}}$
$y=x$ cherge of verable $y=x+z$
$x>0, t>0$

$$
\partial y=\partial z \quad=\left.\frac{e^{-x z}}{x}\right|_{z=0} ^{\infty}=\frac{1}{x}
$$

$P(z>x)$
$=P(t z>t x)$
$=P\left(e_{t z}^{t z}>e^{t x}\right) \quad$ Markov salv. $P(Z>a) \leqq \frac{E(x)}{a}$
$\leq E\left(e^{t z}\right) e^{-t x}$
$=\left.e^{t^{2} / 2-t_{x}}\right|_{t=+\quad \text { optimal } t \text { mi } x \text { small. }} ^{x=t .}$
$=e^{-x^{2} / 2}$
Max 0 .
$\underbrace{\frac{1}{\sqrt{2 \pi}}\left(\frac{1}{x}-\frac{1}{x^{3}}\right) e^{-\frac{x^{2}}{2}} \wedge 0 \leq P(z>x) \leq \frac{1}{\sqrt{2 \pi}} \frac{e^{-\frac{x^{2}}{2}}}{x} \wedge 1, x>0}$

$$
\frac{1}{x} e^{-\frac{x^{2}}{2}}=(1) e^{-\frac{x^{2}}{2}}+
$$

$\int_{y=x}^{\infty} e^{-y^{2} / 2} \partial y \geq \int_{y=x}^{\infty}\left(1-\frac{3}{y^{4}}\right) e^{-y^{2} / 2} \partial y .=\left(\frac{1}{x}-\frac{1}{x^{3}} e^{-\frac{x^{2}}{2}}\right)$
$M=E(X) \quad P(|X|>a) \leq \frac{E(X)}{a} \quad$ Markov
$\sigma^{2}=V(X)$

$$
P(|I-M|>a) \leq \frac{\sigma^{2}}{a^{2}} \text { elebyches. }
$$

![](https://cdn.mathpix.com/cropped/2025_11_26_e400331454f381846149g-1.jpg?height=106&width=489&top_left_y=1448&top_left_x=373)

$$
p(Z>M+a) \leqslant ? \quad \frac{\sigma^{2}}{\sigma^{2}+a^{2}}
$$

Assume $Y$ w.th $E(Y)=D ; V(Y)=\sigma^{2}$

$$
\begin{aligned}
P(y>a) & \leqslant P\left(|y+b|^{2}>(a+b)^{2}\right) \\
& \leqslant \frac{E\left[(y+b)^{2}\right]}{(a+b)^{2}}=\frac{E\left(y^{2}\right)+b^{2}}{\frac{a^{2}+b^{2}}{(a+b)^{2}}}+b E(x)=\frac{\sigma^{2}+b^{2}}{(a+b)^{2}}=\frac{\sigma^{2}}{\sigma^{2}+b^{2}}=\frac{a^{2}}{b^{2}=\operatorname{argmin}\left(\frac{a^{2}+b^{2}}{(a+b)^{2}}\right)}
\end{aligned}
$$

Independence, Clupter 2.1 Durnett
Let $\mathcal{F}_{\alpha} \subset \mathcal{F}, \alpha \in I$
(1) we say $\left\{\mathcal{F}_{\alpha}\right\}_{d \in I}$ are independent ip $P\left(\bigcap_{i=1}^{n} A_{i}\right)=\prod_{i=1}^{n} P\left(A_{i}\right)$

$$
A_{i} \in \mathcal{F}_{\alpha_{i}} \quad i=1, \cdots, n
$$

(2) Let $\left\{\bar{X}_{\alpha}\right\}_{\alpha \in I}$ Be collection of Random Variables r.V.

Every $X_{\alpha}: \Omega \rightarrow \mathbb{R}$

$$
\begin{aligned}
& X_{\alpha} \text { in } \mathcal{F} \mid B(\mathbb{R}) \text { measurablen } \\
& \sigma\left(x_{\alpha}\right) \subset \mathcal{F}, \alpha \in I .
\end{aligned}
$$

We suy $\left\{\alpha_{\alpha}\left\{\alpha \in I\right.\right.$ are Independent if $\left\{\sigma\left\{x_{\alpha}\right\}\right\}_{\alpha \in I}$ Are Independent $a \subset \mathcal{F}$
theorm if $\left\{a_{i}\right\}$. Are independent and $a_{i}$ is Jrsystem $\leftarrow$ closed undr
![](https://cdn.mathpix.com/cropped/2025_11_26_e400331454f381846149g-2.jpg?height=205&width=1976&top_left_y=128&top_left_x=150)

Ex: we have 2 R.V.S. Z, Y
we know $p\left(x^{\prime}=x, y \leq y\right)=P(Z \leq x) P(y \leq y), \quad x, y \in \mathbb{R}$
Does it neen thur ( $X, Y$ ) Ane IND? YES.

$$
\begin{array}{ll}
\{\bar{x}<x\}_{x \in \mathbb{R}} & \text { not } \sigma-A g \text { but it is a } x \text { system. } \\
\{1<\bar{x}<B\} & \left\{x \leqslant x_{1}\right\} \cap\left\{x \leqslant x_{2}\right\}=\left\{\not \bar{x} \leqslant x_{1} \wedge x_{2}\right\} \\
\pi \text { m.n. }
\end{array}
$$

Proof:
Let $\mathcal{L}=\left\{A \in \mathcal{F}: P\left(A \cap \bigcap_{i=2} A_{i}\right)=P(A) \cdot \sum_{i=1}^{n} P\left(A_{i}\right) \cdot \forall A_{i} \in Q_{i} \quad z \leq \varepsilon \leq n\right\}$

Claim $\lambda$ system,

$$
\mathcal{L}>a_{1} \rightarrow a \text { system }
$$

Dyikin suys $\mathcal{L} \supset \sigma\left\{a_{1}\right\}$.
(1) $\Omega \in \mathcal{L}$
(2) $A \subset B, A \in \mathcal{L}, B \in \mathcal{L} \Rightarrow B \backslash A \in \mathcal{L}$
(3) $B_{i} \in \mathcal{L}, B_{i} \uparrow B \Rightarrow B \in \mathcal{L}$
$\left.\Rightarrow \sigma\left\{a_{n}\right\}, a_{1}, \cdots, a_{n}\right\}$ IND.
Then Reptice $a_{2}$ an slow. Fil.
Ex. Let $\left\{\mathcal{F}_{i}\right\}_{i=1,2,3}$ be IND. $\sigma=$ Alg.
are $\sigma\left\{\mathcal{F}_{1}, \mathcal{F}_{2}\right\}, \mathcal{F}_{3}$ IND? YEY stude follow from Pynkyn
$\mathcal{F}, \cap \mathcal{F}=\{A \cap B: A \in \mathcal{F}, B \in \mathcal{F}\}$,
Observe, $\mathcal{F}_{1} \cap \mathcal{F}_{2}, \mathcal{F}_{3}$ are IND.
$\Rightarrow \sigma\left\{\mathcal{F}^{\prime \prime} \cap \mathcal{F}_{2}^{\prime}\right\}, \mathcal{F}_{3}$ are IND.
Let $\left\{x_{1}, x_{2}, x_{3}, x_{4}, x_{2}\right\}$ be Ind r.v.
then $x_{1}+x_{2}, e^{x_{3}}-\sin \left(x_{1}+x_{3}\right)$ Ane IND.

