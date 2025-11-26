SLLN: $\left\{x_{1} x_{k}\right\}_{k \geq 1}$ Pcirwise yy $E|x|>\infty, E(x)=\mu$
then $\frac{S_{n}}{n} \frac{\text { as. }}{n \rightarrow \infty} M \quad S_{n}=\sum_{k=1}^{n} x_{k}, \quad n=1,2$.
First observed WLOG $x \geq 0$ a.s.

$$
\begin{aligned}
& x_{k}=x_{k}^{+}-x_{k}^{2}, \quad x_{k}^{+}=\operatorname{Max}(x, 0), \quad E\left(x^{+}\right)<\infty \\
& \left\{x_{k}^{+}, x^{+}\right\} \text {iid. } \\
& \delta_{n}^{+} \equiv \sum_{k=1}^{n} x_{k}^{+} \\
& \quad \frac{\delta_{n}^{+}}{n}-\frac{\delta_{n}^{-}}{n}=\frac{\delta_{n}}{n}
\end{aligned}
$$

Step $1 \quad Y_{k}=X_{k} \mathbb{1}_{\left\{\left|X_{k}\right| \leqslant k\right\}} \quad k=1,2$,

$$
\sum_{k=1}^{\infty} P\left(x_{k} \neq Y_{k}\right)=\sum_{k=1}^{\infty} P\left(\left|x_{k}\right|>k\right)=\sum_{k=1}^{\infty} P(\mid x>k) \approx \int_{x=0}^{\infty} P(|x| \geq x) \partial x=E|x|<\infty
$$

$B y \quad B C I: \quad P\left(X_{k} \neq Y_{k} i .0\right)=0$
$=7_{i f} \sum_{k=1}^{n} Y_{k} \frac{a_{5}}{n \rightarrow \infty} E(x) \quad$ then $\quad \frac{\delta_{n}}{n} \xrightarrow[n \rightarrow 00]{\text { as. }} \mu$.
$p\left(x_{k} \neq y_{k} \quad i .0\right) \rightarrow \quad x_{k}=y_{k}$ a.s.

ASIDE.
Def. Let $a_{n} \uparrow \infty$ we say $\left\{a_{n}\right\}_{n \geq 1}$ is "Good"
if $\sum_{n=m}^{\infty} a_{n}^{-2}=C m \cdot a_{m}^{-2}, \quad m=1,2, \ldots$

Ex: $\quad a_{n}=\frac{1}{n} \| p, \quad 0<p<2$ more geverally:
if $\frac{a_{n}}{n^{1 / p}}$ is non-decreasing, then $\left\{a_{n}\right\}$ "is Good" "note $\frac{1}{\Lambda^{1 / p}}$ is Decreasing,"

Lemma
Let $Y_{n}=X_{n} \cdot \mathbb{1}_{\left\{|x| \leq a_{n}\right\}, n \geq 1} \quad a_{n}=n$.

Assume $\sum_{n=1}^{\infty} P\left(|x|>a_{n}\right)<\infty$
Then $\sum_{n=1}^{\infty} \frac{E\left(k_{n}{ }^{2}\right)}{a_{n}{ }^{2}}<\infty$

$$
\begin{aligned}
& \text { Step 2. } \sum^{\infty} \frac{E\left(Y_{c}^{2}\right)}{k^{2}}<\infty \quad \text { in The Book he uses Diff } \\
& \text { Proof, not the following' } \\
& \sum_{m=1}^{\infty} \frac{\begin{array}{c}
a_{0}=0 \\
E\left(\gamma_{m}^{2}\right)
\end{array}}{a_{n}^{2}}=\sum_{n=1}^{\infty} a_{n}^{-2} \sum_{m=1}^{n} E\left(x^{2} ; a_{m-1}<|x| \leq a_{m}\right) \\
& \text { note } k m \leq n<\infty \quad 1 \leq n<\infty \\
& \begin{array}{llll}
a_{1} & a_{2} & \cdots & 1 \\
& & a_{m-1} & a_{m}
\end{array} \\
& \leq \sum_{m=1}^{\infty} c \cdot m \cdot \frac{a m^{-2}}{\left(a_{n m_{n}}\right)} E\left(\frac{x^{2}}{a_{m}^{2}} ; a_{m-1}<|x| \leq a_{m}\right. \\
& \leq c \sum_{m=1}^{\infty} m P\left(a_{m-1}<|x| \leq a_{m}\right)=c \sum_{m=0}^{\infty} P\left(|x|>a_{m}\right)<\infty \\
& \text { note } \sum_{m=1}^{\infty}\left(\sum_{k=1}^{m}\right)(P(\text { " }))=C \sum_{k=1}^{\infty} \sum_{m=k}^{\infty} P(\text { " }) \\
& =C \sum_{k=1}^{\infty} P\left(|x|>a_{m-1}\right)<\infty \\
& \text { "Similiar to find } P(x>k)=\sum_{\alpha}^{\infty} x P(x=x)
\end{aligned}
$$

step 3 let $T_{n} \equiv \sum_{k=1}^{n} Y_{k}, n \geq 1$
$\forall \alpha>1$ we get $\frac{T_{\alpha^{n}}-E\left(T_{\alpha^{n}}\right)}{\alpha^{n}} \xrightarrow[n \rightarrow \infty]{\text { as. }} 0$.
if $\alpha$ is $\mathbb{Q} \backslash \mathbb{Z}$ get ressys
Proof ( $\alpha=2$ )
"chew-bon-yan" Proof.

Claim $u_{m} \equiv \sum_{k=2^{n}+1}^{2^{n+1}} \frac{Y_{k}-E\left(Y_{k}\right)}{2^{n}} \xrightarrow[n \rightarrow \infty]{\text { ass. }} 0$
we will show: $\sum_{n=1}^{\infty} E\left(u_{n}^{2}\right)<\infty \quad\left(\Rightarrow \sum_{m=1}^{\infty} u_{n}^{2}<\infty\right.$ a,s. $)$
implies $u_{n}^{2} \xrightarrow[n \rightarrow \infty]{\text { a.s. }} 0$

$$
=U_{n} \xrightarrow[n \rightarrow 00]{\text { a.s. }} 0
$$

$.10 \quad r(112) .11 / 2^{n^{\text {n }}} \quad V_{k}-E\left(Y_{k}\right) / \angle 4 \sum^{2^{\text {na }}} \frac{\operatorname{Var}\left(Y_{k}\right)}{12}$
$=U_{n} \xrightarrow[n \rightarrow \infty]{n \rightarrow \infty} 0$
then $E\left(u_{n}^{2}\right)=\operatorname{Var}\left(\sum_{k=2^{n+1}}^{2^{n^{1+}}} \frac{V_{k}-E\left(Y_{k}\right)}{2^{n}}\right) \leq 4 \sum_{k=2+1}^{2^{n+1}} \frac{\operatorname{Var}\left(Y_{k}\right)}{k^{2}}$

$$
\begin{aligned}
& 2^{n}<2^{n}+1 \leqslant k \leqslant 2^{n+1} \\
& \left(2^{n}\right)^{2} \leq k^{2} \leq\left(2^{n+1}\right)^{2}=\left(2^{n}\right)^{2} \cdot 4 \\
& \leqslant 4 \cdot \sum_{2^{n}+1}^{2^{n}+1} \frac{\operatorname{Var}\left(k_{c}\right)}{k^{2}} \\
& \sum_{n=1}^{\infty} E\left(U_{n}^{2}\right) \leq 4 \sum_{n=1}^{\infty} \sum_{k=1} \frac{E\left(Y_{k}^{2}\right)}{k^{2}}=4 \sum_{k=1}^{\infty} \frac{E\left(U_{k}^{2}\right)}{k^{2}} \\
& \frac{T_{2^{n}}-E\left(T_{2^{n}}\right)}{n^{n}}=\sum_{m=1}^{n-1} \frac{2^{n}}{2^{n}} U_{m} \xrightarrow[n \rightarrow \infty]{\text { a.s. we know }} L_{n \rightarrow 0} \text { A.s. } \\
& \text { go for small } n \text { thes is } 0 \text {. }
\end{aligned}
$$

Then for curge in $\Delta_{m} \rightarrow 0$.
$\therefore 0$

$$
\begin{gathered}
\frac{E\left(T_{2^{n}}\right)}{2^{n}}=\sum_{k=1}^{n} \frac{E\left(x_{k}\right)}{2^{n}} \xrightarrow[n \rightarrow \infty]{ } E(x) \\
E\left(x_{1, k}\right)=E(x ;|x| \leq k) \xrightarrow[k \rightarrow \infty]{\text { BypcT }} E(x) \\
\frac{T_{\alpha^{n}}-E\left(T_{\alpha^{n}}\right)}{\alpha^{n}} \xrightarrow[n \rightarrow \infty]{\text { a.s. }} 0 \\
\Rightarrow \frac{T_{\alpha^{n}}}{\alpha^{n}} \xrightarrow[n \rightarrow \infty]{\text { a.s. }} \mu
\end{gathered}
$$

