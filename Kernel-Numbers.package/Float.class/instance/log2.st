mathematical functions
log2
	"Answer the base 2 logarithm of the receiver.
	Arrange to answer exact result in case of exact power of 2."

	|  s  |
	 s := self significand.
	^s > 1.3333333333333333
		ifTrue: [(0.5 * s) ln / Ln2 + (1 + self exponent)]
		ifFalse: [s ln / Ln2 + self exponent]