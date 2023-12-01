tests - converting
testSplitAndJoin

	self assert: (('a|b|c' splitBy: '|') joinSeparatedBy: '|') = 'a|b|c'.