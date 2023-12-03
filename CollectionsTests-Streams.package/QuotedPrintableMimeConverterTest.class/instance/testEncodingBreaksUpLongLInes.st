tests
testEncodingBreaksUpLongLInes

	| encodedString |
	encodedString := QuotedPrintableMimeConverter mimeEncode: 'This is a very long message which has more than 76 characters due to this additional part of the sentence.'.
	self assert: 'This is a very long message which has more than 76 characters due to this=', String crlf , ' additional part of the sentence.' equals: encodedString.
	