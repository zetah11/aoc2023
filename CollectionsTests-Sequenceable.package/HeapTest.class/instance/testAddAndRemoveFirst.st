tests
testAddAndRemoveFirst

	| random heap validateHeap |
	random := Random seed: 36rSqueak.
	heap := Heap sortBlock: [ :a :b | a first >= b first ].
	heap indexUpdateBlock: [ :element :newIndex | element at: 2 put: newIndex ].
	validateHeap := [ heap isValidHeap and: [
		heap do: [ :each | self assert: (heap at: each second) == each ] ] ].
	validateHeap value.
	self assert: 0 equals: heap size.
	self assert: heap isEmpty.
	1 to: 100 do: [ :index |
		heap add: { random next. nil }.
		self assert: index equals: heap size.
		validateHeap value ].
	1000 timesRepeat: [
		| first |
		first := heap removeFirst.
		heap do: [ :each | self assert: (heap sortBlock value: first value: each) ].
		heap add: { random next. nil }.
		validateHeap value ]