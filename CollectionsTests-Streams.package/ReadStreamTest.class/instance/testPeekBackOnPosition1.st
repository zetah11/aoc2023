tests - back
testPeekBackOnPosition1
	"Ensure that #peekBack works from position 1,
	giving us the first element in the stream"
	| stream |
	stream := ReadStream on: 'abcde'.
	stream skip: 1.
	self assert: $a equals: stream peekBack