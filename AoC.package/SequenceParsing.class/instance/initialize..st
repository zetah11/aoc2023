initialize-release
initialize: aCollection
	aCollection isSequenceable ifFalse: [Error signal: 'cannot sequence unordered collection'].
	parsers := aCollection.