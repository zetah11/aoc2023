as yet unclassified
testExample2
	| d |
	d := Day8 withInput: 'LLR

AAA = (BBB, BBB)
BBB = (AAA, ZZZ)
ZZZ = (ZZZ, ZZZ)'.

	self assert: d stepsToZZZ equals: 6.