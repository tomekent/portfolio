---
# Documentation: https://sourcethemes.com/academic/docs/managing-content/

title: "Evolutionary Algorithms for the Multi Agent Travelling Salesman Problem"
subtitle: ""
summary: ""
authors: []
tags: []
categories: []
date: 2020-02-07T22:55:39Z
lastmod: 2020-02-07T22:55:39Z
featured: false
draft: false
math: true
diagram: true

# Featured image
# To use, add an image named `featured.jpg/png` to your page's folder.
# Focal points: Smart, Center, TopLeft, Top, TopRight, Left, Right, BottomLeft, Bottom, BottomRight.
image:
  caption: ""
  focal_point: ""
  placement: 1
  caption: 'Image credit: [**Tom Kent**](https://tomekent.com)'
  preview_only: false

# Projects (optional).
#   Associate this post with one or more of your projects.
#   Simply enter your project's folder or file name without extension.
#   E.g. `projects = ["internal-project"]` references `content/project/deep-learning/index.md`.
#   Otherwise, set `projects = []`.
projects: [TBPHASE]
---

This is a summary of some work published last year at the [2019 Genetic and Evolutionary Computation Conference](https://gecco-2019.sigevo.org/index.html/HomePage). Where we are looking to solve routing and allocation problems and trying to find ways to balance the increase in computational demand required when increasing the number of numbers of agents

{{< figure src="bars.png" numbered="true" title="Trade-off between optimisation factors">}}

If we want to solve increasingly complex problems, then we might either need more compute, or we sacrifice solution quality - **unless we can be smart about the way we decompose the problem**.


## General Problem
There are a number of real world problems that require several agents to visit areas of interest, complete tasks and travel between them. These typically include problems such as surveillance, exploration or search and rescue.

Here we define a fairly standard Multi-Agent Travelling Salesman Problem:

#### Setup
  - Allocating active set of tasks to a set of agents
  - Simultaneously planning agents' optimal routes
#### Caveats
  - Allocation and routing are closely coupled
  - Dynamic simulated environment
  - Need to consider real world implementation


What we have learnt from our work on this is that:

> **We should align real-world Multi-Agent constraints with the structuring of our optimisation technique**

## Evolutionary Algorithm for MATSP
Our aim is to move away from a single centralised solution to the MATSP. Instead we want to utilise the fact that these agents exist in a world that can be compartmentalised. There are real world constraints, such as geographical seperation that can be used to our advantage.

We use the population-distribution island-model, where the global population is divided into a number of demes (distinct populations) and referred to as the Multi-Demic Evolutionary Algorithm (MDEA). Communications between these demes allow for individuals to migrate between them at pre-defined intervals. These demes are structured to align with real world execution of a MATSP where tasks are distributed amongst multiple agents and are completed independently.

### MATSP Problem Statement
Here we present what's known as thethe three-index flow-based formulation
First define the indexes $i$ and $j$ to denote a task from the set T
of tasks 1 to N , the set A of agents from 1 to M and the matrix
c i ja to denote the cost of agent a travelling from task i to task j.
Additionally we define the three-index binary decision variable:


First define the indexes $i$ and $j$ to denote a task from the set $T$ of tasks 1 to $N$, the set $A$ of agents from 1 to $M$ and the matrix $c_{ija}$ to denote the cost of agent $a$ travelling from task $i$ to task $j$. Additionally we define the three-index binary decision variable:

$$
\begin{equation*}
  x_{ija} =
    \begin{cases}
      1 & \text{if agent $a$ visits task $j$ immediately after task $i$,}\\\\\\
      0 & \text{otherwise}
    \end{cases}
\end{equation*}
$$


$$
\begin{align}
\min_{x_{ija}} & \sum_{i = 1}^{N} \sum_{j = 1}^{N} \sum_{a = 1}^{M} c_{ija} x_{ija} \\\\\\
 & \sum_{i = 1}^{N}x_{ipa} - \sum_{j = 1}^{N}x_{pja} = 0, \text{  }a \in A, p \in T \label{MATSP_flow} \\\\\\
 & \sum_{j = 1}^{N}x_{1ja} = 1, \text{  } \forall a \in A \label{MATSP_one_agent}\\\\\\
 & u_i - u_j + N \sum_{a = 1}^{M} x_{ija}  \leq N -1, \text{  } \forall i \neq j \neq 1 \label{MATSP_subtour}\\\\\\
 & x_{ija} \in \{0,1\} \text{   } \forall i,j,a
\end{align}
$$
<!--	\text{s.t.}& \sum_{i = 1}^{N}\sum_{a = 1}^{M} x_{ija} = 1, \text{  } \forall j \label{MATSP_one_task}\\
						 & \sum_{i = 1}^{N}x_{ipa} - \sum_{j = 1}^{N}x_{pja} = 0, \text{  }a \in A, p \in T \label{MATSP_flow} \\
						 & \sum_{j = 1}^{N}x_{1ja} = 1, \text{  } \forall a \in A \label{MATSP_one_agent}\\
						 & u_i - u_j + N \sum_{a = 1}^{M} x_{ija}  \leq N -1, \text{  } \forall i \neq j \neq 1 \label{MATSP_subtour}\\
						 & x_{ija} \in \{0,1\} \text{   } \forall i,j,a -->


The objective, is to minimize the total cost of all the agents travelling between the assigned tasks. The next constraints ensure that each task is visited only once while the flow conservation constraints state that once an agent visits a task then they must also depart from it. The 'one-agent' constraints ensure that each agent is used only once and the sub-tour elimination constraints are used, where $u$ are additional non-negative auxiliary decision variables, with $u_i$ corresponding to the ith task, known as 'node potentials'.

### Evolutionary Approach for MATSP
#### 3 main Evolutionary Stages

1. **Initialisation** - creating an starting population for which to evolve;
2. **Reproduction** - carrying out evolutionary operators such as crossover, mutation and improvement heuristics to produce offspring;
3. **Selection** - taking individuals from both the main population and from the offspring to produce the new population;


{{< figure src="chromosome.png" title="Chromosome representation of route structure" >}}

#### Crossover operator to create offspring from combining features of the two parent solutions
{{< figure src="Crossover_SBX.png" numbered="true" title="SBX Crossover operator" >}}

#### Mutation operators to create slightly different offspring from one parent solutions
{{< figure src="Mutation_reallocate.png" title="Mutation operator - reallocate tasks" >}}
{{< figure src="Mutation_swap.png" numbered="true" title="Mutation operator - Swap Tasks" >}}

#### Improvement operator to try to quickly improve a solution using 2 opt
{{< figure src="Improvement.png" numbered="true" title="Improvement operator - 2 opt swap" >}}


### Aim: Multi-demic Evolutionary Algorithm
- Exploit problem structure, aligning real-world implementation demands
- Decentralised solution with Communication
- Use multiple populations (or demes)
- With well-defined agent-population interactions

Each agent has population structures for 'thinking about' intereactions with other agents. A population 'A-B' that exists onboard agent A is constantly evolved and updated. If new tasks arise these are incorporated, if agent A and agent B come in communiction range then they can 'pool' their A-B and B-A populations and prune any that are now invalid.


{{< figure src="Populations_flow.png" numbered="true" title="Population Structures" >}}


## Results

The objective function, total distance travelled, shown in the below figure, clearly shows that as the communications restriction is gradually lifted the total distances of the dMDEA results tends to the cMDEA, notably, any communication radius of 125 or greater either matches or outperforms the EA.

{{< figure src="dist.png" numbered="true" title="Communication range vs Total Distance" >}}

In addition, as communication range is increased the agents spend more time evolving the demes corresponding to nearby agents and thus the linear runtime increases. The next figure shows the relationship between the communication radius and thus the number of other agents to consider and the resulting run-time. Therefore there is a clear trade-off decision between ability to communicate, and thus agents you should consider, and run-time.

{{< figure src="sim_t.png" numbered="true" title="Communication range vs Total Sim time">}}



## Demos
### Decentralised - Homogeneous Comms
{{< youtube uMYGhZartHw >}}

### Decentralised - Heterogeneous Comms
{{< youtube 2TYcICFPSTE >}}


## But I was after a free lunch

{{< figure src="cycle.png" numbered="true" title="Trade-off between optimisation factors">}}

Sadly that's really the issue here, in many optimisation problems, but particularly in heuristic iterative approaches such as EAs, there is a trade off between problem complexity, runtime and quality of solution (Figure 4). If you want to keep your compute time the same, i.e. limit generations and population size, but need to solve a harder problem, i.e. **one with more agents**, you will need to sacrifice solution quality.  

{{< figure src="bars.png" numbered="true" title="Trade-off between optimisation factors">}}


## Read the full paper
If you want to read in a bit more detail then you can find the full paper here:
{{< publication href="/publication/kent-2019-a" text="Kent 2019" >}}
