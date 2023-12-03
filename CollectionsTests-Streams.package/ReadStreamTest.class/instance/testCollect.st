tests - enumerating
testCollect
	
	| stream |
	stream := (self streamOn: #(1 2 3 4)) collect: [:num | 2 * num].
	self
		assert: (stream next: 4) asArray = #(2 4 6 8);
		assert: stream atEnd;
		assert: stream next isNil.