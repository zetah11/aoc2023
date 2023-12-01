tests
testEquals

	self assert: (3 to: 5) = (3.0 to: 5.0).
	self deny: (3 to: 5) = (3 to: 5 by: 2) description: 'Sharing bounds is not enough to make Interval equals'.