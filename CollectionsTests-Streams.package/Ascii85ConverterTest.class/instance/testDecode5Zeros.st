tests
testDecode5Zeros
	| bits chars |
	bits := #[0 0 0 0 0].
	chars := '<~z!!~>'.
	self
		assert: bits
		equals: (Ascii85Converter decodeToBytes: chars) contents		
		description: 'Decoding should decode five zeros with squashing and a bang'.
