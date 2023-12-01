tests - copying
testCopy

	sut
		at: 1 put: nil;
		at: 2 put: nil;
		at: 3 put: nil.

	sut copy in: [:copy |
		self assert: sut keys equals: copy keys.
		copy at: 4 put: nil.
		self assert: sut keys size < copy keys size].