# Gaussian Process-Based Confidence Estimation for Hybrid System Falsification

## Abstract
Cyber-Physical Systems (CPSs) are widely adopted in safety-critical domains, raising great demands on their quality assurance. However, the application of formal verification is limited due to the continuous dynamics of CPSs. Instead, simulation-based falsification, which aims at finding a counterexample to refute the system specification, is a more feasible and hence actively pursued approach. Falsification adopts an optimization approach, treating robustness, given by the quantitative semantics of the specification language (usually Signal Temporal Logic (STL)), as the objective function. However, similarly to traditional testing, in the absence of found counterexamples, falsification does not give any guarantee on the system safety. To fill this gap, in this paper, we propose a confidence measure that estimates the probability that a formal specification is indeed not falsifiable, by relying on the information encapsulated in the simulation data collected during falsification. Methodologically, we approximate the robustness domain by feeding simulation data into a Gaussian Process (GP) Regression process; we then do a minimization sampling on the trained GP, and then estimate the probability that all the robustness values inferred from these sampled points are positive; we take this probability as the confidence measure. We experimentally study the properties of monotonicity and soundness of the proposed confidence measure. We also apply the measure to several state-of-the-art falsification algorithms to assess the maximum confidence they provide when they do not find a falsifying input, and the stability of such confidence across different repetitions.

## People
* Zhenya Zhang https://group-mmm.org/~zhenya/ 
* Paolo Arcaini http://group-mmm.org/~arcaini/

## Paper
Z. Zhang, P. Arcaini. Gaussian Process-Based Confidence Estimation for Hybrid System Falsification. In Proceedings of the 24th International Symposium on Formal Methods (FM 2021) [[doi](https://doi.org/10.1007/978-3-030-90870-6_18)]
