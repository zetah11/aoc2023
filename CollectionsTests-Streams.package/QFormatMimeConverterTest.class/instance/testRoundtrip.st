tests
testRoundtrip

	| result start |
	start := 'Is üt?'.
	result := ((QEncodingMimeConverter mimeEncode: start) as: String) decodeMimeHeader.
	self assert: start equals: result.
	