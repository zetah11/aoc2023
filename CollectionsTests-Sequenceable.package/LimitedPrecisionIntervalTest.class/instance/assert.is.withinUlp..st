asserting - extensions
assert: aFloat is: anotherFloat withinUlp: anInteger
	^self assert: (aFloat - anotherFloat) abs <= (aFloat ulp * anInteger)