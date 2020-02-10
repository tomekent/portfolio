---
title: Formation Flight Results
date: 2019-11-15
math: false
diagram: true
draft: true
image:
  placement: 1
  caption: 'Image credit: [**Tom Kent**](https://tomekent.com)'
---

## Abstract
---

The need for commercial aviation to be more efficient and reduce its impact on the environment is an ongoing challenge. Formation flight has the potential to significantly reduce aircraft fuel consumption by allowing 'follower' aircraft to fly in the aerodynamic wake of a 'leader' aircraft.

However, this requirement for flights to be in close proximity for large parts of their flights, raises questions about it suitability to the range of existing flights and varied geographical regions. Therefore in this work we explore the potential for implementing formation flight for commercial aviation for distinct case studies:
- Long-Haul Airline (LHA);
- TransAtlantic Airline (TAA);
- and Low-Cost Airline (LCA).

Each case study represents different airline characteristics and regions typical of today's flights. Fuel-saving results for average percentage savings against solo flight are shown to be very promising, with TAA achieving almost 9%, LHA just over 6% and LCA just under 2%. This potential for fuel saving could amount to hundreds of millions of dollars in fuel savings and millions of tonnes of reduction in resulting Co2 emissions.

## Methodology
Using Matlab to first find the optimal formations of size two we look at the results to see how the multi-variate results interact. Using the power of [dc.js](https://d3js.org/), [crossfilter.js](https://github.com/square/crossfilter) and [Google Maps' Javascript Api](https://developers.google.com/maps/documentation/javascript) we can quickly render the results.


## Questions

We can interrogate the data to try and answer some simple questions.
- How much Co2 can we save by flying in formation?
- How does time-of-day correlate with saving?
- Can Formation Flight still be benifical for short haul flights?
- Do Formations with less deviation perform better?
- What impact does restricting changes in take-off time effect savings?
