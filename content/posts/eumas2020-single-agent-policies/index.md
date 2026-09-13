---
title: "Single-Agent Policies for the Multi-Agent Persistent Surveillance Problem via Artificial Heterogeneity"
date: 2020-09-14T15:00:00Z
draft: false
tags:
  - Talk
  - Multi-Agent Systems
description: "Talk given at the 17th European Conference on Multi-Agent Systems (EUMAS 2020)."
image: /posts/eumas2020-single-agent-policies/featured.png

---

**Event:** [17th European Conference on Multi-Agent Systems](https://eumas2020.csd.auth.gr/eumas2020/) (EUMAS 2020), 14 September 2020 — Thessaloniki, Greece (held virtually)

Modelling and planning as well as Machine Learning techniques such as Reinforcement Learning are often difficult in multi-agent problems. With increasing numbers of agents the decision space grows rapidly and is made increasingly complex through interacting agents. This talk was motivated by the question of whether it is possible to train single-agent policies in isolation and without the need for explicit cooperation or coordination, and still successfully deploy them to multi-agent scenarios.

In particular we look at the multi-agent Persistent Surveillance Problem (MAPSP), which is the problem of using a number of agents to continually visit and re-visit areas of a map to maximise a metric of surveillance. We outline five distinct single-agent policies to solve the MAPSP: Reinforcement Learning (DDPG), Neuro-Evolution (NEAT), a Gradient Descent (GD) heuristic, a random heuristic, and a pre-defined 'ploughing pattern' (Trail). We compare the performance and scalability of these single-agent policies on the Multi-Agent PSP. Importantly, in doing so we demonstrate an emergent property which we call the Homogeneous-Policy Convergence Cycle (HPCC), whereby agents following homogeneous policies can get stuck together, continuously repeating the same action as other agents, significantly impacting performance. We show that just a small amount of noise, at the state or action level, is sufficient to solve the problem, essentially creating artificially-heterogeneous policies for the agents.

Read the accompanying paper: Kent, T. E., Richards, A. G. & Johnson, A. Single-Agent Policies for the Multi-Agent Persistent Surveillance Problem via Artificial Heterogeneity, European Conference on Multi-Agent Systems (EUMAS 2020).

[Download the slides](/files/slides/EUMAS_2020_slides.pdf)
