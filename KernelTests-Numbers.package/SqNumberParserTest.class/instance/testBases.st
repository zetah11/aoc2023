tests - fail
testBases

	self assert: (SqNumberParser parse: '16r20') equals: 32.
	self assert: (SqNumberParser parse: '2r10') equals: 2.
	self assert: ((SqNumberParser on: '10')
		nextIntegerBase: 2) equals: 2.
	self assert: ((SqNumberParser on: '10')
		defaultBase: 2;
		nextNumber) equals: 2.
	self assert: ((SqNumberParser on: '1000r10')
		defaultBase: 2;
		nextNumber) equals: 8.