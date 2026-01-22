

# Gaussian Processes

**Covariance** function 
- defines nearness or similarity in Gaussian processes.

**Kernel** - a function 
$$
k: \mathcal{X}\times\mathcal{X}\to\mathcal{R}
$$ 
where $\mathcal{X}$ is some input domain.
- Kernels.pdf also suggusts that K is symmetric.

**Kernel** matrix - a matrix 
$$
\mathbf{K}=(K(x_i,x_j))_{i,j=1}^n
$$

**Valid** kernel - a kernel K is valid if for all $\{x_1,...,x_n\}\subset \mathbb{R}^d$, the kernel matrix
$$
\mathbf{K}\succeq 0
$$
That is, positive semi-definite.

**Fourier**

**synthesis equation**
$$
f(x)=\int_{-\infty}^\infty \hat{f}(x)\cdot e^{2\pi i s x} ds
$$

**analysis equation**
$$
\hat{f}(x)=\int_{-\infty}^\infty f(x)\cdot e^{-2\pi i s x} ds
$$ 



**Stationary** (a.k.a. translation invariant) kernel - a kernel of the form $\varphi(x-x')$.

**Bochner's Theorem.**
Kernel $K$ is stationary (e.g. $K(x,x')=\varphi(x-x')$) where $\varphi is continuous and the Kernel matrix $\mathbf{K}\succ 0$
$$
\Leftrightarrow
$$
if $\varphi$ is the Fourier transform of a finite nonnegative measure,
$$
\varphi(h)=\int_{\mathbb{R}^d}e^{i\omega^Th}d\mu(\omega)
$$
where $\mu$ is a finite positive measure. 

Short form:
$K=\varphi(x-x')$ and $\mathbf{K}\succeq 0 \Leftrightarrow \varphi(h)=\int_{\mathbb{R}^d}e^{i\omega^Th}d\mu(\omega)$


