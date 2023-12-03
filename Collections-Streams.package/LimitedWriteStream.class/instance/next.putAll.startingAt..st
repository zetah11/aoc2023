writing
next: anInteger putAll: aCollection startingAt: startIndex
	"Store the next anInteger elements from the given collection."

	| newEnd |
	anInteger > 0 ifFalse: [ ^aCollection ].
	
	newEnd := position + anInteger.
	newEnd > limit ifTrue: [
		super next: (limit - position max: 0) putAll: aCollection startingAt: startIndex.
		limitBlock value.
		^ aCollection].

	^ super next: anInteger putAll: aCollection startingAt: startIndex