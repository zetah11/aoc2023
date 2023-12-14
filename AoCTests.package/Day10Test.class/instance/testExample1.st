testing
testExample1
	| d |
	d := Day10 withInput: '.....\.S-7.\.|.|.\.L-J.\.....' withCRs.
	self assert: d farthestDistance equals: 4.