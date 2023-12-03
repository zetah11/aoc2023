tests - positioning
testPositionFailsOutsideStreamBounds
	"self debug: #testPosition2"
	
	| stream |

	stream := WriteStream with: ''.
	self should: [stream position: 2] raise: Error.
	self should: [stream position: -2] raise: Error.

	stream := WriteStream with: 'a test'.
	self should: [stream position: 7] raise: Error.
	self should: [stream position: -2] raise: Error.