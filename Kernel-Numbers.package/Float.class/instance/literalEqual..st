comparing
literalEqual: aFloat
	"Two float literals can be replaced by a single one only if their representation have the same bits.
	For example, zero and negativeZero are equal, but not literally equal."

	^self class == aFloat class and: [(self at: 1) = (aFloat at: 1) and: [(self at: 2) = (aFloat at: 2)]]