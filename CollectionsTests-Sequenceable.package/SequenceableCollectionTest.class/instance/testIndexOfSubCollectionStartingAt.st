tests - accessing
testIndexOfSubCollectionStartingAt
	| c |
	c := 'abcdefg' asArray. "NB. As of Collections-topa.733, String already permitted out-of-bounds start indexes, so we are careful here to select the SequenceableCollection implementation by using asArray."
	self assert: (c indexOfSubCollection: 'cde' startingAt: 400) = 0.
	self assert: (c indexOfSubCollection: 'cde' startingAt: 4) = 0.
	self assert: (c indexOfSubCollection: 'cde' startingAt: 1) = 3.
	self assert: (c indexOfSubCollection: 'cde' startingAt: 0) = 3.
	self assert: (c indexOfSubCollection: 'cde' startingAt: -1) = 3.

	self assert: (c indexOfSubCollection: 'abcdefg' startingAt: 400) = 0.
	self assert: (c indexOfSubCollection: 'abcdefg' startingAt: 4) = 0.
	self assert: (c indexOfSubCollection: 'abcdefg' startingAt: 1) = 1.
	self assert: (c indexOfSubCollection: 'abcdefg' startingAt: 0) = 1.
	self assert: (c indexOfSubCollection: 'abcdefg' startingAt: -1) = 1.

	self assert: (c indexOfSubCollection: 'abcdefghij' startingAt: 400) = 0.
	self assert: (c indexOfSubCollection: 'abcdefghij' startingAt: 4) = 0.
	self assert: (c indexOfSubCollection: 'abcdefghij' startingAt: 1) = 0.
	self assert: (c indexOfSubCollection: 'abcdefghij' startingAt: 0) = 0.
	self assert: (c indexOfSubCollection: 'abcdefghij' startingAt: -1) = 0.
