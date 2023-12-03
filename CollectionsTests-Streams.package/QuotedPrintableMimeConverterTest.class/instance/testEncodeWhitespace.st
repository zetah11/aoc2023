tests
testEncodeWhitespace

	| encodedString sourceString targetString |
	sourceString := 'a string	with all the whitespace'.
	encodedString := QuotedPrintableMimeConverter mimeEncode: sourceString.
	
	targetString := 'a string	with all the whitespace'.
	self assert: targetString equals: encodedString.