tests
testEncodeDecodeWithZ
	" PLRM page 131:
	As a special case, if all five digits are 0, they are represented by a single character z
	instead of by !!!!!.
	"
	| bits chars |
	bits := #[40 50 60 0 0 0 0 0 0 0 0 0 0 0 40 50 60].
	chars := '<~-o*mbzz!!"E&49~>'.
	self
		assert: chars
		equals: (Ascii85Converter encode: bits) contents		
		description: 'Encoding should squash five-tuples of 0 to z'.
	self
		assert: chars
		equals: (Ascii85Converter encode: bits asString) contents		
		description: 'Encoding should squash five-tuples of 0 to z'.
	self
		assert: bits
		equals: (Ascii85Converter decodeToBytes: chars) contents		
		description: 'Decoding should unsquash z to five-tuples of 0'.
	self
		assert: bits asString
		equals: (Ascii85Converter decodeToChars: chars) contents		
		description: 'Decoding should unsquash z to five-tuples of 0'.
