parsing
eat: aSource
	| result results remainder |
	results := OrderedCollection new.
	remainder := aSource.
	parsers do: [:each |
		result := each eat: remainder.
		result
			ifOk: [:value :newRemainder |
				results add: value.
				remainder := newRemainder]
			ifFailed: [^ result]].
	^ SuccessfulParse withValue: results asArray remainder: remainder