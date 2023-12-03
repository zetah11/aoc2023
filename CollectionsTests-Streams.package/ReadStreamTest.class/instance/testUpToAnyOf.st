tests - accessing
testUpToAnyOf
	| stream |
	stream := 'abcde' readStream.
	self assert: (stream upToAnyOf: String crlf) = 'abcde'.
	self assert: stream atEnd.
	
	stream := 'abcde' readStream.
	self assert: (stream upToAnyOf: 'dc') = 'ab'.
	self assert: stream upToEnd = 'de'.
	
	stream := #( 1 2 nil true false 10 ) readStream.
	self assert: (stream upToAnyOf: #(100 1000)) = #( 1 2 nil true false 10 ).
	self assert: stream atEnd.
	
	stream := #( 1 2 nil true false 10 ) readStream.
	self assert: (stream upToAnyOf: #( true false )) = #( 1 2 nil ).
	self assert: stream upToEnd = #( false 10 ).