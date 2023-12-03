tests - Integer
testIntegerWithPositiveExponent
	self assert: (SqNumberParser parse: '12e3') isInteger.
	self assert: 12000 equals: (SqNumberParser parse: '12e3').