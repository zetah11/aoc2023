tests - compare
testCloseToIsSymmetric
	self assert: ((1<<2000) reciprocal closeTo: 1.0e-6) equals: (1.0e-6 closeTo: (1<<2000) reciprocal)