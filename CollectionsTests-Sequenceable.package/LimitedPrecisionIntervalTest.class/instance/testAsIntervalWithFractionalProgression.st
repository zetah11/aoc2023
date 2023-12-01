tests
testAsIntervalWithFractionalProgression
	self should: [#(0.1 0.2 0.3 0.4) as: Interval]
		raise: Error
		description: 'There is no guaranty that Interval of Float can be constructed from individual Float'.
	"Even though, by chance there might be a Float Interval with same elements"
	#(0.1 0.2 0.3 0.4) hasEqualElements: (0.1 to: 0.4 by: 0.1 predecessor)