tests - sorting
testIsSorted

	10 to: 1 by: -1 do: [:ea |
		sut at: ea put: nil].

	self assert: sut isSorted not.
	sut sort.
	self assert: sut isSorted.