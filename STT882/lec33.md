# 33 – Brownian motion: Markov property, right–continuous filtration, time inversion, tail events
STT 882  
April 11, 2025

We work with standard Brownian motion starting at 0.

- Sample space  
  $$
  \Omega = C[0,\infty) = \{\omega : [0,\infty) \to \mathbb R \text{ continuous}\}.
  $$

- Canonical process  
  $$
  B_t(\omega) = \omega(t), \qquad t \ge 0.
  $$

- Natural filtration  
  $$
  \mathcal F_t^0 = \sigma\{B_s : 0 \le s \le t\}, \qquad t \ge 0.
  $$

- Laws $P_x$ on $(\Omega,\mathcal F)$ with
  $$
  P_x(B_0 = x) = 1, \qquad P_x(A) = P_0(A - x)
  $$
  (spatial shift of Wiener measure).

---

## Markov property (recall)

For bounded measurable $Y : \Omega \to \mathbb R$ and $t \ge 0$,
$$
E^{x}_{\mathcal F_t^0}(Y \circ \theta_t) = E^{B_t^x}(Y) =: \psi(B_t^x),
$$
where the shift operator $\theta_t : \Omega \to \Omega$ is
$$
(\theta_t \omega)(s) = \omega(t+s), \qquad s \ge 0.
$$

Equivalently,
$$
E^x(Y \circ \theta_t) = E^x\big[\,E^{B_t^x}(Y)\,\big].
$$

---

## Right–continuous augmentation of the filtration

Define
$$
\mathcal F_t^+ := \bigcap_{n=1}^\infty \mathcal F_{t+1/n}^0, \qquad t \ge 0.
$$

Then:

- $\mathcal F_t^0 \subset \mathcal F_{t+1/n}^0$ for each $n$, hence
  $\mathcal F_t^0 \subset \mathcal F_t^+$.
- The family $\{\mathcal F_t^+\}_{t \ge 0}$ is right–continuous:
  $$
  \mathcal F_t^+ = \bigcap_{s>t} \mathcal F_s^+.
  $$

We want to prove
$$
\mathcal F_t^0 = \mathcal F_t^+ \quad \text{up to null sets under } P_x,\ \forall x \in \mathbb R.
$$

In particular for $t=0$ we get Blumenthal 0–1 law:
$$
\mathcal F_0^0 = \mathcal F_0^+ = \sigma\{B_0\}
$$
up to null sets and
$$
P^x(A) \in \{0,1\} \quad \text{for all } A \in \mathcal F_0^+,\, x \in \mathbb R.
$$

---

## Hitting times of the positive and negative half–lines

Let $\{B_t\}_{t\ge0}$ be SBM under $P_0$.

Define the first hitting times
$$
T = \inf\{t>0 : B_t > 0\}, \qquad
S = \inf\{t>0 : B_t < 0\}.
$$

**Claim.**
$$
P_0(T = 0) = 1, \qquad P_0(S = 0) = 1.
$$

Sketch of idea:

- On the event $\{T>0\}$ we would have a sequence $t_n \downarrow 0$ with
  $B_{t_n} \le 0$ for all $n$, contradicting oscillation of Brownian paths.
- Similarly for $S$.

From the two claims we deduce that almost surely there exist sequences
$t_n \downarrow 0$ with $B_{t_n} > 0$ and also $s_n \downarrow 0$ with
$B_{s_n} < 0$; hence Brownian motion visits both sides of 0 arbitrarily close
to time 0.

This oscillatory behavior is key in the proof that the augmented and natural
filtrations coincide up to null sets.

---

## Equality of $\mathcal F_t^0$ and $\mathcal F_t^+$

**Theorem.**  
For SBM $\{B_t\}_{t\ge0}$,
$$
\mathcal F_t^0 = \mathcal F_t^+ \quad \text{up to null sets under } P_x,\ \forall x \in \mathbb R.
$$

Equivalently, for any bounded r.v. $Y$ on $\Omega$,
$$
E_{\mathcal F_t^+}^x(Y) = E_{\mathcal F_t^0}^x(Y) \quad \text{a.s.}
$$

Proof strategy:

1. First show this for $Y$ of the special form
   $$
   Y = X \cdot (Z \circ \theta_t), \qquad X \in \mathcal F_t^0,
   $$
   where $Z$ is bounded measurable on $\Omega$.

   Then
   $$
   \begin{aligned}
   E_{\mathcal F_t^+}^x\big(X \cdot (Z \circ \theta_t)\big)
   &= X\, E_{\mathcal F_t^+}^x(Z \circ \theta_t)
    = X\,E_{\mathcal F_t^0}^x(Z \circ \theta_t) \\
   &= E_{\mathcal F_t^0}^x\big(X \cdot (Z \circ \theta_t)\big),
   \end{aligned}
   $$
   using the Markov property and right–continuity.

2. Then extend to all bounded $Y$ in $\mathcal F_t^+$ via the monotone class
   theorem, starting from indicator functions and using linearity and monotone
   convergence.

Thus conditional expectations with respect to $\mathcal F_t^0$ and
$\mathcal F_t^+$ agree almost surely for all bounded $Y$, hence the
σ–algebras coincide up to null sets.

---

## Time inversion of Brownian motion

**Theorem.**  
Let $\{B_t\}_{t\ge 0}$ be standard Brownian motion. Define
$$
\tilde B(t) =
\begin{cases}
t\, B\!\left(\dfrac{1}{t}\right), & t>0, \\
0, & t=0.
\end{cases}
$$

Then $\{\tilde B(t)\}_{t \ge 0}$ is also standard Brownian motion.

Checks:

1. Mean:
   $$
   E[\tilde B(t)] = t\,E\big[B(1/t)\big] = 0.
   $$

2. Covariance, for $s,t>0$:
   $$
   \begin{aligned}
   \operatorname{Cov}\big(\tilde B(t), \tilde B(s)\big)
   &= ts\,\operatorname{Cov}\Big(B\!\left(\tfrac{1}{t}\right),
                                B\!\left(\tfrac{1}{s}\right)\Big) \\
   &= ts \Big(\tfrac{1}{t} \wedge \tfrac{1}{s}\Big)
    = t \wedge s.
   \end{aligned}
   $$

   So the finite–dimensional distributions are centered Gaussian with covariance
   $t\wedge s$, the same as SBM.

3. Continuity of sample paths: since $B(\cdot)$ is continuous and the map
   $t \mapsto 1/t$ is continuous on $(0,\infty)$, and we set $\tilde B(0)=0$,
   one checks that $\tilde B(t)$ is continuous on $[0,\infty)$ almost surely.

4. Limit at infinity:
   $$
   \lim_{t\to\infty} \tilde B(t) = \lim_{t\to\infty} t B(1/t) = 0
   \quad \text{a.s.}
   $$
   (from continuity of $B$ at 0).

Hence $\tilde B$ is a version of SBM. This “time inversion” will be used to
study tail events.

---

## Tail events of Brownian motion

Let $\{B_t\}_{t\ge 0}$ be standard Brownian motion and let
$$
\mathcal T = \bigcap_{T>0} \sigma\{B_t : t \ge T\}
$$
be its tail σ–field.

**Theorem (tail 0–1 law for Brownian motion).**  
If $A \in \mathcal T$ is a tail event of Brownian motion, then
$$
P(A) \in \{0,1\}.
$$
Moreover, for the Brownian family $\{P_x\}_{x\in\mathbb R}$,
$$
P_x(A) = P_0(A), \qquad \forall x \in \mathbb R.
$$

Idea of proof:

1. Work first under $P_0$ (SBM starting at 0). Using time inversion, tail
   events in the future correspond to events near time 0, hence are in
   $\mathcal F_0^+$.

2. By Blumenthal 0–1 law, any event in $\mathcal F_0^+$ has probability 0
   or 1 under $P_0$.

3. Use Markov property and the family $\{P_x\}$ to show
   $P_x(A) = P_0(A)$ for all $x$.

Example of the mechanism: if $A \in \mathcal F_1^+$ and
$B = A \circ \theta_{-1} \in \mathcal F_0^+$, then
$$
P_0(A) = E^0[1_B \circ \theta_1]
      = E^0\big[E^{B_1}(1_B)\big]
      = \int_{\mathbb R} P_y(B)\,P_0(B_1 \in dy),
$$
so if $P_y(B) = 0$ for all $y$ then $P_0(A)=0$, etc.

This completes the discussion of the Markov property, right–continuous
filtrations, time inversion, and tail events for Brownian motion.
