testing
testExample1
	| d |
	d := Day6 withInput: 'Time:      7  15   30\Distance:  9  40  200' withCRs.
	self assert: d marginOfError equals: 288.