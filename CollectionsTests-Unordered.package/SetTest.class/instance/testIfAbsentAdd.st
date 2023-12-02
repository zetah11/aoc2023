tests - original tests
testIfAbsentAdd
	| it |
	it := 5.
	self deny: (empty includes: it).
	self assert: (empty ifAbsentAdd: it).
	self assert: (empty includes: it).
	self deny: (empty ifAbsentAdd: it).
	self assert: (empty includes: it)