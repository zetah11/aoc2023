tests
testWithoutDuplicates

	| in out |
	in := Bag new
		addAll: #(1 3 5 7 9 1 3 5 7 9 2 4 6 8 10 2 4 6 8 10);
		yourself.
	out := Bag new
		addAll: #(1 3 5 7 9 2 4 6 8 10);
		yourself.
	self assert: out equals: in withoutDuplicates.