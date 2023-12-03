tests - character writing
testCr
	"self debug: #testCr"
	
	| stream |
	stream := WriteStream on: 'stream' copy.
	stream cr.
	self assert: stream last = Character cr.