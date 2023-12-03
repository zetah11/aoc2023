tests
testDecode4Zeros
	| bits chars |
	bits := #[0 0 0 0].
	chars := '<~z~>'.
	self
		assert: bits
		equals: (Ascii85Converter decodeToBytes: chars) contents		
		description: 'Decoding should decode four zeros with squashing'.
