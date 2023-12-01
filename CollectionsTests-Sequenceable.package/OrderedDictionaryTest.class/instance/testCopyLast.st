tests - accessing
testCopyLast

	1 to: 10 do: [:ea |
		sut at: ea put: nil].

	self assert: (6 to: 10) asArray equals: (sut last: 5) keys.