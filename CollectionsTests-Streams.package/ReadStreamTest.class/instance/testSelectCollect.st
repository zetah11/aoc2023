tests - enumerating
testSelectCollect

	| stream |
	stream := ((self streamOn: #(1 2 3 4))
		select: [:num | num even])
		collect: [:num | 2 * num].
	self assert: (stream next: 2) asArray = #(4 8).