tests
testHashEqualIfIntervalEqual
	| interval1 interval2 |
	interval1 := 0 to: 1.
	interval2 := 0 to: 5/3. "Taken from an actual issue in an image"
	self assert: interval1 equals: interval2.
	self assert: interval1 hash equals: interval2 hash.