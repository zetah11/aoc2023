tests - original tests
testIllegal
	self shouldRaiseError: [empty at: 5].
	self shouldRaiseError: [empty at: 5 put: #abc].