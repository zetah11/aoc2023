tests
testOverflow
	"Check whether repeated additions of the same alternating keys causes an error."

	self
		shouldnt: [20 timesRepeat: [sut at: 1 put: nil; removeKey: 1]]
		raise: Error. 