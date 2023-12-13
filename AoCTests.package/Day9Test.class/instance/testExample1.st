as yet unclassified
testExample1
	| d |
	d := Day9 withInput: '0 3 6 9 12 15\1 3 6 10 15 21\10 13 16 21 30 45' withCRs.
	self
		assert: d predictions sum equals: 114;
		assert: d predictionsBefore sum equals: 2.