testing
testCharacterMatching
	| parser |
	parser := Parsing characterMatching: [true].
	self
		assert: (parser parse: 'h') equals: $h;
		assert: (parser parse: 'e') equals: $e;
		assert: (parser parse: 'å') equals: $å;
		should: [parser parse: 'hello'] raise: ParseError;
		should: [parser parse: ''] raise: ParseError.
	
	parser := Parsing characterMatching: [:c | c isDigit].
	self
		assert: (parser parse: '5') equals: $5;
		should: [parser parse: 'h'] raise: ParseError;
		should: [parser parse: ''] raise: ParseError;
		should: [parser parse: '12'] raise: ParseError;
		should: [parser parse: 'hello'] raise: ParseError.