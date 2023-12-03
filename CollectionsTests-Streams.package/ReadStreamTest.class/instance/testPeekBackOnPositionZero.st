tests - back
testPeekBackOnPositionZero
	"Ensure that we *cannot* peekBack on a stream
	that is currently at the start (zero) position"
	| stream |
	stream := ReadStream on: 'abcd'.
	self 
		should: [ stream peekBack ]
		raise: Error