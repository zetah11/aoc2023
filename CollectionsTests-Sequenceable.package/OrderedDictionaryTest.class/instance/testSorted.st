tests - sorting
testSorted

	10 to: 1 by: -1 do: [:ea |
		sut at: ea put: nil].

	sut sorted in: [:copy |
		self
			assert: copy ~~ sut;
			assert: copy keys = sut keys reversed].