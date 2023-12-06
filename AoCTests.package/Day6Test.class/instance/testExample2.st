testing
testExample2
	| d |
	d := Day6 withInput: 'Time:      7  15   30\Distance:  9  40  200' withCRs.
	self assert: d waysToWinBig equals: 71503.