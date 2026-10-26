# 28 — Brownian Motion (March 28)


## Definition of Standard Brownian Motion (SBM)

A process $\{B(t)\}_{t \ge 0}$ on $(\Omega, \mathcal{F}, P)$ is a *standard Brownian motion* if:

1. **Initial condition:**  
   $$
   B(0) = 0.
   $$

2. **Independent and stationary increments:**  
   - For all $t,h \ge 0$,  
     $$
     B(t+h) - B(t) \stackrel{d}{=} B(h).
     $$
   - For $0 \le s < t$,  
     $$
     B(t) - B(s) \perp \sigma(B(u) : u \le s).
     $$

3. **Gaussian increments:**  
   $$
   B(t+h) - B(t) \sim N(0,h).
   $$

4. **Continuous sample paths:**  
   For every $\omega$, the map $t \mapsto B_t(\omega)$ is continuous on $\mathbb{R}^+$.

---

## Finite-Dimensional Distributions

Given times $0 < t_1 < t_2 < \cdots < t_k$:

Define increments:
$$
U_1 = B_{t_1}, \qquad
U_2 = B_{t_2} - B_{t_1}, \quad \ldots, \quad
U_k = B_{t_k} - B_{t_{k-1}}.
$$

By independence of increments:
$$
(U_1, \ldots, U_k) \text{ are independent}.
$$

Each increment has density:
$$
p_t(x) = \frac{1}{\sqrt{2\pi t}} e^{-x^2/(2t)}, \quad t>0.
$$

Therefore the joint density is:
$$
f_{U_1,\ldots,U_k}(u_1,\ldots,u_k)
= p_{t_1}(u_1)\, p_{t_2 - t_1}(u_2)\cdots p_{t_k - t_{k-1}}(u_k).
$$

Changing variables back to $(B_{t_1},\ldots,B_{t_k})$ involves a triangular Jacobian with determinant $1$. Thus:
$$
f_{B_{t_1},\ldots,B_{t_k}}(x_1,\ldots,x_k)
= \prod_{i=1}^k p_{t_i - t_{i-1}}(x_i - x_{i-1}),
$$
where $t_0 = 0$ and $x_0 = 0$.

---

## Alternative Definition (Gaussian Process Characterization)

A process $\{B_t\}_{t\ge 0}$ is SBM if:

1. **Gaussian process:**  
   For any $t_1<\cdots<t_n$,  
   $$
   (B_{t_1},\ldots,B_{t_n}) \sim \text{MVN}\left(0,\;\Sigma\right),
   \quad \Sigma_{ij}= t_i \wedge t_j.
   $$

2. **Mean and covariance:**  
   $$
   E[B_t]=0, \qquad
   E[B_s B_t] = s \wedge t.
   $$

3. **Continuous sample paths** as before.

---

## Kolmogorov Extension and Continuity

- The covariance matrix $[t_i \wedge t_j]$ is consistent, therefore by **Kolmogorov’s Extension Theorem**, a process with these finite-dimensional distributions exists.
- But continuity is not automatic. We need *Kolmogorov’s continuity criterion*.

---

## Kolmogorov Continuity Criterion

If a process $\{X_t\}_{0 \le t \le 1}$ satisfies  
$$
E\lvert X_t - X_s\rvert^{\beta} \le C |t-s|^{1+\alpha},
$$
for some $\beta > 0$ and $\alpha>0$, then $X_t$ has Hölder continuous paths with exponent
$$
\gamma < \frac{\alpha}{\beta}.
$$

### Apply to Brownian Motion

For $0 \le s < t$:

$$
B_t - B_s \stackrel{d}{=} \sqrt{t-s}\, Z, \quad Z\sim N(0,1).
$$

Take $\beta = 2m$. Then:
$$
E|B_t - B_s|^{2m}
= |t-s|^{m} E|Z|^{2m}
$$
where
$$
E|Z|^{2m} = 1\cdot 3\cdot 5 \cdots (2m-1).
$$

Thus:
$$
m = \frac{\beta}{2},\qquad \alpha = m - 1.
$$

So the Hölder exponent is:
$$
\gamma < \frac{m-1}{2m} \longrightarrow \frac12 \text{ as } m\to\infty.
$$

**Conclusion:** Brownian motion is Hölder continuous for every $\gamma < \tfrac12$.

---

## Remarks on Brownian Paths

- Brownian motion is continuous but *nowhere differentiable*.
- Its sample paths have no points of increase (illustrated on page 3).
- It has extremely irregular behavior despite continuity.

---

## Preview

- Dvoretzky’s CLT for martingales.
- Work of Erdős and Kakutani.
- As a warm-up, simple random walk converges to Brownian motion when rescaled, with scaling constant $C = 1/2$.
