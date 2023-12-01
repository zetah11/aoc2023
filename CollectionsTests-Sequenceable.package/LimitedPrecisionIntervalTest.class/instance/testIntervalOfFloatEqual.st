tests
testIntervalOfFloatEqual
	"Interval with Float are weirdos"

	| interval1 interval2 interval3 interval4 |
	interval1 := (0 to: 1 by: 1/10).
	interval2 := (0.0 to: 1 by: 1/10).
	self deny: (interval1 = interval2) ==> (interval1 hasEqualElements: interval2)
		description: 'Interval of Float may have different elements from another Interval, even if they pretend to be equal.'.

	interval3 := (0.3 to: 0.6 by: 1/10).
	interval4 := (0.3 to: 0.6 by: 0.1).
	self deny: (interval3 hasEqualElements: interval4) ==> (interval3 = interval4)
		description: 'Interval of Float may pretend they differ from another Interval even if they have same elements.'.