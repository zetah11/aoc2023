tests - accessing
testNextSatisfy

	| stream |
	stream := self streamOn: #(1 2 3 4).
	self assert: 2 = (stream nextSatisfy: [:ea | ea even]).
	self assert: 4 = (stream nextSatisfy: [:ea | ea even]).
	self should: [stream nextSatisfy: [:ea | ea even]] raise: Error.