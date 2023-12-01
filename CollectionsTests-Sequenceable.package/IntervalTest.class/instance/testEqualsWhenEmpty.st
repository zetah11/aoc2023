tests
testEqualsWhenEmpty
	self assert: (3 to: 2) = (3 to: 2) copy.
	self deny: (3 to: 2) = (2 to: 1)
		description: 'Empty intervals are considered different if their bound differs. Text selection rely on this feature'.