testing
testToken
	| parser |
	parser := (Parsing literally: 'hello') tokenized / (Parsing literally: 'world') tokenized.
	self
		assert: (parser parse: 'hello') equals: 'hello';
		assert: (parser parse: '   hello') equals: 'hello';
		assert: (parser parse: 'world') equals: 'world';
		assert: (parser parse: '\\  \world' withCRs) equals: 'world';
		should: [parser parse: ''] raise: ParseError;
		should: [parser parse: '    '] raise: ParseError;
		should: [parser parse: 'hello world'] raise: ParseError;
		should: [parser parse: '  hello world'] raise: ParseError;
		should: [parser parse: 'something else'] raise: ParseError;
		should: [parser parse: '   something else'] raise: ParseError.
	
	parser := (Parsing literally: 'world') tokenizedSkipping: (Parsing literally: 'hello ').
	self
		assert: (parser parse: 'hello world') equals: 'world';
		should: [parser parse: 'world'] raise: ParseError;
		should: [parser parse: 'hello '] raise: ParseError;
		should: [parser parse: ''] raise: ParseError;
		should: [parser parse: 'something else'] raise: ParseError;
		should: [parser parse: '  hello world'] raise: ParseError;
		should: [parser parse: '  world'] raise: ParseError.