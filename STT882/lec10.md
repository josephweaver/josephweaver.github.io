# **Lecture 10 Regular Conditional Probability / Distribution**  
STT 882  
Feb 5, 2025

(Durrett §5.1.3, p. 193)

Let  
$$
(\Omega,\mathcal{F}_0,P),\qquad \mathcal{F}\subset \mathcal{F}_0.
$$

A **regular conditional probability** is a function  
$$
\mu:\Omega\times \mathcal{F}_0 \to [0,1]
$$
such that:

1. **Version property:**  
   $$
   \mu(\omega,A)=P_{\mathcal{F}}(A)(\omega)\quad\text{a.s., for all }A\in \mathcal{F}_0.
   $$

2. **Probability–measure property:** For each fixed $\omega$,  
   $$
   A\mapsto \mu(\omega,A)
   $$
   is a probability measure on $\mathcal{F}_0$.

Application:  
$$
E_{\mathcal{F}}(f(X))(\omega)=\int_{-\infty}^\infty f(x)\, d\mu(\omega,x).
$$

In general, regular conditional probabilities **do not always exist**.  
They do exist in important cases, such as when:
$$
(\Omega,\mathcal{F}_0,P) = (\mathbb{R},\mathcal{B},P), \quad \mathcal{F}\subset\mathcal{B}.
$$

---

## **Construction in $\mathbb{R}$**

Let $Q = \mathbb{Q}$ (rationals).

### **Step 1:**  
Define for all $q\in Q$,
$$
M_q(\omega) = P_{\mathcal{F}}((-\infty,q])(\omega).
$$

### **Step 2:**  
Restrict to a full-measure subset $\Omega_0\subseteq \Omega$ with $P(\Omega_0^c)=0$ such that for all $\omega\in \Omega_0$:

(a) **Monotonicity:**  
$$
q_2>q_1 \quad \Rightarrow \quad M_{q_2}(\omega)\ge M_{q_1}(\omega).
$$

(b) **Right-continuity:**  
$$
M_q(\omega) = \lim_{q_n \downarrow q} M_{q_n}(\omega).
$$

(c) **Limits at ±∞:**  
$$
\lim_{q\to\infty} M_q(\omega)=1, \qquad \lim_{q\to -\infty} M_q(\omega)=0.
$$

### **Step 3:**  
Define the full CDF:
$$
M_x(\omega)=\inf_{q\ge x} M_q(\omega),\qquad \omega\in\Omega_0.
$$

Then  
$$
P_{\mathcal{F}}((-\infty,x])(\omega)= M_x(\omega).
$$

### **Step 4:**  
For any Borel set $(a,b]$,
$$
\mu(\omega,(a,b]) = M_b(\omega)-M_a(\omega).
$$

Thus,
$$
P_{\mathcal{F}}(A)(\omega)=\mu(\omega,A) \qquad (\forall A\in\mathcal{B}).
$$

---

## **Regular Conditional Probability for Random Variables**

Given a random variable $X:\Omega\to\mathbb{R}$,
$$
\sigma(X)=\{X\in B : B\in\mathcal{B}(\mathbb{R})\}.
$$

A **regular conditional distribution** of $X$ given $\mathcal{F}$ is:
$$
\mu(\omega,B)=P_{\mathcal{F}}(X\in B)(\omega).
$$

---

## **Example: Decomposing Borel sets**

Let  
$$
\mathbb{R}^+=[0,\infty),\qquad \mathbb{R}^- = (-\infty,0).
$$

Given a Borel set $A\subset\mathbb{R}$,
$$
A=A^+ \cup A^-, \qquad A^+=A\cap \mathbb{R}^+, \quad A^- = A\cap\mathbb{R}^-.
$$

Define a σ-field:
$$
\mathcal{F} = \{B,\; B\cup\mathbb{R}^- : B\in\mathcal{B}(\mathbb{R}^+)\}.
$$

Then
$$
P_{\mathcal{F}}(A)(\omega)
  = P_{\mathcal{F}}(A^+)(\omega)
  + P_{\mathcal{F}}(A^-)(\omega).
$$

If $X\in\mathcal{F}$:

$$
\mu(\omega,A)=\mathbf{1}_{A^+}(\omega)+
\frac{P(A^-)}{P(\mathbb{R}^-)}\mathbf{1}_{\mathbb{R}^-}(\omega).
$$

---

## **Example: Conditional Distribution of $(X,Y)$**

Suppose $(X,Y)$ has a joint density $f_{XY}(x,y)$.

Conditional density:
$$
f_{Y\mid X=x_0}(y)= \frac{f_{XY}(x_0,y)}{f_X(x_0)}, \qquad
f_X(x_0)=\int_{-\infty}^\infty f_{XY}(x_0,y)\,dy.
$$

Thus for a Borel set $D\subset \mathbb{R}^2$,
$$
P_{\sigma(X)}((X,Y)\in D)(\omega)
 = \int_{\{y:(x_0,y)\in D\}} f_{Y\mid X=x_0}(y)\,dy,
\quad x_0=X(\omega).
$$

---
