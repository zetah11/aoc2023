tests
testTake

	| generator |
	generator := self numbersBetween: 1 and: 3.
	self assert: #(1 2) equals: (generator take: 2) asArray.
	self assert: #(3) equals: (generator take: 2) asArray