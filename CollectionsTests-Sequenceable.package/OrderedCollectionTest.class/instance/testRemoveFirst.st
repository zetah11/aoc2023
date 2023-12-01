tests - removing
testRemoveFirst
	"Allows one to remove n element of a collection at the first"
	"self run:#testRemoveFirst" 
	
	| c1 c2 |
	c1 := #(2 3 4 6) asOrderedCollection.
	c2 := c1 copy.
	self assert: Array empty equals: (c1 removeFirst: 0).
	self assert: c2 equals: c1.
	self assert: #(2) equals: (c1 removeFirst: 1).
	self assert: #(3 4 6) asOrderedCollection equals: c1.
	self assert:#(3 4) equals: (c1 removeFirst: 2).
	self assert: #(6) asOrderedCollection equals: c1.
	self should: [c1 removeFirst: 10] raise: Error.
	
	