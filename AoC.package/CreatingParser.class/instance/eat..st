parsing
eat: aSource
	| character |
	aSource isEmpty ifTrue: [^ FailedParse new].
	character := aSource contents first.
	^ (block cull: character)
		ifNotNil: [:result | SuccessfulParse withValue: result remainder: (aSource skipping: 1)]
		ifNil: [FailedParse new]