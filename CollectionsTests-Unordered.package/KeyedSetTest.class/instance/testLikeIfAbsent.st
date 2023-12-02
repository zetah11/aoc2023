tests
testLikeIfAbsent
	
	| k missing |
	k := KeyedSet keyBlock: [ :each | each * 2 ].
	missing := false.
	self assert: (k like: 1 ifAbsent: [ missing := true. nil ]) isNil.
	self assert: missing.
	k add: 1.
	missing := false.
	self assert: (k like: 1 ifAbsent: [ missing := true. nil ]) = 1.
	self deny: missing.
	k add: 2.
	self assert: (k like: 2 ifAbsent: nil) = 2.
	self assert: (k like: 3 ifAbsent: nil) isNil