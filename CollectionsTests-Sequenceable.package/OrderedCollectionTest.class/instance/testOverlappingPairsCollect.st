tests - enumerating
testOverlappingPairsCollect

	| o |
	o := #(5 4 3 2 1) asOrderedCollection.
	self
		assert: #(9 7 5 3) asOrderedCollection
		equals: (o overlappingPairsCollect: [ :a :b | a + b ])