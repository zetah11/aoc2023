tests
testWithoutDuplicates

	| in out |
	in := Set new
		addAll: #(1 3 5 7 9 1 3 5 7 9 2 4 6 8 10 2 4 6 8 10);
		yourself.
	out := Set new
		addAll: #(1 3 5 7 9 2 4 6 8 10);
		yourself.
		
	self assert: out equals: in withoutDuplicates.
	self assert: in equals: in withoutDuplicates.
	self assert: in equals: in copyWithoutDuplicates.
		
	self assert: in identical: in withoutDuplicates.	
	self deny: in identical: in copyWithoutDuplicates.	