testing
testAlternative
	| parser expected |
	parser := (Parsing literally: 'hello') / (Parsing literally: 'world') / (Parsing literally: '!').
	self
		assert: (parser parse: 'hello') equals: 'hello';
		assert: (parser parse: 'world') equals: 'world';
		assert: (parser parse: '!') equals: '!';
		should: [parser parse: 'hello world!'] raise: ParseError;
		should: [parser parse: 'something else'] raise: ParseError;
		should: [parser parse: ''] raise: ParseError.
	
	"Matching a predicate or matching another predicate is the same as matching the
	disjunction of the two predicates"
	parser := (Parsing characterMatching: [:c | c isDigit]) / (Parsing characterMatching: [:c | c isUppercase]).
	expected := (Parsing characterMatching: [:c | c isDigit or: [c isUppercase]]).
	Character allCharacters do: [:c |
		| input actualResult expectedResult |
		input := c asString.
		actualResult := [parser parse: input] on: ParseError do: [:ex | ex messageText].
		expectedResult := [expected parse: input] on: ParseError do: [:ex | ex messageText].
		self assert: actualResult equals: expectedResult].