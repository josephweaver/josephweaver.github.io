
### 2.7.1 A More General View: Orlicz Spaces.

**Orlicz funcution** is a function $\phi : [0,\infty]\to[0,\infty]$ s.t. $\phi(0)=0$,  $\phi(x)\to\infty$ as $x\to\infty$.

**Orlicz norm** $\Vert .\Vert_\phi :=\inf\{t>0:\mathbb{E}[\phi(|X|/t)]\le 1>\}$.

**Orlicz space** $\mathbf{L}_\phi = \mathbf{L}_\phi(\Omega,\Sigma,\mathbb{P})$ consists of all random variabesl X on probability space $(\Omega,\Sigma,\mathbb{P})$ s.t. $\mathbf{L}_\phi := {X: \Vert X\Vert_\phi<\infty}$.

**Exercise 2.7.11**. $\Vert X\Vert_\phi$ is norm on $\mathbf{L}_\phi$. $\mathbf{L}_\phi$ is complete, thus Banach space.

todo://

**Example 2.7.12**. $L^p$ space.  Orlicz function $\phi(x)=x^p, p\ge 1. Orlicz space $L_\phi$ is $L^p$ space.

**Example 2.7.13**. $L_{\phi_2}.  Orlicz function $\phi_2(x) :=e^{x^2}-1$, then $\Vert X\Vert_{\phi_2} is exactly the sub-gaussian norm, and the Orlicz space $L_\phi_2$ contains all subgaussian-random variables.

**Remark 2.7.14**. $L^\infty\subset L_phi_2 \subset L^p, \forall p\in p[1,\infty)$.
where $L^\infty$ the space of all bounded random variables.

