tests - testing
testAtLastIfAbsent

	| col |
	col := #(2 3 4).
	
	self assert: 4 equals: (col atLast: 1 ifAbsent: [self fail]).
	self assert: 3 equals: (col atLast: 2 ifAbsent: [self fail]).
	self assert: 2 equals: (col atLast: 3 ifAbsent: [self fail]).
	
	self assert: #absent equals: (col atLast: 0 ifAbsent: [#absent]).
	self assert: #absent equals: (col atLast: 4 ifAbsent: [#absent]).