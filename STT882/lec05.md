# 5 — Filtrations
STT 882  
Jan 24, 2025


Let $(\Omega, \mathcal F, P)$ be a probability space.

## Filtration
A **filtration** is a sequence of $\sigma$-fields
$$
\{\mathcal F_n\}_{n\ge 1}, \qquad \mathcal F_n \subseteq \mathcal F_{n+1}.
$$

## Stopping Time
A random time $T:\Omega\to \mathbb Z^+$ is a **stopping time** if
$$
\{T=n\}\in \mathcal F_n,\qquad n\ge 1.
$$

## Sigma-field at a Stopping Time
$$
\mathcal F_T = \{A\in\mathcal F : A\cap\{T=n\} \in\mathcal F_n \text{ for all } n\ge 1\}.
$$

## Natural Filtration
Given a stochastic process $\{X_n\}_{n\ge 1}$:
$$
\mathcal F_n = \sigma(X_1,\dots,X_n),\qquad n\ge 1.
$$

Then
$$
\mathcal F_T = \sigma(X_{n\wedge T}).
$$

## Monotone Stopping Times
If $T_1 < T_2$ almost surely and both are stopping times, then
$$
\mathcal F_{T_1} \subseteq \mathcal F_{T_2}.
$$

**Corollary.**  
If $T_1 < T_2 < \dots$ is an increasing sequence of stopping times, then  
$\{\mathcal F_{T_k}\}_{k\ge 1}$ is a filtration.

## Theorem
Let $\{X_n\}_{n\ge 1}$ be IID.  
Let $T$ be a stopping time with respect to the natural filtration and assume
$$
P(T<\infty)=1.
$$

Then:
1. $$\{X_{T+n}\}_{n\ge 1} \stackrel{D}{=} \{X_n\}_{n\ge 1}.$$
2. $\{X_{T+n}\}_{n\ge 1}$ is IID and independent of $\mathcal F_T$.

## Example: Simple Symmetric Random Walk
$$
S_0 = 0,\qquad S_n = \sum_{k=1}^n X_k,\qquad X_k=\pm 1 \text{ with probability } \tfrac12.
$$

Stopping times:
- $$T_1 = \min\{n>0 : S_n = 0\}.$$
- $$T_i = \min\{n > T_{i-1} : S_n = 0\}.$$

Then $T_i - T_{i-1}$ are IID.

## Wald’s First Equation
Let $S_n = \sum_{k=1}^n X_k$ and $T$ a stopping time with $E[T]<\infty$ and $E|X_1|<\infty$.

Then:
$$
E(S_T)=E(X_1)E(T).
$$

Sketch:
$$
S_T = \sum_{n\ge 0} (S_{T\wedge(n+1)} - S_{T\wedge n}),
$$
and
$$
S_{T\wedge(n+1)} - S_{T\wedge n} = X_{n+1}1_{\{T\ge n+1\}}.
$$
Since the indicator is $\mathcal F_n$-measurable and $X_{n+1}$ is independent:
$$
E(S_{T\wedge(n+1)} - S_{T\wedge n}) = E(X_1)P(T\ge n+1).
$$

Summing gives Wald’s equation.

## Generalization
If $X_{n+1}$ is independent of a smaller filtration $\mathcal G_n$ and $T$ is a stopping time with respect to $\mathcal G_n$, Wald’s equation still holds.
