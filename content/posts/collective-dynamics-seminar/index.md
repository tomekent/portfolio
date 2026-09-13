---
title: "Ignorance Is Bliss: Noise and Heterogeneity in Multi-Agent Persistent Surveillance"
date: 2019-10-19T15:00:00Z
draft: false
tags:
  - Talk
  - Multi-Agent Systems
description: "Talk given at the Collective Dynamics Seminar on single-agent policies for the multi-agent persistent surveillance problem."
image: /posts/collective-dynamics-seminar/featured.png

---

**Event:** [Collective Dynamics Seminar](https://seis.bristol.ac.uk/~nb14397/seminars.html), 19 October 2019

Reinforcement Learning for Multi-Agent systems is hard! Can we instead get away with just training a single agent and then deploying it on many agents? Maybe, but there are catches.

This talk explored a 'toy' problem of multi-agent persistent surveillance where the basic objective is for agents to continuously monitor areas of a map to maximise a surveillance 'score'. To see how a single agent policy, trained in isolation, can perform when deployed in a multi-agent scenario, I compared the performance of a number of single-agent policies: Reinforcement Learning (DDPG), Neuro-Evolution, and a gradient descent heuristic, against more traditional pre-defined boustrophedon-style 'ploughing patterns'.

We observed the 'homogeneous-policy convergence problem', where identical policies force multiple agents to get stuck together, and looked at how noise and uncertainty can alleviate the issue. Finally, we looked at the decentralised case, where agents, having only partial knowledge of the world, are able to communicate. Different methods of state consensus indicated that for homogeneous deterministic policies, communication can be detrimental to performance.

[Download the slides](/files/slides/CollectiveDynamics2019-10.pdf)
