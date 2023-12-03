tests - back
testPeekBack
	"Test the ability to peek backwards on the stream"
	| stream |
	stream := ReadStream on: 'abcd'.
	stream skip: 2.
	self assert: $b equals: stream peekBack