tests - character writing
testSpace
	"self debug: #testSpace"
	
	| stream |
	stream := WriteStream on: 'stream' copy.
	stream space.
	self assert: stream last = Character space.