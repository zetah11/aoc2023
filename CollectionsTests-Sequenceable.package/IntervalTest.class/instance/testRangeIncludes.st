tests
testRangeIncludes
	self assert: ((1 to: 10) rangeIncludes: 4) description: '4 is within this range'.
	self assert: ((1 to: 10 by: 2) rangeIncludes: 4) description: 'even if the interval does not include 4'.
	self deny: ((1 to: 10 by: -1) rangeIncludes: 4) description: 'this range is empty'.
	self assert: ((10 to: 1 by: -4) rangeIncludes: 4) description: 'the range can be retrograde'.
	self assert: ((1 to: 10) rangeIncludes: 10) description: 'the range includes the bounds'.
	self assert: ((1 to: 10 by: 2) rangeIncludes: 10) description: 'even when bound lies past the last element'.
	#(0 11) do: [:outOfBound |
		#(-2 -1 2 2) do: [:step |
			self deny: ((1 to: 10 by: step) includes: outOfBound)]]