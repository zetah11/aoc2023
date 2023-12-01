tests
testOverwriteValue
	"First write wins wrt. order in the dictionary."

	1 to: 5 do: [:ea |
		sut at: ea put: nil].

	sut at: 3 put: nil.

	self assert: #(1 2 3 4 5) equals: sut keys.