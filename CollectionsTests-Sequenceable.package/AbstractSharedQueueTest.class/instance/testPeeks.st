tests
testPeeks
	| q |
	q := self queueClass new.

	self assert: nil equals: q peek.
	self assert: nil equals: q peekLast.

	q nextPut: #first; nextPut: #last.

	self assert: #first equals: q peek.
	self assert: #last equals: q peekLast.

	self assert: #first equals: q next.

	self assert: #last equals: q peek.
	self assert: #last equals: q peekLast