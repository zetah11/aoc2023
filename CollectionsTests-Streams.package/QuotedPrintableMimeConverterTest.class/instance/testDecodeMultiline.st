tests
testDecodeMultiline

	| encodedString decodedString |
	encodedString := 'A multiline =
encoded text which isn''t'.
	decodedString := QuotedPrintableMimeConverter mimeDecode: encodedString as: WideString.
	self assert: 'A multiline encoded text which isn''t' equals: decodedString.
	