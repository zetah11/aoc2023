testing
isPowerOfTwo
	"Return true if the receiver is an integral power of two."

	^numerator = 1 and: [ denominator isPowerOfTwo ]