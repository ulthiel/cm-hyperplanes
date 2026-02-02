print "Loaded CM hyperplane arrangement for G8"

H.<k1_1, k1_2, k1_3> = HyperplaneArrangements(QQ)
A=H([
k1_3,
k1_2,
k1_2 - 2*k1_3,
k1_2 - k1_3,
k1_2 + k1_3,
2*k1_2 - k1_3,
k1_1,
k1_1 - 2*k1_3,
k1_1 - k1_3,
k1_1 + k1_3,
k1_1 - 3*k1_2 + k1_3,
k1_1 - 2*k1_2,
k1_1 - 2*k1_2 + k1_3,
k1_1 - k1_2,
k1_1 - k1_2 - k1_3,
k1_1 - k1_2 + k1_3,
k1_1 + k1_2,
k1_1 + k1_2 - 3*k1_3,
k1_1 + k1_2 - 2*k1_3,
k1_1 + k1_2 - k1_3,
k1_1 + k1_2 + k1_3,
2*k1_1 - k1_3,
2*k1_1 - k1_2,
2*k1_1 - k1_2 - k1_3,
3*k1_1 - k1_2 - k1_3
])