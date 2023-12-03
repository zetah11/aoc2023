tests
testStreamContentsPutSymbolOnLimitedStringStream

	| stream result |
	stream := LimitedWriteStream on: (String new: 5).
	stream setLimit: 5 limitBlock: [result := stream contents].
	#abcdef printOn: stream.
	self 
		assert: '#abcd'
		equals: stream contents.
	