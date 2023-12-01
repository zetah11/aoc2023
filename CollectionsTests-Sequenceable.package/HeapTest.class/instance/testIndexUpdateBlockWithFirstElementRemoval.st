tests
testIndexUpdateBlockWithFirstElementRemoval

	| random heap validateHeap |
	random := Random seed: 36rSqueak.
	heap := Heap sortBlock: [ :a :b | a first <= b first ].
	heap indexUpdateBlock: [ :element :newIndex | element at: 2 put: newIndex ].
	validateHeap := [ 
		heap isHeap
			and: [ heap isValidHeap
			and: [ heap do: [ :each | self assert: (heap at: each second) == each ] ] ] ].
	validateHeap value.
	1 to: 10 do: [ :i |
		heap add: { i. nil }.
		validateHeap value ].
	10 timesRepeat: [
		heap removeAt: 1.
		validateHeap value ]