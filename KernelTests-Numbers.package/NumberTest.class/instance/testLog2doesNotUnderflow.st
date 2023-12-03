tests
testLog2doesNotUnderflow
	"Note: though this is not a strict identity, we can use strict Float equality here"
	self assert: -2000.0 equals: ((1 bitShift: 2000) - 1) reciprocal log2