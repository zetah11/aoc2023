parsing
eat: aSource
	| results remainder |
	results := OrderedCollection new.
	remainder := aSource.
	[(parser eat: remainder)
		ifOk: [:result :newRemainder |
			results add: result.
			remainder := newRemainder.
			true]
		ifFailed: [false]] whileTrue.
	^ SuccessfulParse withValue: results asArray remainder: remainder