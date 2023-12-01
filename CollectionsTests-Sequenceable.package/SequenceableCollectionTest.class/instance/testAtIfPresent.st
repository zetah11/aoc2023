tests - testing
testAtIfPresent

	| col |
	col := #(2 3 4).
	self assert: -3 equals: (col at: 2 ifPresent: #negated).
	self assert: nil equals: (col at: 4 ifPresent: [self fail]).