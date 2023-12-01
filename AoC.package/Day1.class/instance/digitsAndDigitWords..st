enumerating
digitsAndDigitWords: aString
	"Answer an array of the digits and digit words (overlapping) and in order in aString"
	^ aString suffixes
		collect: [:each |
			| end |
			end := rx matchesPrefix: each; subEnd: 1.
			end isEmpty ifFalse: [each copyFrom: 1 to: end first]]
		thenSelect: [:each | each isNil not]