parsing
eat: aSource
	| character |
	aSource isEmpty ifTrue: [^ FailedParse new].
	character := aSource contents first.
	^ (predicate cull: character)
		ifTrue: [SuccessfulParse withValue: character remainder: (aSource skipping: 1)]
		ifFalse: [FailedParse new]