Properties of integial
$(\Omega, F, \mu) \quad \mu-\sigma$-finite.
$\int_{\Omega} \delta \delta \mu$ is integrable if $\quad \int_{\Omega}|f| \delta \mu<\infty$
$|f|=f^{+}+f^{-}, \quad f^{+}=f \vee 0, f^{-}=-(f \wedge 0) \geq 0$
$I(f) \equiv I\left(f^{+}\right)-I\left(f^{-}\right)$
F. g integrable
(1) $f \geq g=7 \quad I(f) \geq I(g) \quad(I(f) \geq 0, f \geq 0)$
(2) $a \in \mathbb{R} \Rightarrow I(a f)=a I(f)$
(3) $I(f+g)=I(f)+I(g)$
(4) $|I(g)| \leqslant I(|f|)$

$$
\begin{aligned}
& |I(f)|=\left|I\left(f^{+}\right)-I\left(f^{-}\right)\right|=\max \left\{I\left(f^{+}\right)-I\left(f^{-}\right), I\left(f^{-}\right)-I\left(f^{+}\right)\right\} \\
& I(|f|)=I\left(f^{+}+f^{-}\right)=I\left(f^{+}\right)+I\left(f^{-}\right)
\end{aligned}
$$

Jenson inequality.
Assumption $\mu(\Omega)=1$.
Let $\varphi: \mathbb{R} \rightarrow \mathbb{R}, \varphi$ is convex
Assume: $f, \varphi(f)$ ane integrable. For
$\varepsilon_{n} \quad \varphi=x^{2}$ or $e^{x}$.

$$
\varepsilon=(f)^{2} \text { or } e^{f(f)}
$$

![](https://cdn.mathpix.com/cropped/2025_11_26_333d0e28fe11c28ff30bg-1.jpg?height=497&width=1097&top_left_y=1068&top_left_x=937)
(2) $\forall x \in \mathbb{R} \exists x_{0}: \varphi\left(x_{0}\right)=\ell\left(x_{0}\right)$
(f) where $l(x)=a+b x$.
then $\varphi(I(f)) \leq I(\varphi(f))$
$I[\varphi(f)] \geq I(l(f))$

$$
\begin{aligned}
& \int_{\Omega} l(\delta) \partial \mu=\int_{\Omega} a+b \delta \partial \mu \\
&=a+b I(f)=l(I(\delta)) \\
& \begin{aligned}
& =l(I(\delta)) \text { since } l(f)=\varphi(f) \text { At } x_{0} .
\end{aligned} \\
&=\varphi(I(\delta))
\end{aligned}
$$

$$
\begin{aligned}
& \bar{x}=\frac{x_{1}+\ldots+n}{n} \geq\left(x_{1} \cdot x_{2} \cdot \ldots \cdot x_{n}\right)^{\frac{1}{n}} \\
& \sum_{k=1}^{n}=\bar{x} \geq\left(\sum_{k=1}^{n} x_{k}\right)^{1 / n} \geq \sum_{k=1}^{n}\left[\left(x_{k}\right)^{1 / n}\right]
\end{aligned}
$$

Commecton

$$
\begin{aligned}
& \Omega=\{1,2 \ldots n\} \\
& \mu(\{k\}), 1 \leq k \leq n, \mu(\Omega)=1 \quad \log (x) . \quad \log \left(\frac{1}{n} \sum \log x_{k}\right)
\end{aligned}
$$

$$
\begin{aligned}
& \Omega=\{(, 2 \ldots n\} \\
& \mu\left(\{k\}, \cdots x_{k}^{n}, \quad 1 \leq k \leq n, \quad \mu(\Omega)=1 \quad \log (x) . \log \left(\frac{1}{n} \sum \operatorname{cog} x_{k}\right)\right. \\
& \left.f: k \rightarrow k_{k}\right) \\
& I(f)=\bar{x} \quad \text { select } \quad f(x)=\ln (x), \quad x>0 \\
& \log (I(f)) \geq I[\log (f)] \\
& \log (\bar{x}) \geq \sum_{k=1}^{n} \frac{1}{n} \log \left(x_{k}\right)=\log \prod_{k=1}^{n}\left(x_{k}^{1 / n}\right) \\
& \sum_{k=1}^{n} \omega_{k} x_{k} \geq \sum_{k=1}^{n} x_{k}^{\omega_{k}} \quad \text { geveralization of proof. }
\end{aligned}
$$

used in...
Let $p \geq 1, \frac{1}{p}+\frac{1}{q}=1 \quad x>0, y>0$.

$$
q \geq 1 ?
$$

then: $x y \leq \frac{x^{p}}{p}+\frac{y^{q}}{q} \quad$ can use Jensen Inequily-
Proff $\quad x_{1}=x^{p}, x_{2}=y^{q} \quad \omega_{1}=\frac{1}{p}, \omega_{2}=\frac{1}{a}$.

$$
x y=\left(x^{p}\right)^{1 / p} \cdot\left(y^{q}\right)^{1 / q} \leq \frac{1}{p} x^{p}+\frac{1}{q} \cdot y^{q}
$$

Holder inequality. Let $S, 2$ be functions. $\Omega \rightarrow \mathbb{R}$. holder inequal th
then

$$
\begin{aligned}
& I(|f \cdot g|) \leq\left(\int_{\Omega}|f|^{p} \delta \mu\right)^{1 / p}\left(S|g|^{q} \partial \mu\right)^{1 / a} \\
& \|f \cdot g\|_{L} \leq\|f\|_{L^{p}} \cdot\|g\|_{L 9 .}-\hbar \text { Norm } \\
& L \text { Linorn }
\end{aligned}
$$

Replace $f$ by $\frac{f}{\|f\|_{L}} B$ g by $\frac{g}{\|f\|_{L 9}}$
then
$\Rightarrow\left\|\frac{f}{\|f\|_{C p}}\right\|_{L p}=1=\left\|\frac{g}{\|g\|_{L q}}\right\|_{L 9}$ this is a common trick
WLOG we assure $\|f\|_{p}=\|g\|_{q}$ WTS $I(|f g|) \leq 1$
$\int_{\Omega}(f g) \delta \mu \leq \int_{\substack{\text { since } \\ \text { since }\left.\right|_{\text {in }} \frac{|f|^{p}}{p}=1}} \frac{|f|^{p}}{p}+\frac{|g|^{q}}{q} d \mu$.
Triangle inequality in $L^{p}(\Omega, F, \mu), P \geq 1$

$$
L^{P}(\Omega, F, \mu)=\left\{\rho: \Omega \rightarrow \mathbb{R}: \int_{n}|f|^{p} \partial \mu<\infty\right\}
$$

Let $\|f+g\|_{p} \leq\|f\|_{p}+\|g\|_{q}$

