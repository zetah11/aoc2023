initialize-release
initialize: aCollection
	aCollection isSequenceable
		ifFalse: [Error signal: 'alternative parsing requires an ordered collection'].
	alternatives := aCollection.