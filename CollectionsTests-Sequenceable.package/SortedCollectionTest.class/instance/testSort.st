tests - sorting
testSort

	| s |
	s := SortedCollection withAll: #(3 2 1).
	self assert: s asArray = #(1 2 3).
	s sort: #>=. "This should change the sortBlock too"
	self assert: s asArray = #(3 2 1).
	s add: 4.
	self assert: s asArray = #(4 3 2 1).
	s := SortedCollection new 
		sortBlock: #>=;
		addAll: #(1 2 3);
		yourself.
	self assert: s asArray = #(3 2 1).
	s sort.
	self assert: s asArray = #(1 2 3).
	s add: 0.
	self assert: s asArray = #(0 1 2 3)