testing
isEmpty
	"For non-weak collections, we can use the tally to speed up the empty check. For weak collections, we must use the traditional way because the tally is unreliable. Also see #size vs. #slowSize."

	tally = 0 ifTrue: [ ^true ].
	^array class isWeak and: [ super isEmpty ]