tests - mathematical functions
testNthRootRounded
	<timeout:  5 "seconds">
	| d x |
	d := ((1 + 2 reciprocal - (1<<30) reciprocal) raisedTo: 1000) floor. "close to 1.5 by default"
	x := ((1 + 2 reciprocal + (1<<30) reciprocal) raisedTo: 1000) ceiling. "close to 1.5 by excess"
	self assert: (d nthRootTruncated: 1000) equals: 1.
	self assert: (x nthRootTruncated: 1000) equals: 1.
	self assert: (d nthRootRounded: 1000) equals: 1.
	self assert: (x nthRootRounded: 1000) equals: 2.