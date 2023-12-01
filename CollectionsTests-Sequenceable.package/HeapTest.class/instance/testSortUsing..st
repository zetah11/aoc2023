tests
testSortUsing: aHeap

	| random |
	random := Random seed: 36rSqueak.
	self assert: aHeap isValidHeap.
	1000 timesRepeat: [
		aHeap add: random next.
		self assert: aHeap isValidHeap ].
	self deny: (aHeap asArray isSortedBy: aHeap sortBlock).
	aHeap sort.
	self assert: aHeap isValidHeap.
	self assert: (aHeap asArray isSortedBy: aHeap sortBlock)
