---
layout: default
title: H is for Hilbert
tags: [Probability, Prelim, Survival Guide]
---

So today was spent mostly working through probability prelim problems I’d previously solved, trying to build speed, updating the one-page cheat sheet, and knocking down the hard edges that turn a “mostly know” problem into a “know it” problem.

As prelim strategy, I plan to spend the first 30 minutes blundering through every problem as fast as I can. The objective is to categorize each problem as “Know it”, “Mostly know”, or “Avoid”. In this phase I may do fast calculations just to identify easy parts. I’ll also try to line up how part A is used in part B. These problems are almost always written as *Prove A, Prove B*. Even if you can’t prove A yet, it is often obvious how the result of A would prove B. I’ve encountered dozens of problems where the final part is trivial once you know A and B.

One meta-lesson that keeps coming up is that prelims test mathematical *idiom recognition* as much as they test theory. Many mistakes are not about not knowing the theorem, but about mis-parsing what kind of object something actually is.

## Lesson One: Watch out for the letter H, it might mean Hilbert.

Today I encountered
$$
\mathcal{H} = \{ W \in \sigma(X) : \mathbb{E}[W^2] < \infty \}
$$
and my literal mind said, “oh, I have an element of $ \sigma(X) $, that’s a set, right?” So I thought I was looking for sets that are somehow $L^2$-integrable, which makes no sense.

What’s really happening is mathematical idiom. Hidden in this notation is the fact that $W = f(X)$. This is functional analysis language sneaking into probability. I know these are things, but it would have been nice to have had a class where this was made explicit instead of absorbed piecemeal under time pressure. This was problem 2022-Q2, if you’re curious.

> **Doob–Dynkin Lemma**
>
> If $Y$ is measurable with respect to $ \sigma(X) $, then  
> $Y = f(X)$ almost surely.
>
> Addendum: some people write this as $Y \in \sigma(X)$, which is exactly how you get confused.

The real trap here is mixing object types. Elements of $ \sigma(X) $ are sets. Elements of $ \mathcal{H} \subset L^2 $ are random variables. The shorthand collapses that distinction, and if you read it too literally, you end up stuck in the wrong mental model.

## Lesson Two: Algebra of convergence.

Today I confirmed that
$$
X_n + Y_n \to X + Y,\quad
X_n Y_n \to XY,\quad
f(X_n) \to f(X)
$$
are preserved under almost sure convergence and convergence in probability. However, only addition is preserved under $L^p$ convergence in general, and convergence in distribution gets weird fast.

What this really taught me is that whenever I am tempted to move limits through algebra, I need to ask: *which topology am I in?* Almost sure and in-probability convergence behave like pointwise limits. $L^p$ convergence is linear but not multiplicative. Weak convergence preserves almost no algebra unless you add assumptions.

This feels obvious when written down, but under exam pressure it’s exactly the kind of thing that slips.

Today’s music choices were mostly Baroque-style classical music, plus this strange EDM / dub-step playlist labeled “Electronic Music – No Vocals / Lyrics / Talking”. Structured enough to think, forward-moving enough to keep going.
