tests
testCollect
	| s i |
	i := (0.1 to: 1.0 by: 0.1).
	s := i collect: [:e | e].
	self assert: (s hasEqualElements: i)