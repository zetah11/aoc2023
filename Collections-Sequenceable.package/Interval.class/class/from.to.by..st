instance creation
from: startInteger to: stopInteger by: stepInteger 
	"Answer an instance of me, starting at startNumber, ending at 
	stopNumber, and with an interval increment of stepNumber."

	^((startInteger hasLimitedPrecision or: [stopInteger hasLimitedPrecision or: [stepInteger hasLimitedPrecision]])
		ifTrue: [self limitedPrecisionSpecies]
		ifFalse: [self]) basicNew
		setFrom: startInteger
		to: stopInteger
		by: stepInteger