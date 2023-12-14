testing
testExample2
	| d |
	d := Day10 withInput: '..F7.\.FJ|.\SJ.L7\|F--J\LJ...' withCRs.
	self assert: d farthestDistance equals: 8.