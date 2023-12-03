tests
testMimeEncodeDecode

	| encoded |
	encoded := self classToBeTested mimeEncode: message.
	self assert: 'JBUSAVDIMVZGKII=' equals: encoded contents.
	self assert: message contents equals: (self classToBeTested mimeDecodeToChars: encoded) contents.
	
	"Encoding should start from the beginning of the stream."
	message reset.
	message skip: 2.
	encoded := self classToBeTested mimeEncode: message.
	self assert: 'JBUSAVDIMVZGKII=' equals: encoded contents.
	
	"Encoding should start from the current position of the stream."
	message reset.
	message skip: 2.
	encoded := self classToBeTested mimeEncodeContinue: message.
	self assert: 'EBKGQZLSMUQQ====' equals: encoded contents.