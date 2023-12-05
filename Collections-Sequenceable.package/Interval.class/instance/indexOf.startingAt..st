accessing
indexOf: anElement startingAt: startIndex
	"startIndex is an positive integer, the collection index where the search is started."

	| index |
	index := (anElement - start / step) rounded + 1.
	(index between: startIndex and: self size) ifFalse: [ ^0 ].
	(self at: index) = anElement ifFalse: [ ^0 ].
	^index