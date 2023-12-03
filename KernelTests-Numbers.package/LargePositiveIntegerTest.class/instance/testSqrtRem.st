tests
testSqrtRem
	| x sr |
	x := self x92kbits.
	sr := x sqrtRem.
	self assert: sr first squared <= x.
	self assert: (sr first+1) squared > x.
	self assert: sr first squared + sr last = x.