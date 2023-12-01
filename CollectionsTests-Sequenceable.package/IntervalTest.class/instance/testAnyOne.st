tests
testAnyOne
	self assert: ((2 to: 5) includes: (2 to: 5) anyOne).
	self should: [(2 to: 1) anyOne] raise: Error description: 'This interval is empty'