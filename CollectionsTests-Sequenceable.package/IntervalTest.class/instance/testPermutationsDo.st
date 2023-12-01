tests
testPermutationsDo

	| i oc |
	i := (4 to: 13 by: 3).
	oc := OrderedCollection new.
	i permutationsDo: [:e | oc add: e copy].
	self assert: oc size = i size factorial.
	self assert: oc asSet size = oc size.
	self assert: (oc allSatisfy: [:e | e sorted hasEqualElements: i]).
	^ oc