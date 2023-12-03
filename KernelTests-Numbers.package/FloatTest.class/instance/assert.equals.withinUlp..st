asserting
assert: expected equals: actual withinUlp: maxUlp
	self assert: (expected - actual) abs <= (maxUlp * expected asFloat ulp)