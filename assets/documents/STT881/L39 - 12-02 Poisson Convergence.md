$\varepsilon_{x}$ of CLT $\left\{y_{k}\right\}_{k=1} I_{n D}$
$P\left(Y_{k}=1\right)=1 / k \quad P\left(Y_{k}=0\right)=1-\frac{1}{k} \quad Y_{k} \sim \operatorname{Ber}\left(p=1 y_{k}\right)$
$S_{n}=\sum_{k=1}^{n} k_{k} \quad E\left(S_{n}\right)=\sum_{k=1}^{n} E\left(Y_{k}\right)=\sum_{k=1}^{n} \frac{1}{k} \sim \log (n)$
$\operatorname{Var}\left(s_{n}\right)=\sum_{k=1}^{n} \frac{1}{k}-\frac{1}{k^{2}} \sim \log c_{n} 2$
$\frac{S n-\log n}{\sqrt{\log n}} \Rightarrow N(0,1)$.
write interms of tringle Arrays.
$\left\{x_{n, k}=\frac{Y_{k}-1_{k}}{\sqrt{\log (n)}}\right\}_{1 \leqslant k \leqslant n} \quad \Sigma 1_{k}=\log r$.
Undeberg Condition check
$\sum_{k=1}^{n} E\left(X_{n, k}^{2} ;\left|X_{n, k}\right|>\varepsilon\right\} \quad \xrightarrow[n \rightarrow \infty]{ } 0, \varepsilon>0$
$k=1$
$\left|Y_{k}-\frac{1}{k}\right| \leq 1 \quad$ so $\quad\left|X_{n, k}\right|<\frac{1}{\sqrt{\log (n)}} \xrightarrow[n \rightarrow \infty]{\text { this is Emity set }} 0$
If $\sup _{1 \leq k \leq n}\left|x_{n}, k\right| \leq C_{n}$ and $C_{n} \rightarrow C_{n \rightarrow 0}^{\infty} 0$ then $L_{\text {. condition holds. }}$

Examolez with truncation
$\left\{X_{n, m}\right\}_{1 \leq m \leq n}$ iid for Each $n$
$p\left(x_{n, 1}= \pm \frac{1}{\sqrt{n}}\right)=\frac{1}{2}-\frac{1}{2 n^{2}}$
$P\left(x_{n, 1}= \pm \frac{4^{k}}{\sqrt{n}}\right)=\frac{1}{2 n^{2} \cdot 2^{k}}, \quad k=1,2,3 \ldots \quad \sum_{k=1}^{\infty} \frac{1}{2 k}=1$
$\quad n \ldots$

$$
\begin{aligned}
& r\left(X_{n, 1}= \pm \frac{1}{\sqrt{n}}\right)=\frac{1}{2 n^{2} \cdot 2^{k}}, k=1,2,3 \ldots \sum_{k=1}^{n} 2 k-1 \\
& S_{n}=\sum_{k=1}^{n} X_{n, k} \text { this Dis Apperoned. }
\end{aligned}
$$

whit is $E\left|X_{n \ldots}\right|=\frac{1}{\sqrt{n}}\left(1-\frac{1}{n^{2}}\right)+\sum_{k=1}^{\infty} \frac{2^{k}}{\sqrt{n}} \cdot \frac{1}{n^{2} \cdot x^{k}}=\infty$

$$
\begin{aligned}
& E \mid X_{n}, 1=\infty \\
& \Rightarrow E\left(X_{n}^{2}, 1\right)=\infty
\end{aligned}
$$

Aside
$\sqrt{E\left(x^{2}\right)}>E|x|$ By Jensen.
Thus seed truncertion.

$$
\begin{aligned}
& Y_{n, m}=X_{n, m} \mathbb{1}_{\left|x_{n, m}\right| \leq 1 / \sqrt{n}} \quad 1 \leq m \leq n . \\
& Y_{n, m}=\left\{\begin{array}{lll}
0 & \text { w.p } & 1 / n \\
\pm \frac{1}{\sqrt{n}} & \text { w.p } & 1 / 2-\frac{1}{2 n^{2}}
\end{array}\right. \\
& E\left(Y_{n, m}\right)=0 \\
& \text { vor }= \\
& E\left(Y_{n, m}^{2}\right)=\frac{1}{n}\left(\frac{1}{z}-\frac{1}{2 n^{2}}\right)=\frac{1}{n}-\frac{1}{n^{3}} . \\
& \sum_{m=1}^{n} \operatorname{Var}\left(Y_{n, m}\right)=1-\frac{1}{n^{2}} \xrightarrow[n \rightarrow \infty]{ } 1, \\
& \text { if } T_{n}=\sum_{m=1}^{n} Y_{n m} \\
& T_{n} \Rightarrow N(0,1)
\end{aligned}
$$

we want: $S_{n} \Rightarrow N(0,1)$
wats $P\left(S_{n} \neq T_{n}\right) \rightarrow \underset{n \rightarrow \infty}{\rightarrow}$.

$$
\begin{aligned}
\left(S_{n}-T_{n} \xrightarrow[n \rightarrow \infty]{P} 0\right) & 0) \\
P\left(S_{n} \neq T_{n}\right) & \leq P\left(\hat{U}_{n=1}^{\hat{v}}\left\{x_{n m} \neq Y_{n, m}\right\} .\right.
\end{aligned}
$$

$$
\begin{aligned}
& \leq n \cdot P\left(X_{n, 1} \neq Y_{n, 1}\right) \\
& \leq n \cdot \frac{1}{n^{2}}=\frac{1}{n} \underset{n \rightarrow \infty}{\rightarrow} 0
\end{aligned}
$$

Doacin of Attation by levey.$\frac{S_{n}-A_{n}}{b_{n}} \Rightarrow N$. DOA of Normel Law.
Critecion of Paul Leug.

$$
\begin{aligned}
& x_{1}, x_{2}, \text { iid. } \quad \exists a_{n}, b_{n} \in \mathbb{R .}: \frac{s_{n}-a_{n}}{b_{n}} \Rightarrow N(0,1) \\
& \text { iff } \\
& \frac{Y^{2} p(|x|>y)}{E\left(x^{2} j|x| \leq y\right)} \underset{y \rightarrow \infty}{ } 0
\end{aligned}
$$

if Does not hoto for get Abast trenection

Berry - Escen
$x_{1} x_{1}, x_{2}, \ldots$ iid. $\quad E(x)=0, \operatorname{Var}(x)=1$ Assume $E\left|x^{3}\right|<\infty$
" $\frac{S_{n}}{\sqrt{n}} \Rightarrow N(0,1)^{n}$. Nees stronges
ther. $\sup \left|F_{n}(x)-\Phi(x)\right| \leq \frac{3 E\left(x^{3}\right)}{\sqrt{n}}$ " says $\frac{1}{r_{n}}$ too Big"

$$
\begin{aligned}
\Phi(x)=P(z \leq x), \quad z & \sim N(0,1) \\
F_{n}(x) & =P\left(\frac{s_{n}}{\sqrt{n}} \leq x\right)
\end{aligned}
$$

"convergence is uniform."
"Not Polntwise"
Poisson convergence, sect on 6 ?
$Y \sim$ Poisson $(\lambda) \quad \lambda>0, \quad P(Y=k)=e^{-\lambda} \lambda^{k} \quad k=0,1,2 \ldots$
$Y \sim \operatorname{Poisson}(\lambda) \quad \lambda>0, \quad P(Y=k)=\frac{e^{-\lambda} \lambda^{k}}{k!} \quad k=0,1,2 \ldots$
Law of Rave Events.
$\operatorname{Bin}\left(n, \frac{\lambda}{n}\right) \underset{n(\text { errge }}{\sim} \operatorname{Poisson}(\lambda) \quad "$ Binomierl converge in Dist to Poisan" Theorem; $\left\{X_{r . m}\right\}_{1 \leqslant m \leqslant n}$ are $I_{n} D_{\text {, }}$
$X_{n, m} \sim \operatorname{Bec}\left(P_{n, m}\right)$, ie $P\left(X_{n, m}=1\right)=P_{n, m}, P\left(X_{n, m}^{11}\right)=1-P_{n, n}^{0}$
Assure: (1) $\sum_{m=1}^{n} P_{n, m} \xrightarrow[n \rightarrow 00]{ } \lambda \geq 0$
(2) $\max _{1 \leqslant m \leqslant n}\left\{P_{n, m}\right\} \underset{n \rightarrow \infty}{\longrightarrow} 0$

Then $\delta_{n} \equiv \sum_{m=1}^{n} X_{n, m} \Rightarrow \operatorname{Poisson}(\lambda)$ a want of C.F. ${ }^{n}$

$$
C_{a}^{r}
$$

Enswish to aleck
If $P\left(S_{n}=k\right) \xrightarrow[n \rightarrow \infty]{ } \frac{e^{-\lambda} \lambda^{k}}{k!}, k=0,1,2 \ldots$ Then $\sum_{k=0}^{\infty}\left|P\left(S_{n}=k\right)-\frac{e^{-\lambda} \lambda^{k}}{k!}\right| \rightarrow \infty \rightarrow \infty$
if $\frac{{ }_{k!}}{k!} \underset{n \rightarrow \infty}{\rightarrow \infty}$
$f_{x}(x) \underset{n \rightarrow \infty}{\longrightarrow} f_{x}(x) \quad \forall x \in \mathbb{R}$.
Then $x_{n} \Rightarrow x \ldots 1$
in fact $\int_{-\infty}^{\infty}\left|f_{x}^{(x)}-f_{x}(x)\right| \partial x \xrightarrow[n \rightarrow \infty]{\text { Voriation }} 0$
C.F. of Been: $1-P_{n . m}+P_{n . m} e^{i t}$

$$
=1+\operatorname{Prm}_{\tau_{\lambda^{2}}}\left(e^{\lambda^{t}-1}\right)
$$

$\varphi_{s_{n}}(t)=\hat{\eta}_{m=1}^{n}\left(1+P_{m, m}\left(e^{i t}-1\right)\right) \rightarrow e^{\lambda\left(e^{i t}-1\right)}=\varphi_{p \text { or } s o n}^{(\lambda)}$.

Lemma $\pi\left(1+a_{n, m}\right) \rightarrow e^{\lambda}$
if (1) $\sum_{m=1}^{n} a_{n, m} \rightarrow \lambda$
(2) $\sup _{n} \sum_{m=1}^{n}\left|a_{n, m}\right|<\infty$
(3) $\operatorname{Max}_{1 \leq m \leq n}\left|a_{n, m}\right| \xrightarrow[n \rightarrow \infty]{ } 0$

Based an lemma. 3

