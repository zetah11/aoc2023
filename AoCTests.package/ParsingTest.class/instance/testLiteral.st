testing
testLiteral
	| parser |
	parser := Parsing literally: 'hello'.
	self
		assert: (parser parse: 'hello') equals: 'hello';
		should: [parser parse: 'hello world'] raise: ParseError;
		should: [parser parse: 'something else'] raise: ParseError.