tests
testEncodeSimpleString

	| encodedString |
	encodedString := QuotedPrintableMimeConverter mimeEncode: message.
	self assert: 'H=FC Th=F6r=E4!' equals: encodedString.
	