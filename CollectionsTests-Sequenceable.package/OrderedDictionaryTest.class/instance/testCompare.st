tests
testCompare

	| dictOne dictTwo |
	sut at: #a put: 5; at: #b put: 4.
	self assert: sut equals: sut.

	dictOne := OrderedDictionary with: #a -> 5 with: #b -> 4.
	dictTwo := OrderedDictionary with: #a -> 5 with: #b -> 4.
	self assert: dictOne equals: dictTwo.

	dictOne := OrderedDictionary with: #a -> 5 with: #b -> 4.
	dictTwo := OrderedDictionary with: 'a' -> 5 with: 'b' -> 4.
	self assert: dictOne equals: dictTwo.
	
	dictOne := OrderedDictionary with: #a -> 5 with: #b -> 4.
	dictTwo := OrderedDictionary with: #b -> 4 with: #a -> 5.
	self deny: dictOne equals: dictTwo.