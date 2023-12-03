tests
testBase32Encoded

	| encoded |
	encoded := (self classToBeTested mimeEncode: message) contents.
	self assert: string base32Encoded equals: encoded.