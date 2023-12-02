testing
testCollecting
	| parser |
	parser := (Parsing characterMatching: [:c | c isDigit]).
	parser := parser, parser manyTimes.
	parser := parser collecting: [:digits | ((digits first asString), (digits last as: String)) asNumber].
	self
		assert: (parser parse: '123') equals: 123;
		assert: (parser parse: '1') equals: 1;
		assert: (parser parse: '123456') equals: 123456;
		should: [parser parse: 'hello world'] raise: ParseError;
		should: [parser parse: ''] raise: ParseError;
		should: [parser parse: '123fourfivesix'] raise: ParseError.