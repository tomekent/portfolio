---
# Documentation: https://sourcethemes.com/academic/docs/managing-content/

title: "Single-Agent Policies for the Multi-Agent Persistent Surveillance Problem via Artificial Heterogeneity"
event: "17th European Conference on Multi-Agent Systems"
event_url: "https://eumas2020.csd.auth.gr/eumas2020/"
location: "Virtual - Online"
address:
  street:
  city: "Thessaloniki"
  region: "Greece"
  postcode:
  country:
summary:
abstract: "Modelling and planning as well as Machine Learning techniques such as Reinforcement Learning are often difficult in multi-agent problems. With increasing numbers of agents the decision space grows rapidly and is made increasingly complex through interacting agents. This paper is motivated by the question of if it is possible to train single- agent policies in isolation and without the need for explicit cooperation or coordination still successfully deploy them to multi-agent scenarios. In particular we look at the multi-agent Persistent Surveillance Problem (MAPSP), which is the problem of using a number of agents to continually visit and re-visit areas of a map to maximise a metric of surveillance. We outline five distinct single-agent policies to solve the MAPSP: Reinforcement Learning (DDPG); Neuro-Evolution (NEAT); a Gradient Descent (GD) heuristic; a random heuristic; and a pre-defined ‘ploughing pattern’ (Trail). We will compare the performance and scalability of these single-agent policies to the Multi-Agent PSP. Importantly, in doing so we will demonstrate an emergent property which we call the Homogeneous-Policy Convergence Cycle (HPCC), whereby agents following homogeneous policies can get stuck together, continuously repeating the same action as other agents, significantly impacting performance. This paper will show that just a small amount of noise, at the state or action level, is sufficient to solve the problem, essentially creating artificially-heterogeneous policies for the agents."

# Talk start and end times.
#   End time can optionally be hidden by prefixing the line with `#`.
date: 2020-09-14T15:00:00+01:00
date_end: 2020-09-14T15:15:00+01:00
all_day: false

# Schedule page publish date (NOT talk date).
publishDate: 2020-09-14T10:39:44+01:00

authors: [admin]
tags: []

# Is this a featured talk? (true/false)
featured: false

# Featured image
# To use, add an image named `featured.jpg/png` to your page's folder. 
# Focal points: Smart, Center, TopLeft, Top, TopRight, Left, Right, BottomLeft, Bottom, BottomRight.
image:
  caption: ""
  focal_point: ""
  preview_only: false

# Custom links (optional).
#   Uncomment and edit lines below to show custom links.
# links:
# - name: Follow
#   url: https://twitter.com
#   icon_pack: fab
#   icon: twitter

# Optional filename of your slides within your talk's folder or a URL.
url_slides: "files/slides/EUMAS_2020_slides.pdf"

url_code:
url_pdf: "http://users.auth.gr/nbassili/EUMAS-AT-2020-proceedings/EUMAS_2020_paper_31.pdf"
url_video:

links:
# - icon: file-pdf
#   icon_pack: fas
#   name: slides
#   url: "files/slides/EUMAS_2020_slides.pdf"
# fa-file-powerpoint 
# far
- name: Paper
  url: "publication/kent-2020a/"
# Markdown Slides (optional).
#   Associate this talk with Markdown slides.
#   Simply enter your slide deck's filename without extension.
#   E.g. `slides = "example-slides"` references `content/slides/example-slides.md`.
#   Otherwise, set `slides = ""`.c

slides: ""

# Projects (optional).
#   Associate this post with one or more of your projects.
#   Simply enter your project's folder or file name without extension.
#   E.g. `projects = ["internal-project"]` references `content/project/deep-learning/index.md`.
#   Otherwise, set `projects = []`.
projects: []
---
