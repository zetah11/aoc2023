tests
testSurprisingFuzzyInclusionBehavior
	"If ever Interval implement fuzzy inclusion, then we can expect weird logic..."
	self assert: ((0.1 to: 0.9 by: 0.1) includes: 0.3)
			==> (((0.1 to: 0.9 by: 0.1) occurrencesOf: 0.3) > 0)
		description: 'A Collection that includes something has at least one occurrence of something'.
	self assert: ((0.1 to: 0.9 by: 0.1) lastIndexOf: 0.3)
			>= ((0.1 to: 0.9 by: 0.1) indexOf: 0.3)
		description: 'The last index of an object in a SequenceableCollection should be greater than or equal to the first index'.
	self assert: ((0.1 to: 0.9 by: 0.1) includes: 0.3)
			==> (((0.1 to: 0.9 by: 0.1) copyWithout: 0.3) size < (0.1 to: 0.9 by: 0.1) size)
		description: 'A Collection should be able to shrink by stripping own elements'.