tests
testBase64Encoded

	| encoded |
	encoded := (self classToBeTested mimeEncode: message) contents.
	self assert: string base64Encoded equals: encoded.