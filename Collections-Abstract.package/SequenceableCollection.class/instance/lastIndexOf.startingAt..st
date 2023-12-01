accessing
lastIndexOf: anElement startingAt: lastIndex
	"Answer the index of the last occurence of anElement within the  
	receiver. If the receiver does not contain anElement, answer 0."

	lastIndex to: 1 by: -1 do: [ :index |
		(self at: index) = anElement ifTrue: [ ^index ] ].
	^0