tests - testing
testAt

	| col |
	col := #(2 3 4).
	self assert: 3 equals: (col at: 2).
	self shouldRaiseError: [col at: 4].