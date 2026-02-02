# Calogero–Moser hyperplane arrangements

The following table is an extended version about data of the Calogero–Moser hyperplane arrangements for exceptional complex reflection groups as discussed by G. Bellamy, T. Schedler, and myself in [*Hyperplane arrangements associated to symplectic quotient singularities*](https://arxiv.org/abs/1702.04881). The hyperplanes have been computed by myself with methods described in [*CHAMP: A Cherednik Algebra Magma Package*](https://arxiv.org/abs/1402.5122), and by C. Bonnafé and myself in [*Computational aspects of Calogero-Moser spaces*](https://arxiv.org/abs/2112.15495). The 2-reflection groups are missing in the table since here the situation is clear (see the first paper). The other missing ones are so far too complicated to compute.

The repository contains [Sage](http://www.sagemath.org/) files describing the corresponding hyperplane arrangement ℰ inside a vector space 𝔠. This file can be loaded into Sage using the load function as follows:

```python
load("G4.sage")          #loads file with arrangement for G4
A.is_central()           #check if A is central
A.is_essential()         #check if A is essential
P=A.intersection_poset() #the intersection poset of A
L=LatticePoset(P)        #the intersection lattice of A
L.is_supersolvable()     #check if A is supersolvable
```

The column "π(t)" gives the Poincaré polynomial of the arrangement, exp" the exponents, “ss” describes whether the arrangement is supersolvable or not, "free" if it is free or not, and "K(π,1)" if it is K(π,1). If the arrangement is supersolvable, then it is already free, and it is also K(π,1) by Falk-Randell and Terao.

| Group          | #ℰ  | dim 𝔠 | π(t)                                                                | exp     | ss  | free | K(π,1) |
| -------------- | --- | ------ | ------------------------------------------------------------------- | ------- | --- | ---- | ------ |
| $G_{4}$        | 6   | 2      | $(5t+1)(t+1)$                                                       | 1,5     | yes | yes  | yes    |
| $G_{5}$        | 33  | 4      | $(116t^{2}+21t+1)(11t+1)(t+1)$                                      | –       | no  | no   | ?      |
| $G_{6}$        | 16  | 3      | $(8t+1)(7t+1)(t+1)$                                                 | 1,7,8   | no  | yes  | ?      |
| $G_{7}$        | 61  | 5      | $(98644t^{4}+18462t^{3}+1489t^{2}+60t+1)(t+1)$                      | –       | no  | no   | ?      |
| $G_{8}$        | 25  | 3      | $(13t+1)(11t+1)(t+1)$                                               | 1,11,13 | no  | yes  | ?      |
| $G_{9}$        | 54  | 4      | $(6499t^{3}+983t^{2}+53t+1)(t+1)$                                   | –       | no  | no   | ?      |
| $G_{10}$       | 111 | 5      | $(1001586t^{4}+107662t^{3}+4913t^{2}+110t+1)(t+1)$                  | –       | no  | no   | ?      |
| $G_{11}$       | 196 | 6      | $(383999826t^{5}+25688824t^{4}+857259t^{3}+17047t^{2}+195t+1)(t+1)$ | –       | no  | no   | ?      |
| $G_{13}$       | 6   | 2      | $(5t+1)(t+1)$                                                       | 1,5     | yes | yes  | yes    |
| $G_{14}$       | 22  | 3      | $(116t^{2}+21t+1)(t+1)$                                             | –       | no  | no   | ?      |
| $G_{15}$       | 65  | 4      | $(13982t^{3}+1529t^{2}+32t+1)(1+t)$                                 | –       | no  | no   | ?      |
| $G_{20}$       | 12  | 2      | $(11t+1)(t+1)$                                                      | 1,11    | yes | yes  | yes    |
| $G_{25}$       | 12  | 2      | $(11t+1)(t+1)$                                                      | 1,11    | yes | yes  | yes    |
| $G_{26}$       | 37  | 3      | $(335t^{2}+36t+1)(t+1)$                                             | –       | no  | no   | ?      |
| $F_{4}=G_{28}$ | 8   | 2      | $(7t+1)(t+1)$                                                       | 1,7     | yes | yes  | yes    |

Data last modified on August 2, 2021 at 13:38 pm. Moved to Github on February 2, 2026.

