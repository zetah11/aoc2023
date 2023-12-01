tests - copying
testForceToPadding
	"This is a non regression bug for http://bugs.squeak.org/view.php?id=7296"
	
	| c1 c2 paddingElement |
	"source collection"
	c1 := #(5 3 7 2 ) asOrderedCollection.
	paddingElement := nil.
	
	"force length to longer"
	c2 := c1 forceTo: 10 paddingWith: paddingElement.
	self assert: (c1 ~~ c2) description: 'forceTo:paddingWith: should modify a copy'.
	self assert: (c2 size = 10).
	self assert: (c2 copyFrom: 1 to: c1 size) = c1.
	self assert: ((c1 size + 1 to: c2 size) allSatisfy: [:i | (c2 at: i) = paddingElement]).
	
	"force length to shorter"
	c2 := c1 forceTo: 3 paddingWith: paddingElement.
	self assert: (c1 ~~ c2) description: 'forceTo:paddingWith: should modify a copy'.
	self assert: (c2 size = 3).
	self assert: (c2 copyFrom: 1 to: 3) = (c1 copyFrom: 1 to: 3).
	
	"SAME TEST BUT PADDING AT START FOLLOWING..."
	
	"force length to longer"
	c2 := c1 forceTo: 10 paddingStartWith: paddingElement.
	self assert: (c1 ~~ c2) description: 'forceTo:paddingStartWith: should modify a copy'.
	self assert: (c2 size = 10).
	self assert: (c2 copyFrom: c2 size - c1 size + 1 to: c2 size) = c1.
	self assert: ((1 to: c2 size - c1 size) allSatisfy: [:i | (c2 at: i) = paddingElement]).
	
	"force length to shorter"
	c2 := c1 forceTo: 3 paddingStartWith: paddingElement.
	self assert: (c1 ~~ c2) description: 'forceTo:paddingStartWith: should modify a copy'.
	self assert: (c2 size = 3).
	self assert: (c2 copyFrom: 1 to: 3) = (c1 copyFrom: 1 to: 3).