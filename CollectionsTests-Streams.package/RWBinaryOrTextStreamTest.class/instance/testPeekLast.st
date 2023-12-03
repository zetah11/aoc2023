tests
testPeekLast
	
	| stream |
	stream := RWBinaryOrTextStream on: String new.
	stream nextPutAll: 'world'.
	self assert: $d equals: stream peekLast.
	stream binary.
	stream nextPutAll: #[98 105 110 97 114 121].
	self assert: 121 equals: stream peekLast.
	stream reset.
	self assert: nil equals: stream peekLast.