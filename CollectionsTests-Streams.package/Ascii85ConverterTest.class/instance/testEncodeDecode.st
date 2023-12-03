tests
testEncodeDecode

	encoded := (Ascii85Converter encode: self decoded) contents.
	self 
		assert: self encoded
		equals: encoded
		description: 'A simple text should be encodable.'.
	self
		assert: self decoded
		equals: (Ascii85Converter decodeToChars: encoded) contents
		description: 'The encoded text decoded should match the original'.
