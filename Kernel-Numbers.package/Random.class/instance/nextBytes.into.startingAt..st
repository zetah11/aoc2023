accessing
nextBytes: anInteger into: aBytesObject startingAt: startIndex
	"Fill aBytesObject, an object with indexable byte fields, with anInteger number of random bytes starting from startIndex. Assume that MTw is at least 8."

	| randomValue remainingBits byteIndex endIndex |
	randomValue := remainingBits := 0.
	byteIndex := startIndex.
	endIndex := startIndex + anInteger - 1.
	[ byteIndex <= endIndex ] whileTrue: [
		remainingBits >= 8
			ifTrue: [
				aBytesObject basicAt: byteIndex put: (randomValue bitAnd: 16rFF).
				randomValue := randomValue bitShift: -8.
				remainingBits := remainingBits - 8.
				byteIndex := byteIndex + 1 ]
			ifFalse: [
				remainingBits = 0
					ifTrue: [ randomValue := self nextValue ]
					ifFalse: [
						| newRandomValue |
						newRandomValue := self nextValue.
						aBytesObject basicAt: byteIndex put: (randomValue bitShift: 8 - remainingBits) + 
							(newRandomValue bitAnd: (1 bitShift: 8 - remainingBits) - 1).
						randomValue := newRandomValue bitShift: 0 - remainingBits.
						byteIndex := byteIndex + 1 ].
				remainingBits := MTw - remainingBits ] ]