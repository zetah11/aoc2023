tests
testSort

	self testSortUsing: Heap new.
	{
		nil.
		#<=.
		[ :a :b | a <= b ].
		[ :a :b | a >= b ] 
	} do: [ :each | self testSortUsing: (Heap sortBlock: each) ]