tests - enumerating
testSelectThenCollect

	| stream |
	stream := (self streamOn: #(1 2 3 4))
		select: [:num | num even]
		thenCollect: [:num | 2 * num].
	self assert: (stream next: 2) asArray = #(4 8).