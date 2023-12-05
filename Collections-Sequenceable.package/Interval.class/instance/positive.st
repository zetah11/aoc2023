converting
positive
	"Answer a range which contains the same values as the receiver and
	a positive step"
	^ step negative
		ifTrue: [self reversed]
		ifFalse: [self]