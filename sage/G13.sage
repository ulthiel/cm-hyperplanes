print "Loaded CM hyperplane arrangement for G13"

H.<k1_1, k2_1> = HyperplaneArrangements(QQ)
A=H([
k2_1,
k1_1,
k1_1 - 2*k2_1,
k1_1 - k2_1,
k1_1 + k2_1,
k1_1 + 2*k2_1
])