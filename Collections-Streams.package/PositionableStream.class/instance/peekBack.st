accessing
peekBack
	"Return the element at the previous position, without changing position.  Use indirect messages in case self is a StandardFileStream."
	| element |
	self position = 0 ifTrue: [self errorCantGoBack].
	element := self back.
	self skip: 1.
	^ element