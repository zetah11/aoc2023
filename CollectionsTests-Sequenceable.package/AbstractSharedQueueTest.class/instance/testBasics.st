tests
testBasics
	| q |
	q := self queueClass new.

	self assert: nil equals: q nextOrNil.

	q nextPut: 5.
	self assert: 5 equals: q nextOrNil.
	self assert: nil equals: q nextOrNil