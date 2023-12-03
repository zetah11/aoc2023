tests
testEncodeDecodeMultiLine
	" PLRM page 131:
	It inserts a newline in the encoded output at least once every 80 characters,
	thereby limiting the lengths of lines.
	"
	| aHundred encodedLines |
	aHundred := String new: 100 withAll: $a.
	encodedLines := (Ascii85Converter encode: aHundred) contents lines.
	self
		assert: (encodedLines collect: [:ea | ea size]) max <= 80
		description: 'Encoded long lines should break at max 80 characters'.
