tests - testing
testAtLastIfPresent

	| col |
	col := #(2 3 4).
	
	self assert: -4 equals: (col atLast: 1 ifPresent: #negated).
	self assert: -3 equals: (col atLast: 2 ifPresent: #negated).
	self assert: -2 equals: (col atLast: 3 ifPresent: #negated).
	
	self assert: nil equals: (col atLast: 0 ifPresent: [self fail]).
	self assert: nil equals: (col atLast: 4 ifPresent: [self fail]).