instance creation
withValue: anObject remainder: aSource
	| result |
	result := self new.
	result result: anObject.
	result remainder: aSource.
	^ result