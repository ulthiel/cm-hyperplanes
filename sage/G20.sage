print "Loaded CM hyperplane arrangement for G20"

H.<k1_1, k1_2> = HyperplaneArrangements(QQ)
A=H([
k1_2,
k1_1,
k1_1 - 3*k1_2,
k1_1 - 2*k1_2,
k1_1 - k1_2,
k1_1 + k1_2,
k1_1 + 2*k1_2,
2*k1_1 - 3*k1_2,
2*k1_1 - k1_2,
2*k1_1 + k1_2,
3*k1_1 - 2*k1_2,
3*k1_1 - k1_2
])