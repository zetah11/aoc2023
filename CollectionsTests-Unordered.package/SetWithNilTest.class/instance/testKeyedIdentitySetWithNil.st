tests
testKeyedIdentitySetWithNil
	| set |
	self runSetWithNilTestOf: [KeyedIdentitySet keyBlock:[:o| o]].
	set := KeyedIdentitySet keyBlock:[:o| o].
	set add: nil.
	self assert: (set at: nil) == nil.
