tests
testContention1
	"here is a test case that breaks the standard SharedQueue from Squeak 3.8"

	| q r1 r2 |
	q := self queueClass new.
	q nextPut: 5.
	q nextPut: 10.

	self assert: 5 equals: q nextOrNil.

	[ r1 := q next ] fork.
	[ r2 := q next ] fork.
	Processor  yield.   "let the above two threads block"
	
	q nextPut: 10.
	Processor yield.

	self assert: 10 equals: r1.
	self assert: 10 equals: r2.
	self assert: nil equals: q nextOrNil