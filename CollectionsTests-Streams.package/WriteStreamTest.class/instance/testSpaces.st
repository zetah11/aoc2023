tests - character writing
testSpaces
	"self debug: #testSpaces"
	
	| stream |
	stream := WriteStream on: 'stream' copy.
	stream space: 3.
	self assert: (stream contents last: 3) = '   '