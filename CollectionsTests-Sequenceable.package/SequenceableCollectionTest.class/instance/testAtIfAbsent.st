tests - testing
testAtIfAbsent

	| col |
	col := #(2 3 4).
	self assert: 3 equals: (col at: 2 ifAbsent: [self fail]).
	self assert: #absent equals: (col at: 4 ifAbsent: [#absent]).