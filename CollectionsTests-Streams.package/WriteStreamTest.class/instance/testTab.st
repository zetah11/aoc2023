tests - character writing
testTab
	"self debug: #testTab"
	
	| stream |
	stream := WriteStream on: 'stream' copy.
	stream tab.
	self assert: (stream contents last) = Character tab