tests
testDo
	| s i |
	s := OrderedCollection new.
	i := (0.1 to: 1.0 by: 0.1).
	i do: [ :each | s addLast: each].
	self assert: (s hasEqualElements: i)