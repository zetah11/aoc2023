tests - compare
testCloseToFurthestCloseToNeasrest
	| x nearest furthest |
	x := 1.0e-6.
	nearest := 1.0e-7.
	furthest := 0.0.
	self assert: (x - nearest) abs < (x - furthest) abs.
	self assert: (x closeTo: furthest) ==> (x closeTo: nearest)