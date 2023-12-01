tests
testReversedEmpty
	self assert: (4 to: 3) reversed = (3 to: 4 by: -1).
	self assert: (4 to: 3 by: 5) reversed = (3 to: 4 by: -5).