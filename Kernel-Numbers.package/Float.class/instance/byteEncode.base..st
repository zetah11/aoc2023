printing
byteEncode: aStream base: base
	"Handle sign, zero, and NaNs; all other values passed to absPrintOn:base:" 

	self isNaN ifTrue: [aStream print: 'NaN'. ^ self]. "check for NaN before sign"
	self > 0.0
		ifTrue: [self absByteEncode: aStream base: base]
		ifFalse:
			[self signBit = 1
				ifTrue: [aStream print: '-'].
			self = 0.0
				ifTrue: [aStream print: '0.0'. ^ self]
				ifFalse: [aStream writeNumber:self negated base: base]]