testing
isAnExactFloat
	"Answer true if this Integer can be converted exactly to a Float"
	| h |
	(h := self highBitOfMagnitude) <= Float precision
		ifTrue: [^ true].
	^ h - 1 <= Float emax
		and: [(self anyBitOfMagnitudeFrom: 1 to: h - Float precision) not]