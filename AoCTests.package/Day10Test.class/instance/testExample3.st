testing
testExample3
	| d |
	d := Day10 withInput: '...........
.S-------7.
.|F-----7|.
.||.....||.
.||.....||.
.|L-7.F-J|.
.|..|.|..|.
.L--J.L--J.
...........'.
	self assert: d enclosed sum equals: 4.