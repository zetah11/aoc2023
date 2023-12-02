tests
testLike
	
	| k |
	k := KeyedSet keyBlock: [ :each | each * 2 ].
	self assert: (k like: 1) isNil.
	k add: 1.
	self assert: (k like: 1) = 1.
	k add: 2.
	self assert: (k like: 2) = 2.
	self assert: (k like: 3) isNil.