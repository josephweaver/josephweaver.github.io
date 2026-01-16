


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

Definitions

- **open sets**. The elements of a topology.
- **topological space**. The pair $(S,\mathcal{T})$ for set $S$ and topology $\mathcal{T}$.
- **neighborhood** of a point p on S. an open set $U$ containing $p$.
- **courser** topology. for $\mathcal{T}_1 : \mathcal{T}_1 \subset \mathcal{T}_2$.
- **finer** topology. for $\mathcal{T}_2 : \mathcal{T}_1 \subset \mathcal{T}_2$.
- **standard topology**. collection of open sets $U \in \mathbb{R}^n$ such that $\forall p\in U, \exists \text{ open ball } B(p,\varepsilon) \subset U$.

### openness
For topological space S, subset $A\in S$  is **open** $\Leftrightarrow \forall p \in A, \exists$ open set $V : p \in V \subset A$.

definitions
- **trivial** or **indiscrete** topology. the coarsest topology consisting of only $\{\emptyset,S\}$.
- **discrete** topology. a topology $\mathcal{T} : \mathcal{T}$ contains all subsets of $S$.
- **discrete** space. a topological space with a discrete topology.
- **singleton** set. a set with a single element.
- **closed** set. the complement of an open set.
- **Finite-completement** topology.  Topology composed of closed sets containing $\emptyset,S$ with finite unions and arbitrary intersections.  

## A.2 Subspace Topology
Subspace $\mathcal{T}_A := \{A\cap U: U \in \mathcal{T}\}$ for topology $\mathcal{T}$ and $A\subset S$, which is topology itself. 

defintions.


















References: 
- Munkres - Topology 2e
