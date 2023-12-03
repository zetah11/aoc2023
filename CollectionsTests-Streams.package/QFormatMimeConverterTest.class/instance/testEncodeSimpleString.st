tests
testEncodeSimpleString

	| encodedString |
	encodedString := QEncodingMimeConverter mimeEncode: message.
	self assert: '=?UTF-8?Q?H=C3=BC?= =?UTF-8?Q?Th=C3=B6r=C3=A4!?=' equals: encodedString.
	