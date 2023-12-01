tests
testLast
	"Some definition of last were problematic for Interval of Float"
	
	| increment upperBound interval |
	self assert: (0.2 to: 0.9 by: 0.1) last = (0.2 to: 0.9 by: 0.1) asArray last
		description: 'the last element cannot reasonably change when converting asArray'.
	
	upperBound := 1.7.
	increment := 0.1.
	self deny: (0 to: upperBound by: increment) last > upperBound
		description: 'the last element cannot reasonably exceed upper bound'.
	
	interval := -0.9999999999999994 to: 1 by: 2.
	self assert: interval last < interval first
		==> (interval isEmpty or: [interval increment < 0])
		description: 'the last element cannot reasonably deceed(*) lower bound (* be inferior to)'