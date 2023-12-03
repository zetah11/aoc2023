tests
testAscii85Encoded
	
	self
		assert: (Ascii85Converter encode: self decoded) contents 
		equals: self decoded ascii85Encoded
		description: 'The convenience method should match the converters output'
	