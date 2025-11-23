### Model

- **Generator** of random vectors $X$ from unknown $P(X)$. 
- **Superviser (oracle)** - assigns $Y$ for each $X$ according to $P(y|x)$
- **Learning machine (algorithm)** $\mathcal{F}=\{f(x,\alpha):\alpha\in\Lambda\}$

**dataset** $\{(X_i,Y_i), i=1,...,n\}$ from $P(x,y)=P(y|x)P(x)$.

**loss function** $L(y,f(x;\alpha))$

**risk function** $R(\alpha)=\int{L(y,f(x,\alpha))dP(x,y)}$

class $\mathcal{C}$ of subsets of sample space $S$.

**classification error** (a.k.a. generalization error) $R(C)$

$R(C)=P(Y\ne I_C(X))$

this comes from $R(C)=E(L(y,I_C(x)))$ where
$$
L(y,I_C(x))=
\begin{cases}
1, & \text{if } y=I_C(x) \\
0, & \text{if } y\ne I_C(x)
\end{cases}
$$

**Empirical Risk** (a.k.a. training error)

$R_n(\alpha)=\int{L(y,f(x,\alpha))dP_n(x,y)} \text{where } P_n(x,y)=\frac{1}{n} \sum_{i=1}^{n}I(X_i\le x, Y_i\le y)$

**Empirical Measure** $P_n$

random variable $X_1 ,...,X_n$ iid from measure space $(S,\mathcal{A},P)$.

$P_n(A)=\frac(1){n}\sum_{i=1}^n I(X_i\in A), A\in\mathcal{A}$

properties
- $P_n$ is an unbiased estimator of $P$.
  - e.g. $\mathbb{E}(P_n)=P$
- $Var(P_n) = \frac{1}{n}P(A)(1-P(A))$
- SLLN: $P_n \rightarrow P \text{ as } n\rightarrow \infty$ 
- CLT: $\sqrt{n}(P_n(A)-P(A))\rightarrow N(0,P(A)(1-P(A)))$
- $\mathcal{C}=\{A_1 ,...,A_n\}, then \max{A\in\mathcal{C}}|P_n(A)-P(A)|\rightarrow 0 \text{ as } n\rightarrow\infty$


## Useful Inequalities

**Markov's inequality** 
$$
P(|X|\ge a)\le \frac{\mathbb{E}|X|^k}{a^k
}$$

**Jenson's inequality** 
$$
\psi(\mathbb{E}X)\le\mathbb{E}\psi(X)
$$
where $\psi$ is convex.

**convexity** $\psi(\lambda x+(1-\lambda)y)\le \lambda\psi(x)+(1-\lambda)\psi(y)\quad\forall x,y \text{ and } \lambda\in[0,1]$

**Chebyshev's inequality** 
$$
P(|\sum_{i=1}^n X_i |\ge t)\le \frac{1}{n^2} \sum_{i=1}^n \sigma_i^2
$$
for $t>0, X_1,...,X_n \text{ ind. r.v. with }\mathbb{E}X_i=0 \text{ and } Var(X_i)=\sigma^2_i$

**Hoeffding's inequality** 
$$
P(|\sum_{i=1}^n X_i|\ge t)\le 2 exp\{-\frac{-t^2}{\sum_{i=1}^n(b_i-a_i)^2}\}
$$
for $X_1,...,X_n \text{ ind. r.v. with }\mathbb{E}X_i=0, a_i\le X_i\le b_i \text { and } t>0$.
- **Lemma**: $\mathbb{E}e^{\lambda X}\le exp\{\frac{\lambda^2}{8}(b-a)^2\} \text{ for } a\le X\le b, \mathbb{E}x=0.$
- **Corollary**: $P(|\sum_{i=1}^n a_i\epsilon_i|\ge t)\le 2 exp\{-\frac{-t^2}{\sum_{i=1}^na_i^2}\} \text{ for }  \epsilon_1,...,\epsilon_n \overset{\text{ind.}}{\sim} \text{Rademacher}\left(\tfrac12\right), a_1,...,a_n\in\mathbb{R}$.

**McDiarmid's inequality** 
$$
P(f(X_1,...,X_n)-\mathbb{E}f(X_1,...,X_n)\ge t)\le exp\{-\frac{2t^2}{\sum_{i=1}^n}\}
$$ 
for function $f : A^n->\mathbb{R}$ s.t. $\sup{x_1,...,x_n,x'_i\in A}|f(x_1,...,x_i,...,x_n)-f(x_1,...,x'_i,...,x_n)|\le c_i, i=1,...,n$

**Berstein's inequality** 
$$
P(|\sum_{i=1}^n X_i|\ge t)\le 2 exp\{\frac{t^2}{2B^2_n+tM/3}\}
$$ 
for $X_1,...,X_n$ ind. r.v. with $\mathbb{E}X_i=0, |X_i|\le M, \text{ and } \mathbb{E}X_i^2=\sigma^2_i$ where $B^2_n=\sum_{i=1}^n\sigma^2_i$ and $t>0$.
- lemma: $\mathbb{E}e^{\lambda X} \le exp\{\sigma^2/M^2(e^{\lambda }-1-\lambda M)\}$

**Chernoff's Bounded** for $\lambda>0$
$$
P(\sum_{i=1}^n X_i\ge t)=P(exp\{\lambda\sum_{i=1}^n X_i\}\ge exp\{\lambda t\})
$$ 
then minimize w.r.t. $\lambda$.

**Bennett's inequality**
$$
P(|\sum_{i=1}^n X_i|\ge t)\le 2 exp\{\frac{B^2_n}{M^2}\psi(\frac{tM}{B^2_n})\}
$$ 
for $t>0$ where $\psi(u)=u-(1+u)ln(1+u)$

## Definitions

**Orlicz Norm**
$$
\Vert X\Vert_\psi = inf\{C>0: \mathbb{B}\psi(\frac{|X|}{C})\le 1\}, inf\emptyset =\infty
$$
where $\psi$ is non-decreasing real function with $\psi(0)=0$.
- $\psi(u)=u^p, \Vert X\Vert_\psi=\Vert X\Vert_{L^p}$
- $\psi(u)=e^{u^2}-1$ then for sub-gaussian r.v. $P(|X|\ge t)\le A exp\{-t^2/\Delta^2\}$ then $\Vert X\Vert_\psi\le\Delta\sqrt{1+A}$

**Maximal inequality**
$$
\mathbb{E}\max\limits_{1\le i\le n}|X_i|\le\psi^{-1}(n)\max\limits_{1\le i \le n}\Vert X_i\Vert_\psi
$$
where $\psi$ is non-decreasing real function with $\psi(0)=0$.
- **Normal**: $\mathbb{E}\max\limits_{1\le i\le n}|X_i|\le\sqrt{6ln(1+n)}\max\limits_{1\le i \le n}\sigma_i$
  - $\text{ for }X_i\sim N(0,\sigma^2_i)$
- **Rademacher**: $\mathbb{E}\max\limits_{1\le i\le n}|X_i|\le\sqrt{6ln(1+n)}\max\limits_{1\le i \le n}(\sum_{i=1}^m a^2_{ij})^{1/2}$
  - $\text{ for }X_i=\sum_{i=1}^m a_{ij}\epsilon_j$

**Symmetrization inequalites**

$$
\mathbb{E}\Phi(\Vert\sum_{i=1}^n (X_i-\mathbb{E}X_i)\Vert_T)\le \mathbb{E}\Phi(2\Vert\sum_{i=1}^n\epsilon_i X_i\Vert_T)
$$
$$
\mathbb{E}\Phi(\Vert\sum_{i=1}^n (X_i-\mathbb{E}X_i)\Vert_T)\ge \mathbb{E}\Phi(\frac{1}{2}\Vert\sum_{i=1}^n\epsilon_i (X_i-\mathbb{E}X_i)\Vert_T)
$$

where $\{X_i(r),t\in T\}$ is ind. stochastic process with $\mathbb{E}X_i<\infty$.  $\Phi$ is non-decreasing function on $\mathbb{R}_+$. $\epsilon_1,...,\epsilon_n\overset{\text{i.i.d.}}{\sim}\text{ Rademacher.  }X_i\perp\!\!\!\perp\epsilon_j \forall i,j.$
- **Ghost Copy** process by which we create an independent copy of a random variable under the expectation.

**Uniform Deviation** $\Vert P_n-P\Vert_\mathcal{C}$

$$
\Vert P_n-P\Vert_\mathcal{C}=\sup\limits_{C\in\mathcal{C}}\Vert P_n(C)-P(C)\Vert
$$
where $P(C)$ is the true classification error (generalization error), $P_n(C)$ is the empiricial classification error (training error).



**Complexity** $\Delta^{\mathcal{C}}(F)$

class $\mathcal{C}$ of subsets of sample space $S$.
finite subset $F=\{x_1,...,x_n\}$ with $card(F)=n$.

$$
\Delta^{\mathcal{C}}(F)=card(\{C\cap F : C\in\mathcal{C}\})
$$
Alternately,
$$
\Delta^{\mathcal{C}}(F)=card(\{(I_C(x_1),...,I_C(x_n)): C\in\mathcal{C}\})
$$
that is, the count of distinct binary vectors constructed from the inclusion/exclusion of each variable x_i in elements of class $\mathcal{C}$
- $\Delta^{\mathcal{C}}(F)=2^{card(F)}$ if $\mathcal{C}$ contain all subsets of the sample space.

**Uniform Diviation/Complexity** Theorem
$$
\mathbb{E}\Vert P_n-P\Vert_\mathcal{C}\le K\mathbb{E}\sqrt{\frac{1}{n}ln(1+\Delta^\mathcal{C}(X_1,...,X_n))}
$$
for $K>0$, $X_1,...,X_n$ i.i.d.r.v. on probablity space $(S,\mathcal{A},P)$ where class $\mathcal{C}\subset \mathcal{A}$ $\sigma$-algebra.

**Empirical Log-Growth function** $h_\mathcal{C}(n)$
$$
h_\mathcal{C}(n)=ln\Delta^\mathcal{C}(\{X_1,...,X_n\})
$$

**Vapnik-Chervonenkis** (VC) Theorem
$$
\frac{h_\mathcal{C}(n)}{n}\underset{ n\rightarrow\infty}{\overset{P}{\rightarrow}} 0\ \Leftrightarrow \Vert P_n-P\Vert_\mathcal{C}\underset{ n\rightarrow\infty}{\overset{a.s.}{\rightarrow}}  0
$$
- proposition 1: $\Vert P_n-P\Vert_\mathcal{C}\underset{ n\rightarrow\infty}{\overset{P}{\rightarrow}} 0\Leftrightarrow 
 \Vert P_n-P\Vert_\mathcal{C}\underset{ n\rightarrow\infty}{\overset{a.s.}{\rightarrow}} 0 \Leftrightarrow 
  \mathbb{E}\Vert P_n-P\Vert_\mathcal{C}\underset{ n\rightarrow\infty}{\rightarrow} 0$
- proposition 2: $\frac{h_\mathcal{C}(n)}{n}\underset{ n\rightarrow\infty}{\overset{P}{\rightarrow}} 0\ \Leftrightarrow \frac{h_\mathcal{C}(n)}{n}\underset{ n\rightarrow\infty}{\overset{a.s.}{\rightarrow}} 0\ \Leftrightarrow \mathbb{E}\frac{h_\mathcal{C}(n)}{n}\underset{ n\rightarrow\infty}{\rightarrow} 0$

**Projection operator** $\pi_J$
$$
\pi_J(t_1,...,t_n)=(t_{j_1},...,t_{j_k})
$$
for index set $J={j_1,...,j_k)\subset {1,...,n}.

**shatters** - class $\mathcal{C}$ shatters set $F$ if complexity $\Delta^C(F)=2^{card(F)}$

**VC Growth function** $m^\mathcal{C}(n)$ (a.k.a. shattering function)
$$
m^\mathcal{C}(n)=max\{\Delta^\mathcal{C}(F) : F\subset S, card(F)=n\}
$$
- $\forall n\ge 1 m^\mathcal{C}(n)=2^n\Leftrightarrow \forall n\ge 1 \exists F\subset S: card(F)=n, \mathcal{C} \text{ shatters }F$.
-  $\exists n\ge 1 m^\mathcal{C}(n)<2^n\Rightarrow \forall n'>n m^\mathcal{C}(n')< 2^{n'}$

**VC Dimension**
$$
V(\mathcal{C})=min\{n : m^\mathcal{C}(n)<2^n\}
$$
That is, VC dimension is the last n in which the growth function is ^2^n^.

- $S=\mathbb{R}, \mathcal{C}=\{(-\infty,t] :t\in\mathbb{R}\}\Rightarrow V(\mathcal{C})=2$
- $S=\mathbb{R}, \mathcal{C}=\{(a,b) : a<b, a,b\in\mathbb{R}\}\Rightarrow V(\mathcal{C})=3$
- $S\in\mathbb{R}^d$, All linear halfspaces $\mathcal{H}\Rightarrow V(\mathcal{H})=d+1$
- $S\in\mathbb{R}^d$, All affine halfspaces $\mathcal{H}\Rightarrow V(\mathcal{H})=d+2$
- $S\in\mathbb{R}^d$, All closed balls $\mathcal{B}\Rightarrow V(\mathcal{B}) \le d+2$
- $S\in\mathbb{R}^d$, k or less sided Polyhedra $\mathcal{H}\Rightarrow V(\mathcal{H})<\infty$ (therefore VC class).

**Vapnik-Chervonenkis (VC) Class** if $V(\mathcal{C})<\infty$

**Growth Function/VC Class** Theorem
- If $\mathcal{C}$ is a VC class, then $m^\mathcal{C}(n)\le\binom{n}{\le k-1}$.
- If $\mathcal{C}$ is a VC class, then $m^\mathcal{C}(n)=2^n$.

**Glivenko-Cantelli (GC) class** if $\Vert P_n-P\Vert_\mathcal{C}\overset{a.s.}{\rightarrow}0$
- $\mathcal{C}$ is **universial GC class** $\Leftrightarrow \forall P\in\mathcal{P}(S)$ probability measures on $(S,\mathcal{A}), $\mathcal{C}$ is GC class w.r.t. $P$.
- $\mathcal{C}$ is **uniform GC class** $\Leftrightarrow \sup\limits_{P\in\mathcal{P}(S)}\mathbb{E}\Vert P_n-P\Vert_\mathcal{C}\underset{n\rightarrow \infty}{\rightarrow}0$.

**GC/VC** Theorems
- $\mathcal{C}$ is VC class $\Leftrightarrow \mathcal{C}$ is uniform GC class.
- $\mathcal{C}$ is VC class $\Rightarrow \mathcal{C}$ is universal GC class.

**Polynomial VC Dimension**
$$
\mathcal{P}_(k,d) = \{\text{All degree k or less polynomials on }\mathbb{R}^d\}
$$


**Neural Network VC Dimension**
$$
m^{N^{\sigma_t}_{k,x}}\le \binom{n}{\le d+1}^k\binom{n}{\le k+1}
$$
where $N^{\sigma_t}_{k,x} : \mathbb{R}^d->\{0,1\}$ is a neural network with $\sigma_t$ activiation functions with a single hidden layer with $k$-neurons.




