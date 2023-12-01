tests
testInternalArray
	| fc internalArray |
	fc := FloatCollection new.
	self
		 deny: (internalArray := fc instVarNamed: 'array') class isPointers ;
		 assert: fc isEmpty.
	internalArray size + 1 timesRepeat: [ fc add: 0.0 ].
	self
		 assert: fc size = (internalArray size + 1) ;
		 assert: (fc instVarNamed: 'array') size = (internalArray size * 2)