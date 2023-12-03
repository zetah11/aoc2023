accessing
contentsFrom: startIndex to: stopIndex
	"Answer with a copy of my collection from startIndex to stopIndex."

	^collection copyFrom: (initialPositionOrNil ifNil: [1]) + startIndex - 1 to: ((initialPositionOrNil ifNil: [1]) + stopIndex - 1 min: readLimit)