Recall: $\left|e^{i x}-1 \leq|x| \wedge 2\right.$.
$|x|=\int_{0}^{x} 1 \partial_{v} \geq\left|\int_{v=0}^{x} e^{i v} d v\right|=\left|\frac{e^{i x}-1}{i}\right|$
$\left|\frac{a}{0}\right|=\frac{|a|}{|b|},|a|=\left|r e^{c \theta}\right|=r$
$b=r_{2} e^{i \theta}$
$\left|\int_{n=0}^{x}\left(e^{i k}-1\right) \partial u \leq \int_{c=0}^{x}\right| e^{i u}-1 \mid \partial u \leq \int_{u=0}^{x}\left(u \mid \partial \mu \lambda \int_{k=0}^{r} 2 \delta u\right.$
$\left.\left\lvert\, \frac{e^{i 0}-1}{i}-0\right.\right] \left._{0}^{x}|\quad| e^{i x}-(1+i x)\left|\leq \frac{x^{2}}{2} \wedge 2\right| x \right\rvert\,$
$=\left|e^{i t-1-i t}\right|$
weneed:

$$
\left|e^{i x}-\left(1+i x-\frac{x^{2}}{2}\right)\right| \leq \frac{|x|^{3}}{3!} \wedge x^{2}
$$

now look At chankacteristic functions
Replace $x$ with $x t$ and take Expectation
$|E(\quad)| \leq E \left\lvert\, e^{i+x}-\left(1+i+x+\frac{x^{2}}{2} t^{2}\right) \leq E-\frac{|t|^{3}|x|^{3}}{3!} \Lambda t^{2} x^{2}\right.$

$$
\begin{equation*}
\left|\varphi_{x}(t)-\left(1+i t E(x)+\frac{t^{2} E\left(x^{2}\right)}{2}\right)\right| \leq E\left[\frac{i t)^{3}|x|^{3}}{3!} \wedge x^{2} t^{2}\right] \tag{*}
\end{equation*}
$$

if $E(x)=0$. then it $E(x)=0$
Limberg-feller. LF
$\left\{X_{n, m}\right\}_{1 \leqslant m \leqslant n}, \quad E\left(X_{m, n}\right)=0,\left\{X_{n, m}\right\}$ rowwire ind. $\forall_{n} \geq 1$
if $\sum_{m=1}^{n} E\left(X_{m, n}^{2}\right)=1, n \geq 1$ and $\ln (\varepsilon)=\sum_{m=1}^{n} E\left(X_{n, m}^{2} ;\left|X_{n, m}\right|>\varepsilon\right) \xrightarrow[n \rightarrow 00]{ } \forall \varepsilon>0$
then $S_{n}=\sum_{m=1}^{n} x_{n m} \Rightarrow N(0,1)$
Proof $Z_{n, m}=\varphi_{x_{n, m}}(t), E\left(X_{n, m}^{2}\right)=\sigma_{n, m}^{2}$
Fix $f \in \mathbb{R}$.
$\omega_{n, m}=1-t^{2} \sigma_{n, m / 2}^{2} \quad$ take As positure since At the Cimit $t^{2} \sigma_{r . m}^{2} / 2$ is small
then usina (*) $\forall \varepsilon>0$ is $\varepsilon$ -

$$
\begin{aligned}
\left|z_{n, m}-w_{n, m}\right| & \leq E\left[\frac{|t|^{3}\left|x_{n m}\right|^{3}}{3!} \wedge\left|x_{n, m}\right|^{2} t^{2}\right] \\
& \leq t^{2} \frac{E\left(\frac{1+\left|\left|x_{n, m}\right|^{3}\right.}{6} ;\left|x_{n, m}\right|<\varepsilon\right)+t^{2} E\left(x_{n m j}^{2} \mid x_{n m}>\varepsilon\right)}{\text { ? where did this ago? }}
\end{aligned}
$$

since $\left|x_{n, m}\right|<\varepsilon$

$$
\leq \frac{\varepsilon t^{2} E\left[|t| X_{n, m}^{2} \mid\right)+t^{2} E\left(X_{n, m j}^{2}\left|X_{n, m}\right|>\varepsilon\right)}{E\left|X_{n, m}^{2}\right|=1 \text { given. }}
$$

$$
\begin{aligned}
& \leq \frac{\varepsilon t^{2} E\left[|t| x_{n, m}^{2} \mid\right)+t^{2} E\left(x_{n, m j}^{2}\left|x_{n, m}\right|>\varepsilon\right)}{\frac{E\left|x_{n, m}\right|=1 \text { given. }}{6}} \\
\sum_{m=1}^{n}\left|z_{n, m}-w_{n, m}\right| & \leq \frac{\varepsilon|t|^{3}}{6}+t^{2} \ln (\varepsilon) \xrightarrow[n \rightarrow \infty]{ } \varepsilon \frac{|t|^{2}}{6} \\
& =0
\end{aligned}
$$

Recall: $\sum_{m=1}^{n}\left(1+a_{n, m}\right) \xrightarrow[n \rightarrow \infty]{ } e$
(i) $\sum_{m=1}^{n} a_{n, m} \xrightarrow[n \rightarrow \infty]{ } a$.
(ii) Sup $\sum_{m=1}^{n}\left|a_{n, m}\right|<\infty$
(iii) $\operatorname{man}_{\substack{1 \leq m \leq n \\|\leq n|}}\left|a_{n, m}\right| \xrightarrow[n \rightarrow \infty]{ } 0$

Another Result.

$$
\begin{aligned}
& \left|\lambda_{i=1}^{n} z_{i}-\lambda_{i=1}^{n} w_{i}\right| \leq \sum_{i=1}^{n}\left|z_{i}-w_{i}\right|, \text { if }\left|z_{i}\right| \leq 1,\left|w_{i}\right| \leq \mid \leq i \leq n . \\
& \left|z_{r . m}\right| \leq\left|w_{n . m}\right| \leq 1, \quad n \geq N \\
& \lim _{n \rightarrow \infty}\left|\sum_{m=1}^{n} z_{n . m}-\sum_{m=1}^{n}\left(1-\frac{t^{2} \sigma_{n . m}^{2}}{2}\right)\right| \leq \lim _{n \rightarrow 0} \sum_{m=1}^{n}\left|z_{n . m}-w_{n, m}\right|=0 \\
& \lim _{n \rightarrow 0}\left|\varphi_{\delta_{n}}(t)-\sum_{m=1}^{n}\left(1-\frac{t^{2} \sigma_{n . m}^{2}}{2}\right)\right|=0 \quad\left\{\sum_{n=1}^{n}\left(1-\frac{\sigma_{n . m}^{2}}{2}(-2) \rightarrow-\frac{t^{2}}{2}=\varphi_{N(t), 1}\right)\right. \\
& \Rightarrow \varphi_{\delta_{n}}(t) \rightarrow e^{-t^{2} / 2} \quad \forall t \in \mathbb{R} .
\end{aligned}
$$

g.ves Resitt $S_{\infty} \Rightarrow N(0,1)$.
fruncation of CLT.

## Example !

using truncation.
$\{x, x k\}_{k \geqslant 1}$ iid. $x \stackrel{\mathscr{D}}{=-x}$ symmetic.

$$
P(|x| \geq x)=x^{-2}, \quad x \geq 1 \quad P(|x|<1)=0
$$

$E(x)=0$ (Fron symmetric).

$$
E\left(x^{2}\right) \geq 2 \int_{x=1}^{\infty} P(|x| \geq x) \cdot x \partial x=\int_{1}^{\infty} 2 \cdot x^{-2} x \partial x=2 \int_{1}^{\infty} x^{\prime} \partial x=\infty
$$

Want trucation.

$$
Y_{n, m}=X_{m} \mathbb{1}_{\left|X_{m}\right| \leq \sqrt{n \cdot \log \log n}, \quad C_{n}=\sqrt{n \log \log n}}
$$

$$
\begin{aligned}
& Y_{n, m}=X_{m} \mathbb{1}\left|X_{m}\right| \leq \sqrt{n \cdot \log \log n}, \quad C_{n}=\sqrt{n \log \log n} \\
& \delta_{n}=\sum_{m=1}^{n} X_{n, m}, \quad T_{n} \sum_{m=1}^{n} Y_{n, m}
\end{aligned}
$$

(1) $P\left(\delta_{n} \neq \tau_{n}\right) \leq \sum_{m=1}^{n=1} P\left(Y_{n, m} \neq X_{m}\right)=n \cdot P\left(|X|>c_{n}\right)=\frac{n}{c_{n}^{2}}=\frac{1}{\log \log n} \xrightarrow[n \rightarrow \infty]{ } 0$
$E\left(Y_{n m}^{2}\right)=\int_{1}^{C_{n}} y^{2} \cdot v_{Y_{n, m}}(y) d y=\int_{1}^{C_{n}} y^{2} \frac{2}{y^{2}} d y=\log \left(C_{n}\right)=\frac{1}{2}(\log (n)+\log \log \operatorname{Cog}(n))$
note $\frac{\delta}{\partial x} x^{-2}=\frac{2}{y^{3}}$
$E\left(Y_{n, m}^{2}\right) \sim \log (n), \quad E\left(Y_{1 n n N}\right)=0$.
$\operatorname{Var}\left(T_{n}\right) \equiv n \log (n)$
LiF theron.

$$
\begin{aligned}
& \frac{T_{n}}{\sqrt{n \log n}} \Rightarrow N(0,1) . \\
& \Rightarrow \frac{S_{n}}{\sqrt{n \log (n)}} \Rightarrow \cap(0,1) \\
& S_{n}=T_{n}+\left(S_{n}-T_{n}\right)
\end{aligned}
$$

Divide By $\sqrt{\text { niman }}$
Paul Levy. Resolt Damain of Attration of $N(0,1) \left\{x_{n}\right\}$ iis. Jan, $b_{n}$ s.t. $\frac{\delta_{n}-a_{n}}{b_{n}} \Rightarrow(0,1)$
iff $\frac{y^{2} \cdot p(|x|>y)}{E\left(x^{2} ;|x|>y\right)} \underset{y \rightarrow \infty}{\text { bn }} 0$

