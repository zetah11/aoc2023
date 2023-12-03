tests - accessing
testUpToAnyOfDo
	| stream found |
	found := false.
	stream := 'abcde' readStream.
	self assert: (stream upToAnyOf: String crlf do: [:char | found := true]) = 'abcde'.
	self assert: stream atEnd.
	self deny: found.
	
	found := Object new.
	stream := 'abcde' readStream.
	self assert: (stream upToAnyOf: 'dc' do: [:char | found := char]) = 'ab'.
	self assert: found = $c.
	self assert: stream upToEnd = 'de'.
	
	found := false.
	stream := #( 1 2 nil true false 10 ) readStream.
	self assert: (stream upToAnyOf: #(100 1000) do: [:anObject | found := true]) = #( 1 2 nil true false 10 ).
	self deny: found.
	self assert: stream atEnd.
	
	found := Object new.
	stream := #( 1 2 nil true false 10 ) readStream.
	self assert: (stream upToAnyOf: #( true false ) do: [:anObject | found := anObject]) = #( 1 2 nil ).
	self assert: found = true.
	self assert: stream upToEnd = #( false 10 ).