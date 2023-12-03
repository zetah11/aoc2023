tests - truncation and round off
testRoundUpTo

	self
		assert: #( -40 -20 -20 -20 0 0 0 20 20 20 40 40 40 )
		equals: (#( -40 -30 -29 -20 -10 -9 0 9 10 20 29 30 40 )
			collect: [:num | num roundUpTo: 20]).