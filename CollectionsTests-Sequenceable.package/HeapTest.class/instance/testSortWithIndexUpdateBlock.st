tests
testSortWithIndexUpdateBlock

	| random heap validateHeap |
	random := Random seed: 36rSqueak.
	heap := Heap sortBlock: [ :a :b | a first <= b first ].
	heap indexUpdateBlock: [ :element :newIndex | element at: 2 put: newIndex ].
	validateHeap := [ 
		heap isHeap
			and: [ heap isValidHeap
			and: [ heap do: [ :each | self assert: (heap at: each second) == each ] ] ] ].
	validateHeap value.
	1000 timesRepeat: [
		heap add: { random next. nil }.
		validateHeap value ].
	self deny: (heap asArray isSortedBy: heap sortBlock).
	heap sort.
	validateHeap value.
	self assert: (heap asArray isSortedBy: heap sortBlock)
