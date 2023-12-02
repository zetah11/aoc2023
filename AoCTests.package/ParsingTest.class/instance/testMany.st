testing
testMany
	| parser |
	parser := (Parsing literally: 'hello') / (Parsing literally: 'world').
	parser := parser manyTimes.
	self
		assert: (parser parse: '') equals: {};
		assert: (parser parse: 'hello') equals: { 'hello' };
		assert: (parser parse: 'world') equals: { 'world' };
		assert: (parser parse: 'helloworldhello') equals: { 'hello'. 'world'. 'hello' };
		should: [parser parse: 'something else'] raise: ParseError.