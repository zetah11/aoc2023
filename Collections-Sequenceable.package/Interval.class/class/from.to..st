instance creation
from: startInteger to: stopInteger 
	"Answer an instance of me, starting at startNumber, ending at 
	stopNumber, and with an interval increment of 1."

	^((startInteger hasLimitedPrecision or: [stopInteger hasLimitedPrecision])
		ifTrue: [self limitedPrecisionSpecies]
		ifFalse: [self]) basicNew
		setFrom: startInteger
		to: stopInteger
		by: 1