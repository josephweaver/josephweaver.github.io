
---
title: Trigonometry
permalink: /probability/trigonometry/
layout: default
---


# Useful Trigonometry For Probability
- **Euler**. $\quad e^{iu} = \cos u + i\sin u\qquad e^{-iu} = \cos u - i\sin u$
$$ 
\cos u = \frac{e^{iu}+e^{-iu}}{2}\qquad\sin u = \frac{e^{iu}-e^{-iu}}{2i}
$$
- **Squares**.$\quad\cos^2 u = \frac{1+\cos(2u)}{2}=\tfrac12+\frac{e^{2iu}+e^{-2iu}}{4}$
$$
\sin^2 u = \frac{1-\cos(2u)}{2}=\tfrac12-\frac{e^{2iu}+e^{-2iu}}{4}
$$
- **Pathagorous**. $\quad \cos^2 x + \sin^2 x = 1 $
- **Products**.$\quad \cos u\cdot\cos v = \tfrac12\big[\cos(u+v) + \cos(u-v)\big] = \frac{1}{4}(e^{iu}+e^{-iu})(e^{iv}+e^{-iv})
$ 
$$
\sin u\cdot\sin v = \tfrac12\big[\cos(u-v) - \cos(u+v)\big] = \frac{1}{4i^2}(e^{iu}-e^{-iu})(e^{iv}-e^{-iv})
$$ 
$$
\sin u\cdot\cos v = \tfrac12\big[\sin(u+v) + \sin(u-v)\big] = \frac{1}{4i}(e^{iu}-e^{-iu})(e^{iv}+e^{-iv})
$$
- **Angle Sum**.$\quad \cos(u+v) = \cos u\cdot\cos v - \sin u\cdot\sin v = \frac{e^{i(u+v)}+e^{-i(u+v)}}{2}$
$$
\sin(u+v) = \sin u\cdot\cos v + \cos u\cdot\sin v =\frac{e^{i(u+v)}-e^{-i(u+v)}}{2i}
$$
- **half-angle**. $\quad\cos(\frac{x}{2})=\pm\sqrt{\frac{1+\cos x}{2}}=\frac{e^{ix/2}+e^{-ix/2}}{2}\qquad\sin(\frac{x}{2})=\pm\sqrt{\frac{1-\cos x}{2}}=\frac{e^{ix/2}-e^{-ix/2}}{2}$
$$
\frac{1+e^{ix}}{2}=e^{ix/2}\cos(x/2)
$$
- **Cos Double-Angle**. $\quad\cos(2x)= \cos^2 x - \sin^2 x =  2\cos^2 x - 1 = 1 - 2\sin^2 x = \frac{e^{2ix}+e^{-2ix}}{2}$
- **Sin double-angle**. $\quad\sin(2x)=2\sin(x)\cos(x)=\frac{e^{2ix}-e^{-2ix}}{2i}$
- **Repeated Sin double-Angle**. $\quad\sin(x)=2^n\sin(\frac{x}{2^n})\prod_{k=1}^ncos(\frac{x}{2^k})$
- **symmetries**. $\quad\cos(-u) = \cos u,\qquad \sin(-u) = -\sin u $
- **Polar Form of a Complex Number** $ z = r e^{i\theta} $, where $r = \vert z\vert $, $\theta = \arg(z)$
- **helpers$$. $e^{i\theta}=e^{i\theta/2}e^{i\theta/2}\quad 1=e^{i\theta-i\theta}$