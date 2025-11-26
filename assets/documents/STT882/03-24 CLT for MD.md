Gentral Limit theoren (For Mantngales)
Prove - Devorckby - used tayker
By - Hiddie used duructistic. Function.
Relates to Autoregressive Proff
Lindberg - Feller CLT for MD.
![](https://cdn.mathpix.com/cropped/2025_11_25_21806380aabece2edfdcg-1.jpg?height=355&width=388&top_left_y=412&top_left_x=1181)
$\left\{D_{n, j} \mathcal{F}_{n, j}\right\}_{i \leq j \leq n} n=1,2, \ldots$
$E_{n, j-1}\left[D_{n, j}\right]=0, \quad E\left[D_{n j}^{2}\right]<\infty$
Theorem: if i) $\sum_{j=1}^{n} E_{n, j-1}\left(D_{n, j}^{2}\right) \xrightarrow[n \rightarrow \infty]{P} 1$ and
then
ii) $\sum_{j=1}^{n} E_{n_{i j-1}}\left(D_{n, j}^{2}\left|D_{n, j}\right|>\varepsilon\right) \xrightarrow[n \rightarrow \infty]{p} 0 \quad$ (Lindebug Connlt an)

$$
S_{n}=\sum_{j=1}^{n} D_{n j ;} \Rightarrow N(0,1)
$$

WLOG we con add (iii)
(iii) $\sum E_{n, j-1}\left(D_{n, j}^{2}\right) \leq 2$ a,s. $\quad \forall n \geq 1$
says this is Predictable, therefore el can DSE Stopping time
we will peplace $D_{n, j}$ by $D_{n, j} \mathbb{1}_{\left\{j \leqslant T_{n}\right\}}$
where $T_{n}=\operatorname{Max}\left\{j ; \sum_{k=1}^{j} E_{n, j \in-l}^{\left(D_{n}^{2}, k\right)} \leq 2\right\}$
${ }^{7}$ conotion on JH

$$
P\left(T_{n}=n\right) \xrightarrow[n \rightarrow \infty]{p} 1
$$

Proof: NTS $E\left[e^{i t s_{n}}\right] \underset{n \rightarrow \infty}{\longrightarrow} e^{-t^{2} / 2} \quad \forall t \in \mathbb{R}$
therefore

$$
\left\lceil i t \delta_{n}\right\rceil, i t \delta_{n}
$$

$$
\left[E\left[E\left[\frac{e^{i t s_{n}} \sum_{n-1}^{n} \sum_{k=1}^{n} D_{n, k}}{\sum_{n, k+1}^{n}\left[e^{i t} D_{n, k}\right]}\right]\right]=E\left[\frac{e^{i t} \sum_{k=1}^{n-1} D_{n, k}}{\prod_{k=1}^{n-1} E_{n, k-1}\left(e^{i t D_{n, k}}\right)}\right]\left[E_{n, n-1}\left[\frac{e^{i t D_{n}}}{E / n, n-1}\left(e^{\left(t D_{n, n}\right.}\right)\right]\right.\right.
$$

therefore

$$
\begin{aligned}
& E\left[\frac{e^{i t \delta_{n}}}{\sum_{k=1}^{n} E\left[e^{i t} D_{n, k}\right]}\right]=1=E \frac{e^{i t \delta_{n}}}{\prod_{k=1}^{n}\left(1+C_{n, k}\right)} \\
& E_{n, k-1}\left[e^{i t D_{n}, k}\right]=1+r_{n, k} \\
& r_{n, k}=E_{n, k-1}\left[e^{i t D_{n, k}}-1-i t D_{n, k}\right]
\end{aligned}
$$

From 881 to curry the Problem.
step 1: Show
(1) $\sum_{j=1}^{n} n_{n, j} \xrightarrow[n \rightarrow \infty]{P}-\frac{t^{2}}{2}$
(2) $\sum_{j=1}^{n}\left|r_{n, j}\right| \leq 2 t^{2}$
(3) $\operatorname{Max}_{1 \leqslant j \leqslant n}\left|r_{n, j}\right| \xrightarrow[n \rightarrow \infty]{p} 0$
step 2: (1), (2), (3) $\Rightarrow \prod_{j=1}^{n}\left(1-r_{n j}\right) \xrightarrow[n \rightarrow \infty]{p} e^{t^{2} / 2}$

## Auto Reqressive sequence.

Notice $\frac{1}{1+x} \approx 1-x$ when xissmall

$$
\begin{equation*}
\sim E\left[e^{i t \delta_{n}} \sum_{k=1}^{n}\left(1-r_{n, k}\right)\right] \tag{i}
\end{equation*}
$$

$\mathrm{NHS}=$

1) $(i) \xrightarrow[n \rightarrow \infty]{ } 1$
2) $E\left(\sum_{k=1}^{n \rightarrow \infty}\left(1-r_{n, k}\right)\right) \underset{n \rightarrow \infty}{\longrightarrow} e^{t^{2} / 2}$ in $L^{\prime}$

$$
\therefore E\left|\sum_{k=1}^{n}\left(1-r_{n, k}\right)-e^{t / 2}\right| \rightarrow 0
$$

881 reminder:
Let $\left\{a_{n} m\right\}_{1 \leq m \leq n, n \geq 1}$ complex numbers if (1) $\sum_{m=1}^{n} a_{n m} \xrightarrow[n \rightarrow \infty]{ } a$
(2) $\sup _{n}\left\{\sum_{m=1}^{n}\left|a_{n m}\right|\right\}<\infty$
(3) $\operatorname{Max}_{1 \leq m \leq n}\left|a_{n, m}\right| \xrightarrow[n \rightarrow \infty]{ } 0$
ther.

$$
\prod_{m=1}^{n}\left(1+a_{n, m}\right) \underset{n \rightarrow \infty}{\longrightarrow} e^{a}
$$

Ex $x_{n}=\theta x_{n-1}$ then, $n \geq 1,|\theta| a \mid$
$\left\{U_{n}\right\}_{n \geq 1}$ are iid. $E\left[U_{n}\right]=0, E\left(U_{n}^{2}\right) \equiv \sigma^{2}<\infty$
$X_{0},\left\{\omega_{n}\right\}_{n \geq 1}$ are Ind
if iftmator $\hat{\theta}_{n}=\underset{\theta}{\operatorname{argmin}}\left\{\sum_{k=1}^{n}\left(x_{k}-\theta x_{k-1}\right)^{2}\right\}$
then $\begin{aligned} \sqrt{n}\left(\hat{\theta}_{n}-\theta\right) & \sqrt{n} \sum_{k=1}^{n} H_{k} X_{k-1} / \sqrt{n} \cdot \frac{1}{n}\end{aligned}$
Proop $\alpha=\left(x_{1}, \ldots, x_{n}\right), \beta=\left(x_{0}, \ldots, x_{n-1}\right)$

Proop $\alpha=\left(x_{1}, \ldots, x_{n}\right), \beta=\left(x_{0}, \ldots, x_{n-1}\right)$
![](https://cdn.mathpix.com/cropped/2025_11_25_21806380aabece2edfdcg-3.jpg?height=254&width=392&top_left_y=214&top_left_x=459)
$\|\alpha-\theta \beta\|^{2}$
$(\alpha-\theta \beta, \beta)=0$
$(\alpha, \beta)-\theta_{n}(\beta, \beta)=0$
$\theta_{n}=\frac{(\alpha \beta)}{(\beta \beta)} \quad[$ Finish on WED]
$\theta_{n}-\theta=\frac{(\alpha-\theta \beta, \beta)}{(\beta, \beta)}$

Nototron
(A, B)
is $\operatorname{Dot}$ Product $A \cdot B$
is Dot Product $A \cdot B$

