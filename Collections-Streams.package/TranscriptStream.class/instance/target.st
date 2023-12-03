stream extensions
target
	^(self == Transcript and: [self class redirectToStdOut])
		ifTrue: [FileStream stdout]
		ifFalse: [self]