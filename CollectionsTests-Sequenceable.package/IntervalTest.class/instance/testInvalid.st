tests
testInvalid
	"empty, impossible ranges"
	self assert: (1 to: 0) isEmpty.
	self assert: (1 to: -1) isEmpty.
	self assert: (-1 to: -2) isEmpty.
	self assert: (1 to: 5 by: -1) isEmpty.
	
	"always contains only start value."
	self assert: (1 to: 1) asArray = #(1).
	self assert: (1 to: 5 by: 10) asArray = #(1).
	self assert: (1 to: 0 by: -2) asArray = #(1).
