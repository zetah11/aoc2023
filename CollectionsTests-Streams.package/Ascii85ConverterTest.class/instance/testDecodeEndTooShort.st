tests
testDecodeEndTooShort
	| chars |
	chars := '<~z!~>'.
	self
		should: [Ascii85Converter decodeToBytes: chars]
		raise: Error
		description: 'Decoding too short end tuple should raise an error'.