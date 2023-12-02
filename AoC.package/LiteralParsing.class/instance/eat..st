parsing
eat: aSource
	^ (aSource contents beginsWith: literal)
		ifTrue: [SuccessfulParse withValue: literal remainder: (aSource skipping: literal size)]
		ifFalse: [FailedParse withError: 'expected ', literal]