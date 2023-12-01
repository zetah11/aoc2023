tests
testCollect
	| s i |
	i := (10 to: 20).
	s := i collect: [:e | e].
	self assert: (s hasEqualElements: i)