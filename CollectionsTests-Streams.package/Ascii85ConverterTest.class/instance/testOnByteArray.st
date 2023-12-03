tests
testOnByteArray

	self assert: self encoded equals: self decoded asByteArray ascii85Encoded.