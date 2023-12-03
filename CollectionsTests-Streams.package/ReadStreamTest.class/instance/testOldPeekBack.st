tests - back
testOldPeekBack
	"Test the ability to peek backwards on the stream"
	| stream |
	stream := ReadStream on: 'abcd'.
	stream skip: 2.
	self assert: $a equals: stream oldPeekBack