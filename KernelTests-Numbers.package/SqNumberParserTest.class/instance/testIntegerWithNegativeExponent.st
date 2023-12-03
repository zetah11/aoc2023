tests - Integer
testIntegerWithNegativeExponent
	self assert: (SqNumberParser parse: '1200e-2') isInteger.
	self assert: 12 equals: (SqNumberParser parse: '1200e-2').

	self assert: (SqNumberParser parse: '1200e-3') isFloat.
	self assert: 1.2 equals: (SqNumberParser parse: '1200e-3').
	
	"This may fail if using 25 * (10.0 raisedTo: -108)"
	self assert: 25.0e-108 equals: (SqNumberParser parse: '25e-108').