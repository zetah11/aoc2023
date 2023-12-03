tests
testLog2doesNotOverflow
	"Note: though this is not a strict identity, we can use strict Float equality here"
	self assert: 3000.0 equals: ((1 bitShift: 3000) - 1) log2.
	self assert: 1500.0 equals: (((1 bitShift: 3000) - 1) / (1 bitShift: 1500)) log2.