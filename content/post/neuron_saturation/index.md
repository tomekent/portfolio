---
# Documentation: https://sourcethemes.com/academic/docs/managing-content/

title: "DDPG and Neuron saturation"
subtitle: ""
summary: ""
authors: []
tags: []
categories: []
date: 2020-02-10T17:10:03Z
lastmod: 2020-02-10T17:10:03Z
featured: false
draft: true
math: true

# Featured image
# To use, add an image named `featured.jpg/png` to your page's folder.
# Focal points: Smart, Center, TopLeft, Top, TopRight, Left, Right, BottomLeft, Bottom, BottomRight.
image:
  caption: ""
  focal_point: ""
  preview_only: false

# Projects (optional).
#   Associate this post with one or more of your projects.
#   Simply enter your project's folder or file name without extension.
#   E.g. `projects = ["internal-project"]` references `content/project/deep-learning/index.md`.
#   Otherwise, set `projects = []`.
projects: [TBPHASE]
---


## Never work with children, animals or angles
I'm sure if W.C. Fields was alive today and interested in machine learning he might have updated this maxim to include angles.

Many off the shelf RL algorithms seem like straightforward tools to replicate state of the art results on your own specific problem domain. Deep neural nets have shown great promise of 'learning' complex tasks such as computer vision and continuous control problems but to adapt them can be challenging and require greater knowledge of the underlying mathematics and Neural Network structures to debug problems - essentially parameter tuning by trial and error.

Lets have a look at Deep Deterministic Policy Gradient (DDPG) and see how well a Deep Neural Network, approximating a policy function, can perform at an angle based continuous controll problem.

## Continuous Action Control choice
Look
{{< figure src="result_animation.gif" numbered="false" title="Agent performing persistent surveillance in a hex world">}}

Take the example below, where we will use a rose-plot to show action choices over an entire episode. We have a single action control output of 'angle' (in this case direction of travel). On the left we have completely random, in the middle a discrete 6 direction choice made by a simple heuristic algorithm and on the right a Deep Deterministic Policy Gradient (DDPG). DDPG here has 7 inputs, a couple of hidden layers and a single output neuron, with a tanh activation - as is standard for DDPG, here the activation $\in$ (-1,1) is multiplied by $pi$ to produce the action angle.

{{< figure src="action_choices_2.png" numbered="true" title="Action choices rose plot for 3 policies">}}


What we hope for is something that produces a better, more continuous version of the heuristic, instead what we get is *neuron saturation*. The problem here is the tanh activation function (and a problem that exists in all activation functions) saturates at +1 or -1, the asymptotes, and as a result so too does our action selection at $+\pi$ or $-\pi$ respectively.

{{< figure src="tanh.png" numbered="true" title="Activation function $\tanh$">}}

{{< figure src="action_choices_2.png" numbered="true" title="Action choices rose plot: [Random, discrete heuristic, DDPG]">}}
That said, issues with working with angles and its discontinuities are well documented. One approach to fix this is to add more output neurons. We instead add a second neuron and parametrise the action angle so that instead of multiplying the activation by $\pi$ we use it to represent $\sin(\theta)$ and $\cos(\theta)$.

This balances out some of the neuron saturation, but some is still present at the 'corners' [(1,1), (1,-1), (-1,-1), (-1,1)]

{{< figure src="action_choices_1.png" numbered="true" title="Action choices rose plot for 3 policies">}}
