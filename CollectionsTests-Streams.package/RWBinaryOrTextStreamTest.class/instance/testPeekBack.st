tests
testPeekBack
	
	| stream |
	stream := RWBinaryOrTextStream on: String new.
	stream nextPutAll: 'world'.
	self assert: $d equals: stream peekBack.
	stream binary.
	stream nextPutAll: #[98 105 110 97 114 121].
	self assert: 121 equals: stream peekBack.