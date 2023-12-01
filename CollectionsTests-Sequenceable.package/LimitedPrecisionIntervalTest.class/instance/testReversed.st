tests
testReversed
	self assert: (-16.3 to: 20.1 by: 1.3) reversed size
		equals: (-16.3 to: 20.1 by: 1.3) size
		description: 'reversed should preserve the size of a collection'.
	self assert: (0.1 to: 0.9 by: 0.1) reversed asArray
		equals: (0.1 to: 0.9 by: 0.1) asArray reversed
		description: 'reversed should preserve the elements of a collection'.