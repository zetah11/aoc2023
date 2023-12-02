parsing
parse: aString
	| source |
	source := ParsingSource withContents: aString.
	(self eat: source)
		ifOk: [:result :remainder |
			(remainder isEmpty)
				ifTrue: [^ result]
				ifFalse: [ParseError signal: 'parsing failed to consume all input']]
		ifFailed: [:error | ParseError signal: error]