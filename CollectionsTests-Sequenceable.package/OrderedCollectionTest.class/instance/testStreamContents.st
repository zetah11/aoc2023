tests - streaming
testStreamContents
	| oc |
	self shouldnt: [oc := OrderedCollection streamContents: [:stream | 1 to: 3 do: [:i | stream nextPut: i]]]
		raise: Error
		description: 'it should be possible to stream over an OrderedCollection'.
	self assert: oc class = OrderedCollection.
	self assert: oc = (1 to: 3) asOrderedCollection.