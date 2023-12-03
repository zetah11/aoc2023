tests - character writing
testCrTab
	"self debug: #testCrTab"
	
	| stream |
	stream := WriteStream on: 'stream' copy.
	stream crtab.
	self assert: (stream contents last: 2) = (String with: Character cr with: Character tab)