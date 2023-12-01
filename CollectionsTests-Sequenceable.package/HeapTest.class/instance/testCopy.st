tests
testCopy

	| heap |
	heap := Heap new.
	1 to: 100 do: [ :index |
		| copy |
		copy := heap copy.
		self 
			assert: copy = heap;
			assert: heap = copy;
			deny: copy == heap;
			assert: copy sortBlock = heap sortBlock;
			deny: copy array == heap array.
		heap add: index ].