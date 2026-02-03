# Calogero–Moser hyperplane arrangements

By [Ulrich Thiel](https://ulthiel.com)

This repository contains data about Calogero–Moser hyperplane arrangements as discussed by G. Bellamy, T. Schedler, and myself in [[1](#references)]. 

In the notation of [[1](#references)], let $\Gamma \subset \mathrm{GL}(\mathfrak{h})$ be a complex reflection group. All of the following constructions are relative to $\Gamma$. The Calogero–Moser hyperplane arrangement $\mathcal{E}$ is a hyperplane arrangement contained in a rational vector space $\mathfrak{c}_{\mathbb{Q}}$. The arrangement is stable under the action of a certain group: the Namikawa–Weyl group $W$. We know that the arrangement $\mathcal{E}$ contains the Coxeter arrangement of $W$. The integer 

$$
E = \frac{1}{|W|} \dim H^\bullet(\mathfrak{c}_{\mathbb{C}} \setminus \mathcal{E}_{\mathbb{C}}, \mathbb{C}),
$$

where $H^\bullet$ is the Orlik–Solomon algebra of the (complexified) hyperplane arrangement complement, counts the number of chambers up to the action of $W$, and this gives the number of $\mathbb{Q}$-factorial terminalization of the symplectic singularity $(\mathfrak{h} \oplus \mathfrak{h}^*)/\Gamma$.

## Data for exceptional complex reflection groups

This repository contains [Sage](http://www.sagemath.org/) files of the hyperplane arrangements for *exceptional* complex reflection groups. The hyperplanes have been computed by myself with methods described in [[2](#references)], and by C. Bonnafé and myself in [[3](#references)]. The 2-reflection groups are missing since here the situation is trivial, see [[1](#references)]. The other missing ones are so far too complicated to compute. The files can be loaded as follows:

```python
load("G4.sage")          #loads file with arrangement for G4
A.is_central()           #check if A is central
A.is_essential()         #check if A is essential
P=A.intersection_poset() #the intersection poset of A
L=LatticePoset(P)        #the intersection lattice of A
L.is_supersolvable()     #check if A is supersolvable
```

In the table below we list the following data on $\mathcal{E}$:

1. The exceptional complex reflection group in Shephard–Todd notation.

2. The number $|\mathcal{E}|$ of hyperplanes in the arrangement.

3. The dimension of the vector space $\mathfrak{c}_{\mathbb{Q}}$.

4. The Namikawa Weyl group $W$. It will be a product of symmetric groups.

5. The Poincaré polynomial $\pi(t)$ of $\mathcal{E}$. 

6. The integer $E$.

7. The column "free" indicates whether the arrangement $\mathcal{E}$ is free. 

8. If the arrangement is free, the Poincaré polynomial $\pi(t)$ factors into integral linear factors of the form $b_it + 1$. The $b_i$ are called the exponents of $\mathcal{E}$ and we list them in column "exp".

9. The column "ss" indicates whether the arrangement $\mathcal{E}$ is supersolvable.

10. The column $K(\pi,1)$ indicates whether the arrangement $\mathcal{E}$ is $K(\pi,1)$. If the arrangement is supersolvable, then it is already free and it is also $K(\pi,1)$ by Falk–Randell and Terao.

A question mark indicates that we do not currently know the answer.

| Group          | $\|\mathcal{E}\|$ | dim $\mathfrak{c}_{\mathbb{Q}}$ | $W$                                                          | $\pi(t)$                                                            | $E$     | free | exp     | ss  | $K(\pi,1)$ |
| -------------- | ----------------- | ------------------------------- | ------------------------------------------------------------ | ------------------------------------------------------------------- | ------- | ---- | ------- | --- | ---------- |
| $G_{4}$        | 6                 | 2                               | $\mathfrak{S}_3$                                             | $(5t+1)(t+1)$                                                       | 2       | yes  | 1,5     | yes | yes        |
| $G_{5}$        | 33                | 4                               | $\mathfrak{S}_3 \times \mathfrak{S}_3$                       | $(116t^{2}+21t+1)(11t+1)(t+1)$                                      | 92      | no   | –       | no  | ?          |
| $G_{6}$        | 16                | 3                               | $\mathfrak{S}_2 \times \mathfrak{S}_3$                       | $(8t+1)(7t+1)(t+1)$                                                 | 12      | yes  | 1,7,8   | no  | ?          |
| $G_{7}$        | 61                | 5                               | $\mathfrak{S}_2 \times \mathfrak{S}_3 \times \mathfrak{S}_3$ | $(98644t^{4}+18462t^{3}+1489t^{2}+60t+1)(t+1)$                      | 3296    | no   | –       | no  | ?          |
| $G_{8}$        | 25                | 3                               | $\mathfrak{S}_4$                                             | $(13t+1)(11t+1)(t+1)$                                               | 14      | yes  | 1,11,13 | no  | ?          |
| $G_{9}$        | 54                | 4                               | $\mathfrak{S}_2 \times \mathfrak{S}_4$                       | $(6499t^{3}+983t^{2}+53t+1)(t+1)$                                   | 2       | no   | –       | no  | ?          |
| $G_{10}$       | 111               | 5                               | $\mathfrak{S}_3 \times \mathfrak{S}_4$                       | $(1001586t^{4}+107662t^{3}+4913t^{2}+110t+1)(t+1)$                  | 15476   | no   | –       | no  | ?          |
| $G_{11}$       | 196               | 6                               | $\mathfrak{S}_2 \times \mathfrak{S}_3 \times \mathfrak{S}_4$ | $(383999826t^{5}+25688824t^{4}+857259t^{3}+17047t^{2}+195t+1)(t+1)$ | 2851133 | no   | –       | no  | ?          |
| $G_{13}$       | 6                 | 2                               | $\mathfrak{S}_2 \times \mathfrak{S}_2$                       | $(5t+1)(t+1)$                                                       | 3       | yes  | 1,5     | yes | yes        |
| $G_{14}$       | 22                | 3                               | $\mathfrak{S}_2 \times \mathfrak{S}_3$                       | $(116t^{2}+21t+1)(t+1)$                                             | 23      | no   | –       | no  | ?          |
| $G_{15}$       | 65                | 4                               | $\mathfrak{S}_2 \times \mathfrak{S}_3 \times \mathfrak{S}_2$ | $(13982t^{3}+1529t^{2}+32t+1)(1+t)$                                 | 2596    | no   | –       | no  | ?          |
| $G_{20}$       | 12                | 2                               | $\mathfrak{S}_3 $                                            | $(11t+1)(t+1)$                                                      | 4       | yes  | 1,11    | yes | yes        |
| $G_{25}$       | 12                | 2                               | $\mathfrak{S}_3$                                             | $(11t+1)(t+1)$                                                      | 4       | yes  | 1,11    | yes | yes        |
| $G_{26}$       | 37                | 3                               | $\mathfrak{S}_2 \times \mathfrak{S}_3$                       | $(335t^{2}+36t+1)(t+1)$                                             | 62      | no   | –       | no  | ?          |
| $F_{4}=G_{28}$ | 8                 | 2                               | $\mathfrak{S}_2 \times \mathfrak{S}_2$                       | $(7t+1)(t+1)$                                                       | 4       | yes  | 1,7     | yes | yes        |

<a id="references"></a>

## References

1. Hyperplane arrangements associated to symplectic quotient singularities
   *Phenomenological approach to algebraic geometry*, 25–45.
   Banach Center Publ., 116, Polish Acad. Sci. Inst. Math., 2018. With <a href="http://www.maths.gla.ac.uk/~gbellamy/">G. Bellamy</a> and <a href="http://www.imperial.ac.uk/people/t.schedler">T. Schedler</a>. 
   [<a href="https://doi.org/10.4064/bc116-2">DOI</a>] · [<a href="https://arxiv.org/abs/1702.04881">arXiv</a>] · [<a href="https://mathscinet.ams.org/mathscinet/article?mr=3889149">MR</a>]

2. CHAMP: A Cherednik Algebra Magma Package  
   *LMS J. Comput. Math.* 18 (2015), no. 1, 266–307.  
   [[DOI](https://doi.org/10.1112/S1461157015000054)] · [[arXiv](https://arxiv.org/abs/1403.6686)] · [[MR](https://mathscinet.ams.org/mathscinet/article?mr=3361642)]

3. Computational aspects of Calogero-Moser spaces  
   *Selecta Math. (N.S.)* 29 (2023), no.5, Paper No. 79. With [C. Bonnafé](https://imag.umontpellier.fr/~bonnafe/).  
   [[DOI](https://doi.org/10.1007/s00029-023-00878-3)] · [[arXiv](https://arxiv.org/abs/2112.15495)] · [[MR](https://mathscinet.ams.org/mathscinet/article?mr=4659466)]

## Version

Last modified on August 2, 2021 at 13:38 pm. Moved to Github on February 2-3, 2026.

## License

The mathematical datasets in this repository are licensed under
Creative Commons Attribution 4.0 International (CC BY 4.0).

See LICENSE for details.
