tests - character writing
testCrLf
	"self debug: #testCrLf"
	
	| stream |
	stream := WriteStream on: 'stream' copy.
	stream crlf.
	self assert: (stream contents last: 2) = String crlf.