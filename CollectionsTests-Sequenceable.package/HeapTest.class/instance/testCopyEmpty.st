tests
testCopyEmpty

	| heap |
	heap := Heap new.
	1 to: 100 do: [ :index |
		| copy |
		copy := heap copyEmpty.
		self 
			assert: copy isHeap;
			assert: copy isEmpty;
			assert: copy sortBlock = heap sortBlock.
		heap add: index ].