tests - positioning
testSetPosition
	| stream |

	stream := self emptyStream.
	self should: [stream position: -2] raise: Error.
	stream position: 0 "should not fail".

	stream := self streamOnArray.
	self should: [stream position: -1] raise: Error.
	"We can iterate over valid positions in the stream."
	stream position: 0.
	stream position: 1.
	stream position: 2.

	"According to ANSI Smalltalk Standard 1.9 Draft, the following should be tested too:
	self should: [stream position: 3] raise: Error.
	
	However, I don't see the point of raising an error when positioning at the end.
	
	I prefer testing the absence of error:
	"
	stream position: 3.
	self should: [stream position: 4] raise: Error.