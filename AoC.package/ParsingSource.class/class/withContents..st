instance creation
withContents: aString
	| source |
	source := self new.
	source contents: aString.
	^ source