testing
testInterspersedWith
	| parser |
	parser := (Parsing literally: 'hello') interspersedWith: (Parsing literally: ' ').
	self
		assert: (parser parse: 'hello') equals: { 'hello' };
		assert: (parser parse: 'hello hello hello') equals: { 'hello'. 'hello'. 'hello' };
		should: [parser parse: 'hello  hello'] raise: ParseError;
		should: [parser parse: ''] raise: ParseError;
		should: [parser parse: 'hello world'] raise: ParseError;
		should: [parser parse: 'something else'] raise: ParseError;
		should: [parser parse: ' '] raise: ParseError.
	