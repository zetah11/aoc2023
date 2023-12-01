tests
testCompact
	" self run: #testCompact "
	
	| heap |
	heap := Heap new.
	1 to: 100 do: [ :index |
		| copy |
		copy := heap copy.
		copy compact.
		self 
			assert: copy = heap;
			assert: copy capacity <= heap capacity;
			assert: copy capacity = copy size.
		heap add: index ].