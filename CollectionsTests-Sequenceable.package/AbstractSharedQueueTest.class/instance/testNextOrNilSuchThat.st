tests
testNextOrNilSuchThat
	| q item |
	q := self queueClass new.
	q nextPut: 5.
	q nextPut: 6.

	item := q nextOrNilSuchThat: [ :x | x even ].
	self assert: 6 equals: item.

	self assert: 5 equals: q nextOrNil.
	self assert: nil equals: q nextOrNil