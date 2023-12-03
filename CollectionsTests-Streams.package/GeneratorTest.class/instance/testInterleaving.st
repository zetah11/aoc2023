generators
testInterleaving
	| stream expected actual |
	stream := Stream interleaving: { self fibonacciSequence. self numbersBetween: 1 and: 5 }.
	expected := { 1. 1. 1. 2. 2. 3. 3. 4. 5. 5. 8. 13. 21 }.
	actual := (stream take: expected size) asArray.
	self assert: expected equals: actual.