tests
testSize
	self assert: (empty size = 0).
	self assert: (full size = 2).
	empty add: 2.
	empty add: 1.
	full add: 2.
	self assert: (empty size = 2).
	self assert: (full size = 3).
	empty remove: 2.
	self assert: (empty size = 1).