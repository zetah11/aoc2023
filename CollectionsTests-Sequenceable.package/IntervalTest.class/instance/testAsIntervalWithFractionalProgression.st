tests
testAsIntervalWithFractionalProgression
	self assert: (1 to: 2 by: 1/2) equals: ({1. 3/2. 2} as: Interval).
	self assert: (1 to: 2 by: 0.2s) equals: ({1. 1.2s. 1.4s. 1.6s. 1.8s. 2} as: Interval).