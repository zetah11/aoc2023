tests
testPut
	
	| set result |
	set := KeyedSet keyBlock: [ :each | each ifNil: [ 1 ] ifNotNil: [ each first ] ].
	1 to: 10 do: [ :each | set add: { each. each asString } ].
	self assert: 10 equals: set size.
	
	1 to: 10 do: [ :each |
		| original |
		original := set at: each.
		result := set put: { each. each asString }.
		self assert: 10 equals: set size.
		self assert: { each. each asString } equals: result enclosedSetElement.
		self assert: original == result.
		self deny: original == (set at: each).
		self assert: original equals: (set at: each).
		self assert:  { each. each asString } equals: (set at: each) ].
	
	result := set put: { 11. '11' }.
	self assert: nil equals: result.
	self assert: 11 equals: set size.
	self assert: { 11. '11' } equals: (set at: 11).
	
	result := set put: { 11. '12' }.
	self assert: { 11. '11' } equals: result enclosedSetElement.
	self assert: 11 equals: set size.
	self assert: { 11. '12' } equals: (set at: 11).
	
	result := set put: nil.
	self assert: { 1. '1' } equals: result enclosedSetElement.
	self assert: 11 equals: set size.
	self assert: nil equals: (set at: 1)