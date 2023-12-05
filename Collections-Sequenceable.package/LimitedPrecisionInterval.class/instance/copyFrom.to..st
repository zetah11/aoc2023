copying
copyFrom: startIndex to: stopIndex
	startIndex = 1 ifTrue: [^super copyFrom: startIndex to: stopIndex].
	stopIndex < startIndex ifTrue: [^self copyEmpty].
	^Array new: stopIndex - startIndex + 1 streamContents: [:stream |
		startIndex to: stopIndex do: [:i | stream nextPut: (self at: i)]]