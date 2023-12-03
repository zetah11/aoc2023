tests
testSquared

	| large ref |
	large := self x23kbits.
	ref := large * large.
	self assert: ref = large squared.
	self assert: ref = large squaredByHalf.
	self assert: ref = large squaredByThird.
	self assert: ref = large squaredByFourth.