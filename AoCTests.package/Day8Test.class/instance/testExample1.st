as yet unclassified
testExample1
	| d |
	d := Day8 withInput: 'RL

AAA = (BBB, CCC)
BBB = (DDD, EEE)
CCC = (ZZZ, GGG)
DDD = (DDD, DDD)
EEE = (EEE, EEE)
GGG = (GGG, GGG)
ZZZ = (ZZZ, ZZZ)'.

	self assert: d stepsToZZZ equals: 2.