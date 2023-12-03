instance creation
fromIEEE64Bit: anInteger
	"Convert the given 64 bit word (which is supposed to be a positive 64-bit value) from
	  a 64 bit IEEE floating point representation into an actual Squeak float object (being
	  64 bits wide). Should only be used for conversion in FloatArrays or likewise objects."
	| value |
	value := self basicNew: 2.
	value
		basicAt: 1 put: (anInteger bitShift: -32);
		basicAt: 2 put: (anInteger bitAnd: 16rFFFFFFFF).
	^value * 1.0 "reduce to SmallFloat64 if possible"