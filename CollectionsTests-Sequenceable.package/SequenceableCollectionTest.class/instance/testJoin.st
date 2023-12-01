tests - converting
testJoin

	self assert: #(a b c d e) join = 'abcde'.
	self assert: (#(a b c) joinSeparatedBy: '|') = 'a|b|c'.