testing
isDenormal
	"Return true if the receiver is a denormal."

	^ self exponent < self class emin and: [self isZero not]