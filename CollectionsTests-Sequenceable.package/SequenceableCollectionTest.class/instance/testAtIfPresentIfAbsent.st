tests - testing
testAtIfPresentIfAbsent

	| col |
	col := #(2 3 4).
	self assert: -3 equals: (col at: 2 ifPresent: #negated ifAbsent: [self fail]).
	self assert: #absent equals: (col at: 4 ifPresent: [self fail] ifAbsent: [#absent]).