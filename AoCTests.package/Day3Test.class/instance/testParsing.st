testing
testParsing
	| d pointSet |
	d := Day3 withInput: '....\.12*.\....\....' withCRs.
	pointSet := Set newFrom: { 2@2. 3@2 }.
	self
		assert: (d symbols asArray) equals: { (4@2)->$* };
		assert: (d numbers asArray) equals: { pointSet -> 12 }.
	
	d := Day3 withInput: '1234'.
	pointSet := Set newFrom: { 1@1. 2@1. 3@1. 4@1 }.
	self
		assert: d symbols isEmpty;
		assert: (d numbers asArray) equals: { pointSet -> 1234 }.