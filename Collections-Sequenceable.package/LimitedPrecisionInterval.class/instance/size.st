accessing
size
	"Answer how many elements the receiver contains."

	| candidateSize |
	candidateSize := (stop - start / step max: 0) rounded.
	step > 0
		ifTrue: [candidateSize * step + start <= stop ifTrue: [^candidateSize + 1]]
		ifFalse: [candidateSize * step + start >= stop ifTrue: [^candidateSize + 1]].
	^candidateSize