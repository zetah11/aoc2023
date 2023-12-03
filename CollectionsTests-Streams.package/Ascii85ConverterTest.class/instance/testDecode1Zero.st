tests
testDecode1Zero
	| bits chars |
	bits := #[0].
	chars := '<~!!~>'.
	self
		assert: bits
		equals: (Ascii85Converter decodeToBytes: chars) contents		
		description: 'Decoding should decode three zeros without squashing'.
