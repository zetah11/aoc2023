testing
beginsWith: sequence
	"Answer if the receiver starts with the argument collection."
	
	| sequenceSize |
	sequenceSize := sequence size.
	self size < sequenceSize ifTrue: [ ^false ].
	1 to: sequenceSize do: [ :index |
		(sequence at: index) = (self at: index) ifFalse: [ ^false ] ].
	^true