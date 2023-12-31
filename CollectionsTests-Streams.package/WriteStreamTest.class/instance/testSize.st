tests - accessing
testSize
	"self debug: #testSize"

	| string streamEmpty streamFull |
	string := 'a string'.
	streamEmpty := WriteStream on: string copy.
	streamFull := WriteStream with: string copy.
	
	self assert: streamEmpty size = 0.
	self assert: streamFull size = 8.
	
	streamEmpty nextPut: $..
	streamFull nextPut: $..
	self assert: streamEmpty size = 1.
	self assert: streamFull size = (string size + 1).