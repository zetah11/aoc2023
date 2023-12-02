instance creation
withContents: aString startingAt: aNumber
	| source |
	source := self new.
	source contents: aString startingAt: aNumber.
	^ source