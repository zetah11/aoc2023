tests - mathematical functions
testLog2near1
	self assert: 1.0 predecessor ln / 2 ln equals: 1.0 predecessor log2 withinUlp: 2.
	self assert: 1.0 successor ln / 2 ln equals: 1.0 successor log2 withinUlp: 2