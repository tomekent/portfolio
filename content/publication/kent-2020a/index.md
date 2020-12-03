---
# Documentation: https://sourcethemes.com/academic/docs/managing-content/

title: "Single-Agent Policies for the Multi-Agent Persistent Surveillance Problem via Artificial Heterogeneity"
authors: ["Thomas Kent", "Arthur Richards", "Angus Johnson"]
date: 2020-09-14T11:38:05+01:00
doi: ""

# Schedule page publish date (NOT publication's date).
publishDate: 2020-09-14T11:38:05+01:00

# Publication type.
# Legend: 0 = Uncategorized; 1 = Conference paper; 2 = Journal article;
# 3 = Preprint / Working Paper; 4 = Report; 5 = Book; 6 = Book section;
# 7 = Thesis; 8 = Patent
publication_types: ["1"]

# Publication name and optional abbreviated publication name.
publication: "European Conference on Multi-Agent Systems"
publication_short: "EUMAS 2020"

abstract: "Modelling and planning as well as Machine Learning techniques such as Reinforcement Learning are often difficult in multi-agent problems. With increasing numbers of agents the decision space grows rapidly and is made increasingly complex through interacting agents. This paper is motivated by the question of if it is possible to train single- agent policies in isolation and without the need for explicit cooperation or coordination still successfully deploy them to multi-agent scenarios. In particular we look at the multi-agent Persistent Surveillance Problem (MAPSP), which is the problem of using a number of agents to continually visit and re-visit areas of a map to maximise a metric of surveillance. We outline five distinct single-agent policies to solve the MAPSP: Reinforcement Learning (DDPG); Neuro-Evolution (NEAT); a Gradient Descent (GD) heuristic; a random heuristic; and a pre-defined ‘ploughing pattern’ (Trail). We will compare the performance and scalability of these single-agent policies to the Multi-Agent PSP. Importantly, in doing so we will demonstrate an emergent property which we call the Homogeneous-Policy Convergence Cycle (HPCC), whereby agents following homogeneous policies can get stuck together, continuously repeating the same action as other agents, significantly impacting performance. This paper will show that just a small amount of noise, at the state or action level, is sufficient to solve the problem, essentially creating artificially-heterogeneous policies for the agents."

# Summary. An optional shortened abstract.
summary: ""

tags: []
categories: []
featured: true

# Custom links (optional).
#   Uncomment and edit lines below to show custom links.
# links:
# - name: Follow
#   url: https://twitter.com
#   icon_pack: fab
#   icon: twitter

url_pdf: "/files/publications/Kent_Richards_Johnson_2020_EUMAS.pdf"
url_code:
url_dataset:
url_poster:
url_project:
url_slides:
url_source:
url_video:

# Featured image
# To use, add an image named `featured.jpg/png` to your page's folder. 
# Focal points: Smart, Center, TopLeft, Top, TopRight, Left, Right, BottomLeft, Bottom, BottomRight.
image:
  caption: ""
  focal_point: ""
  preview_only: false

# Associated Projects (optional).
#   Associate this publication with one or more of your projects.
#   Simply enter your project's folder or file name without extension.
#   E.g. `internal-project` references `content/project/internal-project/index.md`.
#   Otherwise, set `projects: []`.
projects: ["TBPHASE"]
slides: "content/talk/EUMAS2020/index.md"
pdf_url: "/files/publications/Kent_Richards_Johnson_2020_EUMAS.pdf"
tags: ["Decision Making", "Distributed problem solving", "Reinforcement Learning", "Machine Learning", "Simulation", "Autonomy", "Multi-Agent Systems"]
---
