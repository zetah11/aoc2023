tests
testEncodeMultilineString

	| encodedString sourceString targetString |
	sourceString := 'a multi-
line string'.
	encodedString := QuotedPrintableMimeConverter mimeEncode: sourceString.
	
	targetString := 'a multi-' , String crlf , 'line string'.
	self assert: targetString equals: encodedString.