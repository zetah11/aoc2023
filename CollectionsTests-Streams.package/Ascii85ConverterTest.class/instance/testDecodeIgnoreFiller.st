tests
testDecodeIgnoreFiller

	self
		assert: self decoded
		equals: self hackedEncoded ascii85Decoded
		description: 'Decoding should ignore linebreaks and spaces'.
