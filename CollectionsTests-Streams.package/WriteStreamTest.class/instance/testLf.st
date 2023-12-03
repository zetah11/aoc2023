tests - character writing
testLf
	"self debug: #testLf"
	
	| stream |
	stream := WriteStream on: 'stream' copy.
	stream lf.
	self assert: stream last = Character lf.