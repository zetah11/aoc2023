accessing
indicesOfSubCollection: subCollection startingAt: initialIndex
	"Answer an Array (possibly empty) of all the indices of subCollection in the receiver starting at
	 initialIndex. N.B. This does not (yet) use Boyer-Moore to skip over unnecessary alignments."

	^Array streamContents:
		[:s| | index |
		 index := initialIndex - 1.
		 [(index := self indexOfSubCollection: subCollection startingAt: index + 1) = 0] whileFalse:
			[s nextPut: index]]