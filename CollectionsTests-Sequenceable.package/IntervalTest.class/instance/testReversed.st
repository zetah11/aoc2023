tests
testReversed
	self assert: (3 to: 10) reversed = (10 to: 3 by: -1).
	self assert: (3 to: 11 by: 4) reversed = (11 to: 3 by: -4).
	self assert: (3 to: 12 by: 4) reversed = (11 to: 3 by: -4).