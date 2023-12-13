testing
testAllPossibleHands
	| d |
	d := Day7 withInput: (String streamContents: [:aStream |
		(Day7Card labels as: String) combinations: 5 atATimeDo: [:each |
			aStream nextPutAll: each; nextPutAll: ' 1\' withCRs]]).

	d hands do: [:hand |
		self assert: (hand type between: 1 and: Day7Hand types size)].