# 35 — Strong Markov Property and Reflection Principle


## **1. Formal Setup**
We work on a family of probability spaces
$$
(\Omega,\mathcal F, P_x)_{x\in\mathbb R}.
$$

Let  
- $$Y:\ (\mathbb R^t \times \Omega)\to\mathbb R$$ be measurable,  
- $$S:\Omega\to \mathbb R_+ \cup \{\infty\}$$ be a stopping time.

### **Strong Markov Property (SMP) for Brownian Motion**
For any measurable $Y_s$,
$$
E_x\!\left(Y_s\circ\theta_s \mid \mathcal F_s\right)
    = E_{B^x(s)}\!\left(Y_s\right)\mathbf 1_{\{s<\infty\}}.
$$

Equivalently,
$$
E_x\!\left[(Y_s\circ\theta_s)\mathbf 1_{\{s<\infty\}}\right]
= E_x\!\left(E_{B(s)}(Y_s)\mathbf 1_{\{s<\infty\}}\right).
$$

Here $\theta_s$ is the usual shift operator.

---

## **2. More Intuitive Formulation of SMP**
Let $S$ be a stopping time with
$$
P(S<\infty)=1.
$$

Then

1. **Future after a stopping time is a Brownian motion started at the hitting position**
   $$
   \{B(S+t)\}_{t\ge 0}\ \overset{D}{=}\ \{B_t^{\,B(S)}\}_{t\ge 0}.
   $$

2. **Brownian increments after a stopping time are independent of the past**
   $$
   \{B(S+t) - B(S)\}_{t\ge 0} \perp\!\!\!\perp \mathcal F_S,
   $$
   and form a BM starting at zero.

---

## **3. Example: First Hitting Time**
Let
$$
S = T_a := \inf\{t>0: B_t = a\},\qquad a>0.
$$
Then  
$$
P_x(T_a<\infty)=1
$$
for every starting point $x\in\mathbb R$.

Recall from last class:
$$
\overline{\lim}_{t\to\infty}\frac{B_t}{\sqrt t} = +\infty\quad \text{a.s.}
$$
which implies the BM almost surely crosses every level eventually.

Thus:

1.  
   $$
   \{B(T_a + t)\}_{t\ge 0} \overset{D}{=} \{B_t^{\,a}\}_{t\ge 0}.
   $$

2.  
   $$
   \{B(T_a+t)\}_{t\ge 0} \perp\!\!\!\perp \mathcal F_{T_a}.
   $$

Note: One should subtract $a$ to get increments, but this is just a constant shift.

---

## **4. Sketch of Proof of SMP**
### **Step 1: Discrete-valued stopping times**
Assume
$$
S(\omega)\in\{t_n\}_{n\ge1},\quad \sum_n P(S=t_n)=1.
$$
On the event $\{S=t_n\}$ apply the Markov property at deterministic times, then combine using disjointness.  

This handles the case where the stopping time takes countably many values.

### **Step 2: Approximation of a general stopping time**
Let
$$
S_n \downarrow S
$$
with dyadic approximations
$$
\delta_n \in \left\{\frac{k}{2^n}\right\}_{k\ge0},\qquad
\delta_n = \frac{k+1}{2^n} \text{ if } \frac{k}{2^n}\le S < \frac{k+1}{2^n}.
$$
Then $\delta_n \to S$ and
$$
\mathcal F_{\delta_n}\downarrow \mathcal F_S.
$$

Choose simple $Y$ of the form
$$
Y_S(\omega) = \prod_{k=0}^m f_k\!\big(B_{t_k+S}\big),
$$
with $f_k$ bounded and continuous.  

Apply the conditional DCT to pass to the limit $S_n\to S$.

---

# **5. Reflection Principle**

Let $T_a = \inf\{t>0: B_t=a\}$.  
Then for every $t>0$,
$$
P_0(T_a \le t) = 2 P_0(B_t \ge a).
$$

### **Intuition (diagram on page 3 of PDF)** :contentReference[oaicite:1]{index=1}
Conditional on the event $\{T_a < t\}$, Brownian motion has a **50% chance of being above $a$** and **50% chance of being below $a$** at time $t$.  
The path is “reflected’’ after hitting $a$.

Formally, if a path hits $a$ before $t$, the post–$T_a$ segment is symmetric around the line $a$.

Thus:
$$
P_0(B_t>a, T_a<t) = P_0(B_t<a, T_a<t)
$$
and so
$$
2P_0(B_t>a, T_a<t)=P_0(T_a<t).
$$
But $P_0(B_t>a, T_a<t)=P_0(B_t>a)$, yielding the formula.

---

## **6. Formal Proof via SMP**

### **Step 1: Term A in SMP**
Let
$$
Y_s(\omega)=\mathbf 1_{\{B_{t-s}(\omega)>a\}}\mathbf 1_{\{s<t\}}.
$$
Then
$$
E_x(Y_s)=P_x(B_{t-s}>a)\mathbf 1_{\{s<t\}}.
$$

At $s=T_a$,
$$
B(T_a)=a,
$$
and therefore
$$
E_{B(T_a)}(Y_{T_a}) = \frac12\mathbf 1_{\{T_a<t\}}.
$$

Taking expectations:
$$
E_0\!\left[E_{B(T_a)}(Y_{T_a})\right]
= \frac12 P_0(T_a<t).
$$

### **Step 2: Term B in SMP**
Evaluate
$$
Y_s\circ\theta_s = \mathbf 1_{\{B_t>a\}}\mathbf 1_{\{s<t\}}.
$$

Thus
$$
E_0\!\left(Y_{T_a}\circ\theta_{T_a}\right)
  = P_0(B_t>a,\, T_a<t)
  = P_0(B_t>a).
$$

Combine Steps 1 and 2 to obtain
$$
2P_0(B_t>a) = P_0(T_a<t).
$$

---

## **7. Distribution of the Hitting Time**
From
$$
P_0(T_a<t)=2 P_0(B_t>a)= 2P(Z>\tfrac{a}{\sqrt{t}}),
$$
differentiate to obtain the density
$$
f_{T_a}(t)
= \frac{a}{\sqrt{2\pi t^3}}
   \exp\!\left(-\frac{a^2}{2t}\right),\qquad t>0.
$$

### **Properties**
- $$E[T_1] = \infty.$$
- Scaling:
  $$
  T_a \overset{d}{=} a^2 T_1.
  $$

- Example:
  $$
  T_2 = 4 T_1.
  $$

---

# **End of Lecture 36**
