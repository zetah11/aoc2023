tests
testNextPutAll
	
	| stream |
	stream := RWBinaryOrTextStream on: String new.
	stream nextPutAll: 'hello'.
	self assert: stream contents = 'hello'.

	stream := RWBinaryOrTextStream on: String new.
	stream nextPutAll: 'hello' asArray.
	self assert: stream contents = 'hello'.

	stream := RWBinaryOrTextStream on: String new.
	stream nextPutAll: 'hello' asByteArray.
	self assert: stream contents = 'hello'
