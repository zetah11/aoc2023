tests
testUpTo

	| stream |
	stream := RWBinaryOrTextStream on: String new.
	stream nextPutAll: 'world'; reset.
	self assert: (stream upTo: $r) = 'wo'.
	self assert: stream next = $l.
	
	stream := RWBinaryOrTextStream on: String new.
	stream nextPutAll: 'hello'; reset.
	self assert: (stream upTo: $x) = 'hello'.
	self assert: stream atEnd.
	
	stream := RWBinaryOrTextStream on: String new.
	stream binary.
	stream nextPutAll: 'world'; reset.
	self assert: (stream upTo: $r asciiValue) = 'wo' asByteArray.
	self assert: stream next = $l asciiValue.
	
	stream := RWBinaryOrTextStream on: String new.
	stream binary.
	stream nextPutAll: 'hello'; reset.
	self assert: (stream upTo: $x asciiValue) = 'hello' asByteArray.
	self assert: stream atEnd.
