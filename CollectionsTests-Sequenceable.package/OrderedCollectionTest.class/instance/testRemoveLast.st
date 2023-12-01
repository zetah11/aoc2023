tests - removing
testRemoveLast
	"Allows one to remove n element of a collection at the end"
	"self run:#testRemoveLast" 
	
	| c1 c2 |
	c1 := #(2 3 4 6) asOrderedCollection.
	c2 := c1 copy.
	self assert: Array empty equals: (c1 removeLast: 0).
	self assert: c2 equals: c1.
	self assert: #(6) equals: (c1 removeLast: 1).
	self assert: #(2 3 4) asOrderedCollection equals: c1.
	self assert: #(3 4) equals: (c1 removeLast: 2).
	self assert: #(2) asOrderedCollection equals: c1.
	self should: [c1 removeLast: 10] raise: Error