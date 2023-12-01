tests
testAtRaisesErrorWhenIndexIsInvalid
	" self run: #testAtRaisesErrorWhenIndexIsInvalid "

	| heap |
	heap := Heap new.
	1 to: 100 do: [ :index |
		1 to: heap size do: [ :each | 
			self assert: ((heap at: each) between: 1 and: heap size) ].
		self 
			should: [ heap at: 0 ] raise: Error;
			should: [ heap at: heap size + 1 ] raise: Error.
		heap add: index ].