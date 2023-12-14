accessing
shapeConnecting: a and: b
	self shapes do: [:each |
		({ a. b } allSatisfy: [:dir | each value value includes: dir])
			ifTrue: [^ each key value]].