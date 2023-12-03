tests
testUpToEnd
	
	| stream |
	stream := RWBinaryOrTextStream on: String new.
	stream nextPutAll: 'world'; reset.
	self assert: stream upToEnd = 'world'.
	self assert: stream atEnd.

	self assert: stream upToEnd = ''.
	self assert: stream atEnd.
	
	stream reset.
	stream upTo: $r.
	self assert: stream upToEnd = 'ld'.
	self assert: stream atEnd.
	
	stream := RWBinaryOrTextStream on: String new.
	stream binary.
	stream nextPutAll: 'world'; reset.
	self assert: stream upToEnd = 'world' asByteArray.
	self assert: stream atEnd.

	self assert: stream upToEnd = ByteArray new.
	self assert: stream atEnd.
	
	stream reset.
	stream upTo: $r asciiValue.
	self assert: stream upToEnd = 'ld' asByteArray.
	self assert: stream atEnd