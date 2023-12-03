tests
testEncodeEqualSign

	| encodedString |
	encodedString := QuotedPrintableMimeConverter mimeEncode: 'e=mc2'.
	self assert: 'e=3Dmc2' equals: encodedString.
	