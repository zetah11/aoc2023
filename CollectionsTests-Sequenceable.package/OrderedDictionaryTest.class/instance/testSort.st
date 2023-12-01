tests - sorting
testSort

	10 to: 1 by: -1 do: [:ea |
		sut at: ea put: nil].

	self assert: (10 to: 1 by: -1) asArray equals: sut keys.
	sut sort.
	self assert: (1 to: 10) asArray equals: sut keys.