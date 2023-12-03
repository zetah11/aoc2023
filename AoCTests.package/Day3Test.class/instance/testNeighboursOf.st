testing
testNeighboursOf
	| d expected |
	d := Day3 withInput: '....\....\....\....' withCRs.
	expected := Set newFrom: { 1@1. 1@2. 1@3. 2@1. 2@2. 2@3. 3@1. 3@2. 3@3 }.
	self assert: (d neighboursOf: 2@2) equals: expected.