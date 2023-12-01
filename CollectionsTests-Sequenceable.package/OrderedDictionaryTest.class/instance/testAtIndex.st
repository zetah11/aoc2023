tests - accessing
testAtIndex

	1 to: 10 do: [:ea |
		sut at: ea put: nil].

	1 to: 10 do: [:index |
		self assert: index equals: (sut atIndex: index) key].