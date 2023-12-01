tests - copying
testWithoutDuplicates

	self assert: #(1 3 5 7 9 2 4 6 8 10)
		equals: ((1 to: 10 by: 2), (1 to: 10 by: 2), (2 to: 11 by: 2), (2 to: 11 by: 2)) withoutDuplicates