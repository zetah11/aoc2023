converting
product
	"Answer an array of every possible combination of the receiver's elements"
	self isEmpty ifTrue: [^ {}].
	^ Array streamContents: [:stream | self productDo: [:each | stream nextPut: each]]