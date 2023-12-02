tests
testKeyedSetWithNil
	| set |
	self runSetWithNilTestOf: [KeyedSet keyBlock:[:o| o]].
	set := KeyedSet keyBlock:[:o| o].
	set add: nil.
	self assert: (set at: nil) == nil.
	self assert: (set includes: nil)
