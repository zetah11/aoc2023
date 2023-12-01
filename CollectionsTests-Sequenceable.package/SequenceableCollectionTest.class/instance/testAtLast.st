tests - testing
testAtLast

	| col |
	col := #(2 3 4).
	
	self assert: 4 equals: (col atLast: 1).
	self assert: 3 equals: (col atLast: 2).
	self assert: 2 equals: (col atLast: 3).
	
	self shouldRaiseError: [col atLast: 0].
	self shouldRaiseError: [col atLast: 4].