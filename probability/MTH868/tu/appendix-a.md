


# Point-set Topology
a.k.a. General Topology

## A.1 Topological Spaces

### Continuous Map
Map $f:\mathbb{R}^n\to\mathbb{R}^m$ is continuous iff inverse image $f^-1(V)$ of open set $V\in\mathbb{R}^m$ is open in $\mathbb{R}^n$.

### Distance

$$
d(p,q)=[\sum_{i=1}^n (p^i-q^i)^2]^{\frac{1}{2}}
$$
where points $p,q\in\mathbb{R}$.

### Open Ball

$$
B(p,r)={x\in\mathbb{R}^n\|d(x,p)<r}
$$
with center $r\in\mathbb{R}^n$ and radius $r>0$.

### Topology
a **topology** is a collection $\mathcal{T}$ of subset of set $S$ (the open sets) such that
1. $\emptyset,S\in\mathcal{T}$
2. Arbitrary unions of open sets are open: $U_\alpha\in\mathcal{T}, \alpha\in\mathcal{J}\Rightarrow \bigcup_{\alpha\in\mathcal{J}} U_\alpha$ for index set $\mathcal{J}$
3. Finite intersections of open sets are open: $U_1, ...,U_n \in \mathcal{T}\Rightarrow U_1\cap,...,\cap U_n  \in \mathcal{F}$

References: 
- Munkres - Topology 2e
