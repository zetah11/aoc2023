tests
testIntersectingRange
	| lo hi step first second expected |
	lo := [(100 negated to: 100) atRandom].
	hi := [(100 negated to: 100) atRandom].
	step := [((100 negated to: 100) reject: [:s | s = 0]) atRandom].  "Intervals usually don't work with 0 anyway"
	10000 timesRepeat: [
		first := lo value to: hi value by: step value.
		second := lo value to: hi value by: step value.
		expected := (first intersection: second) sorted. "intersectingRange: always returns an interval with a positive increment"
		self assert: expected equals: (first intersectingRange: second) asArray]