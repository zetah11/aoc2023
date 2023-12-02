testing
testSequence
	| parser |
	parser := (Parsing literally: 'hello '), (Parsing literally: 'world').
	self
		assert: (parser parse: 'hello world') equals: { 'hello '. 'world' };
		should: [parser parse: 'hello '] raise: ParseError;
		should: [parser parse: 'world'] raise: ParseError;
		should: [parser parse: 'something'] raise: ParseError;
		should: [parser parse: ''] raise: ParseError.