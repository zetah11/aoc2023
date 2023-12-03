tests - instance creation
testStreamAlwaysUseGivenCollection
	"self debug: #testStreamUseGivenCollection"
	
	"When a stream is created on a collection, it tries to keep using that collection instead of copying,
	even in the case of mutation of the original collection."
	
	"To implement this WriteStream>>#nextPut: might want to use becomeForward for replacing the original
	string with the new widestring object. Another option might be to throw an exception --pre"
	
	|string stream|
	
	string := String withAll: 'xy'.
	stream := WriteStream on: string.
	
	stream nextPut: $a.
	stream nextPut: (Character codePoint: 269). "wide."
	self assert: string = (String with: $a with: (Character codePoint: 269)).