tests - character writing
testTabs
	"self debug: #testTabs"
	
	| stream |
	stream := WriteStream on: 'stream' copy.
	stream tab: 3.
	self assert: (stream contents last: 3) = (String with: Character tab with: Character tab with: Character tab)