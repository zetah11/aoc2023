testing
testNumber
	| parser |
	parser := Parsing number.
	self
		assert: (parser parse: '1234') equals: 1234;
		assert: (parser parse: '0') equals: 0;
		should: [parser parse: ''] raise: ParseError;
		should: [parser parse: '  1234'] raise: ParseError;
		should: [parser parse: '1234  '] raise: ParseError;
		should: [parser parse: 'hello'] raise: ParseError.