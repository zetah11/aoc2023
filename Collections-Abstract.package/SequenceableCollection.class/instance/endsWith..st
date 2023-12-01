testing
endsWith: sequence
	"Answer if the receiver ends with the argument collection."
	
	| sequenceSize offset |
	sequenceSize := sequence size.
	(offset := self size - sequenceSize) < 0 ifTrue: [ ^false ].
	1 to: sequenceSize do: [ :index |
		(sequence at: index) = (self at: index + offset) ifFalse: [ ^false ] ].
	^true