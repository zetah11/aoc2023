instance creation
withError: anObject
	| result |
	result := self new.
	result error: anObject.
	^ result