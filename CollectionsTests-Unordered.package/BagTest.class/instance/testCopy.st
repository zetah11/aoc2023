tests - basic
testCopy
	"self run: #testCopy"
	
	| aBag newBag |
	aBag := Bag new.
	aBag add:'a' withOccurrences: 4.
	aBag add:'b' withOccurrences: 2.
	newBag := aBag copy.
	self assert: newBag = aBag.
	self assert: newBag asSet size = 2.