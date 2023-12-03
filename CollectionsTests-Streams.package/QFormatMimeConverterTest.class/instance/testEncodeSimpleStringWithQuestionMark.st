tests
testEncodeSimpleStringWithQuestionMark

	| encodedString |
	encodedString := QEncodingMimeConverter mimeEncode: 'Is üt?'.
	self assert: 'Is =?UTF-8?Q?=C3=BCt=3F?=' equals: encodedString.
	